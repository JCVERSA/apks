package defpackage;

import OppOOO0.OppOOp0;
import android.content.Context;
import android.view.View;
import com.transsion.xuanniao.account.center.view.PersonInfoActivity;
import java.lang.ref.WeakReference;
import java.util.HashMap;

public class eq7 implements View.OnClickListener {
    public final WeakReference b;
    public final rq7 c;

    public eq7(rq7 rq7Var, WeakReference weakReference) {
        this.c = rq7Var;
        this.b = weakReference;
    }

    @Override
    public void onClick(View view) {
        this.c.a.dismiss();
        if (this.b.get() != null) {
            xj.U((Context) this.b.get()).D0("confirm");
        }
        rq7 rq7Var = this.c;
        rq7.a aVar = rq7Var.b;
        if (aVar != null) {
            String text = rq7Var.c.getText();
            HashMap map = new HashMap();
            map.put("nickname", text);
            OppOOp0 oppOOp0 = PersonInfoActivity.this.f;
            oppOOp0.h = text;
            oppOOp0.e(map, "nickname", true);
        }
    }
}
