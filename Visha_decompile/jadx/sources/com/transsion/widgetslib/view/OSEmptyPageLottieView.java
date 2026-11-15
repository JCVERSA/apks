package com.transsion.widgetslib.view;

import android.content.Context;
import android.os.Parcelable;
import android.util.AttributeSet;
import com.airbnb.lottie.LottieAnimationView;
import com.transsion.audiotagger.tag.id3.AbstractID3v1Tag;
import com.transsion.livecaption.constant.ICode;
import com.transsion.widgetslib.R;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0014¢\u0006\u0004\b\u000e\u0010\u000fJ\u0019\u0010\u0012\u001a\u00020\u000b2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0014¢\u0006\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\"\u0010\u001f\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001e¨\u0006 "}, d2 = {"Lcom/transsion/widgetslib/view/OSEmptyPageLottieView;", "Lcom/airbnb/lottie/LottieAnimationView;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attributeSet", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "visibility", "Lzfb;", "setVisibility", "(I)V", "onAttachedToWindow", "()V", "Landroid/os/Parcelable;", ICode.CALL.CALL_KEY_STATE, "onRestoreInstanceState", "(Landroid/os/Parcelable;)V", "", "b", "Ljava/lang/String;", AbstractID3v1Tag.TAG, "", "c", "Z", "getMIsFirstTimeLoaded", "()Z", "setMIsFirstTimeLoaded", "(Z)V", "mIsFirstTimeLoaded", "widgetsLib_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class OSEmptyPageLottieView extends LottieAnimationView {

    public final String TAG;

    public boolean mIsFirstTimeLoaded;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSEmptyPageLottieView(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    public final boolean getMIsFirstTimeLoaded() {
        return this.mIsFirstTimeLoaded;
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mIsFirstTimeLoaded) {
            return;
        }
        cancelAnimation();
        setProgress(0.0f);
    }

    @Override
    public void onRestoreInstanceState(Parcelable state) {
        super.onRestoreInstanceState(state);
        this.mIsFirstTimeLoaded = false;
    }

    public final void setMIsFirstTimeLoaded(boolean z) {
        this.mIsFirstTimeLoaded = z;
    }

    @Override
    public void setVisibility(int visibility) {
        if (getVisibility() == visibility) {
            return;
        }
        super.setVisibility(visibility);
        if (visibility == 0) {
            playAnimation();
        } else {
            cancelAnimation();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSEmptyPageLottieView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public OSEmptyPageLottieView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OSEmptyPageLottieView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.TAG = "OSEmptyPageLottieView";
        this.mIsFirstTimeLoaded = true;
        if (getId() == -1) {
            setId(R.id.os_empty_page_lottie_view_id);
        }
    }
}
