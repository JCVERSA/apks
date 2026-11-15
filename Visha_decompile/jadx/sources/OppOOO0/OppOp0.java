package OppOOO0;

import OppOOp0.OppO0O0;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.util.Log;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.center.view.UserCenterActivity;
import com.transsion.xuanniao.account.comm.mvpbase.BaseData;
import com.transsion.xuanniao.account.comm.mvpbase.BasePresenter;
import com.transsion.xuanniao.account.model.data.AccountRes;
import com.transsion.xuanniao.account.model.data.OptionItem;
import defpackage.am7;
import defpackage.ao7;
import defpackage.qq7;
import defpackage.sp7;
import defpackage.um7;
import defpackage.vk7;
import defpackage.wk7;
import defpackage.xl7;
import defpackage.yo7;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Response;

public class OppOp0 extends BasePresenter {
    public AccountRes e;
    public um7 g;
    public String f = "";
    public yo7 b = new yo7();
    public vk7 c = new vk7();
    public xl7 d = new sp7();

    public class OppO0Op implements Callback {

        public class OppO00p implements Runnable {
            public OppO00p() {
            }

            @Override
            public void run() {
                if (OppOp0.this.a()) {
                    OppOp0.this.e().y0(OppOp0.this.e().getString(R.string.xn_upload_img_failed));
                    OppOp0.this.e().A0();
                    ((qq7) OppOp0.this.a).u();
                }
            }
        }

        public class OppO0O0 implements Runnable {
            public OppO0O0() {
            }

            @Override
            public void run() {
                OppOp0.this.e().y0(OppOp0.this.e().getString(R.string.xn_upload_img_failed));
            }
        }

        public OppO0Op() {
        }

        @Override
        public void onFailure(Call call, IOException iOException) {
            Log.e("UploadPortraitPresenter", String.valueOf(iOException));
            if (OppOp0.this.a()) {
                OppOp0.this.e().runOnUiThread(new OppO00p());
            }
        }

        @Override
        public void onResponse(Call call, Response response) {
            if (OppOp0.this.a()) {
                ((qq7) OppOp0.this.a).u();
                if (!response.isSuccessful()) {
                    OppOp0.this.e().runOnUiThread(new OppO0O0());
                    return;
                }
                HashMap map = new HashMap();
                map.put("avatarUrl", OppOp0.this.f);
                OppOp0.this.c(map, "avatar", false);
            }
        }
    }

    public class a extends OppO0O0 {
        public final String k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Context context, String str, Class cls, String str2) {
            super(context, str, cls);
            this.k = str2;
        }

        @Override
        public void b(int i, Object obj, String str) {
            AccountRes accountRes = (AccountRes) obj;
            if (OppOp0.this.a()) {
                OppOp0.this.e().A0();
                if (accountRes != null) {
                    OppOp0.this.e = accountRes;
                }
                ao7.a.a.c(OppOp0.this.e(), OppOp0.this.e);
                OppOp0 oppOp0 = OppOp0.this;
                ((qq7) oppOp0.a).G(oppOp0.e, str);
            }
        }

        @Override
        public void g() {
            if (OppOp0.this.a()) {
                OppOp0.this.b(this.k);
            }
        }
    }

    public class b extends OppO0O0 {
        public b(Context context, Class cls) {
            super(context, cls);
        }

        @Override
        public void b(int i, Object obj, String str) {
            if (OppOp0.this.a()) {
                OppOp0.this.e().A0();
                ((qq7) OppOp0.this.a).B();
            }
        }

        @Override
        public void g() {
            if (OppOp0.this.a()) {
                OppOp0.this.d(false);
            }
        }
    }

    public class c extends OppO0O0 {
        public final HashMap k;
        public final String l;
        public final boolean m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Context context, String str, Class cls, HashMap map, String str2, boolean z) {
            super(context, str, cls);
            this.k = map;
            this.l = str2;
            this.m = z;
        }

        @Override
        public void b(int i, Object obj, String str) {
            if (OppOp0.this.a()) {
                OppOp0.this.e().A0();
                OppOp0 oppOp0 = OppOp0.this;
                oppOp0.e.avatarUrl = oppOp0.f;
                ao7.a.a.c(oppOp0.e(), OppOp0.this.e);
                am7.a(OppOp0.this.e(), wk7.a(), null);
                OppOp0 oppOp1 = OppOp0.this;
                ((qq7) oppOp1.a).G(oppOp1.e, str);
            }
        }

        @Override
        public void g() {
            if (OppOp0.this.a()) {
                OppOp0.this.c(this.k, this.l, this.m);
            }
        }
    }

    public void b(String str) {
        ConnectivityManager connectivityManager;
        NetworkCapabilities networkCapabilities;
        UserCenterActivity userCenterActivityE = e();
        if (userCenterActivityE == null || (connectivityManager = (ConnectivityManager) userCenterActivityE.getApplicationContext().getSystemService("connectivity")) == null) {
            return;
        }
        try {
            Network activeNetwork = connectivityManager.getActiveNetwork();
            if (activeNetwork == null || (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) == null) {
                return;
            }
            if (networkCapabilities.hasTransport(1) || networkCapabilities.hasTransport(0) || networkCapabilities.hasTransport(4) || networkCapabilities.hasTransport(3)) {
                e().u0(e().getString(R.string.xn_loading));
                try {
                    this.c.a(e(), new a(e(), str, AccountRes.class, str));
                } catch (Exception e) {
                    e.printStackTrace();
                    e().A0();
                    e().y0(e().getString(R.string.xn_net_unavailable));
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void c(HashMap map, String str, boolean z) {
        if (this.a == null) {
            return;
        }
        if (z) {
            e().u0(e().getString(R.string.xn_loading));
        }
        try {
            this.c.c(e(), map, new c(e(), str, BaseData.class, map, str, z));
        } catch (Exception e) {
            e.printStackTrace();
            e().A0();
            e().y0(e().getString(R.string.xn_net_unavailable));
        }
    }

    public void d(boolean z) {
        if (z) {
            ((qq7) this.a).B();
        } else {
            e().u0(e().getString(R.string.xn_logout_now));
            this.b.a(e(), new b(e(), BaseData.class));
        }
    }

    public final UserCenterActivity e() {
        return (UserCenterActivity) ((qq7) this.a).J();
    }

    public List f() {
        xl7 xl7Var = this.d;
        if (xl7Var == null) {
            return null;
        }
        UserCenterActivity userCenterActivityE = e();
        userCenterActivityE.getClass();
        ArrayList arrayList = new ArrayList();
        OptionItem optionItem = new OptionItem();
        optionItem.optionType = 1;
        optionItem.optionName = userCenterActivityE.getString(R.string.xn_logout);
        arrayList.add(optionItem);
        return arrayList;
    }
}
