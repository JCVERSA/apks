package com.transsion.xuanniao.account.login.view;

import OppOpO0.OppO00p;
import android.content.Context;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.effectengine.bounceeffect.OverScrollDecorHelper;
import com.transsion.widgetslib.util.search.SearchAnimManager;
import com.transsion.widgetslib.widget.SearchBar;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.comm.mvpbase.BaseActivity;
import com.transsion.xuanniao.account.model.data.CountryData;
import defpackage.ll7;
import defpackage.nk7;
import defpackage.on7;
import defpackage.qm7;
import java.util.ArrayList;

public class CountrySelectActivity extends BaseActivity implements qm7 {
    public OppO0OO e;
    public ll7 f;
    public SearchBar g;

    public class a implements TextWatcher {
        public a() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            Log.d("com.palm.id.log", "onTextChanged charSequence = " + ((Object) charSequence));
            CountrySelectActivity countrySelectActivity = CountrySelectActivity.this;
            if (countrySelectActivity.e != null) {
                ArrayList arrayListE0 = countrySelectActivity.E0(charSequence.toString());
                CountrySelectActivity.this.e.c(arrayListE0);
                CountrySelectActivity.this.findViewById(R.id.emptyL).setVisibility(arrayListE0 == null || arrayListE0.isEmpty() ? 0 : 8);
            }
        }
    }

    public void D0(View view) {
        finish();
    }

    public void H0() {
        this.g.startSearch();
    }

    public final ArrayList E0(String str) {
        if (this.f.c() == null) {
            return null;
        }
        if (TextUtils.isEmpty(str)) {
            return this.f.c();
        }
        ArrayList arrayList = new ArrayList();
        for (CountryData.Country country : this.f.c()) {
            if (country.displayName.toLowerCase().contains(str.toLowerCase()) || country.country.toLowerCase().contains(str.toLowerCase()) || country.code.toLowerCase().contains(str.toLowerCase())) {
                arrayList.add(country);
            }
        }
        return arrayList;
    }

    public final void F0() {
        View viewFindViewById = findViewById(R.id.contentView);
        this.g = (SearchBar) findViewById(R.id.search_bar);
        if (SearchAnimManager.getInstance().getActionPolicy() == 1) {
            SearchAnimManager.getInstance().B(this.g, viewFindViewById);
            this.g.post(new Runnable() {
                @Override
                public final void run() {
                    SearchAnimManager.getInstance().b();
                }
            });
        } else {
            this.g.post(new Runnable() {
                @Override
                public final void run() {
                    this.b.H0();
                }
            });
        }
        this.g.setBackClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.D0(view);
            }
        });
        if (getIntent().getBooleanExtra("notShowCode", false)) {
            this.g.setHint(getString(R.string.xn_country_region_hint));
        } else {
            this.g.setHint(getString(R.string.xn_country_hint));
        }
        this.g.getEditText().setTextDirection(5);
        this.g.addTextWatcher(new a());
    }

    @Override
    public Context J() {
        return this;
    }

    @Override
    public void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        super.onCreate(bundle);
        setContentView(R.layout.xn_activity_country_select);
        ll7 ll7Var = new ll7();
        this.f = ll7Var;
        ll7Var.a = this;
        ((on7) ll7Var.c).a(ll7Var.b(), new nk7(ll7Var, ll7Var.b(), CountryData.class));
        F0();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        ll7 ll7Var = this.f;
        if (ll7Var != null) {
            ll7Var.a = null;
        }
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override
    public void y(ArrayList arrayList) {
        ArrayList arrayListE0 = E0(this.g.getEditText().getText().toString());
        OppO0OO oppO0OO = this.e;
        if (oppO0OO == null) {
            RecyclerView recyclerView = (RecyclerView) findViewById(R.id.listView2);
            OppO0OO oppO0OO2 = new OppO0OO(this, arrayListE0);
            this.e = oppO0OO2;
            oppO0OO2.r = getIntent().getBooleanExtra("notShowCode", false);
            this.e.b(getIntent().getStringExtra("countryCode"), getIntent().getStringExtra("countryName"));
            recyclerView.setLayoutManager(new LinearLayoutManager(this));
            recyclerView.setAdapter(this.e);
            this.e.q = new c(this);
            recyclerView.postDelayed(new OppO00p(this, recyclerView), 50L);
            OverScrollDecorHelper.setUpOverScroll(recyclerView, 0);
        } else {
            oppO0OO.c(arrayListE0);
        }
        findViewById(R.id.emptyL).setVisibility(arrayListE0 == null || arrayListE0.isEmpty() ? 0 : 8);
    }
}
