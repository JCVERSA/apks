package defpackage;

import OppOOp0.OppO0O0;
import android.content.Context;
import com.transsion.xuanniao.account.comm.mvpbase.BaseData;

public class uo7 extends OppO0O0 {
    public final jn7 k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public uo7(jn7 jn7Var, Context context, Class cls) {
        super(context, cls);
        this.k = jn7Var;
    }

    @Override
    public void b(int i, Object obj, String str) {
        if (this.k.a()) {
            xj.U(this.k.c()).s0(1, null);
            this.k.c().A0();
            ((lp7) this.k.a).onSuccess();
        }
    }

    @Override
    public void d(BaseData baseData, String str) {
        if (this.k.a()) {
            xj.U(this.k.c()).s0(0, String.valueOf(baseData.code));
            super.d(baseData, str);
        }
    }

    @Override
    public void g() {
        if (this.k.a()) {
            this.k.d();
        }
    }
}
