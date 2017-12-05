package digitalhouse.android.logueame;

import android.net.Uri;
import android.support.annotation.NonNull;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.ValueEventListener;

import java.util.ArrayList;
import java.util.List;

public class MainActivity extends AppCompatActivity {
    private FirebaseAuth mAuth;
    private FirebaseAuth.AuthStateListener mAuthListener;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        mAuth = FirebaseAuth.getInstance();
        mAuthListener = new FirebaseAuth.AuthStateListener() {
            @Override
            public void onAuthStateChanged(@NonNull FirebaseAuth firebaseAuth) {
                FirebaseUser user = firebaseAuth.getCurrentUser();
                if (user != null) {
                    // User is signed in
                    Toast.makeText(MainActivity.this, "Usuario logueado", Toast.LENGTH_SHORT).show();
                } else {
                    // User is signed out
                    Toast.makeText(MainActivity.this, "Usuario deslogueado", Toast.LENGTH_SHORT).show();
                }
            }
        };
    }

    @Override
    public void onStart() {
        super.onStart();
        mAuth.addAuthStateListener(mAuthListener);
    }


    @Override
    public void onStop() {
        super.onStop();
        if (mAuthListener != null) {
            mAuth.removeAuthStateListener(mAuthListener);
        }
    }


    public void createUser(View view) {

        EditText editTextMail = (EditText) findViewById(R.id.editTextMail);
        EditText editTextPassword = (EditText) findViewById(R.id.editTextPassword);

        String email = editTextMail.getText().toString();
        String password = editTextPassword.getText().toString();

        mAuth.createUserWithEmailAndPassword(email, password)
                .addOnCompleteListener(this, new OnCompleteListener<AuthResult>() {
                    @Override
                    public void onComplete(@NonNull Task<AuthResult> task) {

                        // If sign in fails, display a message to the user. If sign in succeeds
                        // the auth state listener will be notified and logic to handle the
                        // signed in user can be handled in the listener.
                        if (!task.isSuccessful()) {
                            Toast.makeText(MainActivity.this, "Fallo autenticacion", Toast.LENGTH_SHORT).show();
                        } else {
                            Toast.makeText(MainActivity.this, "Usuario creado", Toast.LENGTH_SHORT).show();
                        }
                    }
                });
    }

    public void loginUser(View view) {

        EditText editTextMail = (EditText) findViewById(R.id.editTextMail);
        EditText editTextPassword = (EditText) findViewById(R.id.editTextPassword);

        String email = editTextMail.getText().toString();
        String password = editTextPassword.getText().toString();

        mAuth.signInWithEmailAndPassword(email, password)
                .addOnCompleteListener(this, new OnCompleteListener<AuthResult>() {
                    @Override
                    public void onComplete(@NonNull Task<AuthResult> task) {

                        if (!task.isSuccessful()) {

                            Toast.makeText(MainActivity.this, "Sign In Fallo", Toast.LENGTH_SHORT).show();
                        } else {
                            Toast.makeText(MainActivity.this, "Usuario logueado", Toast.LENGTH_SHORT).show();
                        }
                    }
                });
    }

    public void signOut(View view) {
        FirebaseAuth.getInstance().signOut();
    }

    public void readDataBase(View view){
        FirebaseDatabase mDatabase;
        mDatabase = FirebaseDatabase.getInstance();

        DatabaseReference databaseReference = mDatabase.getReference();

        databaseReference.child("result").addListenerForSingleValueEvent(new ValueEventListener() {
            @Override
            public void onDataChange(DataSnapshot dataSnapshot) {
                List<User>userList = new ArrayList<User>();
                for(DataSnapshot userSnapShot : dataSnapshot.getChildren()){
                    User user = userSnapShot.getValue(User.class);
                    userList.add(user);
                }

               // DataBaseFire dataBase= dataSnapshot.getValue(DataBaseFire.class);
               // Toast.makeText(MainActivity.this, dataBase.toString(), Toast.LENGTH_SHORT).show();

            }

            @Override
            public void onCancelled(DatabaseError databaseError) {

            }
        });
    }

    public void writeSimple(View view){

        FirebaseDatabase mDatabase;
        mDatabase = FirebaseDatabase.getInstance();

        DatabaseReference databaseReference = mDatabase.getReference();
        databaseReference.child("Laura").setValue("La Merced");

    }

    public void writeComplex(View view){
        User usuario = new User();
        usuario.setNombre("Bruno");
        usuario.setApellido("Cataldi");
        usuario.setLastTweet("Tengo Hambre");

        FirebaseDatabase mDatabase;
        mDatabase = FirebaseDatabase.getInstance();

        DatabaseReference databaseReference = mDatabase.getReference();
        databaseReference.child("result").push().setValue(usuario);

    }

}















