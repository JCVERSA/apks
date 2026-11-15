package io.reactivex.internal.operators.flowable;

import defpackage.r14;
import defpackage.rc2;
import defpackage.zf1;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

public abstract class FlowableRefCount extends r14 {

    public static final class RefConnection extends AtomicReference<rc2> implements Runnable, zf1 {
        private static final long serialVersionUID = -4552101107598366241L;
        boolean connected;
        boolean disconnectedEarly;
        final FlowableRefCount parent;
        long subscriberCount;
        rc2 timer;

        public RefConnection(FlowableRefCount flowableRefCount) {
        }

        @Override
        public void run() {
            throw null;
        }

        @Override
        public void accept(rc2 rc2Var) throws Exception {
            DisposableHelper.replace(this, rc2Var);
            throw null;
        }
    }
}
