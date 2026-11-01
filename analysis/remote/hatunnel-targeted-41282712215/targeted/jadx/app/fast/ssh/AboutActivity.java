package app.fast.ssh;

import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

public class AboutActivity extends AppCompatActivity {
    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(com.hatunnel.plus.R.layout.l_res_0x7f0c001c);
        setSupportActionBar((Toolbar) findViewById(com.hatunnel.plus.R.id.l_res_0x7f090284));
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setHomeButtonEnabled(true);
    }
}
