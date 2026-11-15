package com.transsion.xuanniao.account.center.view;

import android.view.View;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.model.data.AddressesListRes;
import defpackage.ds7;

public class l implements View.OnLongClickListener {
    public final AddressesListRes.Address b;
    public final OppOOO0 c;

    public l(OppOOO0 oppOOO0, AddressesListRes.Address address) {
        this.c = oppOOO0;
        this.b = address;
    }

    @Override
    public boolean onLongClick(View view) {
        OppOOO0.a aVar = this.c.q;
        if (aVar == null) {
            return false;
        }
        AddressesListRes.Address address = this.b;
        MyAddressActivity myAddressActivity = MyAddressActivity.this;
        int i = MyAddressActivity.k;
        new com.transsion.widgetslib.dialog.d.a(myAddressActivity, R.style.dialog_soft_input).B(myAddressActivity.getString(R.string.xn_operating_address)).i(new String[]{myAddressActivity.getString(R.string.xn_edit_address_list_1), myAddressActivity.getString(R.string.xn_edit_address_list_2)}, new ds7(myAddressActivity, address)).F();
        return false;
    }
}
