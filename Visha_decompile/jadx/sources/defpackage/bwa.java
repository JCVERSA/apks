package defpackage;

import android.view.SurfaceControl;
import com.transsion.hubsdk.aosp.app.TranAospActivityTaskManagerExt;
import com.transsion.hubsdk.api.app.TranActivityTaskManager;

public final class bwa implements TranAospActivityTaskManagerExt.TranWindowContainerTransactionCallback {
    public final TranActivityTaskManager.TranWindowContainerTransactionCallback a;

    public bwa(TranActivityTaskManager.TranWindowContainerTransactionCallback tranWindowContainerTransactionCallback) {
        this.a = tranWindowContainerTransactionCallback;
    }

    @Override
    public final void onTransactionReady(int i, SurfaceControl.Transaction transaction) {
        this.a.onTransactionReady(i, transaction);
    }
}
