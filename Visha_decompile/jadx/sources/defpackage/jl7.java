package defpackage;

import OppOOp0.OppO0O0;
import android.content.Context;
import android.util.Log;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.bind.third.view.TripartiteListActivity;
import com.transsion.xuanniao.account.comm.mvpbase.BaseData;
import com.transsion.xuanniao.account.comm.mvpbase.BasePresenter;
import com.transsion.xuanniao.account.model.data.ApplyTokenReq;
import com.transsion.xuanniao.account.model.data.ApplyTokenRes;
import com.transsion.xuanniao.account.model.data.TripartiteListRes;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

public class jl7 extends BasePresenter {
    public boolean b;
    public ArrayList c;
    public String f;
    public boolean g = false;
    public final vk7 d = new vk7();
    public final yo7 e = new yo7();

    public class a extends OppO0O0 {
        public a(Context context, Class cls) {
            super(context, cls);
        }

        @Override
        public void b(int i, Object obj, String str) {
            TripartiteListRes tripartiteListRes = (TripartiteListRes) obj;
            if (jl7.this.a()) {
                jl7.this.c().A0();
                jl7 jl7Var = jl7.this;
                ArrayList<TripartiteListRes.Tripartite> arrayList = tripartiteListRes.tripartite;
                jl7Var.c = arrayList;
                if (arrayList != null && pa1.g(jl7Var.c())) {
                    for (int size = jl7.this.c.size() - 1; size >= 0; size--) {
                        if (((TripartiteListRes.Tripartite) jl7.this.c.get(size)).thirdType == 1) {
                            jl7.this.c.remove(size);
                        }
                    }
                }
                ((ek7) jl7.this.a).U();
            }
        }

        @Override
        public void g() {
            if (jl7.this.a()) {
                jl7.this.e();
            }
        }
    }

    public class b extends OppO0O0 {
        public final int k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Context context, String str, Class cls, int i) {
            super(context, str, cls);
            this.k = i;
        }

        @Override
        public void b(int i, Object obj, String str) {
            if (jl7.this.a()) {
                xj.U(jl7.this.c()).C(0, sm7.c(this.k), 1, "");
                jl7.this.c().A0();
                jl7 jl7Var = jl7.this;
                jl7Var.g = true;
                ArrayList arrayList = jl7Var.c;
                if (arrayList != null) {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        if (String.valueOf(((TripartiteListRes.Tripartite) it.next()).thirdType).equals(str)) {
                            it.remove();
                        }
                    }
                }
                ((ek7) jl7.this.a).U();
            }
        }

        @Override
        public void d(BaseData baseData, String str) {
            super.d(baseData, str);
            xj.U(jl7.this.c()).C(0, sm7.c(this.k), 0, String.valueOf(baseData.code));
        }

        @Override
        public void g() {
            if (jl7.this.a()) {
                jl7.this.d(this.k);
            }
        }
    }

    public class c extends OppO0O0 {
        public final int k;
        public final Context l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Context context, Class cls, int i, Context context2) {
            super(context, cls);
            this.k = i;
            this.l = context2;
        }

        @Override
        public void b(int i, Object obj, String str) {
            ApplyTokenRes applyTokenRes = (ApplyTokenRes) obj;
            if (jl7.this.a()) {
                jl7.this.c().A0();
                if (applyTokenRes != null) {
                    ((ek7) jl7.this.a).D(this.k, applyTokenRes.getToken());
                } else {
                    jl7.this.c().y0(this.l.getString(R.string.xn_net_unavailable));
                }
            }
        }

        @Override
        public void d(BaseData baseData, String str) {
            if (jl7.this.a()) {
                super.d(baseData, str);
            }
        }

        @Override
        public void g() {
            if (jl7.this.a()) {
                jl7.this.b(this.k);
            }
        }
    }

    public void b(int i) {
        if (a()) {
            TripartiteListActivity tripartiteListActivityC = c();
            c().u0(tripartiteListActivityC.getString(R.string.xn_loading_verify_account));
            ApplyTokenReq applyTokenReq = new ApplyTokenReq();
            applyTokenReq.setPkgName(tripartiteListActivityC.getPackageName());
            applyTokenReq.setSign(vl7.b(tripartiteListActivityC));
            applyTokenReq.setDeviceId(mp7.a(tripartiteListActivityC));
            applyTokenReq.setApplyTime(System.currentTimeMillis());
            try {
                this.e.b(tripartiteListActivityC, applyTokenReq, new c(tripartiteListActivityC, ApplyTokenRes.class, i, tripartiteListActivityC));
            } catch (Exception e) {
                Log.d("com.palm.id.log", Log.getStackTraceString(e));
                if (a()) {
                    c().A0();
                    c().y0(c().getString(R.string.xn_net_unavailable));
                }
            }
        }
    }

    public final TripartiteListActivity c() {
        return (TripartiteListActivity) ((ek7) this.a).J();
    }

    public void d(int i) {
        c().u0(c().getString(R.string.xn_loading));
        vk7 vk7Var = this.d;
        TripartiteListActivity tripartiteListActivityC = c();
        b bVar = new b(c(), String.valueOf(i), BaseData.class, i);
        vk7Var.getClass();
        HashMap map = new HashMap();
        map.put("thirdType", Integer.valueOf(i));
        cr7 cr7Var = cr7.b.a;
        if (cr7Var.a(tripartiteListActivityC)) {
            new zn7().c(tripartiteListActivityC, dp7.a("/app/account/third-unbind"), map, bVar);
            return;
        }
        if (tripartiteListActivityC != null) {
            tripartiteListActivityC.A0();
        }
        if (tripartiteListActivityC != null) {
            cr7Var.b(tripartiteListActivityC);
        }
    }

    public void e() {
        c().u0(c().getString(R.string.xn_loading));
        vk7 vk7Var = this.d;
        TripartiteListActivity tripartiteListActivityC = c();
        a aVar = new a(c(), TripartiteListRes.class);
        vk7Var.getClass();
        cr7 cr7Var = cr7.b.a;
        if (cr7Var.a(tripartiteListActivityC)) {
            new zn7().d(tripartiteListActivityC, dp7.a("/app/account/third-list"), null, aVar);
            return;
        }
        if (tripartiteListActivityC != null) {
            tripartiteListActivityC.A0();
        }
        if (tripartiteListActivityC != null) {
            cr7Var.b(tripartiteListActivityC);
        }
    }

    public boolean f() {
        if (this.c != null) {
            for (int i = 0; i < this.c.size(); i++) {
                if (1 == ((TripartiteListRes.Tripartite) this.c.get(i)).thirdType) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean g() {
        if (this.c != null) {
            for (int i = 0; i < this.c.size(); i++) {
                if (7 == ((TripartiteListRes.Tripartite) this.c.get(i)).thirdType) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean h() {
        if (this.c != null) {
            for (int i = 0; i < this.c.size(); i++) {
                if (2 == ((TripartiteListRes.Tripartite) this.c.get(i)).thirdType) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean i() {
        if (this.c != null) {
            for (int i = 0; i < this.c.size(); i++) {
                if (8 == ((TripartiteListRes.Tripartite) this.c.get(i)).thirdType) {
                    return true;
                }
            }
        }
        return false;
    }
}
