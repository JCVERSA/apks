package com.snaptube.premium.files.binder.viewholder;

import android.graphics.drawable.LayerDrawable;
import com.snaptube.premium.R;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;
import o.bx2;
import o.yk3;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Landroid/graphics/drawable/LayerDrawable;", "invoke"}, k = 3, mv = {1, 9, 0}, xi = 48)
public final class ApkAdViewHolder$defaultOtherDrawable$2 extends Lambda implements bx2 {
    final ApkAdViewHolder this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ApkAdViewHolder$defaultOtherDrawable$2(ApkAdViewHolder apkAdViewHolder) {
        super(0);
        this.this$0 = apkAdViewHolder;
    }

    @Override
    @Nullable
    public final LayerDrawable invoke() {
        return yk3.i(this.this$0.getCom.mbridge.msdk.MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW java.lang.String().getContext(), R.drawable.bg_files_default_other_cover, R.drawable.ic_more_horizontal);
    }

    @Override
    public Object invoke() {
        return invoke();
    }
}
