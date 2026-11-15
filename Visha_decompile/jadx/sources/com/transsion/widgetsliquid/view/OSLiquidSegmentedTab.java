package com.transsion.widgetsliquid.view;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Property;
import android.util.TypedValue;
import android.view.AbsSavedState;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import androidx.core.view.ViewGroupKt;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.google.android.gms.ads.RequestConfiguration;
import com.transsion.livecaption.constant.ICode;
import com.transsion.widgetslib.view.liquid.vfx.drag.ElasticTypeConfig;
import com.transsion.widgetslib.view.liquid.vfx.light.LightTypeConfig;
import com.transsion.widgetsliquid.R;
import com.transsion.widgetsliquid.effect.OSLiquidContainerRootLayout;
import com.transsion.widgetsliquid.view.OSLiquidSegmentedTab;
import defpackage.c74;
import defpackage.f43;
import defpackage.gcc;
import defpackage.hi;
import defpackage.i81;
import defpackage.jv9;
import defpackage.kv9;
import defpackage.o97;
import defpackage.olb;
import defpackage.wn8;
import defpackage.y45;
import defpackage.y71;
import defpackage.yi5;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\u009e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\u0007\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0016\u0018\u0000 ¢\u00012\u00020\u0001:\b£\u0001¤\u0001¥\u0001¦\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ!\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u00062\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\r\u0010\u0014\u001a\u00020\r¢\u0006\u0004\b\u0014\u0010\u0015J\r\u0010\u0016\u001a\u00020\r¢\u0006\u0004\b\u0016\u0010\u0015J\u0015\u0010\u0019\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u0019\u0010\u001aJ\r\u0010\u001b\u001a\u00020\u0006¢\u0006\u0004\b\u001b\u0010\u001cJ\r\u0010\u001d\u001a\u00020\u0006¢\u0006\u0004\b\u001d\u0010\u001cJ\u000f\u0010\u001e\u001a\u00020\rH\u0014¢\u0006\u0004\b\u001e\u0010\u0015J\u000f\u0010\u001f\u001a\u00020\rH\u0014¢\u0006\u0004\b\u001f\u0010\u0015J\u0017\u0010!\u001a\u00020\r2\u0006\u0010 \u001a\u00020\u000bH\u0016¢\u0006\u0004\b!\u0010\"J\r\u0010#\u001a\u00020\u0006¢\u0006\u0004\b#\u0010\u001cJ\u0011\u0010%\u001a\u0004\u0018\u00010$H\u0014¢\u0006\u0004\b%\u0010&J\u0019\u0010(\u001a\u00020\r2\b\u0010'\u001a\u0004\u0018\u00010$H\u0014¢\u0006\u0004\b(\u0010)J\u001b\u0010-\u001a\u00020\r2\f\u0010,\u001a\b\u0012\u0004\u0012\u00020+0*¢\u0006\u0004\b-\u0010.J%\u0010-\u001a\u00020\r2\f\u0010,\u001a\b\u0012\u0004\u0012\u00020+0*2\b\b\u0002\u0010/\u001a\u00020\u0006¢\u0006\u0004\b-\u00100J9\u00104\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u00062\n\b\u0002\u00101\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u00102\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u00103\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b4\u00105J\u000f\u00106\u001a\u00020\u000bH\u0016¢\u0006\u0004\b6\u00107J\u000f\u00108\u001a\u00020\u000bH\u0002¢\u0006\u0004\b8\u00107J\u000f\u00109\u001a\u00020\rH\u0002¢\u0006\u0004\b9\u0010\u0015J'\u0010=\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010;\u001a\u00020:2\u0006\u0010<\u001a\u00020\u000bH\u0002¢\u0006\u0004\b=\u0010>J\u0017\u0010@\u001a\u00020\u000b2\u0006\u0010?\u001a\u00020\u0006H\u0002¢\u0006\u0004\b@\u0010AJ\u0017\u0010B\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\bB\u0010CJ\u0017\u0010D\u001a\u00020:2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\bD\u0010EJ!\u0010I\u001a\u0004\u0018\u00010H2\u0006\u0010F\u001a\u00020:2\u0006\u0010G\u001a\u00020:H\u0002¢\u0006\u0004\bI\u0010JJ\u0017\u0010L\u001a\u00020\r2\u0006\u0010K\u001a\u00020HH\u0002¢\u0006\u0004\bL\u0010MJ\u0017\u0010N\u001a\u00020\r2\u0006\u0010K\u001a\u00020HH\u0002¢\u0006\u0004\bN\u0010MJ\u000f\u0010O\u001a\u00020:H\u0002¢\u0006\u0004\bO\u0010PJ\u0017\u0010R\u001a\u00020\u00062\u0006\u0010Q\u001a\u00020\u0006H\u0002¢\u0006\u0004\bR\u0010SJ'\u0010W\u001a\u00020\r2\u0006\u0010T\u001a\u00020\u00062\u0006\u0010/\u001a\u00020\u00062\u0006\u0010V\u001a\u00020UH\u0002¢\u0006\u0004\bW\u0010XJ\u0017\u0010Y\u001a\u00020\r2\u0006\u0010/\u001a\u00020\u0006H\u0002¢\u0006\u0004\bY\u0010ZJ\u001f\u0010]\u001a\u00020\r2\u0006\u0010[\u001a\u00020\u00062\u0006\u0010\\\u001a\u00020\u000bH\u0002¢\u0006\u0004\b]\u0010^J'\u0010a\u001a\u00020\r2\u0006\u0010_\u001a\u00020U2\u0006\u0010`\u001a\u00020\u000b2\u0006\u0010\\\u001a\u00020\u000bH\u0002¢\u0006\u0004\ba\u0010bJ\u000f\u0010c\u001a\u00020\rH\u0002¢\u0006\u0004\bc\u0010\u0015J\u0017\u0010d\u001a\u00020:2\u0006\u0010_\u001a\u00020UH\u0002¢\u0006\u0004\bd\u0010eR\u0014\u0010h\u001a\u00020f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bD\u0010gR\u001a\u0010l\u001a\b\u0012\u0004\u0012\u00020j0i8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bR\u0010kR\u0016\u0010n\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u0010mR\u0018\u0010r\u001a\u0004\u0018\u00010o8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bp\u0010qR\u0016\u0010s\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010mR\u0016\u0010t\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010mR\u0016\u0010v\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bu\u0010mR\u0016\u0010w\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u0010mR\u0016\u0010x\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010mR\u001c\u0010z\u001a\b\u0012\u0004\u0012\u00020:0i8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\by\u0010kR\u001c\u0010{\u001a\b\u0012\u0004\u0012\u00020:0i8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\ba\u0010kR\u0016\u0010}\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b|\u00109R\u0016\u0010\u007f\u001a\u00020:8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b]\u0010~R\u0018\u0010\u0081\u0001\u001a\u00020:8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0080\u0001\u0010~R\u0018\u0010\u0083\u0001\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0082\u0001\u00109R\u0017\u0010[\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0084\u0001\u0010mR)\u0010\u0089\u0001\u001a\u0014\u0012\u0004\u0012\u00020+0\u0085\u0001j\t\u0012\u0004\u0012\u00020+`\u0086\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0087\u0001\u0010\u0088\u0001R\u0018\u0010\u008b\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u008a\u0001\u0010mR\u0018\u0010\u008d\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u008c\u0001\u0010mR\u0018\u0010\u008f\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u008e\u0001\u0010mR\u0018\u0010\u0091\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0090\u0001\u0010mR\u0018\u0010\u0093\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0092\u0001\u0010mR!\u0010\u0099\u0001\u001a\u00030\u0094\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u0095\u0001\u0010\u0096\u0001\u001a\u0006\b\u0097\u0001\u0010\u0098\u0001R\u001a\u0010\u009b\u0001\u001a\u0004\u0018\u00010o8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u009a\u0001\u0010qR\u001c\u0010\u009f\u0001\u001a\u0005\u0018\u00010\u009c\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009d\u0001\u0010\u009e\u0001R\u001a\u0010¡\u0001\u001a\u0004\u0018\u00010o8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b \u0001\u0010q¨\u0006§\u0001"}, d2 = {"Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;", "Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "position", "", "animatable", "Lzfb;", "selectTabWithoutNotify", "(ILjava/lang/Boolean;)V", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "dispatchTouchEvent", "(Landroid/view/MotionEvent;)Z", "animateAppear", "()V", "animateDisappear", "Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$b;", "listener", "setOnTabSelectedListener", "(Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$b;)V", "getSelectedPosition", "()I", "getTabCount", "onDetachedFromWindow", "onAttachedToWindow", "isVisible", "onVisibilityAggregated", "(Z)V", "getSelectPosition", "Landroid/os/Parcelable;", "onSaveInstanceState", "()Landroid/os/Parcelable;", ICode.CALL.CALL_KEY_STATE, "onRestoreInstanceState", "(Landroid/os/Parcelable;)V", "", "", "titleArray", "addTabs", "(Ljava/util/List;)V", "selectPosition", "(Ljava/util/List;I)V", "isClick", "isAnim", "isReset", "setSelectedPosition", "(ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V", "hasOverlappingRendering", "()Z", "P", "Z", "", "positionX", "allowMarquee", "R", "(IFZ)V", "eventPosition", ExifInterface.LATITUDE_SOUTH, "(I)Z", "M", "(Landroid/view/MotionEvent;)I", "N", "(Landroid/view/MotionEvent;)F", "x", "y", "Landroid/view/View;", "L", "(FF)Landroid/view/View;", "hostView", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "(Landroid/view/View;)V", "X", "getCurrentIndicatorX", "()F", "width", "O", "(I)I", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "Landroid/widget/TextView;", "tabView", "U", "(IILandroid/widget/TextView;)V", "H", "(I)V", "mSelectedPosition", "useAnimation", "c0", "(IZ)V", "textView", "isSelected", "a0", "(Landroid/widget/TextView;ZZ)V", "C", RequestConfiguration.MAX_AD_CONTENT_RATING_G, "(Landroid/widget/TextView;)F", "Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;", "Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;", "tabContainer", "", "Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;", "Ljava/util/List;", "tabItems", "I", "touchSlop", "Ljv9;", "Q", "Ljv9;", "currentScaleAnimator", "mSelectedBackgroundColor", "mItemSpace", "T", "mHorizontalSpace", "originalWidth", "singleItemWidth", ExifInterface.LONGITUDE_WEST, "savedItemPositions", "savedItemPositionsP", "b0", "isDragging", "F", "dragStartX", "d0", "initialIndicatorX", "e0", "downOnCurrentItem", "f0", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "g0", "Ljava/util/ArrayList;", "mTitleArray", "h0", "mTextNormalColor", "i0", "mTextSelectedColor", "j0", "mTextSelectSize", "k0", "mTextUnSelectSize", "l0", "mSegmentTextPadding", "Lo97;", "m0", "Lyi5;", "getLinearInterpolator", "()Lo97;", "linearInterpolator", "n0", "appearAnimator", "Landroid/animation/AnimatorSet;", "o0", "Landroid/animation/AnimatorSet;", "disappearAnimatorSet", "p0", "disappearScaleAnimator", "q0", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "LiquidSearchBarSavedState", "b", "c", "widgetsliquid_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class OSLiquidSegmentedTab extends OSLiquidContainerRootLayout {

    public final OSLiquidFobItemContainer tabContainer;

    public final List tabItems;

    public int touchSlop;

    public jv9 currentScaleAnimator;

    public int mSelectedBackgroundColor;

    public int mItemSpace;

    public int mHorizontalSpace;

    public int originalWidth;

    public int singleItemWidth;

    public List savedItemPositions;

    public List savedItemPositionsP;

    public boolean isDragging;

    public float dragStartX;

    public float initialIndicatorX;

    public boolean downOnCurrentItem;

    public int mSelectedPosition;

    public final ArrayList mTitleArray;

    public int mTextNormalColor;

    public int mTextSelectedColor;

    public int mTextSelectSize;

    public int mTextUnSelectSize;

    public int mSegmentTextPadding;

    public final yi5 linearInterpolator;

    public jv9 appearAnimator;

    public AnimatorSet disappearAnimatorSet;

    public jv9 disappearScaleAnimator;

    public interface b {
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSLiquidSegmentedTab(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    public static final void D(OSLiquidSegmentedTab oSLiquidSegmentedTab, f43 f43Var, float f, float f2) {
        y45.j(oSLiquidSegmentedTab, "this$0");
        oSLiquidSegmentedTab.setScaleY(f);
    }

    public static final void E(OSLiquidSegmentedTab oSLiquidSegmentedTab, f43 f43Var, float f, float f2) {
        y45.j(oSLiquidSegmentedTab, "this$0");
        oSLiquidSegmentedTab.setScaleY(f);
    }

    public static final void F(OSLiquidSegmentedTab oSLiquidSegmentedTab, f43 f43Var, boolean z, float f, float f2) {
        y45.j(oSLiquidSegmentedTab, "this$0");
        oSLiquidSegmentedTab.setVisibility(8);
    }

    public static final void I(OSLiquidSegmentedTab oSLiquidSegmentedTab, int i, TextView textView, View view) {
        y45.j(oSLiquidSegmentedTab, "this$0");
        y45.j(textView, "$tabView");
        if (oSLiquidSegmentedTab.P()) {
            oSLiquidSegmentedTab.R(i, textView.getX(), true);
        }
    }

    public static final void J(OSLiquidSegmentedTab oSLiquidSegmentedTab) {
        y45.j(oSLiquidSegmentedTab, "this$0");
        oSLiquidSegmentedTab.C();
        if (oSLiquidSegmentedTab.tabContainer.getChildCount() == 0 || oSLiquidSegmentedTab.tabContainer.getChildAt(oSLiquidSegmentedTab.mSelectedPosition) == null) {
            return;
        }
        setSelectedPosition$default(oSLiquidSegmentedTab, oSLiquidSegmentedTab.mSelectedPosition, null, null, Boolean.TRUE, 6, null);
    }

    public static final void K(OSLiquidSegmentedTab oSLiquidSegmentedTab) {
        y45.j(oSLiquidSegmentedTab, "this$0");
        OSLiquidFobItemContainer oSLiquidFobItemContainer = oSLiquidSegmentedTab.tabContainer;
        Boolean bool = Boolean.FALSE;
        oSLiquidFobItemContainer.setSelectedPosition(0, bool);
        OSLiquidFobItemContainer oSLiquidFobItemContainer2 = oSLiquidSegmentedTab.tabContainer;
        oSLiquidFobItemContainer2.updateBackgroundPosition(oSLiquidFobItemContainer2.getChildAt(oSLiquidSegmentedTab.mSelectedPosition).getLeft(), bool);
    }

    private final View L(float x, float y) {
        if (this.tabItems.isEmpty()) {
            return null;
        }
        boolean z = getLayoutDirection() == 1;
        int i = this.mHorizontalSpace;
        if (z) {
            i = -i;
        }
        View viewB = ((c) this.tabItems.get(0)).b();
        List list = this.tabItems;
        View viewB2 = ((c) list.get(list.size() - 1)).b();
        if (!z ? x - i >= viewB.getLeft() : x - i <= viewB.getRight()) {
            return viewB;
        }
        if (!z ? x - i <= viewB2.getRight() : x - i >= viewB2.getLeft()) {
            return viewB2;
        }
        Iterator it = this.tabItems.iterator();
        while (it.hasNext()) {
            View viewB3 = ((c) it.next()).b();
            int right = (z ? viewB3.getRight() + this.mItemSpace : viewB3.getLeft() - this.mItemSpace) + i;
            int left = (z ? viewB3.getLeft() - this.mItemSpace : viewB3.getRight() + this.mItemSpace) + i;
            if (z) {
                if (x <= right && x >= left) {
                    return viewB3;
                }
            } else if (x >= right && x <= left) {
                return viewB3;
            }
        }
        return null;
    }

    private final int M(MotionEvent event) {
        View viewL = L(event.getX(), event.getY());
        if (viewL == null) {
            return -1;
        }
        int i = 0;
        for (Object obj : ViewGroupKt.getChildren(this.tabContainer)) {
            if (i < 0) {
                y71.u();
            }
            if (y45.e((View) obj, viewL)) {
                return i;
            }
            i++;
        }
        return -1;
    }

    private final float N(MotionEvent event) {
        View viewL = L(event.getX(), event.getY());
        if (viewL != null) {
            return viewL.getX();
        }
        return 0.0f;
    }

    private final int O(int width) {
        if (this.tabItems.isEmpty()) {
            return 0;
        }
        return (int) (((width - (this.mHorizontalSpace * 2)) - (this.mItemSpace * (this.tabItems.size() + 1))) / this.tabItems.size());
    }

    public static final void Q(OSLiquidSegmentedTab oSLiquidSegmentedTab) {
        y45.j(oSLiquidSegmentedTab, "this$0");
        OSLiquidFobItemContainer oSLiquidFobItemContainer = oSLiquidSegmentedTab.tabContainer;
        oSLiquidFobItemContainer.updateBackgroundPosition(oSLiquidFobItemContainer.getChildAt(oSLiquidSegmentedTab.mSelectedPosition).getLeft(), Boolean.FALSE);
    }

    private final boolean S(int eventPosition) {
        return eventPosition >= 0 && eventPosition < this.tabItems.size();
    }

    public static final void T(OSLiquidSegmentedTab oSLiquidSegmentedTab, int i, Boolean bool) {
        y45.j(oSLiquidSegmentedTab, "this$0");
        oSLiquidSegmentedTab.tabContainer.setSelectedPosition(i, bool);
    }

    private final void V(final View hostView) {
        jv9 jv9Var = this.currentScaleAnimator;
        if (jv9Var != null) {
            jv9Var.c();
        }
        jv9 jv9Var2 = new jv9(this, f43.q);
        kv9 kv9Var = new kv9();
        kv9Var.i(250.0f);
        kv9Var.g(0.99f);
        kv9Var.h(1.05f);
        jv9Var2.z(kv9Var);
        jv9Var2.b(new f43.r() {
            @Override
            public final void a(f43 f43Var, float f, float f2) {
                OSLiquidSegmentedTab.W(hostView, f43Var, f, f2);
            }
        });
        jv9Var2.p();
        this.currentScaleAnimator = jv9Var2;
    }

    public static final void W(View view, f43 f43Var, float f, float f2) {
        y45.j(view, "$hostView");
        view.setScaleY(f);
    }

    private final void X(final View hostView) {
        jv9 jv9Var = this.currentScaleAnimator;
        if (jv9Var != null) {
            jv9Var.c();
        }
        jv9 jv9Var2 = new jv9(this, f43.q);
        kv9 kv9Var = new kv9();
        kv9Var.i(250.0f);
        kv9Var.g(0.5f);
        kv9Var.h(1.0f);
        jv9Var2.z(kv9Var);
        jv9Var2.b(new f43.r() {
            @Override
            public final void a(f43 f43Var, float f, float f2) {
                OSLiquidSegmentedTab.Y(hostView, f43Var, f, f2);
            }
        });
        jv9Var2.p();
        this.currentScaleAnimator = jv9Var2;
    }

    public static final void Y(View view, f43 f43Var, float f, float f2) {
        y45.j(view, "$hostView");
        view.setScaleY(f);
    }

    public static void addTabs$default(OSLiquidSegmentedTab oSLiquidSegmentedTab, List list, int i, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addTabs");
        }
        if ((i2 & 2) != 0) {
            i = 0;
        }
        oSLiquidSegmentedTab.addTabs(list, i);
    }

    public static final void b0(TextView textView, int i, float f) {
        y45.j(textView, "$textView");
        textView.setTextAppearance(i);
        textView.setTextSize(0, f);
    }

    private final float getCurrentIndicatorX() {
        return this.tabContainer.getCurrentBackgroundLeft();
    }

    private final o97 getLinearInterpolator() {
        return (o97) this.linearInterpolator.getValue();
    }

    public static void selectTabWithoutNotify$default(OSLiquidSegmentedTab oSLiquidSegmentedTab, int i, Boolean bool, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: selectTabWithoutNotify");
        }
        if ((i2 & 2) != 0) {
            bool = Boolean.TRUE;
        }
        oSLiquidSegmentedTab.selectTabWithoutNotify(i, bool);
    }

    public static void setSelectedPosition$default(OSLiquidSegmentedTab oSLiquidSegmentedTab, int i, Boolean bool, Boolean bool2, Boolean bool3, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setSelectedPosition");
        }
        if ((i2 & 2) != 0) {
            bool = Boolean.FALSE;
        }
        if ((i2 & 4) != 0) {
            bool2 = Boolean.FALSE;
        }
        if ((i2 & 8) != 0) {
            bool3 = Boolean.FALSE;
        }
        oSLiquidSegmentedTab.setSelectedPosition(i, bool, bool2, bool3);
    }

    public final void C() {
        int childCount = this.tabContainer.getChildCount();
        float f = Float.MAX_VALUE;
        int i = 0;
        while (true) {
            if (i >= childCount) {
                break;
            }
            View childAt = this.tabContainer.getChildAt(i);
            TextView textView = childAt instanceof TextView ? (TextView) childAt : null;
            if (textView != null) {
                float fG = G(textView);
                if (fG < f) {
                    f = fG;
                }
            }
            i++;
        }
        int i2 = (int) f;
        this.mTextSelectSize = i2;
        this.mTextUnSelectSize = i2;
        int childCount2 = this.tabContainer.getChildCount();
        for (int i3 = 0; i3 < childCount2; i3++) {
            View childAt2 = this.tabContainer.getChildAt(i3);
            TextView textView2 = childAt2 instanceof TextView ? (TextView) childAt2 : null;
            if (textView2 != null) {
                textView2.setTextSize(0, f);
            }
        }
    }

    public final float G(TextView textView) {
        int width;
        float f;
        float f2;
        String string = textView.getText().toString();
        if (string.length() != 0 && (width = (textView.getWidth() - textView.getPaddingLeft()) - textView.getPaddingRight()) > 0) {
            TextPaint paint = textView.getPaint();
            float textSize = textView.getTextSize();
            float fApplyDimension = TypedValue.applyDimension(1, 12.0f, getResources().getDisplayMetrics());
            float fApplyDimension2 = TypedValue.applyDimension(1, 15.0f, getResources().getDisplayMetrics());
            float fApplyDimension3 = TypedValue.applyDimension(1, 2.0f, getResources().getDisplayMetrics());
            paint.setTextSize(textSize);
            float f3 = width;
            if (paint.measureText(string) <= f3) {
                f = textSize;
                for (float fMin = Math.min(textSize + fApplyDimension3, fApplyDimension2); fMin <= fApplyDimension2; fMin += fApplyDimension3) {
                    paint.setTextSize(fMin);
                    if (paint.measureText(string) > f3) {
                        break;
                    }
                    f = fMin;
                }
            } else {
                float f4 = textSize;
                float f5 = fApplyDimension;
                loop1: while (true) {
                    f = f5;
                    while (true) {
                        if (f4 - f5 <= 1.0f) {
                            break loop1;
                        }
                        f2 = (f5 + f4) / 2;
                        paint.setTextSize(f2);
                        if (paint.measureText(string) <= f3) {
                            break;
                        }
                        f4 = f2;
                    }
                    f5 = f2;
                }
            }
            paint.setTextSize(f);
            if (paint.measureText(string) > f3) {
                f = fApplyDimension;
            }
            paint.setTextSize(textSize);
            return wn8.j(f, fApplyDimension, fApplyDimension2);
        }
        return textView.getTextSize();
    }

    public final void H(int selectPosition) {
        this.tabItems.clear();
        this.tabContainer.removeAllViews();
        int size = this.mTitleArray.size();
        final int i = 0;
        while (i < size) {
            final TextView textView = new TextView(getContext());
            textView.setSingleLine(true);
            textView.setSelected(i == selectPosition);
            textView.setGravity(17);
            textView.setEllipsize(TextUtils.TruncateAt.END);
            textView.setText((CharSequence) this.mTitleArray.get(i));
            textView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    OSLiquidSegmentedTab.I(this.b, i, textView, view);
                }
            });
            U(i, selectPosition, textView);
            int i2 = this.mSegmentTextPadding;
            textView.setPadding(i2, 0, i2, 0);
            textView.setMaxLines(1);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -1);
            if (i != 0) {
                layoutParams.setMarginStart(this.mItemSpace);
            } else {
                layoutParams.setMarginStart(this.mHorizontalSpace);
            }
            if (i == size - 1) {
                layoutParams.setMarginEnd(this.mHorizontalSpace);
            }
            layoutParams.weight = 1.0f;
            this.tabContainer.addView(textView, layoutParams);
            List list = this.tabItems;
            Object obj = this.mTitleArray.get(i);
            y45.i(obj, "mTitleArray[i]");
            list.add(new c((String) obj, textView, 0.0f, 0.0f, 0.0f, false, 60, null));
            i++;
        }
        Z();
        if (size > 0) {
            this.tabContainer.getChildAt(size - 1).post(new Runnable() {
                @Override
                public final void run() {
                    OSLiquidSegmentedTab.J(this.b);
                }
            });
        }
        this.tabContainer.post(new Runnable() {
            @Override
            public final void run() {
                OSLiquidSegmentedTab.K(this.b);
            }
        });
    }

    public final boolean P() {
        return olb.r0(getContext());
    }

    public final void R(int position, float positionX, boolean allowMarquee) {
        c cVar;
        TextView textViewA;
        if (S(position)) {
            int i = this.mSelectedPosition;
            this.tabContainer.animateToFinalPosition(positionX);
            this.tabContainer.updFinalPosition(position);
            if (i != position) {
                this.mSelectedPosition = position;
                c0(position, true);
            }
            if (!allowMarquee || (cVar = (c) i81.r0(this.tabItems, position)) == null || (textViewA = cVar.a()) == null) {
                return;
            }
            gcc.n(textViewA, 0.0f, 1, null);
        }
    }

    public final void U(int i, int selectPosition, TextView tabView) {
        if (i != selectPosition) {
            tabView.setTextAppearance(R.style.os_regular_fontweight);
            tabView.setTextSize(0, this.mTextUnSelectSize);
            tabView.setTextColor(this.mTextNormalColor);
        } else {
            tabView.setTextAppearance(R.style.os_semibold_font);
            tabView.setTextSize(0, this.mTextSelectSize);
            tabView.getPaint().setColor(this.mTextSelectedColor);
            tabView.setTextColor(this.mTextSelectedColor);
        }
    }

    public final void Z() {
        boolean zP = P();
        setClickable(!zP);
        setFocusable(false);
        setImportantForAccessibility(zP ? 2 : 0);
        this.tabContainer.setImportantForAccessibility(2);
        Iterator it = this.tabItems.iterator();
        while (it.hasNext()) {
            TextView textViewA = ((c) it.next()).a();
            textViewA.setClickable(zP);
            textViewA.setFocusable(zP);
            textViewA.setImportantForAccessibility(zP ? 1 : 2);
        }
    }

    public final void a0(final TextView textView, boolean isSelected, boolean useAnimation) {
        int i = isSelected ? this.mTextSelectedColor : this.mTextNormalColor;
        final int i2 = isSelected ? R.style.os_semibold_font : R.style.os_regular_fontweight;
        final float f = isSelected ? this.mTextSelectSize : this.mTextUnSelectSize;
        if (useAnimation) {
            Object tag = textView.getTag();
            Runnable runnable = tag instanceof Runnable ? (Runnable) tag : null;
            if (runnable != null) {
                textView.removeCallbacks(runnable);
            }
            Runnable runnable2 = new Runnable() {
                @Override
                public final void run() {
                    OSLiquidSegmentedTab.b0(textView, i2, f);
                }
            };
            textView.setTag(runnable2);
            textView.postDelayed(runnable2, 100L);
        } else {
            textView.setTextAppearance(i2);
            textView.setTextSize(0, f);
        }
        textView.setSingleLine(true);
        if (!isSelected) {
            gcc.r(textView);
        }
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setSelected(isSelected);
        if (textView.getCurrentTextColor() != i) {
            textView.setTextColor(i);
        }
    }

    public final void addTabs(List<String> titleArray) {
        y45.j(titleArray, "titleArray");
        addTabs(titleArray, 0);
    }

    public final void animateAppear() {
        AnimatorSet animatorSet = this.disappearAnimatorSet;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        jv9 jv9Var = this.disappearScaleAnimator;
        if (jv9Var != null) {
            jv9Var.c();
        }
        jv9 jv9Var2 = this.appearAnimator;
        if (jv9Var2 != null) {
            jv9Var2.c();
        }
        setScaleX(0.8f);
        setScaleY(0.8f);
        setAlpha(0.0f);
        setVisibility(0);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, (Property<OSLiquidSegmentedTab, Float>) View.ALPHA, 0.0f, 1.0f);
        objectAnimatorOfFloat.setDuration(100L);
        objectAnimatorOfFloat.setInterpolator(getLinearInterpolator());
        jv9 jv9Var3 = new jv9(this, f43.q);
        kv9 kv9Var = new kv9();
        kv9Var.i(400.0f);
        kv9Var.g(0.79f);
        kv9Var.h(1.0f);
        jv9Var3.z(kv9Var);
        jv9Var3.b(new f43.r() {
            @Override
            public final void a(f43 f43Var, float f, float f2) {
                OSLiquidSegmentedTab.D(this.a, f43Var, f, f2);
            }
        });
        jv9Var3.p();
        this.appearAnimator = jv9Var3;
        objectAnimatorOfFloat.start();
    }

    public final void animateDisappear() {
        jv9 jv9Var = this.appearAnimator;
        if (jv9Var != null) {
            jv9Var.c();
        }
        AnimatorSet animatorSet = this.disappearAnimatorSet;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        jv9 jv9Var2 = this.disappearScaleAnimator;
        if (jv9Var2 != null) {
            jv9Var2.c();
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, (Property<OSLiquidSegmentedTab, Float>) View.ALPHA, 1.0f, 0.0f);
        objectAnimatorOfFloat.setDuration(100L);
        objectAnimatorOfFloat.setInterpolator(getLinearInterpolator());
        jv9 jv9Var3 = new jv9(this, f43.q);
        kv9 kv9Var = new kv9();
        kv9Var.i(400.0f);
        kv9Var.g(0.79f);
        kv9Var.h(0.8f);
        jv9Var3.z(kv9Var);
        jv9Var3.b(new f43.r() {
            @Override
            public final void a(f43 f43Var, float f, float f2) {
                OSLiquidSegmentedTab.E(this.a, f43Var, f, f2);
            }
        });
        jv9Var3.a(new f43.q() {
            @Override
            public final void a(f43 f43Var, boolean z, float f, float f2) {
                OSLiquidSegmentedTab.F(this.a, f43Var, z, f, f2);
            }
        });
        this.disappearScaleAnimator = jv9Var3;
        AnimatorSet animatorSet2 = new AnimatorSet();
        animatorSet2.playTogether(objectAnimatorOfFloat);
        animatorSet2.start();
        this.disappearAnimatorSet = animatorSet2;
        jv9 jv9Var4 = this.disappearScaleAnimator;
        if (jv9Var4 != null) {
            jv9Var4.p();
        }
    }

    public final void c0(int mSelectedPosition, boolean useAnimation) {
        int childCount = this.tabContainer.getChildCount();
        int i = 0;
        while (i < childCount) {
            View childAt = this.tabContainer.getChildAt(i);
            y45.h(childAt, "null cannot be cast to non-null type android.widget.TextView");
            a0((TextView) childAt, i == mSelectedPosition, useAnimation);
            i++;
        }
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent event) {
        y45.j(event, NotificationCompat.CATEGORY_EVENT);
        if (P()) {
            return super.dispatchTouchEvent(event);
        }
        super.dispatchTouchEvent(event);
        int action = event.getAction();
        boolean z = false;
        if (action == 0) {
            this.dragStartX = event.getX();
            this.isDragging = false;
            int iM = M(event);
            if (S(iM) && iM == this.mSelectedPosition) {
                z = true;
            }
            this.downOnCurrentItem = z;
            if (z) {
                this.initialIndicatorX = getCurrentIndicatorX();
            } else {
                float fN = N(event);
                this.tabContainer.animateToFinalPosition(fN);
                this.initialIndicatorX = fN;
            }
            if (!olb.P) {
                V(this);
            }
            return true;
        }
        if (action != 1) {
            if (action == 2) {
                float x = event.getX() - this.dragStartX;
                float fAbs = Math.abs(x);
                if (!this.isDragging && fAbs > this.touchSlop) {
                    this.isDragging = true;
                }
                if (this.isDragging) {
                    this.tabContainer.animateToFinalPosition(wn8.j(this.initialIndicatorX + x, this.mHorizontalSpace, (this.tabContainer.getMeasuredWidth() - O(getMeasuredWidth())) - (this.mHorizontalSpace * 2)));
                }
                return true;
            }
            if (action != 3) {
                return true;
            }
        }
        int iM2 = M(event);
        float fN2 = N(event);
        if (S(iM2)) {
            R(iM2, fN2, !this.isDragging);
        }
        this.isDragging = false;
        if (!olb.P) {
            X(this);
        }
        return true;
    }

    public final int getMSelectedPosition() {
        return this.mSelectedPosition;
    }

    public final int getSelectedPosition() {
        return this.mSelectedPosition;
    }

    public final int getTabCount() {
        return this.tabItems.size();
    }

    @Override
    public boolean hasOverlappingRendering() {
        return false;
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Z();
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        jv9 jv9Var = this.currentScaleAnimator;
        if (jv9Var != null) {
            jv9Var.c();
        }
        this.currentScaleAnimator = null;
        jv9 jv9Var2 = this.appearAnimator;
        if (jv9Var2 != null) {
            jv9Var2.c();
        }
        this.appearAnimator = null;
        AnimatorSet animatorSet = this.disappearAnimatorSet;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        this.disappearAnimatorSet = null;
        jv9 jv9Var3 = this.disappearScaleAnimator;
        if (jv9Var3 != null) {
            jv9Var3.c();
        }
        this.disappearScaleAnimator = null;
    }

    @Override
    public void onRestoreInstanceState(Parcelable state) {
        if (!(state instanceof LiquidSearchBarSavedState)) {
            super.onRestoreInstanceState(state);
            return;
        }
        LiquidSearchBarSavedState liquidSearchBarSavedState = (LiquidSearchBarSavedState) state;
        super.onRestoreInstanceState(liquidSearchBarSavedState.getSuperState());
        this.originalWidth = liquidSearchBarSavedState.getOriginWidth();
        this.singleItemWidth = liquidSearchBarSavedState.getSingleItemWidth();
        if (liquidSearchBarSavedState.getItemPositions().length == 0) {
            return;
        }
        this.savedItemPositions.clear();
        this.savedItemPositionsP.clear();
        this.savedItemPositions.addAll(hi.Z0(liquidSearchBarSavedState.getItemPositions()));
        this.savedItemPositionsP.addAll(hi.Z0(liquidSearchBarSavedState.getItemPositionsP()));
        float[] itemPositions = liquidSearchBarSavedState.getItemPositions();
        int length = itemPositions.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            float f = itemPositions[i];
            int i3 = i2 + 1;
            if (i2 < this.tabItems.size()) {
                if ((liquidSearchBarSavedState.getRtl() == 1) != olb.l0()) {
                    ((c) this.tabItems.get(i2)).f(liquidSearchBarSavedState.getItemPositionsP()[i2]);
                    liquidSearchBarSavedState.getItemPositionsP()[i2] = liquidSearchBarSavedState.getItemPositions()[i2];
                    liquidSearchBarSavedState.getItemPositions()[i2] = ((c) this.tabItems.get(i2)).c();
                } else {
                    ((c) this.tabItems.get(i2)).f(liquidSearchBarSavedState.getItemPositions()[i2]);
                }
                ((c) this.tabItems.get(i2)).d(olb.l0());
                ((c) this.tabItems.get(i2)).e(liquidSearchBarSavedState.getTextHeight());
            }
            i++;
            i2 = i3;
        }
    }

    @Override
    public Parcelable onSaveInstanceState() {
        LiquidSearchBarSavedState liquidSearchBarSavedState = new LiquidSearchBarSavedState(super.onSaveInstanceState());
        liquidSearchBarSavedState.setMSelectedPosition(this.mSelectedPosition);
        liquidSearchBarSavedState.setOriginWidth(this.originalWidth);
        liquidSearchBarSavedState.setSingleItemWidth(this.singleItemWidth);
        liquidSearchBarSavedState.setItemPositions(i81.Y0(this.savedItemPositions));
        liquidSearchBarSavedState.setItemPositionsP(i81.Y0(this.savedItemPositionsP));
        liquidSearchBarSavedState.setRtl(olb.l0() ? 1 : 0);
        return liquidSearchBarSavedState;
    }

    @Override
    public void onVisibilityAggregated(boolean isVisible) {
        super.onVisibilityAggregated(isVisible);
        if (isVisible) {
            this.tabContainer.post(new Runnable() {
                @Override
                public final void run() {
                    OSLiquidSegmentedTab.Q(this.b);
                }
            });
        }
    }

    public final void selectTabWithoutNotify(final int position, final Boolean animatable) {
        if (position < 0 || position >= this.tabItems.size()) {
            return;
        }
        this.tabContainer.post(new Runnable() {
            @Override
            public final void run() {
                OSLiquidSegmentedTab.T(this.b, position, animatable);
            }
        });
    }

    public final void setOnTabSelectedListener(b listener) {
        y45.j(listener, "listener");
    }

    public final void setSelectedPosition(int position, Boolean isClick, Boolean isAnim, Boolean isReset) {
        if (this.mSelectedPosition != position || y45.e(isReset, Boolean.TRUE)) {
            c0(position, y45.e(isAnim, Boolean.TRUE));
            this.mSelectedPosition = position;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSLiquidSegmentedTab(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public final void addTabs(List<String> titleArray, int selectPosition) {
        y45.j(titleArray, "titleArray");
        this.mSelectedPosition = selectPosition;
        this.mTitleArray.clear();
        this.mTitleArray.addAll(titleArray);
        H(selectPosition);
    }

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u0014\n\u0002\b\u0012\b\u0002\u0018\u0000 -2\u00020\u0001:\u0001.B\u0013\b\u0016\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\bJ\u001f\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\f\u0010\rR\"\u0010\u000e\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\"\u0010\u0014\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u000f\u001a\u0004\b\u0015\u0010\u0011\"\u0004\b\u0016\u0010\u0013R\"\u0010\u0017\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u000f\u001a\u0004\b\u0018\u0010\u0011\"\u0004\b\u0019\u0010\u0013R\"\u0010\u001a\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u000f\u001a\u0004\b\u001b\u0010\u0011\"\u0004\b\u001c\u0010\u0013R\"\u0010\u001e\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\"\u0010$\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010\u001f\u001a\u0004\b%\u0010!\"\u0004\b&\u0010#R\"\u0010'\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010\u000f\u001a\u0004\b(\u0010\u0011\"\u0004\b)\u0010\u0013R\"\u0010*\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010\u000f\u001a\u0004\b+\u0010\u0011\"\u0004\b,\u0010\u0013¨\u0006/"}, d2 = {"Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$LiquidSearchBarSavedState;", "Landroid/view/AbsSavedState;", "Landroid/os/Parcelable;", "superState", MethodDecl.initName, "(Landroid/os/Parcelable;)V", "Landroid/os/Parcel;", "parcel", "(Landroid/os/Parcel;)V", "", "flags", "Lzfb;", "writeToParcel", "(Landroid/os/Parcel;I)V", "searchMode", "I", "getSearchMode", "()I", "setSearchMode", "(I)V", "mSelectedPosition", "getMSelectedPosition", "setMSelectedPosition", "originWidth", "getOriginWidth", "setOriginWidth", "singleItemWidth", "getSingleItemWidth", "setSingleItemWidth", "", "itemPositions", "[F", "getItemPositions", "()[F", "setItemPositions", "([F)V", "itemPositionsP", "getItemPositionsP", "setItemPositionsP", "textHeight", "getTextHeight", "setTextHeight", "rtl", "getRtl", "setRtl", "CREATOR", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "widgetsliquid_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class LiquidSearchBarSavedState extends AbsSavedState {

        public static final Companion INSTANCE = new Companion(null);
        private float[] itemPositions;
        private float[] itemPositionsP;
        private int mSelectedPosition;
        private int originWidth;
        private int rtl;
        private int searchMode;
        private int singleItemWidth;
        private int textHeight;

        public static final class Companion implements Parcelable.Creator {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @Override
            public LiquidSearchBarSavedState createFromParcel(Parcel parcel) {
                y45.j(parcel, "parcel");
                return new LiquidSearchBarSavedState(parcel);
            }

            @Override
            public LiquidSearchBarSavedState[] newArray(int i) {
                return new LiquidSearchBarSavedState[i];
            }

            public Companion() {
            }
        }

        public LiquidSearchBarSavedState(Parcelable parcelable) {
            super(parcelable);
            this.itemPositions = new float[0];
            this.itemPositionsP = new float[0];
        }

        public final float[] getItemPositions() {
            return this.itemPositions;
        }

        public final float[] getItemPositionsP() {
            return this.itemPositionsP;
        }

        public final int getMSelectedPosition() {
            return this.mSelectedPosition;
        }

        public final int getOriginWidth() {
            return this.originWidth;
        }

        public final int getRtl() {
            return this.rtl;
        }

        public final int getSearchMode() {
            return this.searchMode;
        }

        public final int getSingleItemWidth() {
            return this.singleItemWidth;
        }

        public final int getTextHeight() {
            return this.textHeight;
        }

        public final void setItemPositions(float[] fArr) {
            y45.j(fArr, "<set-?>");
            this.itemPositions = fArr;
        }

        public final void setItemPositionsP(float[] fArr) {
            y45.j(fArr, "<set-?>");
            this.itemPositionsP = fArr;
        }

        public final void setMSelectedPosition(int i) {
            this.mSelectedPosition = i;
        }

        public final void setOriginWidth(int i) {
            this.originWidth = i;
        }

        public final void setRtl(int i) {
            this.rtl = i;
        }

        public final void setSearchMode(int i) {
            this.searchMode = i;
        }

        public final void setSingleItemWidth(int i) {
            this.singleItemWidth = i;
        }

        public final void setTextHeight(int i) {
            this.textHeight = i;
        }

        @Override
        public void writeToParcel(Parcel parcel, int flags) {
            y45.j(parcel, "parcel");
            super.writeToParcel(parcel, flags);
            parcel.writeInt(this.searchMode);
            parcel.writeInt(this.mSelectedPosition);
            parcel.writeInt(this.originWidth);
            parcel.writeInt(this.singleItemWidth);
            parcel.writeFloatArray(this.itemPositions);
            parcel.writeFloatArray(this.itemPositionsP);
            parcel.writeInt(this.textHeight);
            parcel.writeInt(this.rtl);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LiquidSearchBarSavedState(Parcel parcel) {
            super(parcel);
            y45.j(parcel, "parcel");
            this.itemPositions = new float[0];
            this.itemPositionsP = new float[0];
            this.searchMode = parcel.readInt();
            this.mSelectedPosition = parcel.readInt();
            this.originWidth = parcel.readInt();
            this.singleItemWidth = parcel.readInt();
            float[] fArrCreateFloatArray = parcel.createFloatArray();
            this.itemPositions = fArrCreateFloatArray == null ? new float[0] : fArrCreateFloatArray;
            float[] fArrCreateFloatArray2 = parcel.createFloatArray();
            this.itemPositionsP = fArrCreateFloatArray2 == null ? new float[0] : fArrCreateFloatArray2;
            this.textHeight = parcel.readInt();
            this.rtl = parcel.readInt();
        }
    }

    public OSLiquidSegmentedTab(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OSLiquidSegmentedTab(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.tabItems = new ArrayList();
        this.savedItemPositions = new ArrayList();
        this.savedItemPositionsP = new ArrayList();
        this.mSelectedPosition = -1;
        this.mTitleArray = new ArrayList();
        this.linearInterpolator = kotlin.b.a(new c74() {
            @Override
            public final o97 invoke() {
                return new o97();
            }
        });
        Resources resources = getResources();
        int i2 = R.dimen.os_space050;
        this.mItemSpace = resources.getDimensionPixelSize(i2);
        this.mHorizontalSpace = olb.h(context, 3);
        this.mSelectedBackgroundColor = olb.m(context, R.attr.os_opacityfill_weaker, R.color.os_opacityfill_weaker_hios);
        int[] iArr = R.styleable.OSLiquidContainer;
        y45.i(iArr, "OSLiquidContainer");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, 0, 0);
        y45.i(typedArrayObtainStyledAttributes, "obtainStyledAttributes(s…efStyleAttr, defStyleRes)");
        if (!typedArrayObtainStyledAttributes.hasValue(R.styleable.OSLiquidContainer_os_liquid_mixlevel) && Build.VERSION.SDK_INT >= 31) {
            setMixLevel(2);
        }
        typedArrayObtainStyledAttributes.recycle();
        this.touchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        OSLiquidFobItemContainer oSLiquidFobItemContainer = new OSLiquidFobItemContainer(context, null, 0, 6, null);
        oSLiquidFobItemContainer.setOrientation(0);
        oSLiquidFobItemContainer.setGravity(17);
        oSLiquidFobItemContainer.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        oSLiquidFobItemContainer.setSelectedBackgroundColor(this.mSelectedBackgroundColor);
        this.tabContainer = oSLiquidFobItemContainer;
        addView(oSLiquidFobItemContainer);
        setElasticTypeConfig(ElasticTypeConfig.SEGMENTED_TAB);
        setLightTypeConfig(LightTypeConfig.SEGMENTED_TAB_AUTO);
        setScaleRatio(1.05f);
        detachPressAnim();
        setClipChildren(false);
        int[] iArr2 = R.styleable.OSSegmentTab;
        y45.i(iArr2, "OSSegmentTab");
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr2, 0, 0);
        y45.i(typedArrayObtainStyledAttributes2, "obtainStyledAttributes(s…efStyleAttr, defStyleRes)");
        this.mTextSelectSize = typedArrayObtainStyledAttributes2.getResources().getDimensionPixelSize(R.dimen.os_segment_tab_text_select_size);
        this.mTextUnSelectSize = typedArrayObtainStyledAttributes2.getResources().getDimensionPixelSize(R.dimen.os_segment_tab_text_unselect_size);
        this.mTextSelectSize = typedArrayObtainStyledAttributes2.getDimensionPixelSize(R.styleable.OSSegmentTab_segmentTabSelectTextSize, this.mTextSelectSize);
        this.mTextUnSelectSize = typedArrayObtainStyledAttributes2.getDimensionPixelSize(R.styleable.OSSegmentTab_segmentTabUnSelectTextSize, this.mTextUnSelectSize);
        this.mTextSelectedColor = typedArrayObtainStyledAttributes2.getColor(R.styleable.OSSegmentTab_segmentTabTextSelectedColor, olb.m(getContext(), R.attr.os_text_primary, R.color.os_text_primary_hios));
        this.mTextNormalColor = typedArrayObtainStyledAttributes2.getColor(R.styleable.OSSegmentTab_segmentTabTextNormalColor, olb.m(getContext(), R.attr.os_text_tertiary, R.color.os_text_tertiary_hios));
        int dimensionPixelSize = typedArrayObtainStyledAttributes2.getResources().getDimensionPixelSize(i2);
        this.mSegmentTextPadding = dimensionPixelSize;
        this.mSegmentTextPadding = typedArrayObtainStyledAttributes2.getInteger(R.styleable.OSSegmentTab_segmentTabTextPadding, dimensionPixelSize);
        typedArrayObtainStyledAttributes2.recycle();
        oSLiquidFobItemContainer.setBackgroundMarginVerticalDp(3);
        oSLiquidFobItemContainer.setItemSpaceDp(0);
        Z();
    }

    public static final class c {
        public final String a;
        public final View b;
        public float c;
        public float d;
        public float e;
        public boolean f;

        public c(String str, View view, float f, float f2, float f3, boolean z) {
            y45.j(str, "title");
            y45.j(view, "view");
            this.a = str;
            this.b = view;
            this.c = f;
            this.d = f2;
            this.e = f3;
            this.f = z;
        }

        public final TextView a() {
            View view = this.b;
            y45.h(view, "null cannot be cast to non-null type android.widget.TextView");
            return (TextView) view;
        }

        public final View b() {
            return this.b;
        }

        public final float c() {
            return this.c;
        }

        public final void d(boolean z) {
            this.f = z;
        }

        public final void e(float f) {
            this.e = f;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return y45.e(this.a, cVar.a) && y45.e(this.b, cVar.b) && Float.compare(this.c, cVar.c) == 0 && Float.compare(this.d, cVar.d) == 0 && Float.compare(this.e, cVar.e) == 0 && this.f == cVar.f;
        }

        public final void f(float f) {
            this.c = f;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v11, types: [int] */
        /* JADX WARN: Type inference failed for: r2v2, types: [int] */
        /* JADX WARN: Type inference failed for: r2v3 */
        /* JADX WARN: Type inference failed for: r2v4 */
        public int hashCode() {
            int iHashCode = ((((((((this.a.hashCode() * 31) + this.b.hashCode()) * 31) + Float.hashCode(this.c)) * 31) + Float.hashCode(this.d)) * 31) + Float.hashCode(this.e)) * 31;
            boolean z = this.f;
            ?? r2 = z;
            if (z) {
                r2 = 1;
            }
            return iHashCode + r2;
        }

        public String toString() {
            return "TabItem(title=" + this.a + ", view=" + this.b + ", x=" + this.c + ", px=" + this.d + ", textHeight=" + this.e + ", mRtl=" + this.f + ")";
        }

        public c(String str, View view, float f, float f2, float f3, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, view, (i & 4) != 0 ? 0.0f : f, (i & 8) != 0 ? 0.0f : f2, (i & 16) != 0 ? 0.0f : f3, (i & 32) != 0 ? false : z);
        }
    }
}
