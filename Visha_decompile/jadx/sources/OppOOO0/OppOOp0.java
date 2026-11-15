package OppOOO0;

import OppOOp0.OppO0O0;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.util.Log;
import com.transsion.livecaption.constant.ICode;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.center.view.PersonInfoActivity;
import com.transsion.xuanniao.account.comm.mvpbase.BaseData;
import com.transsion.xuanniao.account.comm.mvpbase.BasePresenter;
import com.transsion.xuanniao.account.model.data.AccountRes;
import com.transsion.xuanniao.account.model.data.AddressesListRes;
import com.transsion.xuanniao.account.model.data.AvatarRes;
import com.transsion.xuanniao.account.model.data.CommReq;
import com.transsion.xuanniao.account.model.data.CountryData;
import com.transsion.xuanniao.account.model.data.EncryptRes;
import defpackage.am7;
import defpackage.ao7;
import defpackage.cr7;
import defpackage.dp7;
import defpackage.go7;
import defpackage.jq7;
import defpackage.mk7;
import defpackage.vk7;
import defpackage.wk7;
import defpackage.xj;
import defpackage.zl7;
import defpackage.zn7;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;

public class OppOOp0 extends BasePresenter {
    public AccountRes c;
    public String f;
    public String g;
    public String h;
    public String i;
    public ArrayList j;
    public CountryData k;
    public String e = "";
    public vk7 d = new vk7();
    public zl7 b = new zl7();

    public class OppOO0 implements Callback {

        public class OppO00p implements Runnable {
            public OppO00p() {
            }

            @Override
            public void run() {
                if (OppOOp0.this.a()) {
                    OppOOp0.this.f().y0(OppOOp0.this.f().getString(R.string.xn_upload_img_failed));
                    OppOOp0.this.f().A0();
                    ((jq7) OppOOp0.this.a).u();
                }
            }
        }

        public class OppO0O0 implements Runnable {
            public OppO0O0() {
            }

            @Override
            public void run() {
                if (OppOOp0.this.a()) {
                    OppOOp0.this.f().y0(OppOOp0.this.f().getString(R.string.xn_upload_img_failed));
                    OppOOp0.this.f().A0();
                }
            }
        }

        public OppOO0() {
        }

        @Override
        public void onFailure(Call call, IOException iOException) {
            Log.e("UploadPortraitPresenter", String.valueOf(iOException));
            if (OppOOp0.this.a()) {
                OppOOp0.this.f().runOnUiThread(new OppO00p());
            }
        }

        @Override
        public void onResponse(Call call, Response response) {
            if (OppOOp0.this.a()) {
                if (!response.isSuccessful()) {
                    OppOOp0.this.f().runOnUiThread(new OppO0O0());
                    return;
                }
                HashMap map = new HashMap();
                map.put("avatarUrl", OppOOp0.this.e);
                OppOOp0.this.e(map, "avatar", false);
            }
        }
    }

    public class a extends OppO0O0 {
        public final HashMap k;
        public final String l;
        public final boolean m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Context context, String str, Class cls, HashMap map, String str2, boolean z) {
            super(context, str, cls);
            this.k = map;
            this.l = str2;
            this.m = z;
        }

        @Override
        public void b(int i, Object obj, String str) {
            if (OppOOp0.this.a()) {
                OppOOp0.this.f().A0();
                if ("avatar".equals(str)) {
                    xj.U(OppOOp0.this.f()).G0(1, null);
                    OppOOp0 oppOOp0 = OppOOp0.this;
                    AccountRes accountRes = oppOOp0.c;
                    String str2 = oppOOp0.e;
                    accountRes.avatarUrl = str2;
                    ((jq7) oppOOp0.a).F(str2);
                    return;
                }
                if (ICode.CALL.CALL_KEY_STATE.equals(str)) {
                    xj.U(OppOOp0.this.f()).H0(1, null);
                    OppOOp0.this.g = (String) this.k.get(ICode.CALL.CALL_KEY_STATE);
                    OppOOp0.this.i = (String) this.k.get("countryCode");
                    OppOOp0.this.c.countryName = (String) this.k.get("countryName");
                    OppOOp0 oppOOp1 = OppOOp0.this;
                    AccountRes accountRes2 = oppOOp1.c;
                    accountRes2.state = oppOOp1.g;
                    accountRes2.countryCode = oppOOp1.i;
                    ((jq7) oppOOp1.a).f0(accountRes2);
                    return;
                }
                if ("nickname".equals(str)) {
                    xj.U(OppOOp0.this.f()).E0(1, null);
                    OppOOp0 oppOOp2 = OppOOp0.this;
                    oppOOp2.c.nickname = oppOOp2.h;
                    oppOOp2.f();
                    int i2 = am7.a;
                    go7.a.a.getClass();
                    am7.a(OppOOp0.this.f(), wk7.a(), null);
                    OppOOp0 oppOOp3 = OppOOp0.this;
                    ((jq7) oppOOp3.a).f0(oppOOp3.c);
                }
            }
        }

