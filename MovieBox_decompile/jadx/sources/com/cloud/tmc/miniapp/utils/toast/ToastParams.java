package com.cloud.tmc.miniapp.utils.toast;

import androidx.collection.s;
import com.cloud.tmc.miniapp.utils.toast.config.IToastInterceptor;
import com.cloud.tmc.miniapp.utils.toast.config.IToastStrategy;
import com.cloud.tmc.miniapp.utils.toast.config.IToastStyle;
import java.io.File;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class ToastParams {
    private final long delayMillis;
    private int drawableResId;
    private int duration;
    private File icon;
    private IToastInterceptor interceptor;
    private final boolean mask;
    private Function0<Unit> showCallBack;
    private IToastStrategy strategy;
    private IToastStyle<?> style;
    private final CharSequence text;

    public ToastParams(CharSequence text, int i10, long j10, boolean z10, File file, int i11, IToastStyle<?> iToastStyle, IToastStrategy iToastStrategy, IToastInterceptor iToastInterceptor, Function0<Unit> function0) {
        Intrinsics.h(text, "text");
        this.text = text;
        this.duration = i10;
        this.delayMillis = j10;
        this.mask = z10;
        this.icon = file;
        this.drawableResId = i11;
        this.style = iToastStyle;
        this.strategy = iToastStrategy;
        this.interceptor = iToastInterceptor;
        this.showCallBack = function0;
    }

    public final CharSequence component1() {
        return this.text;
    }

    public final Function0<Unit> component10() {
        return this.showCallBack;
    }

    public final int component2() {
        return this.duration;
    }

    public final long component3() {
        return this.delayMillis;
    }

    public final boolean component4() {
        return this.mask;
    }

    public final File component5() {
        return this.icon;
    }

    public final int component6() {
        return this.drawableResId;
    }

    public final IToastStyle<?> component7() {
        return this.style;
    }

    public final IToastStrategy component8() {
        return this.strategy;
    }

    public final IToastInterceptor component9() {
        return this.interceptor;
    }

    public final ToastParams copy(CharSequence text, int i10, long j10, boolean z10, File file, int i11, IToastStyle<?> iToastStyle, IToastStrategy iToastStrategy, IToastInterceptor iToastInterceptor, Function0<Unit> function0) {
        Intrinsics.h(text, "text");
        return new ToastParams(text, i10, j10, z10, file, i11, iToastStyle, iToastStrategy, iToastInterceptor, function0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ToastParams)) {
            return false;
        }
        ToastParams toastParams = (ToastParams) obj;
        return Intrinsics.c(this.text, toastParams.text) && this.duration == toastParams.duration && this.delayMillis == toastParams.delayMillis && this.mask == toastParams.mask && Intrinsics.c(this.icon, toastParams.icon) && this.drawableResId == toastParams.drawableResId && Intrinsics.c(this.style, toastParams.style) && Intrinsics.c(this.strategy, toastParams.strategy) && Intrinsics.c(this.interceptor, toastParams.interceptor) && Intrinsics.c(this.showCallBack, toastParams.showCallBack);
    }

    public final long getDelayMillis() {
        return this.delayMillis;
    }

    public final int getDrawableResId() {
        return this.drawableResId;
    }

    public final int getDuration() {
        return this.duration;
    }

    public final File getIcon() {
        return this.icon;
    }

    public final IToastInterceptor getInterceptor() {
        return this.interceptor;
    }

    public final boolean getMask() {
        return this.mask;
    }

    public final Function0<Unit> getShowCallBack() {
        return this.showCallBack;
    }

    public final IToastStrategy getStrategy() {
        return this.strategy;
    }

    public final IToastStyle<?> getStyle() {
        return this.style;
    }

    public final CharSequence getText() {
        return this.text;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [int] */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v4, types: [int] */
    public int hashCode() {
        int iA = (s.a(this.delayMillis) + ((this.duration + (this.text.hashCode() * 31)) * 31)) * 31;
        boolean z10 = this.mask;
        ?? r10 = z10;
        if (z10) {
            r10 = 1;
        }
        int i10 = (iA + r10) * 31;
        File file = this.icon;
        int iHashCode = (this.drawableResId + ((i10 + (file == null ? 0 : file.hashCode())) * 31)) * 31;
        IToastStyle<?> iToastStyle = this.style;
        int iHashCode2 = (iHashCode + (iToastStyle == null ? 0 : iToastStyle.hashCode())) * 31;
        IToastStrategy iToastStrategy = this.strategy;
        int iHashCode3 = (iHashCode2 + (iToastStrategy == null ? 0 : iToastStrategy.hashCode())) * 31;
        IToastInterceptor iToastInterceptor = this.interceptor;
        int iHashCode4 = (iHashCode3 + (iToastInterceptor == null ? 0 : iToastInterceptor.hashCode())) * 31;
        Function0<Unit> function0 = this.showCallBack;
        return iHashCode4 + (function0 != null ? function0.hashCode() : 0);
    }

    public final void setDrawableResId(int i10) {
        this.drawableResId = i10;
    }

    public final void setDuration(int i10) {
        this.duration = i10;
    }

    public final void setIcon(File file) {
        this.icon = file;
    }

    public final void setInterceptor(IToastInterceptor iToastInterceptor) {
        this.interceptor = iToastInterceptor;
    }

    public final void setShowCallBack(Function0<Unit> function0) {
        this.showCallBack = function0;
    }

    public final void setStrategy(IToastStrategy iToastStrategy) {
        this.strategy = iToastStrategy;
    }

    public final void setStyle(IToastStyle<?> iToastStyle) {
        this.style = iToastStyle;
    }

    public String toString() {
        CharSequence charSequence = this.text;
        return "ToastParams(text=" + ((Object) charSequence) + ", duration=" + this.duration + ", delayMillis=" + this.delayMillis + ", mask=" + this.mask + ", icon=" + this.icon + ", drawableResId=" + this.drawableResId + ", style=" + this.style + ", strategy=" + this.strategy + ", interceptor=" + this.interceptor + ", showCallBack=" + this.showCallBack + ")";
    }

    public ToastParams(CharSequence charSequence, int i10, long j10, boolean z10, File file, int i11, IToastStyle iToastStyle, IToastStrategy iToastStrategy, IToastInterceptor iToastInterceptor, Function0 function0, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(charSequence, (i12 & 2) != 0 ? -1 : i10, (i12 & 4) != 0 ? 0L : j10, (i12 & 8) != 0 ? false : z10, (i12 & 16) != 0 ? null : file, (i12 & 32) == 0 ? i11 : 0, (i12 & 64) != 0 ? null : iToastStyle, (i12 & 128) != 0 ? null : iToastStrategy, (i12 & 256) != 0 ? null : iToastInterceptor, (i12 & 512) == 0 ? function0 : null);
    }
}
