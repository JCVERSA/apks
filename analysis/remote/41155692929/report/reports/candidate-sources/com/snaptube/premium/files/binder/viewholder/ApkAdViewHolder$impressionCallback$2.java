package com.snaptube.premium.files.binder.viewholder;

import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;
import o.bx2;
import o.wl3;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u0007\n\u0002\b\u0004*\u0001\u0000\u0010\u0003\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"com/snaptube/premium/files/binder/viewholder/ApkAdViewHolder$impressionCallback$2$a", "invoke", "()Lcom/snaptube/premium/files/binder/viewholder/ApkAdViewHolder$impressionCallback$2$a;", "<anonymous>"}, k = 3, mv = {1, 9, 0})
public final class ApkAdViewHolder$impressionCallback$2 extends Lambda implements bx2 {
    final ApkAdViewHolder this$0;

    public static final class a implements wl3.f {
        public final ApkAdViewHolder a;

        public a(ApkAdViewHolder apkAdViewHolder) {
            this.a = apkAdViewHolder;
        }

        @Override
        public void onImpressionTimeout() {
        }

        @Override
        public void onValidImpression() {
            ApkAdViewHolder apkAdViewHolder = this.a;
            ApkAdViewHolder.W(apkAdViewHolder, ApkAdViewHolder.T(apkAdViewHolder));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ApkAdViewHolder$impressionCallback$2(ApkAdViewHolder apkAdViewHolder) {
        super(0);
        this.this$0 = apkAdViewHolder;
    }

    @Override
    @NotNull
    public final a invoke() {
        return new a(this.this$0);
    }

    @Override
    public Object invoke() {
        return invoke();
    }
}
