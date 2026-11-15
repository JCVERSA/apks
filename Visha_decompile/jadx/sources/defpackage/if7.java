package defpackage;

import android.util.Log;
import android.view.View;
import com.chad.library.adapter.base.BaseQuickAdapter;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

public abstract class if7 implements BaseQuickAdapter.OnItemClickListener {
    private boolean limitForList;
    protected long mFirstClickTime;
    private int mIntervalTime;
    private int mLastClickPosition;
    private String mTag;

    public if7() {
        this.mIntervalTime = oa1.a();
        this.mTag = "OnNoDoubleItemClickListener";
    }

    public void OnNoDoubleItemClickListener(BaseQuickAdapter baseQuickAdapter, View view, int i) {
    }

    @Override
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if ((!this.limitForList && i != this.mLastClickPosition) || !oa1.b(this.mTag, this.mFirstClickTime, this.mIntervalTime)) {
            this.mLastClickPosition = i;
            this.mFirstClickTime = System.currentTimeMillis();
            OnNoDoubleItemClickListener(baseQuickAdapter, view, i);
            return;
        }
        Log.e(this.mTag, "onItemClick " + this.mIntervalTime + StringUtils.COMMA + view);
    }

    public void resetClickTime() {
        this.mFirstClickTime = 0L;
        this.mLastClickPosition = -1;
    }

    public void setIntervalTime(int i) {
        if (!oa1.d() || i >= this.mIntervalTime) {
            this.mIntervalTime = i;
        }
    }

    public void setLimitForList(boolean z) {
        this.limitForList = z;
    }

    public if7(int i, boolean z) {
        this.mIntervalTime = oa1.a();
        this.mTag = "OnNoDoubleItemClickListener";
        this.limitForList = z;
        if (!oa1.d() || i >= this.mIntervalTime) {
            this.mIntervalTime = i;
        }
    }
}
