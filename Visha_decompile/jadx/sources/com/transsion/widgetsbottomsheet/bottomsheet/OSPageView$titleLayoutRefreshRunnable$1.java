package com.transsion.widgetsbottomsheet.bottomsheet;

import android.widget.TextView;
import defpackage.y45;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"com/transsion/widgetsbottomsheet/bottomsheet/OSPageView$titleLayoutRefreshRunnable$1", "Ljava/lang/Runnable;", "Lzfb;", "run", "()V", "widgetsbottomsheet_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class OSPageView$titleLayoutRefreshRunnable$1 implements Runnable {
    final OSPageView this$0;

    public OSPageView$titleLayoutRefreshRunnable$1(OSPageView oSPageView) {
        this.this$0 = oSPageView;
    }

    @Override
    public void run() {
        OSPageView oSPageView = this.this$0;
        TextView textView = oSPageView.getMDataBinding().l;
        y45.i(textView, "mDataBinding.tvTitle");
        if (!oSPageView.E(textView) || this.this$0.titleLayoutRefreshIterCount >= this.this$0.MAX_TITLE_LAYOUT_ITER_COUNT) {
            this.this$0.titleLayoutRefreshIterCount = 0;
            return;
        }
        this.this$0.titleLayoutRefreshIterCount++;
        this.this$0.A();
    }
}
