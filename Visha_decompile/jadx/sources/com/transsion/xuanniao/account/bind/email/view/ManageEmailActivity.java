package com.transsion.xuanniao.account.bind.email.view;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import com.transsion.widgetslib.view.OverBoundNestedScrollView;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.comm.mvpbase.BaseActivity;
import com.transsion.xuanniao.account.model.data.AccountRes;
import defpackage.ao7;
import defpackage.rm7;
import defpackage.xj;

public class ManageEmailActivity extends BaseActivity {
    public String f;
    public String g;
    public int e = 1001;
    public boolean h = false;

    public class a extends rm7 {
        public a() {
        }

        @Override
        public void b(View view) {
            if (view.getId() == R.id.bindBtn) {
                xj.U(ManageEmailActivity.this).A(NotificationCompat.CATEGORY_EMAIL, !TextUtils.isEmpty(ManageEmailActivity.this.g) ? 1 : 0);
                Intent intent = new Intent(ManageEmailActivity.this, (Class<?>) BindingEmailActivity.class);
                intent.putExtra("accountId", ManageEmailActivity.this.f);
                ManageEmailActivity manageEmailActivity = ManageEmailActivity.this;
                manageEmailActivity.startActivityForResult(intent, manageEmailActivity.e);
            }
        }
    }

    public final void B0(String str) {
        int i = TextUtils.isEmpty(str) ? 0 : 8;
        int i2 = TextUtils.isEmpty(str) ? 8 : 0;
        findViewById(R.id.emptyL).setVisibility(i);
        Button button = (Button) findViewById(R.id.bindBtn);
        button.setOnClickListener(new a());
        if (TextUtils.isEmpty(str)) {
            button.setText(R.string.xn_bind_email);
            button.setTextColor(getColorStateList(R.color.os_button_on_color_selector));
            button.setBackgroundResource(R.drawable.os_btn_big);
        } else {
            button.setText(R.string.xn_change);
            button.setTextColor(getColorStateList(R.color.os_platform_basic_color_selector));
            button.setBackgroundResource(R.drawable.os_btn_big_gray);
        }
        TextView textView = (TextView) findViewById(R.id.title);
        textView.setText(r0(R.string.xn_bound, str));
        textView.setVisibility(i2);
        int i3 = R.id.tips;
        findViewById(i3).setVisibility(i2);
        TextView textView2 = (TextView) findViewById(R.id.unboundTips);
        int i4 = R.string.xn_unbind_tips;
        int i5 = R.string.xn_email_middle;
        textView2.setText(r0(i4, getString(i5)));
        ((TextView) findViewById(i3)).setText(r0(R.string.xn_bind_tips, getString(i5)));
        ((OverBoundNestedScrollView) findViewById(R.id.scrollView)).setUpOverScroll();
    }

    @Override
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == this.e && i2 == -1 && intent != null) {
            this.h = true;
            this.g = intent.getStringExtra(NotificationCompat.CATEGORY_EMAIL);
            ao7 ao7Var = ao7.a.a;
            AccountRes accountResJ = ao7Var.j(this);
            accountResJ.email = this.g;
            ao7Var.c(this, accountResJ);
            B0(this.g);
        }
    }

    @Override
    public void onBackPressed() {
        if (this.h) {
            Intent intent = new Intent();
            intent.putExtra(NotificationCompat.CATEGORY_EMAIL, this.g);
            setResult(-1, intent);
        }
        super.onBackPressed();
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.xn_activity_manage_email);
        this.f = getIntent().getStringExtra("accountId");
        getActionBar().setTitle(getString(R.string.xn_email));
        getActionBar().setDisplayHomeAsUpEnabled(true);
        if (bundle != null && bundle.containsKey(NotificationCompat.CATEGORY_EMAIL)) {
            this.g = bundle.getString(NotificationCompat.CATEGORY_EMAIL);
        }
        if (TextUtils.isEmpty(this.g)) {
            this.g = getIntent().getStringExtra(NotificationCompat.CATEGORY_EMAIL);
        }
        B0(this.g);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            if (this.h) {
                Intent intent = new Intent();
                intent.putExtra(NotificationCompat.CATEGORY_EMAIL, this.g);
                setResult(-1, intent);
            }
            finish();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override
    public void onResume() {
        super.onResume();
        View viewFindViewById = findViewById(R.id.placeholder);
        ViewGroup.LayoutParams layoutParams = viewFindViewById.getLayoutParams();
        layoutParams.height = z0();
        viewFindViewById.setLayoutParams(layoutParams);
    }

    @Override
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (TextUtils.isEmpty(this.g)) {
            return;
        }
        bundle.putString(NotificationCompat.CATEGORY_EMAIL, this.g);
    }
}
