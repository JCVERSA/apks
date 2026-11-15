package com.transsion.xuanniao.account.login.view;

import android.os.Bundle;
import android.text.method.ScrollingMovementMethod;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.comm.mvpbase.BaseActivity;
import com.transsion.xuanniao.account.model.data.LoginRes;
import defpackage.jr7;
import defpackage.rm7;
import defpackage.xj;
import java.io.Serializable;
import java.util.ArrayList;

public class LoginSuccessfullyActivity extends BaseActivity {
    public LoginRes e;

    public class a extends rm7 {
        public a() {
        }

        @Override
        public void b(View view) {
            if (view.getId() == R.id.okButton) {
                LoginSuccessfullyActivity.this.finish();
            }
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.xn_activity_login_successfully);
        getActionBar().setTitle(jr7.d(getString(R.string.xn_login_app)));
        getActionBar().setDisplayHomeAsUpEnabled(true);
        Serializable serializableExtra = getIntent().getSerializableExtra("loginRes");
        if (serializableExtra instanceof LoginRes) {
            this.e = (LoginRes) serializableExtra;
        }
        xj.U(this).W0();
        findViewById(R.id.okButton).setOnClickListener(new a());
        LoginRes loginRes = this.e;
        if (loginRes != null && loginRes.getLoginedThird() != null) {
            TextView textView = (TextView) findViewById(R.id.oldAccounts);
            textView.setMovementMethod(ScrollingMovementMethod.getInstance());
            ArrayList<LoginRes.AuthorizeThird> loginedThird = this.e.getLoginedThird();
            String string = getString(R.string.xn_midpoint);
            StringBuffer stringBuffer = new StringBuffer();
            for (int i = 0; i < loginedThird.size(); i++) {
                stringBuffer.append(string);
                stringBuffer.append(loginedThird.get(i).displayName);
                stringBuffer.append("\n");
            }
            textView.setText(stringBuffer.toString());
        }
        ((TextView) findViewById(R.id.mergeTitle)).setText(jr7.d(getString(R.string.xn_merge_title)) + "\n" + getString(R.string.xn_merge_title_1) + "\n" + getString(R.string.xn_merge_title_2));
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
        }
        return super.onOptionsItemSelected(menuItem);
    }
}
