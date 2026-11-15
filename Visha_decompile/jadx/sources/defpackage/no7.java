package defpackage;

import OppOOp0.OppO0O0;
import android.content.Context;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.comm.mvpbase.BaseData;

public class no7 extends OppO0O0 {
    public final nm7 k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public no7(nm7 nm7Var, Context context, Class cls) {
        super(context, cls);
        this.k = nm7Var;
    }

    @Override
    public void b(int i, Object obj, String str) {
        if (this.k.a()) {
            this.k.c().A0();
            ((xk7) this.k.a).Y();
            xj.U(this.k.c()).v1(1, "");
        }
    }

    @Override
    public void d(BaseData baseData, String str) {
        if (this.k.a()) {
            xj.U(this.k.c()).v1(0, String.valueOf(baseData.code));
            int i = baseData.code;
            if (i == 400009) {
                this.k.c().A0();
                ((xk7) this.k.a).g0();
            } else if (i == 400416) {
                this.k.c().A0();
                this.k.c().y0(this.k.c().getString(R.string.xn_pwd_too_weak));
            } else if (i != 400108) {
                super.d(baseData, str);
            } else {
                this.k.c().A0();
                this.k.c().y0(this.k.c().getString(R.string.xn_frequent_operation_pwd));
            }
        }
    }

    @Override
    public void g() {
        if (this.k.a()) {
            this.k.d();
        }
    }
}
