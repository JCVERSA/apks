package defpackage;

import OppOOp0.OppO0O0;
import android.content.Context;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.center.view.MyAddressActivity;
import com.transsion.xuanniao.account.comm.mvpbase.BaseData;
import com.transsion.xuanniao.account.comm.mvpbase.BasePresenter;
import com.transsion.xuanniao.account.model.data.AddressesListRes;
import java.util.ArrayList;
import java.util.HashMap;

public class qr7 extends BasePresenter {
    public zl7 b = new zl7();
    public ArrayList c;

    public class a extends OppO0O0 {
        public a(Context context, Class cls) {
            super(context, cls);
        }

        @Override
        public void b(int i, Object obj, String str) {
            AddressesListRes addressesListRes = (AddressesListRes) obj;
            if (qr7.this.a()) {
                qr7.this.d().A0();
                qr7 qr7Var = qr7.this;
                ArrayList<AddressesListRes.Address> arrayList = addressesListRes.addresses;
                qr7Var.c = arrayList;
                ((vp7) qr7Var.a).y(arrayList);
            }
        }

        @Override
        public void g() {
            if (qr7.this.a()) {
                qr7.this.c(false);
            }
        }
    }

    public class b extends OppO0O0 {
        public final String k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Context context, Class cls, String str) {
            super(context, cls);
            this.k = str;
        }

        @Override
        public void b(int i, Object obj, String str) {
            if (qr7.this.a()) {
                qr7.this.d().A0();
                for (int i2 = 0; i2 < qr7.this.c.size(); i2++) {
                    if (((AddressesListRes.Address) qr7.this.c.get(i2)).id.equals(this.k)) {
                        qr7.this.c.remove(i2);
                        break;
                    }
                }
                qr7 qr7Var = qr7.this;
                ((vp7) qr7Var.a).y(qr7Var.c);
            }
        }

        @Override
        public void g() {
            if (qr7.this.a()) {
                qr7.this.b(this.k);
            }
        }
    }

    public void b(String str) {
        d().u0(d().getString(R.string.xn_loading));
        zl7 zl7Var = this.b;
        MyAddressActivity myAddressActivityD = d();
        b bVar = new b(d(), BaseData.class, str);
        zl7Var.getClass();
        HashMap map = new HashMap();
        map.put(TtmlNode.ATTR_ID, str);
        cr7 cr7Var = cr7.b.a;
        if (cr7Var.a(myAddressActivityD)) {
            new zn7().c(myAddressActivityD, dp7.a("/app/address/remove"), map, bVar);
            return;
        }
        if (myAddressActivityD != null) {
            myAddressActivityD.A0();
        }
        if (myAddressActivityD != null) {
            cr7Var.b(myAddressActivityD);
        }
    }

    public void c(boolean z) {
        if (z) {
            d().u0(d().getString(R.string.xn_loading));
        }
        try {
            this.b.a(d(), new a(d(), AddressesListRes.class));
        } catch (Exception e) {
            e.printStackTrace();
            d().A0();
            d().y0(d().getString(R.string.xn_net_unavailable));
        }
    }

    public final MyAddressActivity d() {
        return (MyAddressActivity) ((vp7) this.a).J();
    }
}
