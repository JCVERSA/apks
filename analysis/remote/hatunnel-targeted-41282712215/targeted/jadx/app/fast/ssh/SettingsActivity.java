package app.fast.ssh;

import android.content.DialogInterface;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.appcompat.widget.Toolbar;

public class SettingsActivity extends AppCompatActivity {

    class AnonymousClass1 implements DialogInterface.OnClickListener {
        AnonymousClass1() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            PreferenceManager.getDefaultSharedPreferences(SettingsActivity.this).edit().clear().apply();
            AppCompatDelegate.setDefaultNightMode(1);
            Toast.makeText(SettingsActivity.this, ProtectedFastSSH.s("⾞"), 0).show();
        }
    }

    @Override
    public void onBackPressed() {
        super.onBackPressed();
        finish();
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(com.hatunnel.plus.R.layout.l_res_0x7f0c0022);
        setSupportActionBar((Toolbar) findViewById(com.hatunnel.plus.R.id.l_res_0x7f090284));
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setHomeButtonEnabled(true);
        getSupportFragmentManager().beginTransaction().replace(com.hatunnel.plus.R.id.l_res_0x7f090104, new SettingsFragment()).commit();
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(com.hatunnel.plus.R.menu.l_res_0x7f0e0003, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == com.hatunnel.plus.R.id.l_res_0x7f0901f9) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setTitle(ProtectedFastSSH.s("⾟"));
            builder.setMessage(ProtectedFastSSH.s("⾠"));
            builder.setNegativeButton(ProtectedFastSSH.s("⾡"), (DialogInterface.OnClickListener) null);
            builder.setPositiveButton(ProtectedFastSSH.s("⾢"), new AnonymousClass1());
            builder.create().show();
        }
        return super.onOptionsItemSelected(menuItem);
    }
}
