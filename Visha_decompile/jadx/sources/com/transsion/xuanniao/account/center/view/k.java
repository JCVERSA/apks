package com.transsion.xuanniao.account.center.view;

import android.content.Intent;
import android.view.View;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.model.data.AddressesListRes;
import defpackage.xj;
import java.util.ArrayList;

public class k implements View.OnClickListener {
    public final OppOOO0 b;

    public k(OppOOO0 oppOOO0) {
        this.b = oppOOO0;
    }

    @Override
    public void onClick(View view) {
        int i = Integer.parseInt(String.valueOf(view.getTag()));
        OppOOO0 oppOOO0 = this.b;
        OppOOO0.a aVar = oppOOO0.q;
        if (aVar != null) {
            ArrayList arrayList = oppOOO0.o;
            AddressesListRes.Address address = arrayList != null ? (AddressesListRes.Address) arrayList.get(i) : null;
            MyAddressActivity.b bVar = (MyAddressActivity.b) aVar;
            MyAddressActivity myAddressActivity = MyAddressActivity.this;
            myAddressActivity.getClass();
            xj.U(myAddressActivity).k();
            Intent intent = new Intent(MyAddressActivity.this, (Class<?>) EditAddressActivity.class);
            intent.putExtra("title", R.string.xn_address_edit);
            intent.putExtra("address", address);
            MyAddressActivity myAddressActivity2 = MyAddressActivity.this;
            myAddressActivity2.startActivityForResult(intent, myAddressActivity2.e);
        }
    }
}
