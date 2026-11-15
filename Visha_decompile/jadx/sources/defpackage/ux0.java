package defpackage;

import android.view.View;
import java.util.Calendar;

public abstract class ux0 implements View.OnClickListener {
    private int mClickDelay;
    protected long mLastClickTime;

    public ux0() {
        this.mClickDelay = 500;
        this.mLastClickTime = 0L;
    }

    @Override
    public void onClick(View view) {
        long timeInMillis = Calendar.getInstance().getTimeInMillis();
        if (jf.k(this.mLastClickTime, this.mClickDelay)) {
            return;
        }
        this.mLastClickTime = timeInMillis;
        onNoDoubleClick(view);
    }

    public abstract void onNoDoubleClick(View view);

    public ux0(int i) {
        this.mLastClickTime = 0L;
        this.mClickDelay = i;
    }
}
