package com.transsion.widgetsbottomsheet.bottomsheet;

import android.app.ActivityOptions;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.view.inputmethod.InputMethodManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.LayoutRes;
import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.view.OneShotPreDrawListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.p004lifecycle.MutableLiveData;
import com.transsion.widgetsbottomsheet.R;
import com.transsion.widgetsbottomsheet.animation.AnimHelper;
import com.transsion.widgetsbottomsheet.bottomsheet.OSBaseBottomSheetDialog;
import com.transsion.widgetsbottomsheet.databinding.OsBottomSheetContainerBinding;
import defpackage.bq5;
import defpackage.c74;
import defpackage.e74;
import defpackage.i81;
import defpackage.olb;
import defpackage.sj0;
import defpackage.u47;
import defpackage.v47;
import defpackage.wn8;
import defpackage.y45;
import defpackage.y71;
import defpackage.yi5;
import defpackage.zfb;
import java.util.Iterator;
import java.util.Stack;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000¬\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b,\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u0000  \u00012\u00020\u0001:\u0002¡\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\u0003J\u000f\u0010\t\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\t\u0010\u0006J\u0017\u0010\f\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0011\u0010\u0006J\u000f\u0010\u0013\u001a\u00020\u0012H\u0003¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0015\u0010\u0003J\u000f\u0010\u0016\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0016\u0010\u0003J\u000f\u0010\u0017\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0017\u0010\u0003J\u000f\u0010\u0018\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0018\u0010\u0003J+\u0010\u001c\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u00122\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u001e\u0010\u0003J\u000f\u0010\u001f\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u001f\u0010\u0003J\u001f\u0010#\u001a\u00020\u00122\u0006\u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020\u0012H\u0002¢\u0006\u0004\b#\u0010$J\u0019\u0010'\u001a\u00020\u00072\b\u0010&\u001a\u0004\u0018\u00010%H\u0014¢\u0006\u0004\b'\u0010(J\u000f\u0010)\u001a\u00020\u0004H\u0016¢\u0006\u0004\b)\u0010\u0006J\u000f\u0010*\u001a\u00020\u0004H\u0016¢\u0006\u0004\b*\u0010\u0006J\u000f\u0010+\u001a\u00020\u0004H\u0016¢\u0006\u0004\b+\u0010\u0006J\u000f\u0010,\u001a\u00020\u0004H\u0016¢\u0006\u0004\b,\u0010\u0006J\u000f\u0010-\u001a\u00020\u0007H\u0016¢\u0006\u0004\b-\u0010\u0003J\u000f\u0010.\u001a\u00020\u0007H&¢\u0006\u0004\b.\u0010\u0003J\u000f\u0010/\u001a\u00020\u0012H\u0016¢\u0006\u0004\b/\u0010\u0014J\u0019\u00100\u001a\u00020\u00072\b\b\u0001\u0010\u0019\u001a\u00020\u0012H\u0016¢\u0006\u0004\b0\u00101J\u0019\u00100\u001a\u00020\u00072\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b0\u0010\rJ#\u00100\u001a\u00020\u00072\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016¢\u0006\u0004\b0\u00102J\u0015\u00104\u001a\u00020\u00072\u0006\u00103\u001a\u00020\u0004¢\u0006\u0004\b4\u00105J\u000f\u00106\u001a\u00020\u0007H\u0007¢\u0006\u0004\b6\u0010\u0003J\u000f\u00107\u001a\u00020\u0007H\u0007¢\u0006\u0004\b7\u0010\u0003J\u000f\u00108\u001a\u00020\u0007H\u0016¢\u0006\u0004\b8\u0010\u0003J\u000f\u00109\u001a\u00020\u0007H\u0016¢\u0006\u0004\b9\u0010\u0003J\r\u0010:\u001a\u00020\u0007¢\u0006\u0004\b:\u0010\u0003J\u000f\u0010;\u001a\u00020\u0007H\u0016¢\u0006\u0004\b;\u0010\u0003J\u0017\u0010>\u001a\u00020\u00072\u0006\u0010<\u001a\u00020\u0004H\u0007¢\u0006\u0004\b=\u00105J\u000f\u0010?\u001a\u00020\u0007H\u0016¢\u0006\u0004\b?\u0010\u0003J\u0015\u0010@\u001a\u00020\u00072\u0006\u00106\u001a\u00020\u0004¢\u0006\u0004\b@\u00105J\u000f\u0010B\u001a\u00020\u0007H\u0000¢\u0006\u0004\bA\u0010\u0003J\u0019\u0010E\u001a\u00020\u00072\b\b\u0001\u0010C\u001a\u00020\u0012H\u0000¢\u0006\u0004\bD\u00101J\u0019\u0010G\u001a\u00020\u00072\b\b\u0002\u0010F\u001a\u00020\u0004H\u0016¢\u0006\u0004\bG\u00105J\u0017\u0010H\u001a\u00020 2\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\bH\u0010IJ\r\u0010J\u001a\u00020\u0004¢\u0006\u0004\bJ\u0010\u0006J\u000f\u0010K\u001a\u00020\u0007H\u0016¢\u0006\u0004\bK\u0010\u0003J\u000f\u0010L\u001a\u00020\u0012H\u0016¢\u0006\u0004\bL\u0010\u0014J\u000f\u0010M\u001a\u00020\u0004H\u0016¢\u0006\u0004\bM\u0010\u0006J\u000f\u0010N\u001a\u00020\u0004H\u0016¢\u0006\u0004\bN\u0010\u0006J\r\u0010O\u001a\u00020\n¢\u0006\u0004\bO\u0010PJ\r\u0010Q\u001a\u00020\n¢\u0006\u0004\bQ\u0010PJ\r\u0010S\u001a\u00020R¢\u0006\u0004\bS\u0010TJ\u000f\u0010F\u001a\u00020\u0004H\u0017¢\u0006\u0004\bF\u0010\u0006J\u000f\u0010U\u001a\u00020\u0004H\u0016¢\u0006\u0004\bU\u0010\u0006J\u000f\u0010V\u001a\u00020\u0004H\u0016¢\u0006\u0004\bV\u0010\u0006J\u000f\u0010W\u001a\u00020\u0007H\u0016¢\u0006\u0004\bW\u0010\u0003J\u000f\u0010X\u001a\u00020\u0007H\u0014¢\u0006\u0004\bX\u0010\u0003J\u0019\u0010[\u001a\u00020\u00042\b\u0010Z\u001a\u0004\u0018\u00010YH\u0016¢\u0006\u0004\b[\u0010\\J\u0017\u0010^\u001a\u00020\u00072\b\b\u0002\u0010]\u001a\u00020\u0004¢\u0006\u0004\b^\u00105J\r\u0010_\u001a\u00020\u0012¢\u0006\u0004\b_\u0010\u0014J\u000f\u0010`\u001a\u00020\u0004H\u0016¢\u0006\u0004\b`\u0010\u0006J\u000f\u0010a\u001a\u00020\u0012H\u0016¢\u0006\u0004\ba\u0010\u0014J\u0015\u0010c\u001a\u00020\u00072\u0006\u0010b\u001a\u00020\u0012¢\u0006\u0004\bc\u00101J\u0015\u0010e\u001a\u00020\u00072\u0006\u0010d\u001a\u00020\u0012¢\u0006\u0004\be\u00101J\u0015\u0010h\u001a\u00020\u00072\u0006\u0010g\u001a\u00020f¢\u0006\u0004\bh\u0010iJ\r\u0010k\u001a\u00020j¢\u0006\u0004\bk\u0010lJ\u000f\u0010m\u001a\u00020\u0012H\u0017¢\u0006\u0004\bm\u0010\u0014J\u000f\u0010n\u001a\u00020\nH\u0016¢\u0006\u0004\bn\u0010PJ\u0017\u0010q\u001a\u00020\u00072\u0006\u0010p\u001a\u00020oH\u0016¢\u0006\u0004\bq\u0010rJ\u0013\u0010t\u001a\b\u0012\u0004\u0012\u00020\u00120s¢\u0006\u0004\bt\u0010uJ\r\u0010w\u001a\u00020v¢\u0006\u0004\bw\u0010xJ\u000f\u0010y\u001a\u00020\u0007H\u0016¢\u0006\u0004\by\u0010\u0003J!\u0010}\u001a\u00020\u00072\u0006\u0010{\u001a\u00020z2\n\b\u0002\u0010|\u001a\u0004\u0018\u00010%¢\u0006\u0004\b}\u0010~R\u001e\u0010\u0082\u0001\u001a\u00020j8BX\u0082\u0084\u0002¢\u0006\u000e\n\u0005\b\u007f\u0010\u0080\u0001\u001a\u0005\b\u0081\u0001\u0010lR\u0019\u0010\u0083\u0001\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0083\u0001\u0010\u0084\u0001R\u0019\u0010\u0085\u0001\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0085\u0001\u0010\u0084\u0001R\u0019\u0010\u0086\u0001\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0086\u0001\u0010\u0084\u0001R\u0019\u0010\u0087\u0001\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0087\u0001\u0010\u0084\u0001R\u0019\u0010\u0088\u0001\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0088\u0001\u0010\u0084\u0001R\u001e\u0010\u008a\u0001\u001a\t\u0012\u0004\u0012\u00020 0\u0089\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u008a\u0001\u0010\u008b\u0001R\u001e\u0010\u008c\u0001\u001a\t\u0012\u0004\u0012\u00020 0\u0089\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u008c\u0001\u0010\u008b\u0001R'\u0010\u008d\u0001\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0006\b\u008d\u0001\u0010\u0084\u0001\u001a\u0005\b\u008e\u0001\u0010\u0006\"\u0005\b\u008f\u0001\u00105R\u0019\u0010\u0090\u0001\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0090\u0001\u0010\u0084\u0001R!\u0010\u0095\u0001\u001a\u00030\u0091\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u0092\u0001\u0010\u0080\u0001\u001a\u0006\b\u0093\u0001\u0010\u0094\u0001R,\u0010\u0097\u0001\u001a\u0005\u0018\u00010\u0096\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u0097\u0001\u0010\u0098\u0001\u001a\u0006\b\u0099\u0001\u0010\u009a\u0001\"\u0006\b\u009b\u0001\u0010\u009c\u0001R\u001c\u0010\u009e\u0001\u001a\u0005\u0018\u00010\u009d\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009e\u0001\u0010\u009f\u0001¨\u0006¢\u0001"}, d2 = {"Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;", "Landroidx/appcompat/app/AppCompatActivity;", MethodDecl.initName, "()V", "", "R", "()Z", "Lzfb;", ExifInterface.LONGITUDE_EAST, "O", "Landroid/view/View;", "view", "M", "(Landroid/view/View;)V", "Landroid/widget/FrameLayout;", "F", "()Landroid/widget/FrameLayout;", "L", "", "K", "()I", ExifInterface.LATITUDE_SOUTH, "T", "U", "N", "layoutResId", "Landroid/view/ViewGroup$LayoutParams;", "params", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;", "D", "H", "Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;", "pageView", "parentWidth", "P", "(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;I)I", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "setDecorFitsSystemWindow", "isInOOBE", "isShowBgStroke", "addSoftKeyboardAnim", "updDialogStatusInternal", "initView", "getLayoutResID", "setContentView", "(I)V", "(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V", "cancelable", "setCancelable", "(Z)V", "cancel", "dismiss", "onAttachedToWindow", "onDetachedFromWindow", "dismissWithoutAnim", "animateDismiss", "animate", "setDismissWithAnimation1", "setDismissWithAnimation", "onBackPressed", "setCanceledOnTouchOutside", "onPanelContentTopMarginChanged$widgetsbottomsheet_release", "onPanelContentTopMarginChanged", "color", "onPanelFillColorChanged$widgetsbottomsheet_release", "onPanelFillColorChanged", "requireBottomPadding", "updBottomPadding", "addPage", "(Landroid/view/View;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;", "popPage", "onPopPage", "getPagesRecyclerPoolSize", "getDragHandlerVisibility", "getSupportGesture", "getPanelRootView", "()Landroid/view/View;", "getPanelContentView", "Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;", "getRealContainerView", "()Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;", "requireSecondHomeFullScreen", "requireDim", "releaseAnimation", "onDestroy", "Landroid/view/MotionEvent;", "ev", "dispatchTouchEvent", "(Landroid/view/MotionEvent;)Z", TypedValues.Custom.S_BOOLEAN, "setFixedHeight", "getPageSize", "requireLayoutTransition", "getDragSpaceTop", "maxHeight", "setCustomContentMaxHeight", "topMargin", "setCustomTopMargin", "", "duration", "setCustomEnterDuration", "(J)V", "Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;", "getContainerViewBinding", "()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;", "getBgColor", "getDragHandler", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "(Landroid/content/res/Configuration;)V", "Landroidx/lifecycle/MutableLiveData;", "getLivePanelWidth", "()Landroidx/lifecycle/MutableLiveData;", "Landroid/widget/RelativeLayout;", "getContentBgDrawableView", "()Landroid/widget/RelativeLayout;", "onBackgroundLayoutInit", "Landroid/content/Intent;", "intent", "options", "startActivityWithCustomAnim", "(Landroid/content/Intent;Landroid/os/Bundle;)V", "mContainerViewBinding$delegate", "Lyi5;", "I", "mContainerViewBinding", "mDismissWithAnimation", "Z", "mCancelable", "mCanceledOnTouchOutside", "mIsAttachedToWindow", "mIsCanceled", "Ljava/util/Stack;", "mPageContainerStack", "Ljava/util/Stack;", "mPageContainerMapRecyclePool", "mDispatchTouchEvent", "getMDispatchTouchEvent", "setMDispatchTouchEvent", "adaptLargeScreen", "Lu47;", "mDialogProxy$delegate", "J", "()Lu47;", "mDialogProxy", "Landroid/graphics/drawable/Drawable;", "bgDrawable", "Landroid/graphics/drawable/Drawable;", "getBgDrawable", "()Landroid/graphics/drawable/Drawable;", "setBgDrawable", "(Landroid/graphics/drawable/Drawable;)V", "Landroid/view/inputmethod/InputMethodManager;", "mInputMethodManager", "Landroid/view/inputmethod/InputMethodManager;", "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "widgetsbottomsheet_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class OSBaseBottomSheetDialog extends AppCompatActivity {
    public static final int MAX_RECYCLER_POOL_SIZE = 5;
    public static final String TAG = "OSBaseBottomSheetDialog";
    private boolean adaptLargeScreen;
    private Drawable bgDrawable;
    private InputMethodManager mInputMethodManager;
    private boolean mIsAttachedToWindow;
    private boolean mIsCanceled;

    private final yi5 mContainerViewBinding = kotlin.b.a(new c74() {
        {
            super(0);
        }

        @Override
        public final OsBottomSheetContainerBinding invoke() {
            OsBottomSheetContainerBinding osBottomSheetContainerBindingC = OsBottomSheetContainerBinding.c(this.this$0.getLayoutInflater(), null, false);
            y45.i(osBottomSheetContainerBindingC, "inflate(\n               …          false\n        )");
            return osBottomSheetContainerBindingC;
        }
    });
    private boolean mDismissWithAnimation = true;
    private boolean mCancelable = true;
    private boolean mCanceledOnTouchOutside = true;
    private final Stack<OSPageView> mPageContainerStack = new Stack<>();
    private final Stack<OSPageView> mPageContainerMapRecyclePool = new Stack<>();
    private boolean mDispatchTouchEvent = true;

    private final yi5 mDialogProxy = kotlin.b.a(new c74() {
        {
            super(0);
        }

        @Override
        public final v47 invoke() {
            return new v47(this.this$0);
        }
    });

    public static final class b implements AnimHelper.a {
        public final OSPageView a;

        public b(OSPageView oSPageView) {
            this.a = oSPageView;
        }

        @Override
        public void a() {
            this.a.setVisibility(8);
        }
    }

    public static final class c implements ViewGroup.OnHierarchyChangeListener {
        public c() {
        }

        @Override
        public void onChildViewAdded(View view, View view2) {
            y45.j(view, "parent");
            y45.j(view2, "child");
            OSBaseBottomSheetDialog.this.U();
        }

        @Override
        public void onChildViewRemoved(View view, View view2) {
            y45.j(view, "parent");
            y45.j(view2, "child");
            OSBaseBottomSheetDialog.this.U();
        }
    }

    public static final class d implements AnimHelper.a {
        public final OSPageView b;

        public d(OSPageView oSPageView) {
            this.b = oSPageView;
        }

        @Override
        public void a() {
            OSBaseBottomSheetDialog.this.I().i.removeView(this.b);
            if (OSBaseBottomSheetDialog.this.mPageContainerMapRecyclePool.size() >= OSBaseBottomSheetDialog.this.getPagesRecyclerPoolSize() || OSBaseBottomSheetDialog.this.mPageContainerMapRecyclePool.contains(this.b)) {
                return;
            }
            OSBaseBottomSheetDialog.this.mPageContainerMapRecyclePool.push(this.b);
            OSBSContainerFrameLayout oSBSContainerFrameLayout = OSBaseBottomSheetDialog.this.I().i;
            y45.i(oSBSContainerFrameLayout, "mContainerViewBinding.panelContent");
            bq5.p(OSBaseBottomSheetDialog.TAG, "popPage:onAnimEnd mRealContainer.size = " + oSBSContainerFrameLayout.getChildCount() + " mPageContainerStack.size = " + OSBaseBottomSheetDialog.this.mPageContainerStack.size() + " osPageView = " + this.b.hashCode());
        }
    }

    public static final boolean G(View view, MotionEvent motionEvent) {
        return true;
    }

    public static final void Q(OSBaseBottomSheetDialog oSBaseBottomSheetDialog) {
        y45.j(oSBaseBottomSheetDialog, "this$0");
        oSBaseBottomSheetDialog.updDialogStatusInternal();
        oSBaseBottomSheetDialog.onBackgroundLayoutInit();
    }

    public static void setFixedHeight$default(OSBaseBottomSheetDialog oSBaseBottomSheetDialog, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setFixedHeight");
        }
        if ((i & 1) != 0) {
            z = false;
        }
        oSBaseBottomSheetDialog.setFixedHeight(z);
    }

    public static void startActivityWithCustomAnim$default(OSBaseBottomSheetDialog oSBaseBottomSheetDialog, Intent intent, Bundle bundle, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: startActivityWithCustomAnim");
        }
        if ((i & 2) != 0) {
            bundle = null;
        }
        oSBaseBottomSheetDialog.startActivityWithCustomAnim(intent, bundle);
    }

    public static void updBottomPadding$default(OSBaseBottomSheetDialog oSBaseBottomSheetDialog, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updBottomPadding");
        }
        if ((i & 1) != 0) {
            z = oSBaseBottomSheetDialog.requireBottomPadding();
        }
        oSBaseBottomSheetDialog.updBottomPadding(z);
    }

    public final void D() {
        if (I().g.getMFixedHeight() || !requireLayoutTransition()) {
            I().i.setLayoutTransition(null);
        } else {
            I().i.installLayoutTransition();
        }
    }

    public final void E() {
        Window window;
        WindowInsetsController insetsController;
        if (!olb.q0(this) || !requireSecondHomeFullScreen() || Build.VERSION.SDK_INT < 30 || (window = getWindow()) == null || (insetsController = window.getInsetsController()) == null) {
            return;
        }
        insetsController.hide(WindowInsets.Type.statusBars() | WindowInsets.Type.navigationBars());
    }

    public final FrameLayout F() {
        OSBSContainerFrameLayout oSBSContainerFrameLayout = I().i;
        y45.h(oSBSContainerFrameLayout, "null cannot be cast to non-null type android.widget.FrameLayout");
        oSBSContainerFrameLayout.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return OSBaseBottomSheetDialog.G(view, motionEvent);
            }
        });
        OSBottomSheetContainer oSBottomSheetContainerB = I().getRoot();
        y45.i(oSBottomSheetContainerB, "mContainerViewBinding.root");
        return oSBottomSheetContainerB;
    }

    public final void H() {
        if (I().i.isAttachedToWindow()) {
            return;
        }
        setContentView(0);
    }

    public final OsBottomSheetContainerBinding I() {
        return (OsBottomSheetContainerBinding) this.mContainerViewBinding.getValue();
    }

    public final u47 J() {
        return (u47) this.mDialogProxy.getValue();
    }

    public final int K() {
        if (L()) {
            return 0;
        }
        return I().g.getMFillColor();
    }

    public final boolean L() {
        RelativeLayout relativeLayout = I().d;
        y45.i(relativeLayout, "mContainerViewBinding.contentBgDrawable");
        int childCount = relativeLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            int id = relativeLayout.getChildAt(i).getId();
            if (id != R.id.drag_rect && id != R.id.panel_content && id != R.id.title_mask_top) {
                return true;
            }
        }
        return false;
    }

    public final void M(View view) {
        InputMethodManager inputMethodManager = this.mInputMethodManager;
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
        }
    }

    public final void N() {
        I().d.setOnHierarchyChangeListener(new c());
    }

    public final boolean O() {
        WindowInsetsCompat rootWindowInsets;
        OSBottomSheetContainer oSBottomSheetContainerB = I().getRoot();
        y45.i(oSBottomSheetContainerB, "mContainerViewBinding.root");
        return oSBottomSheetContainerB.isAttachedToWindow() && (rootWindowInsets = ViewCompat.getRootWindowInsets(oSBottomSheetContainerB)) != null && rootWindowInsets.isVisible(WindowInsetsCompat.Type.ime());
    }

    public final int P(OSPageView pageView, int parentWidth) {
        if (parentWidth <= 0) {
            parentWidth = I().i.getWidth() > 0 ? I().i.getWidth() : getResources().getDisplayMetrics().widthPixels;
        }
        pageView.measure(View.MeasureSpec.makeMeasureSpec(wn8.d(parentWidth, 0), 1073741824), View.MeasureSpec.makeMeasureSpec(getResources().getDisplayMetrics().heightPixels, Integer.MIN_VALUE));
        return pageView.getMeasuredHeight();
    }

    public final boolean R() {
        return (olb.g0(this) || olb.w || olb.v || olb.b0(this) || olb.Y(this) || olb.Q(this) || olb.u0(this)) ? false : true;
    }

    public final void S() {
        boolean zL = L();
        int backgroundFillColor = zL ? 0 : I().g.getMFillColor();
        for (OSPageView oSPageView : this.mPageContainerStack) {
            oSPageView.setTitleMaskVisibleFromPanel$widgetsbottomsheet_release(!zL);
            if (!oSPageView.getMHasCustomTitleMaskColor()) {
                oSPageView.setTitleMaskColorFromPanel$widgetsbottomsheet_release(backgroundFillColor);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x005d  */
    public final void T() {
        boolean z;
        View view = I().k;
        y45.i(view, "mContainerViewBinding.titleMaskTop");
        boolean zL = L();
        OSBSContainerFrameLayout oSBSContainerFrameLayout = I().i;
        y45.i(oSBSContainerFrameLayout, "mContainerViewBinding.panelContent");
        ViewGroup.LayoutParams layoutParams = oSBSContainerFrameLayout.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        int i = marginLayoutParams != null ? marginLayoutParams.topMargin : 0;
        ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
        if (layoutParams2 != null && layoutParams2.height != i) {
            layoutParams2.height = i;
            view.setLayoutParams(layoutParams2);
        }
        OSPageView oSPageView = (OSPageView) i81.C0(this.mPageContainerStack);
        int mTitleMaskColor = oSPageView != null ? oSPageView.getMTitleMaskColor() : K();
        if (!zL) {
            z = (oSPageView != null ? oSPageView.getMTitleMaskLengthPx() : 1) > 0;
        }
        view.setVisibility(z ? 0 : 8);
        view.setBackgroundColor(z ? mTitleMaskColor : 0);
        if (I().h.getVisibility() == 0) {
            I().h.bringToFront();
        }
    }

    public final void U() {
        S();
        T();
    }

    public final View V(int layoutResId, View view, ViewGroup.LayoutParams params) {
        F();
        I().g.enableTouchFollow(this);
        if (layoutResId != 0 && view == null) {
            view = getLayoutInflater().inflate(layoutResId, (ViewGroup) I().i, false);
        }
        I().i.removeAllViews();
        if (view != null) {
            if (params == null) {
                I().i.addView(view);
            } else {
                I().i.addView(view, params);
            }
        }
        I().g.setDragHandleVisibility(getDragHandlerVisibility());
        I().g.setSupportGesture(getSupportGesture());
        if (!requireDim()) {
            I().g.disableDim();
        }
        D();
        OSBottomSheetContainer oSBottomSheetContainerB = I().getRoot();
        y45.i(oSBottomSheetContainerB, "mContainerViewBinding.root");
        return oSBottomSheetContainerB;
    }

    public OSPageView addPage(View view) {
        OSPageView oSPageView;
        y45.j(view, "view");
        for (OSPageView oSPageView2 : this.mPageContainerStack) {
            if (y45.e(oSPageView2.getMContentView(), view)) {
                y45.i(oSPageView2, "pageView");
                return oSPageView2;
            }
        }
        H();
        if (this.mPageContainerMapRecyclePool.isEmpty()) {
            oSPageView = new OSPageView(this, null, 0, 0, 14, null);
        } else {
            OSPageView oSPageViewPop = this.mPageContainerMapRecyclePool.pop();
            y45.i(oSPageViewPop, "{\n            mPageConta…cyclePool.pop()\n        }");
            oSPageView = oSPageViewPop;
        }
        oSPageView.setDragSpaceTop(getDragSpaceTop());
        oSPageView.setTitleMaskChangedListener$widgetsbottomsheet_release(new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((OSPageView) obj);
                return zfb.a;
            }

            public final void invoke(OSPageView oSPageView3) {
                y45.j(oSPageView3, "page");
                if (i81.C0(OSBaseBottomSheetDialog.this.mPageContainerStack) == oSPageView3) {
                    OSBaseBottomSheetDialog.this.T();
                }
            }
        });
        oSPageView.setTitleMaskColorFromPanel$widgetsbottomsheet_release(K());
        oSPageView.setTitleMaskVisibleFromPanel$widgetsbottomsheet_release(!L());
        oSPageView.setVisibility(0);
        final OSPageView oSPageViewPeek = !this.mPageContainerStack.isEmpty() ? this.mPageContainerStack.peek() : null;
        ViewParent parent = view.getParent();
        if (parent != null) {
            ((ViewGroup) parent).removeView(view);
        }
        oSPageView.addView(view);
        OSBSContainerFrameLayout oSBSContainerFrameLayout = I().i;
        oSBSContainerFrameLayout.removeView(oSPageView);
        oSBSContainerFrameLayout.addView(oSPageView);
        oSPageView.setVisibility(0);
        final int height = I().i.getHeight();
        if (oSPageViewPeek != null) {
            for (OSPageView oSPageView3 : this.mPageContainerStack) {
                if (oSPageView3 != oSPageViewPeek) {
                    oSPageView3.setVisibility(8);
                }
            }
            OSBSContainerFrameLayout oSBSContainerFrameLayout2 = I().i;
            ViewGroup.LayoutParams layoutParams = I().i.getLayoutParams();
            layoutParams.height = height;
            oSBSContainerFrameLayout2.setLayoutParams(layoutParams);
        }
        this.mPageContainerStack.push(oSPageView);
        T();
        if (oSPageViewPeek != null) {
            final OSPageView oSPageView4 = oSPageView;
            final OSPageView oSPageView5 = oSPageView;
            y45.i(OneShotPreDrawListener.add(oSPageView, new Runnable() {
                @Override
                public final void run() {
                    if (oSPageView5.isAttachedToWindow()) {
                        Object objPeek = this.mPageContainerStack.peek();
                        OSPageView oSPageView6 = oSPageView5;
                        if (objPeek != oSPageView6) {
                            return;
                        }
                        OSBaseBottomSheetDialog oSBaseBottomSheetDialog = this;
                        int iP = oSBaseBottomSheetDialog.P(oSPageView6, oSBaseBottomSheetDialog.I().i.getWidth());
                        boolean z = height != iP;
                        AnimHelper animHelper = AnimHelper.a;
                        OSBottomSheetPanel oSBottomSheetPanel = this.I().g;
                        y45.i(oSBottomSheetPanel, "mContainerViewBinding.dragPanel");
                        OSBSContainerFrameLayout oSBSContainerFrameLayout3 = this.I().i;
                        y45.i(oSBSContainerFrameLayout3, "mContainerViewBinding.panelContent");
                        OSPageView oSPageView7 = oSPageViewPeek;
                        animHelper.p(oSBottomSheetPanel, oSBSContainerFrameLayout3, oSPageView7, oSPageView5, z, height, iP, new OSBaseBottomSheetDialog.b(oSPageView7));
                    }
                }
            }), "View.doOnPreDraw(\n    cr…dd(this) { action(this) }");
        }
        OSBSContainerFrameLayout oSBSContainerFrameLayout3 = I().i;
        y45.i(oSBSContainerFrameLayout3, "mContainerViewBinding.panelContent");
        bq5.p(TAG, "addPage mRealContainer.size " + oSBSContainerFrameLayout3.getChildCount() + " mPageContainerStack.size = " + this.mPageContainerStack.size() + " osPageView = " + oSPageView.hashCode());
        return oSPageView;
    }

    public boolean addSoftKeyboardAnim() {
        return true;
    }

    public void animateDismiss() {
        OSBottomSheetPanel oSBottomSheetPanel = I().g;
        y45.i(oSBottomSheetPanel, "mContainerViewBinding.dragPanel");
        if (R() && addSoftKeyboardAnim() && O() && oSBottomSheetPanel.animateImeExit$widgetsbottomsheet_release()) {
            M(oSBottomSheetPanel);
            return;
        }
        InputMethodManager inputMethodManager = this.mInputMethodManager;
        if (inputMethodManager != null && inputMethodManager.isActive()) {
            M(oSBottomSheetPanel);
        }
        oSBottomSheetPanel.cancelGotoFinalPositionAnimation();
        oSBottomSheetPanel.animateExit();
    }

    public final void cancel() {
        if (!this.mIsAttachedToWindow) {
            this.mIsCanceled = true;
        }
        animateDismiss();
    }

    public final void dismiss() {
        if (this.mIsCanceled) {
            this.mIsCanceled = false;
        }
        animateDismiss();
    }

    public final void dismissWithoutAnim() {
        finish();
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent ev) {
        if (!this.mDispatchTouchEvent || I().i.isTranslationRunning()) {
            return !this.mDispatchTouchEvent;
        }
        return super.dispatchTouchEvent(ev);
    }

    @ColorInt
    public int getBgColor() {
        return olb.m(getBaseContext(), R.attr.os_open_bg, R.color.os_open_bg_hios);
    }

    public final Drawable getBgDrawable() {
        return this.bgDrawable;
    }

    public final OsBottomSheetContainerBinding getContainerViewBinding() {
        return I();
    }

    public final RelativeLayout getContentBgDrawableView() {
        RelativeLayout relativeLayout = I().d;
        y45.i(relativeLayout, "mContainerViewBinding.contentBgDrawable");
        return relativeLayout;
    }

    public View getDragHandler() {
        ImageView imageView = I().f;
        y45.i(imageView, "mContainerViewBinding.dragHandler");
        return imageView;
    }

    public boolean getDragHandlerVisibility() {
        return true;
    }

    public int getDragSpaceTop() {
        OSBSContainerFrameLayout oSBSContainerFrameLayout = I().i;
        y45.i(oSBSContainerFrameLayout, "mContainerViewBinding.panelContent");
        ViewGroup.LayoutParams layoutParams = oSBSContainerFrameLayout.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        if (marginLayoutParams != null) {
            return marginLayoutParams.topMargin;
        }
        return 0;
    }

    public int getLayoutResID() {
        return 0;
    }

    public final MutableLiveData<Integer> getLivePanelWidth() {
        return I().g.getLivePanelWidth();
    }

    public final boolean getMDispatchTouchEvent() {
        return this.mDispatchTouchEvent;
    }

    public final int getPageSize() {
        return this.mPageContainerStack.size();
    }

    public int getPagesRecyclerPoolSize() {
        return 5;
    }

    public final View getPanelContentView() {
        OSBSContainerFrameLayout oSBSContainerFrameLayout = I().i;
        y45.i(oSBSContainerFrameLayout, "mContainerViewBinding.panelContent");
        return oSBSContainerFrameLayout;
    }

    public final View getPanelRootView() {
        OSBottomSheetContainer oSBottomSheetContainerB = I().getRoot();
        y45.i(oSBottomSheetContainerB, "mContainerViewBinding.root");
        return oSBottomSheetContainerB;
    }

    public final OSBottomSheetPanel getRealContainerView() {
        OSBottomSheetPanel oSBottomSheetPanel = I().g;
        y45.i(oSBottomSheetPanel, "mContainerViewBinding.dragPanel");
        return oSBottomSheetPanel;
    }

    public boolean getSupportGesture() {
        return true;
    }

    public abstract void initView();

    public boolean isInOOBE() {
        return false;
    }

    public boolean isShowBgStroke() {
        return false;
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mIsAttachedToWindow = true;
    }

    @Override
    public void onBackPressed() {
        if (popPage() || !this.mCancelable) {
            return;
        }
        animateDismiss();
    }

    public void onBackgroundLayoutInit() {
    }

    @Override
    public void onConfigurationChanged(Configuration newConfig) {
        InputMethodManager inputMethodManager;
        y45.j(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        updDialogStatusInternal();
        if (olb.u0(getBaseContext())) {
            I().g.setSoftKeyboardHeight(0);
            I().getRoot().setTranslationY(0.0f);
        }
        if (olb.g0(this)) {
            I().g.setSoftKeyboardHeight(0);
            I().getRoot().setTranslationY(0.0f);
            OSBottomSheetPanel oSBottomSheetPanel = I().g;
            InputMethodManager inputMethodManager2 = this.mInputMethodManager;
            if (inputMethodManager2 != null && inputMethodManager2.isActive() && (inputMethodManager = this.mInputMethodManager) != null) {
                inputMethodManager.hideSoftInputFromWindow(I().g.getWindowToken(), 0);
            }
            OSBSContainerFrameLayout oSBSContainerFrameLayout = I().i;
            oSBSContainerFrameLayout.setPadding(oSBSContainerFrameLayout.getPaddingLeft(), oSBSContainerFrameLayout.getPaddingTop(), oSBSContainerFrameLayout.getPaddingRight(), 0);
            I().c.requestLayout();
        }
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        olb.L0(getWindow(), requireSecondHomeFullScreen());
        if (getLayoutResID() > 0) {
            setContentView(getLayoutResID());
        }
        N();
        initView();
        if (isShowBgStroke()) {
            I().e.setStrokeDrawableBg();
        }
        sj0.a(getWindow(), getRealContainerView(), setDecorFitsSystemWindow(), addSoftKeyboardAnim(), isInOOBE(), I().getRoot(), getPanelRootView());
        getWindow().getDecorView().post(new Runnable() {
            @Override
            public final void run() {
                OSBaseBottomSheetDialog.Q(this.b);
            }
        });
        this.adaptLargeScreen = olb.a(this);
        Object systemService = getSystemService("input_method");
        this.mInputMethodManager = systemService instanceof InputMethodManager ? (InputMethodManager) systemService : null;
    }

    @Override
    public void onDestroy() {
        I().d.setOnHierarchyChangeListener(null);
        Iterator<T> it = this.mPageContainerStack.iterator();
        while (it.hasNext()) {
            ((OSPageView) it.next()).setTitleMaskChangedListener$widgetsbottomsheet_release(null);
        }
        Iterator<T> it2 = this.mPageContainerMapRecyclePool.iterator();
        while (it2.hasNext()) {
            ((OSPageView) it2.next()).setTitleMaskChangedListener$widgetsbottomsheet_release(null);
        }
        releaseAnimation();
        super.onDestroy();
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mIsAttachedToWindow = false;
    }

    public final void onPanelContentTopMarginChanged$widgetsbottomsheet_release() {
        T();
    }

    public final void onPanelFillColorChanged$widgetsbottomsheet_release(@ColorInt int color) {
        J().a(requireBottomPadding(), color);
        U();
    }

    public void onPopPage() {
    }

    public final boolean popPage() {
        if (this.mPageContainerStack.size() < 2) {
            return false;
        }
        Stack<OSPageView> stack = this.mPageContainerStack;
        OSPageView oSPageView = stack.get(y71.m(stack));
        Stack<OSPageView> stack2 = this.mPageContainerStack;
        OSPageView oSPageView2 = stack2.get(y71.m(stack2) - 1);
        this.mPageContainerStack.remove(oSPageView);
        T();
        if (oSPageView2 != null) {
            oSPageView2.setVisibility(0);
            int height = I().i.getHeight();
            int iP = P(oSPageView2, I().i.getWidth());
            boolean z = height != iP;
            AnimHelper animHelper = AnimHelper.a;
            OSBottomSheetPanel oSBottomSheetPanel = I().g;
            y45.i(oSBottomSheetPanel, "mContainerViewBinding.dragPanel");
            OSBSContainerFrameLayout oSBSContainerFrameLayout = I().i;
            y45.i(oSBSContainerFrameLayout, "mContainerViewBinding.panelContent");
            y45.i(oSPageView, "osPageView");
            animHelper.j(oSBottomSheetPanel, oSBSContainerFrameLayout, oSPageView, oSPageView2, z, height, iP, new d(oSPageView));
        }
        onPopPage();
        return true;
    }

    public void releaseAnimation() {
        AnimHelper.a.m();
    }

    public boolean requireBottomPadding() {
        return true;
    }

    public boolean requireDim() {
        return true;
    }

    public boolean requireLayoutTransition() {
        return true;
    }

    public boolean requireSecondHomeFullScreen() {
        return false;
    }

    public final void setBgDrawable(Drawable drawable) {
        this.bgDrawable = drawable;
    }

    public final void setCancelable(boolean cancelable) {
        if (this.mCancelable != cancelable) {
            this.mCancelable = cancelable;
        }
    }

    public final void setCanceledOnTouchOutside(boolean cancel) {
        if (cancel && !this.mCancelable) {
            this.mCancelable = true;
        }
        this.mCanceledOnTouchOutside = cancel;
        I().getRoot().setCanceledOnTouchOutside(cancel);
    }

    @Override
    public void setContentView(@LayoutRes int layoutResId) {
        super.setContentView(V(layoutResId, null, null));
        E();
    }

    public final void setCustomContentMaxHeight(int maxHeight) {
        I().g.setMCustomContentMaxHeight(maxHeight);
        I().g.requestLayout();
    }

    public final void setCustomEnterDuration(long duration) {
        I().g.setMCustomEnterDuration(duration);
    }

    public final void setCustomTopMargin(int topMargin) {
        I().g.setMCustomTopMargin(topMargin);
        I().g.requestLayout();
    }

    public boolean setDecorFitsSystemWindow() {
        return true;
    }

    public final void setDismissWithAnimation1(boolean animate) {
        this.mDismissWithAnimation = animate;
    }

    public final void setFixedHeight(boolean z) {
        I().g.setMFixedHeight(z);
        D();
    }

    public final void setMDispatchTouchEvent(boolean z) {
        this.mDispatchTouchEvent = z;
    }

    public final void startActivityWithCustomAnim(Intent intent, Bundle options) {
        y45.j(intent, "intent");
        int i = R.anim.os_bottomsheet_activity_open_enter_no_alpha;
        int i2 = R.anim.os_bottomsheet_activity_open_exit_no_alpha;
        if (Build.VERSION.SDK_INT >= 34) {
            overrideActivityTransition(0, i, i2);
        }
        Bundle bundle = ActivityOptions.makeCustomAnimation(this, i, i2).toBundle();
        if (options == null) {
            startActivity(intent, bundle);
            return;
        }
        Bundle bundle2 = new Bundle(options);
        bundle2.putAll(bundle);
        startActivity(intent, bundle2);
    }

    public void updBottomPadding(boolean requireBottomPadding) {
        J().a(requireBottomPadding, getBgColor());
        T();
    }

    public void updDialogStatusInternal() {
        if (!olb.v0(this, getWindow().getDecorView()) || olb.Z(this)) {
            updBottomPadding$default(this, false, 1, null);
        } else {
            updBottomPadding(false);
        }
    }

    @Override
    public void setContentView(View view) {
        super.setContentView(V(0, view, null));
        E();
    }

    @Override
    public void setContentView(View view, ViewGroup.LayoutParams params) {
        super.setContentView(V(0, view, params));
        E();
    }
}
