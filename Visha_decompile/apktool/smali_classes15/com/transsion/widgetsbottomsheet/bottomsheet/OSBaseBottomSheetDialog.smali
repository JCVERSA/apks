.class public abstract Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ac\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008,\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008&\u0018\u0000 \u00a0\u00012\u00020\u0001:\u0002\u00a1\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0003J\u000f\u0010\t\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0006J\u0017\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0006J\u000f\u0010\u0013\u001a\u00020\u0012H\u0003\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0003J\u000f\u0010\u0016\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0003J\u000f\u0010\u0017\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0003J\u000f\u0010\u0018\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0003J+\u0010\u001c\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u00122\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u0003J\u000f\u0010\u001f\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u001f\u0010\u0003J\u001f\u0010#\u001a\u00020\u00122\u0006\u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008#\u0010$J\u0019\u0010\'\u001a\u00020\u00072\u0008\u0010&\u001a\u0004\u0018\u00010%H\u0014\u00a2\u0006\u0004\u0008\'\u0010(J\u000f\u0010)\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008)\u0010\u0006J\u000f\u0010*\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008*\u0010\u0006J\u000f\u0010+\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008+\u0010\u0006J\u000f\u0010,\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008,\u0010\u0006J\u000f\u0010-\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008-\u0010\u0003J\u000f\u0010.\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008.\u0010\u0003J\u000f\u0010/\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008/\u0010\u0014J\u0019\u00100\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0019\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u00080\u00101J\u0019\u00100\u001a\u00020\u00072\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u00080\u0010\rJ#\u00100\u001a\u00020\u00072\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016\u00a2\u0006\u0004\u00080\u00102J\u0015\u00104\u001a\u00020\u00072\u0006\u00103\u001a\u00020\u0004\u00a2\u0006\u0004\u00084\u00105J\u000f\u00106\u001a\u00020\u0007H\u0007\u00a2\u0006\u0004\u00086\u0010\u0003J\u000f\u00107\u001a\u00020\u0007H\u0007\u00a2\u0006\u0004\u00087\u0010\u0003J\u000f\u00108\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u00088\u0010\u0003J\u000f\u00109\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u00089\u0010\u0003J\r\u0010:\u001a\u00020\u0007\u00a2\u0006\u0004\u0008:\u0010\u0003J\u000f\u0010;\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008;\u0010\u0003J\u0017\u0010>\u001a\u00020\u00072\u0006\u0010<\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008=\u00105J\u000f\u0010?\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008?\u0010\u0003J\u0015\u0010@\u001a\u00020\u00072\u0006\u00106\u001a\u00020\u0004\u00a2\u0006\u0004\u0008@\u00105J\u000f\u0010B\u001a\u00020\u0007H\u0000\u00a2\u0006\u0004\u0008A\u0010\u0003J\u0019\u0010E\u001a\u00020\u00072\u0008\u0008\u0001\u0010C\u001a\u00020\u0012H\u0000\u00a2\u0006\u0004\u0008D\u00101J\u0019\u0010G\u001a\u00020\u00072\u0008\u0008\u0002\u0010F\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008G\u00105J\u0017\u0010H\u001a\u00020 2\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008H\u0010IJ\r\u0010J\u001a\u00020\u0004\u00a2\u0006\u0004\u0008J\u0010\u0006J\u000f\u0010K\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008K\u0010\u0003J\u000f\u0010L\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008L\u0010\u0014J\u000f\u0010M\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008M\u0010\u0006J\u000f\u0010N\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008N\u0010\u0006J\r\u0010O\u001a\u00020\n\u00a2\u0006\u0004\u0008O\u0010PJ\r\u0010Q\u001a\u00020\n\u00a2\u0006\u0004\u0008Q\u0010PJ\r\u0010S\u001a\u00020R\u00a2\u0006\u0004\u0008S\u0010TJ\u000f\u0010F\u001a\u00020\u0004H\u0017\u00a2\u0006\u0004\u0008F\u0010\u0006J\u000f\u0010U\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008U\u0010\u0006J\u000f\u0010V\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008V\u0010\u0006J\u000f\u0010W\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008W\u0010\u0003J\u000f\u0010X\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u0008X\u0010\u0003J\u0019\u0010[\u001a\u00020\u00042\u0008\u0010Z\u001a\u0004\u0018\u00010YH\u0016\u00a2\u0006\u0004\u0008[\u0010\\J\u0017\u0010^\u001a\u00020\u00072\u0008\u0008\u0002\u0010]\u001a\u00020\u0004\u00a2\u0006\u0004\u0008^\u00105J\r\u0010_\u001a\u00020\u0012\u00a2\u0006\u0004\u0008_\u0010\u0014J\u000f\u0010`\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008`\u0010\u0006J\u000f\u0010a\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008a\u0010\u0014J\u0015\u0010c\u001a\u00020\u00072\u0006\u0010b\u001a\u00020\u0012\u00a2\u0006\u0004\u0008c\u00101J\u0015\u0010e\u001a\u00020\u00072\u0006\u0010d\u001a\u00020\u0012\u00a2\u0006\u0004\u0008e\u00101J\u0015\u0010h\u001a\u00020\u00072\u0006\u0010g\u001a\u00020f\u00a2\u0006\u0004\u0008h\u0010iJ\r\u0010k\u001a\u00020j\u00a2\u0006\u0004\u0008k\u0010lJ\u000f\u0010m\u001a\u00020\u0012H\u0017\u00a2\u0006\u0004\u0008m\u0010\u0014J\u000f\u0010n\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008n\u0010PJ\u0017\u0010q\u001a\u00020\u00072\u0006\u0010p\u001a\u00020oH\u0016\u00a2\u0006\u0004\u0008q\u0010rJ\u0013\u0010t\u001a\u0008\u0012\u0004\u0012\u00020\u00120s\u00a2\u0006\u0004\u0008t\u0010uJ\r\u0010w\u001a\u00020v\u00a2\u0006\u0004\u0008w\u0010xJ\u000f\u0010y\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008y\u0010\u0003J!\u0010}\u001a\u00020\u00072\u0006\u0010{\u001a\u00020z2\n\u0008\u0002\u0010|\u001a\u0004\u0018\u00010%\u00a2\u0006\u0004\u0008}\u0010~R\u001e\u0010\u0082\u0001\u001a\u00020j8BX\u0082\u0084\u0002\u00a2\u0006\u000e\n\u0005\u0008\u007f\u0010\u0080\u0001\u001a\u0005\u0008\u0081\u0001\u0010lR\u0019\u0010\u0083\u0001\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0083\u0001\u0010\u0084\u0001R\u0019\u0010\u0085\u0001\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0085\u0001\u0010\u0084\u0001R\u0019\u0010\u0086\u0001\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0086\u0001\u0010\u0084\u0001R\u0019\u0010\u0087\u0001\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0087\u0001\u0010\u0084\u0001R\u0019\u0010\u0088\u0001\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0088\u0001\u0010\u0084\u0001R\u001e\u0010\u008a\u0001\u001a\t\u0012\u0004\u0012\u00020 0\u0089\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u008a\u0001\u0010\u008b\u0001R\u001e\u0010\u008c\u0001\u001a\t\u0012\u0004\u0012\u00020 0\u0089\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u008c\u0001\u0010\u008b\u0001R\'\u0010\u008d\u0001\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0006\u0008\u008d\u0001\u0010\u0084\u0001\u001a\u0005\u0008\u008e\u0001\u0010\u0006\"\u0005\u0008\u008f\u0001\u00105R\u0019\u0010\u0090\u0001\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0090\u0001\u0010\u0084\u0001R!\u0010\u0095\u0001\u001a\u00030\u0091\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u0092\u0001\u0010\u0080\u0001\u001a\u0006\u0008\u0093\u0001\u0010\u0094\u0001R,\u0010\u0097\u0001\u001a\u0005\u0018\u00010\u0096\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0097\u0001\u0010\u0098\u0001\u001a\u0006\u0008\u0099\u0001\u0010\u009a\u0001\"\u0006\u0008\u009b\u0001\u0010\u009c\u0001R\u001c\u0010\u009e\u0001\u001a\u0005\u0018\u00010\u009d\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009e\u0001\u0010\u009f\u0001\u00a8\u0006\u00a2\u0001"
    }
    d2 = {
        "Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "",
        "R",
        "()Z",
        "Lzfb;",
        "E",
        "O",
        "Landroid/view/View;",
        "view",
        "M",
        "(Landroid/view/View;)V",
        "Landroid/widget/FrameLayout;",
        "F",
        "()Landroid/widget/FrameLayout;",
        "L",
        "",
        "K",
        "()I",
        "S",
        "T",
        "U",
        "N",
        "layoutResId",
        "Landroid/view/ViewGroup$LayoutParams;",
        "params",
        "V",
        "(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;",
        "D",
        "H",
        "Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;",
        "pageView",
        "parentWidth",
        "P",
        "(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;I)I",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "setDecorFitsSystemWindow",
        "isInOOBE",
        "isShowBgStroke",
        "addSoftKeyboardAnim",
        "updDialogStatusInternal",
        "initView",
        "getLayoutResID",
        "setContentView",
        "(I)V",
        "(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V",
        "cancelable",
        "setCancelable",
        "(Z)V",
        "cancel",
        "dismiss",
        "onAttachedToWindow",
        "onDetachedFromWindow",
        "dismissWithoutAnim",
        "animateDismiss",
        "animate",
        "setDismissWithAnimation1",
        "setDismissWithAnimation",
        "onBackPressed",
        "setCanceledOnTouchOutside",
        "onPanelContentTopMarginChanged$widgetsbottomsheet_release",
        "onPanelContentTopMarginChanged",
        "color",
        "onPanelFillColorChanged$widgetsbottomsheet_release",
        "onPanelFillColorChanged",
        "requireBottomPadding",
        "updBottomPadding",
        "addPage",
        "(Landroid/view/View;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;",
        "popPage",
        "onPopPage",
        "getPagesRecyclerPoolSize",
        "getDragHandlerVisibility",
        "getSupportGesture",
        "getPanelRootView",
        "()Landroid/view/View;",
        "getPanelContentView",
        "Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;",
        "getRealContainerView",
        "()Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;",
        "requireSecondHomeFullScreen",
        "requireDim",
        "releaseAnimation",
        "onDestroy",
        "Landroid/view/MotionEvent;",
        "ev",
        "dispatchTouchEvent",
        "(Landroid/view/MotionEvent;)Z",
        "boolean",
        "setFixedHeight",
        "getPageSize",
        "requireLayoutTransition",
        "getDragSpaceTop",
        "maxHeight",
        "setCustomContentMaxHeight",
        "topMargin",
        "setCustomTopMargin",
        "",
        "duration",
        "setCustomEnterDuration",
        "(J)V",
        "Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;",
        "getContainerViewBinding",
        "()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;",
        "getBgColor",
        "getDragHandler",
        "Landroid/content/res/Configuration;",
        "newConfig",
        "onConfigurationChanged",
        "(Landroid/content/res/Configuration;)V",
        "Landroidx/lifecycle/MutableLiveData;",
        "getLivePanelWidth",
        "()Landroidx/lifecycle/MutableLiveData;",
        "Landroid/widget/RelativeLayout;",
        "getContentBgDrawableView",
        "()Landroid/widget/RelativeLayout;",
        "onBackgroundLayoutInit",
        "Landroid/content/Intent;",
        "intent",
        "options",
        "startActivityWithCustomAnim",
        "(Landroid/content/Intent;Landroid/os/Bundle;)V",
        "mContainerViewBinding$delegate",
        "Lyi5;",
        "I",
        "mContainerViewBinding",
        "mDismissWithAnimation",
        "Z",
        "mCancelable",
        "mCanceledOnTouchOutside",
        "mIsAttachedToWindow",
        "mIsCanceled",
        "Ljava/util/Stack;",
        "mPageContainerStack",
        "Ljava/util/Stack;",
        "mPageContainerMapRecyclePool",
        "mDispatchTouchEvent",
        "getMDispatchTouchEvent",
        "setMDispatchTouchEvent",
        "adaptLargeScreen",
        "Lu47;",
        "mDialogProxy$delegate",
        "J",
        "()Lu47;",
        "mDialogProxy",
        "Landroid/graphics/drawable/Drawable;",
        "bgDrawable",
        "Landroid/graphics/drawable/Drawable;",
        "getBgDrawable",
        "()Landroid/graphics/drawable/Drawable;",
        "setBgDrawable",
        "(Landroid/graphics/drawable/Drawable;)V",
        "Landroid/view/inputmethod/InputMethodManager;",
        "mInputMethodManager",
        "Landroid/view/inputmethod/InputMethodManager;",
        "Companion",
        "a",
        "widgetsbottomsheet_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$a;

.field public static final MAX_RECYCLER_POOL_SIZE:I = 0x5

.field public static final TAG:Ljava/lang/String; = "OSBaseBottomSheetDialog"


# instance fields
.field private adaptLargeScreen:Z

.field private bgDrawable:Landroid/graphics/drawable/Drawable;

.field private mCancelable:Z

.field private mCanceledOnTouchOutside:Z

.field private final mContainerViewBinding$delegate:Lyi5;

.field private final mDialogProxy$delegate:Lyi5;

.field private mDismissWithAnimation:Z

.field private mDispatchTouchEvent:Z

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsAttachedToWindow:Z

.field private mIsCanceled:Z

.field private final mPageContainerMapRecyclePool:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;",
            ">;"
        }
    .end annotation
