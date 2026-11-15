package com.transsion.xuanniao.account.login.view;

import android.content.Intent;
import com.transsion.xuanniao.account.model.data.CountryData;

public class c implements OppO0OO.a {
    public final CountrySelectActivity a;

    public c(CountrySelectActivity countrySelectActivity) {
        this.a = countrySelectActivity;
    }

    public void a(CountryData.Country country) {
        Intent intent = new Intent();
        intent.putExtra("key_cc", country.code);
        intent.putExtra("key_name", country.displayName);
        intent.putExtra("key_name_en", country.country);
        this.a.setResult(-1, intent);
        this.a.finish();
    }
}
