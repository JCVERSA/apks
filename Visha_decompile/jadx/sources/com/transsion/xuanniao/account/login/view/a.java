package com.transsion.xuanniao.account.login.view;

import android.view.View;
import com.transsion.xuanniao.account.model.data.CountryData;

public class a implements View.OnClickListener {
    public final CountryData.Country b;
    public final OppO0OO c;

    public a(OppO0OO oppO0OO, CountryData.Country country) {
        this.c = oppO0OO;
        this.b = country;
    }

    @Override
    public void onClick(View view) {
        OppO0OO.a aVar = this.c.q;
        if (aVar != null) {
            ((c) aVar).a(this.b);
        }
    }
}
