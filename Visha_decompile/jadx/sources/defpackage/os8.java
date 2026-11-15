package defpackage;

import android.util.Log;
import android.view.View;

public abstract class os8 implements View.OnClickListener {
    private long mFirstClickTime;
    private long mIntervalTime = 1000;
    private String mTag = "RepeatClickListener";

    public abstract void onClick();

    @Override
    public void onClick(View view) {
        if (!oa1.b(this.mTag, this.mFirstClickTime, this.mIntervalTime)) {
            this.mFirstClickTime = System.currentTimeMillis();
            onClick();
            return;
        }
        Log.e(this.mTag, "onClick ingoreClickEvent" + view);
    }

    public void setIntervalTime(long j) {
        this.mIntervalTime = j;
    }
}
