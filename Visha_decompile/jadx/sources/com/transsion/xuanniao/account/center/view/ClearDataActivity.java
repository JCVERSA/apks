package com.transsion.xuanniao.account.center.view;

import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.text.style.UnderlineSpan;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.google.gson.Gson;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.comm.mvpbase.BaseActivity;
import com.transsion.xuanniao.account.model.data.AccountRes;
import com.transsion.xuanniao.account.model.data.CloudItem;
import com.transsion.xuanniao.account.pwd.view.VerifyPwdActivity;
import defpackage.ao7;
import defpackage.cp7;
import defpackage.dr7;
import defpackage.er7;
import defpackage.hr7;
import defpackage.hu4;
import defpackage.ir7;
import defpackage.kl7;
import defpackage.l41;
import defpackage.mr7;
import defpackage.om7;
import defpackage.wq7;
import defpackage.xj;
import java.util.ArrayList;

public class ClearDataActivity extends BaseActivity implements View.OnClickListener, cp7 {
    public static final int h = 0;
    public om7 e;
    public kl7 f;
    public mr7 g;

    public class a implements AdapterView.OnItemClickListener {
        public a() {
        }

        @Override
        public void onItemClick(AdapterView adapterView, View view, int i, long j) {
            om7 om7Var = ClearDataActivity.this.e;
            int i2 = 0;
            while (i2 < om7Var.b.size()) {
                ((CloudItem) om7Var.b.get(i2)).select = i2 == i;
                i2++;
            }
            om7Var.notifyDataSetChanged();
        }
    }

    public class b implements mr7.a {
        public b() {
        }
    }

    public class c implements hu4.c {
        public c() {
        }
    }

    public class d implements hu4.b {
        public d() {
        }
    }

    public static void B0(ClearDataActivity clearDataActivity) {
        if (clearDataActivity.f.e) {
            clearDataActivity.D0();
            return;
        }
        mr7 mr7Var = clearDataActivity.g;
        AccountRes accountRes = mr7Var.b;
        if (accountRes != null ? accountRes.existPassword : false) {
            Log.d("com.palm.id.log", "Verify pwd");
            Intent intent = new Intent(mr7Var.a, (Class<?>) VerifyPwdActivity.class);
            intent.putExtra("havePhoneOrEmail", mr7Var.a());
            intent.putExtra("operation", R.string.xn_logout_account);
            intent.putExtra("source", "CD");
            AccountRes accountRes2 = mr7Var.b;
            intent.putExtra("accountId", accountRes2 != null ? accountRes2.username : "");
            mr7Var.a.startActivityForResult(intent, 2001);
            return;
        }
        xj.U(mr7Var.a).P();
        com.transsion.widgetslib.dialog.d dVarF = new com.transsion.widgetslib.dialog.d.a(mr7Var.a, R.style.dialog_soft_input).D(R.layout.xn_clear_set_pwd_note).B(mr7Var.a.getString(R.string.xn_set_pwd_note)).f(false).w(mr7Var.a.getString(R.string.xn_go_logout), new dr7(mr7Var)).n(mr7Var.a.getString(R.string.xn_not_logout_now), new wq7(mr7Var)).F();
        TextView textView = (TextView) dVarF.findViewById(R.id.note);
        String str = mr7Var.a.getString(R.string.xn_logout_pwd_note) + " ";
        SpannableString spannableString = new SpannableString(str + mr7Var.a.getString(R.string.xn_go_setting));
        spannableString.setSpan(new ForegroundColorSpan(mr7Var.a.getColor(R.color.os_platform_basic_color_selector)), str.length(), spannableString.length(), 33);
        spannableString.setSpan(new UnderlineSpan(), str.length(), spannableString.length(), 33);
        spannableString.setSpan(new er7(mr7Var.a, new hr7(mr7Var, dVarF)), str.length(), spannableString.length(), 33);
        textView.setText(spannableString);
        textView.setMovementMethod(ir7.a());
    }

    @Override
    public void B() {
        setResult(-1);
        finish();
    }

