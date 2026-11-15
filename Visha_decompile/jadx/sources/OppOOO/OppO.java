package OppOOO;

import android.widget.RelativeLayout;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.center.view.EditAddressActivity;
import defpackage.ep7;

public class OppO implements Runnable {
    public final EditAddressActivity OppO00p;

    public OppO(EditAddressActivity editAddressActivity) {
        this.OppO00p = editAddressActivity;
    }

    @Override
    public void run() {
        EditAddressActivity editAddressActivity = this.OppO00p;
        ep7 ep7Var = editAddressActivity.x;
        RelativeLayout relativeLayout = editAddressActivity.v;
        ep7Var.setAnimationStyle(-1);
        ep7Var.showAsDropDown(relativeLayout);
        this.OppO00p.w.setImageResource(R.drawable.up_arrow_drawable);
        this.OppO00p.u.clearFocus();
    }
}
