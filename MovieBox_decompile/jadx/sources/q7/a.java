package q7;

import android.os.Handler;
import android.os.Message;
import com.contrarywind.view.WheelView;

public final class a extends Handler {

    private final WheelView f69398a;

    public a(WheelView wheelView) {
        this.f69398a = wheelView;
    }

    @Override
    public final void handleMessage(Message message) {
        int i10 = message.what;
        if (i10 == 1000) {
            this.f69398a.invalidate();
        } else if (i10 == 2000) {
            this.f69398a.smoothScroll(WheelView.ACTION.FLING);
        } else {
            if (i10 != 3000) {
                return;
            }
            this.f69398a.onItemSelected();
        }
    }
}
