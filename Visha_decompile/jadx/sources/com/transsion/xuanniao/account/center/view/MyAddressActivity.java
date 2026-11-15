package com.transsion.xuanniao.account.center.view;

import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.core.log.LogUtils;
import com.transsion.effectengine.bounceeffect.OverScrollDecorHelper;
import com.transsion.widgetslib.view.OverBoundNestedScrollView;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.comm.mvpbase.BaseActivity;
import com.transsion.xuanniao.account.comm.widget.NoWifiPage;
import defpackage.fp7;
import defpackage.qr7;
import defpackage.rm7;
import defpackage.vp7;
import defpackage.xj;
import java.util.ArrayList;

public class MyAddressActivity extends BaseActivity implements vp7 {
    public static final int k = 0;
    public int e = 1001;
    public qr7 f;
    public RecyclerView g;
    public OppOOO0 h;
    public NoWifiPage i;
    public Button j;

    public class a implements NoWifiPage.b {
        public a() {
        }

        @Override
        public void a() {
            MyAddressActivity.this.f.c(true);
        }
    }

    public class b implements OppOOO0.a {
        public b() {
        }
    }

    public class c extends rm7 {
        public c() {
        }

        @Override
        public void b(View view) {
            if (view.getId() == R.id.addAddress) {
                MyAddressActivity myAddressActivity = MyAddressActivity.this;
                myAddressActivity.getClass();
                xj.U(myAddressActivity).i();
                Intent intent = new Intent(MyAddressActivity.this, (Class<?>) EditAddressActivity.class);
                intent.putExtra("title", R.string.xn_address_add);
                MyAddressActivity myAddressActivity2 = MyAddressActivity.this;
                myAddressActivity2.startActivityForResult(intent, myAddressActivity2.e);
            }
        }
    }

    public final void B0() {
        ArrayList arrayList;
        qr7 qr7Var = this.f;
        if (qr7Var == null || (arrayList = qr7Var.c) == null) {
            return;
        }
        this.j.setEnabled(arrayList.size() < 5);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x003b, code lost:
    
        if (r0.hasTransport(3) != false) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void C0() {
        if (this.f.c == null) {
            ConnectivityManager connectivityManager = (ConnectivityManager) getApplicationContext().getSystemService("connectivity");
            if (connectivityManager != null) {
                try {
                    Network activeNetwork = connectivityManager.getActiveNetwork();
                    if (activeNetwork != null) {
                        NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork);
                        if (networkCapabilities != null) {
                            if (!networkCapabilities.hasTransport(1)) {
                                if (!networkCapabilities.hasTransport(0)) {
                                    if (!networkCapabilities.hasTransport(4)) {
                                    }
                                }
                            }
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if (this.i == null) {
                NoWifiPage noWifiPage = new NoWifiPage(this);
                this.i = noWifiPage;
                noWifiPage.setReload(new a());
            }
            this.i.OppO0O0(this);
            return;
        }
        NoWifiPage noWifiPage2 = this.i;
        if (noWifiPage2 != null) {
            noWifiPage2.OppO00p(this);
        }
    }

    @Override
    public Context J() {
        return this;
    }

    @Override
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == this.e && i2 == -1) {
            y0(getString(R.string.xn_save_success));
            OppOOO0 oppOOO0 = this.h;
            if (oppOOO0 != null && oppOOO0.getItemCount() == 4) {
                this.j.setEnabled(false);
            }
            this.f.c(false);
        }
    }

    @Override
    public void onBackPressed() {
        Intent intent = new Intent();
        intent.putExtra("addresses", this.f.c);
        setResult(-1, intent);
        super.onBackPressed();
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.xn_activity_my_address);
        qr7 qr7Var = new qr7();
        this.f = qr7Var;
        qr7Var.a = this;
        qr7Var.c = (ArrayList) getIntent().getSerializableExtra("addresses");
        ArrayList arrayList = this.f.c;
        if (arrayList == null || arrayList.size() == 0) {
            this.f.c(false);
        } else {
            xj.U(this).l(this.f.c.size());
        }
        getActionBar().setTitle(getString(R.string.xn_my_address));
        getActionBar().setDisplayHomeAsUpEnabled(true);
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.addressListView2);
        this.g = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        Button button = (Button) findViewById(R.id.addAddress);
        this.j = button;
        button.setOnClickListener(new c());
        OverScrollDecorHelper.setUpOverScroll(this.g, 0);
        ((OverBoundNestedScrollView) findViewById(R.id.scrollView)).setUpOverScroll();
        y(this.f.c);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        this.f.a = null;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            Intent intent = new Intent();
            intent.putExtra("addresses", this.f.c);
            setResult(-1, intent);
            finish();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override
    public void onRestoreInstanceState(Bundle bundle) {
        qr7 qr7Var;
        super.onRestoreInstanceState(bundle);
        ArrayList arrayList = (ArrayList) fp7.a(bundle.get("addressData"), ArrayList.class);
        OppOOO0 oppOOO0 = this.h;
        if (oppOOO0 != null && (qr7Var = this.f) != null) {
            qr7Var.c = arrayList;
            oppOOO0.o = arrayList;
            oppOOO0.notifyDataSetChanged();
        }
        B0();
    }

    @Override
    public void onResume() {
        super.onResume();
        C0();
        View viewFindViewById = findViewById(R.id.placeholder);
        ViewGroup.LayoutParams layoutParams = viewFindViewById.getLayoutParams();
        layoutParams.height = z0();
        viewFindViewById.setLayoutParams(layoutParams);
    }

    @Override
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        OppOOO0 oppOOO0 = this.h;
        if (oppOOO0 != null) {
            bundle.putSerializable("addressData", oppOOO0.o);
        }
    }

    @Override
    public void y(ArrayList arrayList) {
        C0();
        if (arrayList == null || arrayList.size() == 0) {
            findViewById(R.id.scrollView).setVisibility(0);
            this.g.setVisibility(8);
            return;
        }
        findViewById(R.id.scrollView).setVisibility(8);
        this.g.setVisibility(0);
        OppOOO0 oppOOO0 = this.h;
        if (oppOOO0 == null) {
            OppOOO0 oppOOO1 = new OppOOO0(this, arrayList);
            this.h = oppOOO1;
            oppOOO1.q = new b();
            this.g.setAdapter(oppOOO1);
        } else {
            oppOOO0.o = arrayList;
            oppOOO0.notifyDataSetChanged();
        }
        LogUtils.d("MyAddressActivity", "fillDataToPage addresses size := " + (arrayList.isEmpty() ? 0 : arrayList.size()));
        B0();
    }
}