        @Override
        public void d(BaseData baseData, String str) {
            if (OppOOp0.this.a()) {
                if ("avatar".equals(str)) {
                    xj.U(OppOOp0.this.f()).G0(0, String.valueOf(baseData.code));
                } else if (ICode.CALL.CALL_KEY_STATE.equals(str)) {
                    xj.U(OppOOp0.this.f()).H0(0, String.valueOf(baseData.code));
                } else if ("nickname".equals(str)) {
                    xj.U(OppOOp0.this.f()).E0(0, String.valueOf(baseData.code));
                }
                super.d(baseData, str);
            }
        }

        @Override
        public void g() {
            if (OppOOp0.this.a()) {
                OppOOp0.this.e(this.k, this.l, this.m);
            }
        }
    }

    public class b extends OppO0O0 {
        public final String k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Context context, String str, Class cls, String str2) {
            super(context, str, cls);
            this.k = str2;
        }

        @Override
        public void b(int i, Object obj, String str) {
            AccountRes accountRes = (AccountRes) obj;
            if (OppOOp0.this.a()) {
                OppOOp0.this.f().A0();
                if (accountRes != null) {
                    OppOOp0.this.c = accountRes;
                }
                ao7.a.a.c(OppOOp0.this.f(), OppOOp0.this.c);
                OppOOp0 oppOOp0 = OppOOp0.this;
                ((jq7) oppOOp0.a).f0(oppOOp0.c);
            }
        }

        @Override
        public void g() {
            if (OppOOp0.this.a()) {
                OppOOp0.this.c(this.k);
            }
        }
    }

    public class c extends OppO0O0 {
        public c(Context context, Class cls) {
            super(context, cls);
        }

        @Override
        public void b(int i, Object obj, String str) {
            AddressesListRes addressesListRes = (AddressesListRes) obj;
            if (OppOOp0.this.a()) {
                OppOOp0.this.f().A0();
                if (addressesListRes != null) {
                    OppOOp0 oppOOp0 = OppOOp0.this;
                    ArrayList<AddressesListRes.Address> arrayList = addressesListRes.addresses;
                    oppOOp0.j = arrayList;
                    ((jq7) oppOOp0.a).S(arrayList);
                }
            }
        }

        @Override
        public void g() {
            if (OppOOp0.this.a()) {
                OppOOp0.this.l();
            }
        }
    }

    public class d extends OppO0O0 {
        public final String k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(Context context, Class cls, String str) {
            super(context, cls);
            this.k = str;
        }

        @Override
        public void b(int i, Object obj, String str) {
            if (OppOOp0.this.a()) {
                xj.U(OppOOp0.this.f()).w0(1, null);
                OppOOp0.this.f().A0();
                OppOOp0 oppOOp0 = OppOOp0.this;
                String str2 = this.k;
                AccountRes accountRes = oppOOp0.c;
                if (accountRes != null) {
                    accountRes.birthday = str2;
                    ((jq7) oppOOp0.a).f0(accountRes);
                }
            }
        }

        @Override
        public void d(BaseData baseData, String str) {
            if (OppOOp0.this.a()) {
                xj.U(OppOOp0.this.f()).w0(0, String.valueOf(baseData.code));
                OppOOp0.this.f().A0();
                if (baseData.code == 400012) {
                    OppOOp0.this.f().y0(OppOOp0.this.f().getString(R.string.xn_birthday_error));
                } else {
                    super.d(baseData, str);
                }
            }
        }

        @Override
        public void g() {
            OppOOp0.this.g(this.k);
        }
    }

    public class e extends OppO0O0 {
        public final String k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(Context context, Class cls, String str) {
            super(context, cls);
            this.k = str;
        }

        @Override
        public void b(int i, Object obj, String str) {
            if (OppOOp0.this.a()) {
                xj.U(OppOOp0.this.f()).u0(1, null);
                OppOOp0.this.f().A0();
                OppOOp0 oppOOp0 = OppOOp0.this;
                String str2 = this.k;
                AccountRes accountRes = oppOOp0.c;
                if (accountRes != null) {
                    accountRes.signature = str2;
                    ((jq7) oppOOp0.a).f0(accountRes);
                }
            }
        }

        @Override
        public void d(BaseData baseData, String str) {
            if (OppOOp0.this.a()) {
                xj.U(OppOOp0.this.f()).u0(0, String.valueOf(baseData.code));
                super.d(baseData, str);
            }
        }

        @Override
        public void g() {
            OppOOp0.this.k(this.k);
        }
    }

    public class f extends OppO0O0 {
        public final String k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(Context context, Class cls, String str) {
            super(context, cls);
            this.k = str;
        }

        @Override
        public void b(int i, Object obj, String str) {
            if (OppOOp0.this.a()) {
                xj.U(OppOOp0.this.f()).C0(1, null);
                OppOOp0.this.f().A0();
                OppOOp0 oppOOp0 = OppOOp0.this;
                String str2 = this.k;
                AccountRes accountRes = oppOOp0.c;
                if (accountRes != null) {
                    accountRes.fullName = str2;
                    ((jq7) oppOOp0.a).f0(accountRes);
                }
            }
        }

        @Override
        public void d(BaseData baseData, String str) {
            if (OppOOp0.this.a()) {
                xj.U(OppOOp0.this.f()).C0(0, String.valueOf(baseData.code));
                super.d(baseData, str);
            }
        }

        @Override
        public void g() {
            OppOOp0.this.i(this.k);
        }
    }

    public class g extends OppO0O0 {
        public g(Context context, Class cls) {
            super(context, cls);
        }

        @Override
        public void b(int i, Object obj, String str) {
            if (OppOOp0.this.a()) {
                xj.U(OppOOp0.this.f()).y0(1, "");
                OppOOp0.this.f().A0();
                OppOOp0 oppOOp0 = OppOOp0.this;
                AccountRes accountRes = oppOOp0.c;
                accountRes.username = oppOOp0.f;
                accountRes.usernameModifyRemainTimes = 0;
                ((jq7) oppOOp0.a).f0(accountRes);
                ((jq7) OppOOp0.this.a).H();
            }
        }

        @Override
        public void d(BaseData baseData, String str) {
            if (OppOOp0.this.a()) {
                xj.U(OppOOp0.this.f()).y0(0, String.valueOf(baseData.code));
                int i = baseData.code;
                if (i == 400001) {
                    OppOOp0.this.f().A0();
                    ((jq7) OppOOp0.this.a).a0();
                } else if (i != 400202) {
                    super.d(baseData, str);
                } else {
                    OppOOp0.this.f().A0();
                    OppOOp0.this.f().y0(OppOOp0.this.f().getString(R.string.xn_cannot_modify));
                }
            }
        }

        @Override
        public void g() {
            if (OppOOp0.this.a()) {
                OppOOp0.this.j();
            }
        }
    }

    public class h extends OppO0O0 {
        public final int k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(Context context, Class cls, int i) {
            super(context, cls);
            this.k = i;
        }

        @Override
        public void b(int i, Object obj, String str) {
            if (OppOOp0.this.a()) {
                xj.U(OppOOp0.this.f()).J0(1, null);
                OppOOp0.this.f().A0();
                OppOOp0 oppOOp0 = OppOOp0.this;
                int i2 = this.k;
                AccountRes accountRes = oppOOp0.c;
                if (accountRes != null) {
                    accountRes.setGender(Integer.valueOf(i2));
                    ((jq7) oppOOp0.a).f0(oppOOp0.c);
                }
            }
        }

        @Override
        public void d(BaseData baseData, String str) {
            if (OppOOp0.this.a()) {
                xj.U(OppOOp0.this.f()).J0(0, String.valueOf(baseData.code));
                super.d(baseData, str);
            }
        }

        @Override
        public void g() {
            OppOOp0.this.b(this.k);
        }
    }

    public class i extends OppO0O0 {
        public final String k;
        public final Long l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(Context context, Class cls, String str, Long l) {
            super(context, cls);
            this.k = str;
            this.l = l;
        }

        @Override
        public void b(int i, Object obj, String str) {
            AvatarRes avatarRes = (AvatarRes) obj;
            if (OppOOp0.this.a()) {
                OppOOp0 oppOOp0 = OppOOp0.this;
                oppOOp0.e = avatarRes.avatarUrl;
                String str2 = avatarRes.uploadUrl;
                File fileV = ((jq7) oppOOp0.a).v();
                OkHttpClient.Builder builderNewBuilder = new OkHttpClient().newBuilder();
                TimeUnit timeUnit = TimeUnit.SECONDS;
                builderNewBuilder.connectTimeout(60L, timeUnit).writeTimeout(60L, timeUnit).readTimeout(60L, timeUnit).build().newCall(new Request.Builder().url(str2).put(RequestBody.create(MediaType.parse("application/octet-stream"), fileV)).build()).enqueue(oppOOp0.new OppOO0());
            }
        }

        @Override
        public void d(BaseData baseData, String str) {
            if (OppOOp0.this.a()) {
                ((jq7) OppOOp0.this.a).u();
                super.d(baseData, str);
            }
        }

        @Override
        public void g() {
            if (OppOOp0.this.a()) {
                OppOOp0.this.d(this.k, this.l);
            }
        }
    }

    public void b(int i2) {
        f().u0(f().getString(R.string.xn_loading));
        HashMap map = new HashMap();
        map.put("gender", Integer.valueOf(i2));
        try {
            PersonInfoActivity personInfoActivityF = f();
            h hVar = new h(f(), EncryptRes.class, i2);
            mk7 mk7VarA = ao7.a.a.a();
            hVar.f = mk7VarA;
            Object objGenerateReq = CommReq.generateReq(personInfoActivityF, mk7VarA, map);
            cr7 cr7Var = cr7.b.a;
            if (cr7Var.a(personInfoActivityF)) {
                new zn7().c(personInfoActivityF, dp7.a("/sdk/account/update-profile-crypt"), objGenerateReq, hVar);
                return;
            }
            if (personInfoActivityF != null) {
                personInfoActivityF.A0();
            }
            if (personInfoActivityF != null) {
                cr7Var.b(personInfoActivityF);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            if (a()) {
                f().A0();
                f().y0(f().getString(R.string.xn_net_unavailable));
            }
        }
    }

    public void c(String str) {
        ConnectivityManager connectivityManager;
        NetworkCapabilities networkCapabilities;
        if (this.c == null) {
            f().u0(f().getString(R.string.xn_loading));
        } else {
            PersonInfoActivity personInfoActivityF = f();
            if (personInfoActivityF == null || (connectivityManager = (ConnectivityManager) personInfoActivityF.getApplicationContext().getSystemService("connectivity")) == null) {
                return;
            }
            try {
                Network activeNetwork = connectivityManager.getActiveNetwork();
                if (activeNetwork == null || (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) == null) {
                    return;
                }
                if (!networkCapabilities.hasTransport(1) && !networkCapabilities.hasTransport(0) && !networkCapabilities.hasTransport(4) && !networkCapabilities.hasTransport(3)) {
                    return;
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                return;
            }
        }
        try {
            this.d.a(f(), new b(f(), str, AccountRes.class, str));
        } catch (Exception e3) {
            e3.printStackTrace();
            f().A0();
            f().y0(f().getString(R.string.xn_net_unavailable));
        }
    }

    public void d(String str, Long l) {
        f().u0(f().getString(R.string.xn_loading));
        this.d.d(f(), str, l, new i(f(), AvatarRes.class, str, l));
    }

    public void e(HashMap map, String str, boolean z) {
        if (this.a == null) {
            return;
        }
        if (z) {
            f().u0(f().getString(R.string.xn_loading));
        }
        try {
            this.d.c(f(), map, new a(f(), str, EncryptRes.class, map, str, z));
        } catch (Exception e2) {
            e2.printStackTrace();
            f().A0();
            f().y0(f().getString(R.string.xn_net_unavailable));
        }
    }

    public final PersonInfoActivity f() {
        return (PersonInfoActivity) ((jq7) this.a).J();
    }

    public void g(String str) {
        f().u0(f().getString(R.string.xn_loading));
        HashMap map = new HashMap();
        map.put("birthday", str);
        try {
            PersonInfoActivity personInfoActivityF = f();
            d dVar = new d(f(), EncryptRes.class, str);
            mk7 mk7VarA = ao7.a.a.a();
            dVar.f = mk7VarA;
            Object objGenerateReq = CommReq.generateReq(personInfoActivityF, mk7VarA, map);
            cr7 cr7Var = cr7.b.a;
            if (cr7Var.a(personInfoActivityF)) {
                new zn7().c(personInfoActivityF, dp7.a("/sdk/account/update-profile-crypt"), objGenerateReq, dVar);
                return;
            }
            if (personInfoActivityF != null) {
                personInfoActivityF.A0();
            }
            if (personInfoActivityF != null) {
                cr7Var.b(personInfoActivityF);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            if (a()) {
                f().A0();
                f().y0(f().getString(R.string.xn_net_unavailable));
            }
        }
    }

    public int h() {
        AccountRes accountRes = this.c;
        if (accountRes != null) {
            return accountRes.getGender().intValue();
        }
        return 0;
    }

    public void i(String str) {
        f().u0(f().getString(R.string.xn_loading));
        HashMap map = new HashMap();
        map.put("fullName", str);
        try {
            PersonInfoActivity personInfoActivityF = f();
            f fVar = new f(f(), EncryptRes.class, str);
            mk7 mk7VarA = ao7.a.a.a();
            fVar.f = mk7VarA;
            Object objGenerateReq = CommReq.generateReq(personInfoActivityF, mk7VarA, map);
            cr7 cr7Var = cr7.b.a;
            if (cr7Var.a(personInfoActivityF)) {
                new zn7().c(personInfoActivityF, dp7.a("/sdk/account/update-profile-crypt"), objGenerateReq, fVar);
                return;
            }
            if (personInfoActivityF != null) {
                personInfoActivityF.A0();
            }
            if (personInfoActivityF != null) {
                cr7Var.b(personInfoActivityF);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            if (a()) {
                f().A0();
                f().y0(f().getString(R.string.xn_net_unavailable));
            }
        }
    }

    public void j() {
        f().u0(f().getString(R.string.xn_loading));
        vk7 vk7Var = this.d;
        PersonInfoActivity personInfoActivityF = f();
        String str = this.f;
        g gVar = new g(f(), BaseData.class);
        vk7Var.getClass();
        HashMap map = new HashMap();
        map.put("username", str);
        cr7 cr7Var = cr7.b.a;
        if (cr7Var.a(personInfoActivityF)) {
            new zn7().c(personInfoActivityF, dp7.a("/sdk/account/username-change"), map, gVar);
            return;
        }
        if (personInfoActivityF != null) {
            personInfoActivityF.A0();
        }
        if (personInfoActivityF != null) {
            cr7Var.b(personInfoActivityF);
        }
    }

    public void k(String str) {
        f().u0(f().getString(R.string.xn_loading));
        HashMap map = new HashMap();
        map.put("signature", str);
        try {
            PersonInfoActivity personInfoActivityF = f();
            e eVar = new e(f(), EncryptRes.class, str);
            mk7 mk7VarA = ao7.a.a.a();
            eVar.f = mk7VarA;
            Object objGenerateReq = CommReq.generateReq(personInfoActivityF, mk7VarA, map);
            cr7 cr7Var = cr7.b.a;
            if (cr7Var.a(personInfoActivityF)) {
                new zn7().c(personInfoActivityF, dp7.a("/sdk/account/update-profile-crypt"), objGenerateReq, eVar);
                return;
            }
            if (personInfoActivityF != null) {
                personInfoActivityF.A0();
            }
            if (personInfoActivityF != null) {
                cr7Var.b(personInfoActivityF);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            if (a()) {
                f().A0();
                f().y0(f().getString(R.string.xn_net_unavailable));
            }
        }
    }

    public void l() {
        ConnectivityManager connectivityManager;
        NetworkCapabilities networkCapabilities;
        PersonInfoActivity personInfoActivityF = f();
        if (personInfoActivityF == null || (connectivityManager = (ConnectivityManager) personInfoActivityF.getApplicationContext().getSystemService("connectivity")) == null) {
            return;
        }
        try {
            Network activeNetwork = connectivityManager.getActiveNetwork();
            if (activeNetwork == null || (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) == null) {
                return;
            }
            if (networkCapabilities.hasTransport(1) || networkCapabilities.hasTransport(0) || networkCapabilities.hasTransport(4) || networkCapabilities.hasTransport(3)) {
                try {
                    this.b.a(f(), new c(f(), AddressesListRes.class));
                } catch (Exception e2) {
                    e2.printStackTrace();
                    f().A0();
                    f().y0(f().getString(R.string.xn_net_unavailable));
                }
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }
}
