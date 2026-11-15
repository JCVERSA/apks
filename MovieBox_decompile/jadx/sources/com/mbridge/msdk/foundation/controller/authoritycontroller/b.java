package com.mbridge.msdk.foundation.controller.authoritycontroller;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.controller.e;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.out.OnCompletionListener;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.h;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class b {

    private static boolean f34187h = true;

    private static boolean f34188i = true;

    protected AuthorityInfoBean f34190b;

    private e f34195g;

    public ArrayList<String> f34189a = new ArrayList<>();

    private int f34191c = 3;

    private int f34192d = 0;

    private int f34193e = 0;

    private String f34194f = "";

    class a implements Runnable {

        final Context f34196a;

        final OnCompletionListener f34197b;

        a(Context context, OnCompletionListener onCompletionListener) {
            this.f34196a = context;
            this.f34197b = onCompletionListener;
        }

        @Override
        public void run() {
            b.this.a(this.f34196a);
            this.f34197b.onCompletion();
        }
    }

    class C0456b implements e.a {
        C0456b() {
        }

        @Override
        public void a() {
            b.this.k();
        }
    }

    protected b() {
        h();
    }

    public static void b(boolean z10) {
        f34188i = z10;
    }

    public static boolean i() {
        return f34187h;
    }

    public static boolean j() {
        return f34188i;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void k() {
        boolean zC = this.f34195g.c();
        b(this.f34195g.b());
        d(zC ? 1 : 2);
        this.f34190b.authDeviceIdStatus(zC ? 1 : 0);
    }

    protected abstract int a(g gVar, String str);

    public int c() {
        return this.f34192d;
    }

    public int d() {
        return this.f34193e;
    }

    public int e() {
        return this.f34191c;
    }

    public String f() {
        return this.f34194f;
    }

    public String g() {
        JSONArray jSONArray = new JSONArray();
        g gVarC = h.b().c();
        for (int i10 = 0; i10 < this.f34189a.size(); i10++) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("keyname", String.valueOf(this.f34189a.get(i10)));
                jSONObject.put("client_status", a(this.f34189a.get(i10)));
                jSONObject.put("server_status", a(gVarC, this.f34189a.get(i10)));
                jSONArray.put(jSONObject);
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
        }
        return jSONArray.toString();
    }

    protected void h() {
        AuthorityInfoBean authorityInfoBean = new AuthorityInfoBean();
        this.f34190b = authorityInfoBean;
        try {
            authorityInfoBean.authGenDataStatus(1);
            this.f34190b.authDeviceIdStatus(1);
            this.f34190b.authSerialIdStatus(1);
            this.f34190b.authOtherDataStatus(1);
            this.f34189a.add(MBridgeConstans.AUTHORITY_GENERAL_DATA);
            this.f34189a.add(MBridgeConstans.AUTHORITY_DEVICE_ID);
            this.f34189a.add(MBridgeConstans.AUTHORITY_SERIAL_ID);
            this.f34189a.add(MBridgeConstans.AUTHORITY_OTHER);
        } catch (Exception e10) {
            o0.b("SDKAuthorityController", e10.getMessage());
        }
    }

    private void d(int i10) {
        this.f34191c = i10 != 1 ? 2 : 1;
    }

    public boolean b() {
        int i10 = this.f34191c;
        return i10 == 1 || i10 == 3;
    }

    public void c(int i10) {
        this.f34193e = i10;
    }

    public static void a(boolean z10) {
        f34187h = z10;
    }

    public void b(int i10) {
        this.f34192d = i10;
    }

    private void b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f34194f = str;
    }

    public AuthorityInfoBean a() {
        AuthorityInfoBean authorityInfoBean = this.f34190b;
        if (authorityInfoBean != null) {
            return authorityInfoBean;
        }
        AuthorityInfoBean authorityInfoBean2 = new AuthorityInfoBean();
        authorityInfoBean2.a(1);
        return authorityInfoBean2;
    }

    public void a(int i10) {
        this.f34191c = i10 != 1 ? 2 : 1;
        if (this.f34190b != null) {
            d(i10);
        }
    }

    public void a(Context context, OnCompletionListener onCompletionListener) {
        if (onCompletionListener != null) {
            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new a(context, onCompletionListener));
        } else {
            a(context);
        }
    }

    protected int a(String str) {
        AuthorityInfoBean authorityInfoBean;
        try {
            if (TextUtils.isEmpty(str) || (authorityInfoBean = this.f34190b) == null) {
                return 0;
            }
            return authorityInfoBean.getStatusByKey(str);
        } catch (Exception e10) {
            o0.b("SDKAuthorityController", e10.getMessage());
            return 0;
        }
    }

    public void a(String str, int i10) {
        if (TextUtils.isEmpty(str) || this.f34190b == null) {
            return;
        }
        str.hashCode();
        switch (str) {
            case "authority_serial_id":
                this.f34190b.authSerialIdStatus(i10);
                break;
            case "authority_all_info":
                this.f34190b.a(i10);
                break;
            case "authority_device_id":
                this.f34190b.authDeviceIdStatus(i10);
                break;
            case "authority_general_data":
                this.f34190b.authGenDataStatus(i10);
                break;
            case "authority_other":
                this.f34190b.authOtherDataStatus(i10);
                break;
        }
    }

    public void a(Context context) {
        try {
            if (this.f34195g == null) {
                e eVar = new e(context);
                this.f34195g = eVar;
                eVar.a(new C0456b());
            }
            k();
        } catch (Throwable th2) {
            o0.b("SDKAuthorityController", th2.getMessage());
        }
    }
}
