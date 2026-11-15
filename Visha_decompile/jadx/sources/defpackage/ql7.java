package defpackage;

import android.content.DialogInterface;
import com.transsion.xuanniao.account.bind.third.view.TripartiteListActivity;

public class ql7 implements DialogInterface.OnClickListener {
    public final int b;
    public final TripartiteListActivity c;

    public ql7(TripartiteListActivity tripartiteListActivity, int i) {
        this.c = tripartiteListActivity;
        this.b = i;
    }

    @Override
    public void onClick(DialogInterface dialogInterface, int i) {
        this.c.e.b(this.b);
    }
}
