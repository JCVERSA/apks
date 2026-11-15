package defpackage;

import android.view.View;
import com.transsion.widgetslib.dialog.d;
import com.transsion.xuanniao.account.bind.third.view.TripartiteListActivity;

public class so7 implements View.OnClickListener {
    public final d b;

    public so7(TripartiteListActivity tripartiteListActivity, d dVar) {
        this.b = dVar;
    }

    @Override
    public void onClick(View view) {
        this.b.dismiss();
    }
}