.end field

.field private final mPageContainerStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->Companion:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$mContainerViewBinding$2;

    invoke-direct {v0, p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$mContainerViewBinding$2;-><init>(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;)V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->mContainerViewBinding$delegate:Lyi5;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->mDismissWithAnimation:Z

    iput-boolean v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->mCancelable:Z

    iput-boolean v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->mCanceledOnTouchOutside:Z

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->mPageContainerStack:Ljava/util/Stack;

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->mPageContainerMapRecyclePool:Ljava/util/Stack;

    iput-boolean v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->mDispatchTouchEvent:Z

    new-instance v0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$mDialogProxy$2;

    invoke-direct {v0, p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$mDialogProxy$2;-><init>(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;)V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->mDialogProxy$delegate:Lyi5;

    return-void
.end method

.method public static final G(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static final Q(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->updDialogStatusInternal()V

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->onBackgroundLayoutInit()V

    return-void
.end method

.method public static final synthetic access$getMContainerViewBinding(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;)Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMPageContainerMapRecyclePool$p(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;)Ljava/util/Stack;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->mPageContainerMapRecyclePool:Ljava/util/Stack;

    return-object p0
.end method

.method public static final synthetic access$getMPageContainerStack$p(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;)Ljava/util/Stack;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->mPageContainerStack:Ljava/util/Stack;

    return-object p0
.end method

.method public static final synthetic access$measurePageHeight(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;I)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->P(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;I)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$syncTitleMaskTop(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->T()V

    return-void
.end method

.method public static final synthetic access$updateTitleMasks(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->U()V

    return-void
.end method

.method public static synthetic setFixedHeight$default(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->setFixedHeight(Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setFixedHeight"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic startActivityWithCustomAnim$default(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;Landroid/content/Intent;Landroid/os/Bundle;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->startActivityWithCustomAnim(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: startActivityWithCustomAnim"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic t(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->G(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic u(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->Q(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;)V

    return-void
.end method

.method public static synthetic updBottomPadding$default(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->requireBottomPadding()Z

    move-result p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->updBottomPadding(Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updBottomPadding"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final D()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->g:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    invoke-virtual {v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;->getMFixedHeight()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->requireLayoutTransition()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->i:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBSContainerFrameLayout;

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBSContainerFrameLayout;->installLayoutTransition()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->i:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBSContainerFrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    :goto_1
    return-void
.end method

.method public final E()V
    .locals 2

    invoke-static {p0}, Lolb;->q0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->requireSecondHomeFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lpoc;->a(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lgoc;->a()I

    move-result v0

    invoke-static {}, Lhoc;->a()I

    move-result v1

    or-int/2addr v0, v1

    invoke-static {p0, v0}, Lds9;->a(Landroid/view/WindowInsetsController;I)V

    :cond_0
    return-void
.end method

.method public final F()Landroid/widget/FrameLayout;
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->i:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBSContainerFrameLayout;

    const-string v1, "null cannot be cast to non-null type android.widget.FrameLayout"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lt47;

    invoke-direct {v1}, Lt47;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->b()Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer;

    move-result-object p0

    const-string v0, "mContainerViewBinding.root"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final H()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->i:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBSContainerFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->setContentView(I)V

    :cond_0
    return-void
.end method

.method public final I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->mContainerViewBinding$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    return-object p0
.end method

.method public final J()Lu47;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->mDialogProxy$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu47;

    return-object p0
.end method

.method public final K()I
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->g:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;->getBackgroundFillColor()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final L()Z
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->d:Landroid/widget/RelativeLayout;

    const-string v0, "mContainerViewBinding.contentBgDrawable"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/transsion/widgetsbottomsheet/R$id;->drag_rect:I

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    sget v4, Lcom/transsion/widgetsbottomsheet/R$id;->panel_content:I

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    sget v4, Lcom/transsion/widgetsbottomsheet/R$id;->title_mask_top:I

    if-ne v3, v4, :cond_2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public final M(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public final N()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->d:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$c;

    invoke-direct {v1, p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$c;-><init>(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method public final O()Z
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->b()Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer;

    move-result-object p0

    const-string v0, "mContainerViewBinding.root"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsCompat;->isVisible(I)Z

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final P(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;I)I
    .locals 1

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->i:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBSContainerFrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    if-lez p2, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->i:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBSContainerFrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_0
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lwn8;->d(II)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v0, -0x80000000

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    return p0
.end method

.method public final R()Z
    .locals 1

    invoke-static {p0}, Lolb;->g0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lolb;->w:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lolb;->v:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lolb;->b0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lolb;->Y(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lolb;->Q(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lolb;->u0(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final S()V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->g:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    invoke-virtual {v1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;->getBackgroundFillColor()I

    move-result v1

    :goto_0
    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->mPageContainerStack:Ljava/util/Stack;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setTitleMaskVisibleFromPanel$widgetsbottomsheet_release(Z)V

    invoke-virtual {v2}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->hasCustomTitleMaskColor$widgetsbottomsheet_release()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, v1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setTitleMaskColorFromPanel$widgetsbottomsheet_release(I)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final T()V
    .locals 6

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->k:Landroid/view/View;

    const-string v1, "mContainerViewBinding.titleMaskTop"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->L()Z

    move-result v1

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->i:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBSContainerFrameLayout;

    const-string v3, "mContainerViewBinding.panelContent"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_2

    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v5, v2, :cond_2

    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v2, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->mPageContainerStack:Ljava/util/Stack;

    invoke-static {v2}, Li81;->C0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->getTitleMaskColor$widgetsbottomsheet_release()I

    move-result v4

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->K()I

    move-result v4

    :goto_2
    if-nez v1, :cond_5

    const/4 v1, 0x1

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->getTitleMaskLengthPx$widgetsbottomsheet_release()I

    move-result v2

    goto :goto_3

    :cond_4
    move v2, v1

    :goto_3
    if-lez v2, :cond_5

    goto :goto_4

    :cond_5
    move v1, v3

    :goto_4
    if-eqz v1, :cond_6

    move v2, v3

    goto :goto_5

    :cond_6
    const/16 v2, 0x8

    :goto_5
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz v1, :cond_7

    move v3, v4

    :cond_7
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->h:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->bringToFront()V

    :cond_8
    return-void
.end method

.method public final U()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->S()V

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->T()V

    return-void
.end method

.method public final V(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->F()Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->g:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    invoke-virtual {v0, p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;->enableTouchFollow(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;)V

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->i:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBSContainerFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->i:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBSContainerFrameLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    if-eqz p2, :cond_2

    if-nez p3, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->i:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBSContainerFrameLayout;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->i:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBSContainerFrameLayout;

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->g:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->getDragHandlerVisibility()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;->setDragHandleVisibility(Z)V

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->g:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->getSupportGesture()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;->setSupportGesture(Z)V

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->requireDim()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->g:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    invoke-virtual {p1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;->disableDim()V

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->D()V

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->b()Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer;

    move-result-object p0

    const-string p1, "mContainerViewBinding.root"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public addPage(Landroid/view/View;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;
    .locals 14

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->mPageContainerStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    invoke-virtual {v1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "pageView"

    invoke-static {v1, p0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->H()V

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->mPageContainerMapRecyclePool:Ljava/util/Stack;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->mPageContainerMapRecyclePool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "{\n            mPageConta\u2026cyclePool.pop()\n        }"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->getDragSpaceTop()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setDragSpaceTop(I)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    new-instance v1, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$addPage$1;

    invoke-direct {v1, p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$addPage$1;-><init>(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setTitleMaskChangedListener$widgetsbottomsheet_release(Le74;)V

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->K()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setTitleMaskColorFromPanel$widgetsbottomsheet_release(I)V

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->L()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setTitleMaskVisibleFromPanel$widgetsbottomsheet_release(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->mPageContainerStack:Ljava/util/Stack;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->mPageContainerStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    :goto_1
    move-object v13, v2

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_4

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    invoke-virtual {v0, p1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->i:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBSContainerFrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->i:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBSContainerFrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v12

    if-eqz v13, :cond_7

    iget-object p1, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->mPageContainerStack:Ljava/util/Stack;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    if-eq v1, v13, :cond_5

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->i:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBSContainerFrameLayout;

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->i:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBSContainerFrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v12, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    iget-object p1, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->mPageContainerStack:Ljava/util/Stack;

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->T()V

    if-eqz v13, :cond_8

    new-instance p1, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$addPage$lambda$11$$inlined$doOnPreDraw$1;

    move-object v8, p1

    move-object v9, v0

    move-object v10, v0

    move-object v11, p0

    invoke-direct/range {v8 .. v13}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$addPage$lambda$11$$inlined$doOnPreDraw$1;-><init>(Landroid/view/View;Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;ILcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;)V

    invoke-static {v0, p1}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    move-result-object p1

    const-string v1, "View.doOnPreDraw(\n    cr\u2026dd(this) { action(this) }"

    invoke-static {p1, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->i:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBSContainerFrameLayout;

    const-string v1, "mContainerViewBinding.panelContent"

    invoke-static {p1, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->mPageContainerStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addPage mRealContainer.size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mPageContainerStack.size = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " osPageView = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OSBaseBottomSheetDialog"

    invoke-static {p1, p0}, Lbq5;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public addSoftKeyboardAnim()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public animateDismiss()V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->g:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    const-string v1, "mContainerViewBinding.dragPanel"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->R()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->addSoftKeyboardAnim()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->O()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;->animateImeExit$widgetsbottomsheet_release()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->M(Landroid/view/View;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->M(Landroid/view/View;)V

    :cond_1
    invoke-virtual {v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;->cancelGotoFinalPositionAnimation()V

    invoke-virtual {v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;->animateExit()V

    return-void
.end method

.method public final cancel()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->mIsAttachedToWindow:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->mIsCanceled:Z

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    return-void
.end method

.method public final dismiss()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->mIsCanceled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->mIsCanceled:Z

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    return-void
.end method

.method public final dismissWithoutAnim()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->mDispatchTouchEvent:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->i:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBSContainerFrameLayout;

    invoke-virtual {v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBSContainerFrameLayout;->isTranslationRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->mDispatchTouchEvent:Z

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getBgColor()I
    .locals 2
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/transsion/widgetsbottomsheet/R$attr;->os_open_bg:I

    sget v1, Lcom/transsion/widgetsbottomsheet/R$color;->os_open_bg_hios:I

    invoke-static {p0, v0, v1}, Lolb;->m(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public final getBgDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->bgDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getContainerViewBinding()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object p0

    return-object p0
.end method

.method public final getContentBgDrawableView()Landroid/widget/RelativeLayout;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->d:Landroid/widget/RelativeLayout;

    const-string v0, "mContainerViewBinding.contentBgDrawable"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getDragHandler()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->f:Landroid/widget/ImageView;

    const-string v0, "mContainerViewBinding.dragHandler"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getDragHandlerVisibility()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getDragSpaceTop()I
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->i:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBSContainerFrameLayout;

    const-string v0, "mContainerViewBinding.panelContent"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public getLayoutResID()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getLivePanelWidth()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->g:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;->getLivePanelWidth()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    return-object p0
.end method

.method public final getMDispatchTouchEvent()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->mDispatchTouchEvent:Z

    return p0
.end method

.method public final getPageSize()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->mPageContainerStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    return p0
.end method

.method public getPagesRecyclerPoolSize()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public final getPanelContentView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->i:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBSContainerFrameLayout;

    const-string v0, "mContainerViewBinding.panelContent"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getPanelRootView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->b()Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer;

    move-result-object p0

    const-string v0, "mContainerViewBinding.root"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getRealContainerView()Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->g:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    const-string v0, "mContainerViewBinding.dragPanel"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getSupportGesture()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract initView()V
.end method

.method public isInOOBE()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isShowBgStroke()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->mIsAttachedToWindow:Z

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->popPage()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->mCancelable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    :cond_0
    return-void
.end method

.method public onBackgroundLayoutInit()V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->updDialogStatusInternal()V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lolb;->u0(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->g:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    invoke-virtual {p1, v1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;->setSoftKeyboardHeight(I)V

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->b()Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    invoke-static {p0}, Lolb;->g0(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->g:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    invoke-virtual {p1, v1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;->setSoftKeyboardHeight(I)V

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->b()Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->g:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    iget-object p1, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->g:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->i:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBSContainerFrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->c:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->requireSecondHomeFullScreen()Z

    move-result v0

    invoke-static {p1, v0}, Lolb;->L0(Landroid/view/Window;Z)V

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->getLayoutResID()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->getLayoutResID()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->setContentView(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->N()V

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->initView()V

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->isShowBgStroke()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->e:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSSmoothCornerLinearLayout;

    invoke-virtual {p1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSSmoothCornerLinearLayout;->setStrokeDrawableBg()V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->getRealContainerView()Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->setDecorFitsSystemWindow()Z

    move-result v2

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->addSoftKeyboardAnim()Z

    move-result v3

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->isInOOBE()Z

    move-result v4

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->b()Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer;

    move-result-object v5

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->getPanelRootView()Landroid/view/View;

    move-result-object p1

    filled-new-array {p1}, [Landroid/view/View;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lsj0;->a(Landroid/view/Window;Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;ZZZLandroid/view/View;[Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Ls47;

    invoke-direct {v0, p0}, Ls47;-><init>(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-static {p0}, Lolb;->a(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->adaptLargeScreen:Z

    const-string p1, "input_method"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->d:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->mPageContainerStack:Ljava/util/Stack;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    invoke-virtual {v2, v1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setTitleMaskChangedListener$widgetsbottomsheet_release(Le74;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->mPageContainerMapRecyclePool:Ljava/util/Stack;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    invoke-virtual {v2, v1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setTitleMaskChangedListener$widgetsbottomsheet_release(Le74;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->releaseAnimation()V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->mIsAttachedToWindow:Z

    return-void
.end method

.method public final onPanelContentTopMarginChanged$widgetsbottomsheet_release()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->T()V

    return-void
.end method

.method public final onPanelFillColorChanged$widgetsbottomsheet_release(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->J()Lu47;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->requireBottomPadding()Z

    move-result v1

    invoke-interface {v0, v1, p1}, Lu47;->a(ZI)V

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->U()V

    return-void
.end method

.method public onPopPage()V
    .locals 0

    return-void
.end method

.method public final popPage()Z
    .locals 13

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->mPageContainerStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->mPageContainerStack:Ljava/util/Stack;

    invoke-static {v0}, Ly71;->m(Ljava/util/List;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->mPageContainerStack:Ljava/util/Stack;

    invoke-static {v0}, Ly71;->m(Ljava/util/List;)I

    move-result v1

    const/4 v12, 0x1

    sub-int/2addr v1, v12

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->mPageContainerStack:Ljava/util/Stack;

    invoke-virtual {v0, v6}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->T()V

    if-eqz v7, :cond_2

    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->i:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBSContainerFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->i:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBSContainerFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0, v7, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->P(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;I)I

    move-result v10

    if-eq v9, v10, :cond_1

    move v8, v12

    goto :goto_0

    :cond_1
    move v8, v2

    :goto_0
    sget-object v3, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->a:Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object v0

    iget-object v4, v0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->g:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    const-string v0, "mContainerViewBinding.dragPanel"

    invoke-static {v4, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object v0

    iget-object v5, v0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->i:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBSContainerFrameLayout;

    const-string v0, "mContainerViewBinding.panelContent"

    invoke-static {v5, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "osPageView"

    invoke-static {v6, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$d;

    invoke-direct {v11, p0, v6}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$d;-><init>(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;)V

    invoke-virtual/range {v3 .. v11}, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->j(Landroid/view/View;Landroid/view/ViewGroup;Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;ZIILcom/transsion/widgetsbottomsheet/animation/AnimHelper$a;)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->onPopPage()V

    return v12
.end method

.method public releaseAnimation()V
    .locals 0

    sget-object p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->a:Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->m()V

    return-void
.end method

.method public requireBottomPadding()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public requireDim()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public requireLayoutTransition()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public requireSecondHomeFullScreen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final setBgDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->bgDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setCancelable(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->mCancelable:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->mCancelable:Z

    :cond_0
    return-void
.end method

.method public final setCanceledOnTouchOutside(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->mCancelable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->mCancelable:Z

    :cond_0
    iput-boolean p1, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->mCanceledOnTouchOutside:Z

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->b()Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->V(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 2
    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->E()V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, p1, v1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->V(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 4
    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->E()V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0, p1, p2}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->V(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 6
    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->E()V

    return-void
.end method

.method public final setCustomContentMaxHeight(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->g:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;->setMCustomContentMaxHeight(I)V

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->g:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final setCustomEnterDuration(J)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->g:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;->setMCustomEnterDuration(J)V

    return-void
.end method

.method public final setCustomTopMargin(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->g:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;->setMCustomTopMargin(I)V

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->g:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setDecorFitsSystemWindow()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final setDismissWithAnimation1(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->mDismissWithAnimation:Z

    return-void
.end method

.method public final setFixedHeight(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->I()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->g:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;->setMFixedHeight(Z)V

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->D()V

    return-void
.end method

.method public final setMDispatchTouchEvent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->mDispatchTouchEvent:Z

    return-void
.end method

.method public final startActivityWithCustomAnim(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "intent"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/transsion/widgetsbottomsheet/R$anim;->os_bottomsheet_activity_open_enter_no_alpha:I

    sget v1, Lcom/transsion/widgetsbottomsheet/R$anim;->os_bottomsheet_activity_open_exit_no_alpha:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x22

    if-lt v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lr47;->a(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;III)V

    :cond_0
    invoke-static {p0, v0, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    if-eqz p2, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public updBottomPadding(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->J()Lu47;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->getBgColor()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lu47;->a(ZI)V

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->T()V

    return-void
.end method

.method public updDialogStatusInternal()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lolb;->v0(Landroid/content/Context;Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lolb;->Z(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->updBottomPadding(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->updBottomPadding$default(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;ZILjava/lang/Object;)V

    :goto_0
    return-void
.end method
