package com.transsion.xuanniao.account.bind.contact.view;

import android.content.Intent;
import android.os.Bundle;
import android.text.BidiFormatter;
import android.text.TextDirectionHeuristics;
import android.text.TextUtils;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.transsion.widgetslib.view.OverBoundNestedScrollView;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.comm.mvpbase.BaseActivity;
import com.transsion.xuanniao.account.model.data.EmergencyListRes;
import defpackage.fq7;
import defpackage.rm7;
import java.io.Serializable;

public class ManageEmergencyContactActivity extends BaseActivity {
    public EmergencyListRes.Emergency f;
    public BidiFormatter h;
    public int e = 1001;
    public boolean g = false;

    public class a extends rm7 {
        public a() {
        }

        @Override
        public void b(View view) {
            if (view.getId() == R.id.bindBtn) {
                Intent intent = new Intent(ManageEmergencyContactActivity.this, (Class<?>) BindingEmergencyContactActivity.class);
                EmergencyListRes.Emergency emergency = ManageEmergencyContactActivity.this.f;
                if (emergency != null) {
                    intent.putExtra("emergency", emergency);
                }
                ManageEmergencyContactActivity manageEmergencyContactActivity = ManageEmergencyContactActivity.this;
                manageEmergencyContactActivity.startActivityForResult(intent, manageEmergencyContactActivity.e);
            }
        }
    }

    public final void B0(EmergencyListRes.Emergency emergency) {
        TextView textView = (TextView) findViewById(R.id.name);
        int i = 0;
        int i2 = 8;
        if (emergency != null) {
            if (TextUtils.isEmpty(emergency.phone)) {
                findViewById(R.id.phoneL).setVisibility(8);
            } else {
                this.h = BidiFormatter.getInstance();
                findViewById(R.id.phoneL).setVisibility(0);
                ((TextView) findViewById(R.id.phone)).setText(this.h.unicodeWrap(fq7.e(emergency.phone), TextDirectionHeuristics.LTR));
            }
            if (TextUtils.isEmpty(emergency.email)) {
                findViewById(R.id.emailL).setVisibility(8);
            } else {
                findViewById(R.id.emailL).setVisibility(0);
                ((TextView) findViewById(R.id.email)).setText(emergency.email);
            }
            textView.setText(emergency.userName);
        } else {
            i2 = 0;
            i = 8;
        }
        findViewById(R.id.nameL).setVisibility(i);
        findViewById(R.id.attentionL).setVisibility(i);
        findViewById(R.id.addLabel).setVisibility(i);
        findViewById(R.id.emptyL).setVisibility(i2);
        Button button = (Button) findViewById(R.id.bindBtn);
        button.setOnClickListener(new a());
        if (emergency == null) {
            button.setText(R.string.xn_add_to_account);
            button.setTextColor(getColorStateList(R.color.os_button_on_color_selector));
            button.setBackgroundResource(R.drawable.os_btn_big);
        } else {
            button.setText(R.string.xn_change);
            button.setTextColor(getColorStateList(R.color.os_platform_basic_color_selector));
            button.setBackgroundResource(R.drawable.os_btn_big_gray);
        }
        ((OverBoundNestedScrollView) findViewById(R.id.scrollView)).setUpOverScroll();
    }

    @Override
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == this.e && i2 == -1 && intent != null) {
            Serializable serializableExtra = intent.getSerializableExtra("emergency");
            if (serializableExtra instanceof EmergencyListRes.Emergency) {
                this.g = true;
                EmergencyListRes.Emergency emergency = (EmergencyListRes.Emergency) serializableExtra;
                this.f = emergency;
                B0(emergency);
            }
        }
    }

    @Override
    public void onBackPressed() {
        if (this.g) {
            Intent intent = new Intent();
            intent.putExtra("emergency", this.f);
            setResult(-1, intent);
        }
        super.onBackPressed();
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.xn_activity_manage_emergency_contact);
        Serializable serializableExtra = getIntent().getSerializableExtra("emergency");
        if (serializableExtra instanceof EmergencyListRes.Emergency) {
            this.f = (EmergencyListRes.Emergency) serializableExtra;
        }
        getActionBar().setTitle(getString(R.string.xn_emergency_contact));
        getActionBar().setDisplayHomeAsUpEnabled(true);
        B0(this.f);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            if (this.g) {
                Intent intent = new Intent();
                intent.putExtra("emergency", this.f);
                setResult(-1, intent);
            }
            finish();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        if (bundle.containsKey("emergency")) {
            EmergencyListRes.Emergency emergency = (EmergencyListRes.Emergency) bundle.getSerializable("emergency");
            this.f = emergency;
            B0(emergency);
        }
        this.g = bundle.getBoolean("isModify");
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
        EmergencyListRes.Emergency emergency = this.f;
        if (emergency != null) {
            bundle.putSerializable("emergency", emergency);
        }
        bundle.putBoolean("isModify", this.g);
    }
}
