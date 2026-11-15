package defpackage;

import android.view.View;
import com.transsion.xuanniao.account.center.view.e;

public class pr7 implements View.OnClickListener {
    public final e b;

    public pr7(e eVar) {
        this.b = eVar;
    }

    @Override
    public void onClick(View view) {
        this.b.b.setText("");
    }
}
