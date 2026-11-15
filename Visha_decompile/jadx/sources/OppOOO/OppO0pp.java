package OppOOO;

import android.view.ViewTreeObserver;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.center.view.EditAddressActivity;

public class OppO0pp implements ViewTreeObserver.OnGlobalLayoutListener {
    public final EditAddressActivity b;

    public class OppO00p implements Runnable {
        public OppO00p() {
        }

        @Override
        public void run() {
            OppO0pp.this.b.u.fullScroll(130);
            OppO0pp.this.b.u.clearFocus();
        }
    }

    public OppO0pp(EditAddressActivity editAddressActivity) {
        this.b = editAddressActivity;
    }

    @Override
    public void onGlobalLayout() {
        if (this.b.findViewById(R.id.blankL).getVisibility() == 0) {
            this.b.u.post(new OppO00p());
        }
    }
}
