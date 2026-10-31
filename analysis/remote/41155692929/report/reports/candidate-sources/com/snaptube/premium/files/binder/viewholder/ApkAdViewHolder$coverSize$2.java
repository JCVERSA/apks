package com.snaptube.premium.files.binder.viewholder;

import com.snaptube.premium.R;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;
import o.bx2;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"<anonymous>", "", "invoke", "()Ljava/lang/Integer;"}, k = 3, mv = {1, 9, 0}, xi = 48)
public final class ApkAdViewHolder$coverSize$2 extends Lambda implements bx2 {
    final ApkAdViewHolder this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ApkAdViewHolder$coverSize$2(ApkAdViewHolder apkAdViewHolder) {
        super(0);
        this.this$0 = apkAdViewHolder;
    }

    @Override
    @NotNull
    public final Integer invoke() {
        return Integer.valueOf(this.this$0.getCom.mbridge.msdk.MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW java.lang.String().getContext().getResources().getDimensionPixelSize(R.dimen.media_cover_size_middle));
    }

    @Override
    public Object invoke() {
        return invoke();
    }
}
