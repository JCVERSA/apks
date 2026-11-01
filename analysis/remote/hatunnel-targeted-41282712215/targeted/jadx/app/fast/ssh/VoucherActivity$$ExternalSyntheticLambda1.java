package app.fast.ssh;

import java.nio.ByteBuffer;

public final class VoucherActivity$$ExternalSyntheticLambda1 implements Runnable {
    public final VoucherActivity f$0;
    public final ByteBuffer f$1;

    public VoucherActivity$$ExternalSyntheticLambda1(VoucherActivity voucherActivity, ByteBuffer byteBuffer) {
        this.f$0 = voucherActivity;
        this.f$1 = byteBuffer;
    }

    @Override
    public final void run() {
        this.f$0.m484lambda$onCreate$0$appfastsshVoucherActivity(this.f$1);
    }
}
