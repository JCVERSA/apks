package defpackage;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.DialogInterface;
import com.transsion.widgetslib.dialog.d;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.center.view.MyAddressActivity;
import com.transsion.xuanniao.account.model.data.AddressesListRes;

public class ds7 implements DialogInterface.OnClickListener {
    public final AddressesListRes.Address b;
    public final MyAddressActivity c;

    public ds7(MyAddressActivity myAddressActivity, AddressesListRes.Address address) {
        this.c = myAddressActivity;
        this.b = address;
    }

    @Override
    public void onClick(DialogInterface dialogInterface, int i) {
        if (i == 0) {
            MyAddressActivity myAddressActivity = this.c;
            AddressesListRes.Address address = this.b;
            int i2 = MyAddressActivity.k;
            ((ClipboardManager) myAddressActivity.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("address", address.address));
            myAddressActivity.y0(myAddressActivity.getString(R.string.xn_address_copy));
            return;
        }
        MyAddressActivity myAddressActivity2 = this.c;
        AddressesListRes.Address address2 = this.b;
        int i3 = MyAddressActivity.k;
        myAddressActivity2.getClass();
        new d.a(myAddressActivity2, R.style.dialog_soft_input).k(myAddressActivity2.getString(R.string.xn_address_delete)).w(myAddressActivity2.getString(R.string.xn_delete), new es7(myAddressActivity2, address2)).n(myAddressActivity2.getString(R.string.xn_cancel), null).F().e(-1).setTextColor(myAddressActivity2.getColor(R.color.xn_error_text));
    }
}