    public final void C0() {
        Cursor cursorA;
        kl7 kl7Var = this.f;
        if (kl7Var.d == null && (cursorA = l41.a(kl7Var.b())) != null) {
            kl7Var.d = new ArrayList();
            while (cursorA.moveToNext()) {
                CloudItem cloudItem = new CloudItem();
                cloudItem.resId = Integer.parseInt(cursorA.getString(cursorA.getColumnIndex(CloudItem.KEY_STRING_ID)));
                int i = Integer.parseInt(cursorA.getString(cursorA.getColumnIndex(CloudItem.KEY_CATEGORY)));
                cloudItem.category = i;
                if (3 != i) {
                    kl7Var.d.add(cloudItem);
                }
            }
        }
        this.e = new om7(this, kl7Var.d);
        ListView listView = (ListView) findViewById(R.id.listView);
        listView.setAdapter((ListAdapter) this.e);
        listView.setOnItemClickListener(new a());
        findViewById(R.id.next).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.onClick(view);
            }
        });
        kl7 kl7Var2 = this.f;
        if (kl7Var2.b == null) {
            kl7Var2.b = ao7.a.a.j(kl7Var2.b());
        }
        this.g = new mr7(this, kl7Var2.b, new b());
    }

    public final void D0() {
        if (this.e.a().length == 0) {
            u0(getString(R.string.xn_logout_now));
        } else {
            u0(getString(R.string.xn_removing));
        }
        xj.U(this).m1();
        Log.d("com.palm.id.log", "clearCloudData start");
        hu4.a().b(this, false, this.e.a(), new d());
    }

    @Override
    public Context J() {
        return this;
    }

    @Override
    public void onActivityResult(int i, int i2, Intent intent) {
        kl7 kl7Var;
        AccountRes accountRes;
        mr7.a aVar;
        mr7 mr7Var = this.g;
        mr7Var.getClass();
        if (i == 2001) {
            if (i2 != -1 || (aVar = mr7Var.c) == null) {
                return;
            }
            ClearDataActivity.this.D0();
            return;
        }
        if (i == 2002 && i2 == -1) {
            mr7Var.b.existPassword = true;
            mr7.a aVar2 = mr7Var.c;
            if (aVar2 == null || (accountRes = (kl7Var = ClearDataActivity.this.f).b) == null) {
                return;
            }
            accountRes.existPassword = true;
            ao7.a.a.c(kl7Var.b(), kl7Var.b);
        }
    }

    @Override
    public void onClick(View view) {
        if (view.getId() == R.id.next) {
            xj xjVarU = xj.U(this);
            ArrayList arrayList = this.e.b;
            ArrayList arrayList2 = new ArrayList();
            if (arrayList != null) {
                for (int i = 0; i < arrayList.size(); i++) {
                    if (((CloudItem) arrayList.get(i)).select) {
                        if (((CloudItem) arrayList.get(i)).category == 1) {
                            arrayList2.add("Contacts");
                        } else if (((CloudItem) arrayList.get(i)).category == 2) {
                            arrayList2.add("Block");
                        } else if (((CloudItem) arrayList.get(i)).category == 3) {
                            arrayList2.add("WLAN");
                        }
                    }
                }
            }
            xjVarU.p0(arrayList2.size() > 0 ? new Gson().toJson(arrayList2) : "");
            if (this.f.e) {
                xj.U(this).J();
            }
            u0(getString(R.string.xn_loading));
            Log.d("com.palm.id.log", "start getSyncState");
            hu4.a().c(this, new c());
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.xn_activity_clear_data);
        kl7 kl7Var = new kl7();
        this.f = kl7Var;
        kl7Var.a = this;
        kl7Var.e = getIntent().getBooleanExtra("loginTimeout", false);
        getActionBar().setTitle(getString(R.string.xn_logout_account));
        getActionBar().setDisplayHomeAsUpEnabled(true);
        C0();
        xj.U(this).K(getIntent().getStringExtra("source"));
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        this.f.a = null;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
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
}
