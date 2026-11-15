package defpackage;

import android.content.DialogInterface;
import com.transsion.xuanniao.account.center.view.MyAddressActivity;
import com.transsion.xuanniao.account.model.data.AddressesListRes;

public class es7 implements DialogInterface.OnClickListener {
    public final AddressesListRes.Address b;
    public final MyAddressActivity c;

    public es7(MyAddressActivity myAddressActivity, AddressesListRes.Address address) {
        this.c = myAddressActivity;
        this.b = address;
    }

    @Override
    public void onClick(DialogInterface dialogInterface, int i) {
        this.c.f.b(this.b.id);
    }
}
