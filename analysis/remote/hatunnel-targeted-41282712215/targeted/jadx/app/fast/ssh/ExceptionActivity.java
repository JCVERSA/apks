package app.fast.ssh;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

public class ExceptionActivity extends AppCompatActivity {

    class AnonymousClass1 implements View.OnClickListener {
        AnonymousClass1() {
        }

        @Override
        public void onClick(View view) {
            ExceptionActivity.this.startActivity(new Intent(ExceptionActivity.this, (Class<?>) MainActivity.class));
            ExceptionActivity.this.finish();
        }
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(com.hatunnel.plus.R.layout.l_res_0x7f0c001e);
        setSupportActionBar((Toolbar) findViewById(com.hatunnel.plus.R.id.l_res_0x7f090284));
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setHomeButtonEnabled(true);
        ((TextView) findViewById(com.hatunnel.plus.R.id.l_res_0x7f090277)).setText(getIntent().getStringExtra(ProtectedFastSSH.s("⸻")));
        findViewById(com.hatunnel.plus.R.id.l_res_0x7f0901fa).setOnClickListener(new AnonymousClass1());
    }
}
