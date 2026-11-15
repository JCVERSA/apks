.class public final Lcom/transsion/widgetslib/flipper/FlipperLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/flipper/FlipperLayout$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00da\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\r\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u001f\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007*\u0002\u00b4\u0001\u0018\u0000 \u00be\u00012\u00020\u0001:\u0002\u00bf\u0001B1\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0003\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0003\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001f\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0017\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0013J\u000f\u0010\u001a\u001a\u00020\u0011H\u0014\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0017\u0010\u001d\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ?\u0010\'\u001a\u00020\u0011\"\u0004\u0008\u0000\u0010\u001f\"\u0008\u0008\u0001\u0010!*\u00020 2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00028\u00000\"2\u0012\u0010&\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010%0$\u00a2\u0006\u0004\u0008\'\u0010(J\u001d\u0010,\u001a\u00020\u00112\u0006\u0010)\u001a\u00020\u00062\u0006\u0010+\u001a\u00020*\u00a2\u0006\u0004\u0008,\u0010-J\u001b\u00100\u001a\u00020\u00112\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00020.0\"\u00a2\u0006\u0004\u00080\u00101J\u001b\u00103\u001a\u00020\u00112\u000c\u00102\u001a\u0008\u0012\u0004\u0012\u00020\u00060\"\u00a2\u0006\u0004\u00083\u00101J\u001b\u00105\u001a\u00020\u00112\u000c\u00104\u001a\u0008\u0012\u0004\u0012\u00020\u00060\"\u00a2\u0006\u0004\u00085\u00101J\u001b\u00108\u001a\u00020\u00112\u000c\u00107\u001a\u0008\u0012\u0004\u0012\u0002060\"\u00a2\u0006\u0004\u00088\u00101J\u001b\u00109\u001a\u00020\u00112\u000c\u00104\u001a\u0008\u0012\u0004\u0012\u00020\u00060\"\u00a2\u0006\u0004\u00089\u00101J\u001b\u0010:\u001a\u00020\u00112\u000c\u00107\u001a\u0008\u0012\u0004\u0012\u0002060\"\u00a2\u0006\u0004\u0008:\u00101J!\u0010=\u001a\u00020\u00112\u0012\u0010<\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00110;\u00a2\u0006\u0004\u0008=\u0010>J\r\u0010@\u001a\u00020?\u00a2\u0006\u0004\u0008@\u0010AJ\u000f\u0010C\u001a\u0004\u0018\u00010B\u00a2\u0006\u0004\u0008C\u0010DJ\u000f\u0010E\u001a\u0004\u0018\u00010B\u00a2\u0006\u0004\u0008E\u0010DJ\u000f\u0010G\u001a\u0004\u0018\u00010F\u00a2\u0006\u0004\u0008G\u0010HJ\u0017\u0010J\u001a\u00020\u00112\u0006\u0010I\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008J\u0010\u001eJ\u001f\u0010M\u001a\u00020\u00112\u0006\u0010I\u001a\u00020\u00062\u0006\u0010L\u001a\u00020KH\u0002\u00a2\u0006\u0004\u0008M\u0010NJ%\u0010Q\u001a\u00020\u00112\u0014\u0010P\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010O\u0012\u0004\u0012\u00020\u00110;H\u0002\u00a2\u0006\u0004\u0008Q\u0010>J\u000f\u0010R\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008R\u0010SJ\u000f\u0010T\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008T\u0010\u001bJ\u000f\u0010U\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008U\u0010\u001bJ\u000f\u0010V\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008V\u0010\u001bJ\u000f\u0010W\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008W\u0010\u001bJ\u000f\u0010X\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008X\u0010YJ\u000f\u0010Z\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008Z\u0010\u001bJ\u000f\u0010[\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008[\u0010\u001bJ)\u0010\\\u001a\u0008\u0012\u0004\u0012\u00028\u00000\"\"\u0004\u0008\u0000\u0010\u001f2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00028\u00000\"H\u0002\u00a2\u0006\u0004\u0008\\\u0010]J\u000f\u0010^\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008^\u0010\u001bJ\u000f\u0010_\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008_\u0010\u001bJ\u000f\u0010`\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008`\u0010\u001bJ\u000f\u0010a\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008a\u0010\u001bJ\u001b\u0010c\u001a\u0004\u0018\u0001062\u0008\u0010b\u001a\u0004\u0018\u000106H\u0002\u00a2\u0006\u0004\u0008c\u0010dJ\u0017\u0010e\u001a\u00020\u00112\u0006\u0010I\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008e\u0010\u001eJ\u0017\u0010g\u001a\u00020\u00112\u0006\u0010f\u001a\u00020BH\u0002\u00a2\u0006\u0004\u0008g\u0010hR\u0016\u0010k\u001a\u00020?8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008i\u0010jR\u0016\u0010n\u001a\u00020\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008l\u0010mR\u0018\u0010r\u001a\u0004\u0018\u00010o8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008p\u0010qR\u0018\u0010t\u001a\u0004\u0018\u00010o8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008s\u0010qR\u0018\u0010w\u001a\u0004\u0018\u00010B8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008u\u0010vR\u0018\u0010x\u001a\u0004\u0018\u00010B8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008g\u0010vR\u0016\u0010{\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008y\u0010zR\u001e\u0010}\u001a\n\u0012\u0004\u0012\u000206\u0018\u00010\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008`\u0010|R\u001e\u0010\u007f\u001a\n\u0012\u0004\u0012\u000206\u0018\u00010\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008~\u0010|R\u001d\u0010\u0080\u0001\u001a\u0008\u0012\u0004\u0012\u00020*0\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008V\u0010|R,\u0010\u0082\u0001\u001a\u0017\u0012\u0011\u0012\u000f\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020*0\u0081\u0001\u0018\u00010\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\\\u0010|R)\u0010\u0087\u0001\u001a\u0004\u0018\u00010F8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0016\n\u0005\u0008T\u0010\u0083\u0001\u001a\u0005\u0008\u0084\u0001\u0010H\"\u0006\u0008\u0085\u0001\u0010\u0086\u0001R\u001f\u0010\u008a\u0001\u001a\t\u0012\u0002\u0008\u0003\u0018\u00010\u0088\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008c\u0010\u0089\u0001R&\u0010\u008e\u0001\u001a\u00020\r8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0015\n\u0005\u0008Q\u0010\u008b\u0001\u001a\u0005\u0008\u008c\u0001\u0010Y\"\u0005\u0008\u008d\u0001\u0010\u0013R\u0018\u0010\u0090\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u008f\u0001\u0010zR\u0018\u0010\u0091\u0001\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008a\u0010\u008b\u0001R*\u0010\u0097\u0001\u001a\u0004\u0018\u00010O8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0017\n\u0005\u0008[\u0010\u0092\u0001\u001a\u0006\u0008\u0093\u0001\u0010\u0094\u0001\"\u0006\u0008\u0095\u0001\u0010\u0096\u0001R\u0018\u0010\u0098\u0001\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008^\u0010\u008b\u0001R\u0017\u0010\u0018\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008_\u0010\u008b\u0001R\u0018\u0010\u009a\u0001\u001a\u00020K8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008X\u0010\u0099\u0001R\u0018\u0010\u009b\u0001\u001a\u00020K8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008U\u0010\u0099\u0001R\u0019\u0010\u009d\u0001\u001a\u00020K8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009c\u0001\u0010\u0099\u0001R\u0019\u0010\u00a0\u0001\u001a\u00030\u009e\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008Z\u0010\u009f\u0001R\u0019\u0010\u00a1\u0001\u001a\u00030\u009e\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008W\u0010\u009f\u0001R\u0019\u0010\u00a3\u0001\u001a\u00020K8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a2\u0001\u0010\u0099\u0001R\u0018\u0010\u00a4\u0001\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008J\u0010\u008b\u0001R \u0010\u00a9\u0001\u001a\u00030\u00a5\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008M\u0010\u00a6\u0001\u001a\u0006\u0008\u00a7\u0001\u0010\u00a8\u0001R \u0010\u00ad\u0001\u001a\u00030\u00aa\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008e\u0010\u00a6\u0001\u001a\u0006\u0008\u00ab\u0001\u0010\u00ac\u0001R\u0018\u0010\u00af\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00ae\u0001\u0010zR\u0018\u0010\u00b3\u0001\u001a\u00030\u00b0\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00b1\u0001\u0010\u00b2\u0001R\u0018\u0010\u00b6\u0001\u001a\u00030\u00b4\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0099\u0001\u0010\u00b5\u0001R\u0019\u0010\u00b8\u0001\u001a\u00020K8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b7\u0001\u0010\u0099\u0001R!\u0010\u00bd\u0001\u001a\u00030\u00b9\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00ba\u0001\u0010\u00a6\u0001\u001a\u0006\u0008\u00bb\u0001\u0010\u00bc\u0001\u00a8\u0006\u00c0\u0001"
    }
    d2 = {
        "Lcom/transsion/widgetslib/flipper/FlipperLayout;",
        "Landroid/widget/LinearLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "defStyleRes",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;II)V",
        "Landroid/view/MotionEvent;",
        "ev",
        "",
        "dispatchTouchEvent",
        "(Landroid/view/MotionEvent;)Z",
        "disallowIntercept",
        "Lzfb;",
        "requestDisallowInterceptTouchEvent",
        "(Z)V",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onMeasure",
        "(II)V",
        "isVisible",
        "onVisibilityAggregated",
        "onDetachedFromWindow",
        "()V",
        "pst",
        "setCurrentPst",
        "(I)V",
        "T",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "VH",
        "",
        "dataList",
        "Lkotlin/Function0;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "adapter",
        "setFlipperList",
        "(Ljava/util/List;Lc74;)V",
        "index",
        "",
        "interval",
        "setPageInterval",
        "(IJ)V",
        "Landroid/graphics/drawable/Drawable;",
        "drawableList",
        "setDrawableList",
        "(Ljava/util/List;)V",
        "drawableResList",
        "setDrawableResList",
        "textResList",
        "setPrimaryTextResList",
        "",
        "textList",
        "setPrimaryTextList",
        "setSecondaryTextResList",
        "setSecondaryTextList",
        "Lkotlin/Function1;",
        "listener",
        "onItemClick",
        "(Le74;)V",
        "Landroidx/viewpager2/widget/ViewPager2;",
        "getViewPager",
        "()Landroidx/viewpager2/widget/ViewPager2;",
        "Landroid/widget/TextView;",
        "getTvPrimary",
        "()Landroid/widget/TextView;",
        "getTvSecondary",
        "Landroid/view/ViewGroup;",
        "getLayoutDot",
        "()Landroid/view/ViewGroup;",
        "position",
        "A",
        "",
        "positionOffset",
        "B",
        "(IF)V",
        "Landroid/animation/ValueAnimator;",
        "func",
        "o",
        "getShiftWidth",
        "()I",
        "m",
        "v",
        "k",
        "y",
        "u",
        "()Z",
        "x",
        "r",
        "l",
        "(Ljava/util/List;)Ljava/util/List;",
        "s",
        "t",
        "i",
        "q",
        "text",
        "n",
        "(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;",
        "C",
        "textView",
        "g",
        "(Landroid/widget/TextView;)V",
        "b",
        "Landroidx/viewpager2/widget/ViewPager2;",
        "viewPager",
        "c",
        "Landroid/widget/LinearLayout;",
        "textParent",
        "Ljava/lang/Runnable;",
        "d",
        "Ljava/lang/Runnable;",
        "titleUpdateRunnable",
        "e",
        "runnable",
        "f",
        "Landroid/widget/TextView;",
        "tvPrimary",
        "tvSecondary",
        "h",
        "I",
        "currentPst",
        "Ljava/util/List;",
        "textPrimaryList",
        "j",
        "textSecondaryList",
        "shiftIntervalList",
        "Lkotlin/Pair;",
        "shiftIntervalCache",
        "Landroid/view/ViewGroup;",
        "getDotLayout$widgetsLib_release",
        "setDotLayout$widgetsLib_release",
        "(Landroid/view/ViewGroup;)V",
        "dotLayout",
        "Lcom/transsion/widgetslib/flipper/DefaultAdapter;",
        "Lcom/transsion/widgetslib/flipper/DefaultAdapter;",
        "defaultAdapter",
        "Z",
        "isCyclic$widgetsLib_release",
        "setCyclic$widgetsLib_release",
        "isCyclic",
        "p",
        "attachHeadTailItem",
        "isAutoPlay",
        "Landroid/animation/ValueAnimator;",
        "getAnimator$widgetsLib_release",
        "()Landroid/animation/ValueAnimator;",
        "setAnimator$widgetsLib_release",
        "(Landroid/animation/ValueAnimator;)V",
        "animator",
        "isAutoFlipping",
        "F",
        "topicHeight",
        "descHeight",
        "w",
        "maxTotalHeight",
        "",
        "Ljava/lang/String;",
        "longestPrimaryStr",
        "longestSecondaryStr",
        "z",
        "mCenterY",
        "textHeightDirty",
        "Lp97;",
        "Lyi5;",
        "getShiftInpt",
        "()Lp97;",
        "shiftInpt",
        "Landroid/view/animation/PathInterpolator;",
        "getAlphaInpt",
        "()Landroid/view/animation/PathInterpolator;",
        "alphaInpt",
        "D",
        "shiftDistance",
        "Lcom/transsion/widgetslib/flipper/PageAnimation;",
        "E",
        "Lcom/transsion/widgetslib/flipper/PageAnimation;",
        "pageTransformer",
        "com/transsion/widgetslib/flipper/FlipperLayout$onPageChangeCallback$1",
        "Lcom/transsion/widgetslib/flipper/FlipperLayout$onPageChangeCallback$1;",
        "onPageChangeCallback",
        "G",
        "downX",
        "Landroid/view/View$OnTouchListener;",
        "H",
        "getOnTouchListener",
        "()Landroid/view/View$OnTouchListener;",
        "onTouchListener",
        "Companion",
        "a",
        "widgetsLib_release"
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
.field public static final Companion:Lcom/transsion/widgetslib/flipper/FlipperLayout$a;


# instance fields
.field public A:Z

.field public final B:Lyi5;

.field public final C:Lyi5;

.field public D:I

.field public final E:Lcom/transsion/widgetslib/flipper/PageAnimation;

.field public final F:Lcom/transsion/widgetslib/flipper/FlipperLayout$onPageChangeCallback$1;

.field public G:F

.field public final H:Lyi5;

.field public b:Landroidx/viewpager2/widget/ViewPager2;

.field public c:Landroid/widget/LinearLayout;

.field public d:Ljava/lang/Runnable;

.field public e:Ljava/lang/Runnable;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:I

.field public i:Ljava/util/List;

.field public j:Ljava/util/List;

.field public k:Ljava/util/List;

.field public l:Ljava/util/List;

.field public m:Landroid/view/ViewGroup;

.field public n:Lcom/transsion/widgetslib/flipper/DefaultAdapter;

.field public o:Z

.field public p:I

.field public q:Z

.field public r:Landroid/animation/ValueAnimator;

.field public s:Z

.field public t:Z

.field public u:F

.field public v:F

.field public w:F

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/widgetslib/flipper/FlipperLayout$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/flipper/FlipperLayout$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->Companion:Lcom/transsion/widgetslib/flipper/FlipperLayout$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/transsion/widgetslib/flipper/FlipperLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/transsion/widgetslib/flipper/FlipperLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/transsion/widgetslib/flipper/FlipperLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->k:Ljava/util/List;

    const/4 p2, 0x1

    .line 7
    iput-boolean p2, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->o:Z

    .line 8
    iput p2, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->p:I

    .line 9
    iput-boolean p2, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->q:Z

    .line 10
    const-string p3, ""

    iput-object p3, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->x:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->y:Ljava/lang/String;

    .line 12
    sget-object p3, Lcom/transsion/widgetslib/flipper/FlipperLayout$shiftInpt$2;->INSTANCE:Lcom/transsion/widgetslib/flipper/FlipperLayout$shiftInpt$2;

    invoke-static {p3}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->B:Lyi5;

    .line 13
    sget-object p3, Lcom/transsion/widgetslib/flipper/FlipperLayout$alphaInpt$2;->INSTANCE:Lcom/transsion/widgetslib/flipper/FlipperLayout$alphaInpt$2;

    invoke-static {p3}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->C:Lyi5;

    .line 14
    new-instance p3, Lcom/transsion/widgetslib/flipper/PageAnimation;

    invoke-direct {p3}, Lcom/transsion/widgetslib/flipper/PageAnimation;-><init>()V

    .line 15
    invoke-virtual {p3, p0}, Lcom/transsion/widgetslib/flipper/PageAnimation;->b(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V

    .line 16
    iput-object p3, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->E:Lcom/transsion/widgetslib/flipper/PageAnimation;

    .line 17
    new-instance p4, Lcom/transsion/widgetslib/flipper/FlipperLayout$onPageChangeCallback$1;

    invoke-direct {p4, p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout$onPageChangeCallback$1;-><init>(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V

    iput-object p4, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->F:Lcom/transsion/widgetslib/flipper/FlipperLayout$onPageChangeCallback$1;

    .line 18
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 19
    sget p2, Lcom/transsion/widgetslib/R$layout;->os_flipper_layout:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 20
    sget p1, Lcom/transsion/widgetslib/R$id;->textParentLayout:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById<LinearLayout>(R.id.textParentLayout)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->c:Landroid/widget/LinearLayout;

    .line 21
    sget p1, Lcom/transsion/widgetslib/R$id;->flipPager:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Landroidx/viewpager2/widget/ViewPager2;

    .line 22
    invoke-virtual {p2, p3}, Landroidx/viewpager2/widget/ViewPager2;->setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    .line 23
    invoke-virtual {p2, p4}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 24
    const-string p3, "findViewById<ViewPager2>\u2026ChangeCallback)\n        }"

    invoke-static {p1, p3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/widgetslib/R$dimen;->os_flipper_layout_padding_lr:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/widgetslib/R$dimen;->os_flipper_layout_padding_bottom:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0, p1, p3, p1, p2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 28
    new-instance p1, Lpy3;

    invoke-direct {p1, p0}, Lpy3;-><init>(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 29
    new-instance p1, Lcom/transsion/widgetslib/flipper/FlipperLayout$onTouchListener$2;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout$onTouchListener$2;-><init>(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V

    invoke-static {p1}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->H:Lyi5;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    .line 4
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/widgetslib/flipper/FlipperLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->f(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V

    return-void
.end method

.method public static final synthetic access$getAttachHeadTailItem$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->p:I

    return p0
.end method

.method public static final synthetic access$getCurrentPst$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->h:I

    return p0
.end method

.method public static final synthetic access$getDownX$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->G:F

    return p0
.end method

.method public static final synthetic access$getTitleUpdateRunnable$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->d:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$getViewPager$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroidx/viewpager2/widget/ViewPager2;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->b:Landroidx/viewpager2/widget/ViewPager2;

    return-object p0
.end method

.method public static final synthetic access$isAutoFlipping$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->s:Z

    return p0
.end method

.method public static final synthetic access$isAutoPlay$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->q:Z

    return p0
.end method

.method public static final synthetic access$isSinglePage(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->u()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isVisible$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->t:Z

    return p0
.end method

.method public static final synthetic access$playFakeDragAnim(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->v()V

    return-void
.end method

.method public static final synthetic access$removeScrollMsg(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->x()V

    return-void
.end method

.method public static final synthetic access$sendScrollMsg(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->y()V

    return-void
.end method

.method public static final synthetic access$setAutoFlipping$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->s:Z

    return-void
.end method

.method public static final synthetic access$setCurrentPst$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->h:I

    return-void
.end method

.method public static final synthetic access$setDefaultAdapter$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;Lcom/transsion/widgetslib/flipper/DefaultAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->n:Lcom/transsion/widgetslib/flipper/DefaultAdapter;

    return-void
.end method

.method public static final synthetic access$setDownX$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->G:F

    return-void
.end method

.method public static final synthetic access$setTitleUpdateRunnable$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->d:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic access$updateDotSelection(Lcom/transsion/widgetslib/flipper/FlipperLayout;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->A(I)V

    return-void
.end method

.method public static final synthetic access$updateDotSelection(Lcom/transsion/widgetslib/flipper/FlipperLayout;IF)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->B(IF)V

    return-void
.end method

.method public static final synthetic access$updateTextFromPosition(Lcom/transsion/widgetslib/flipper/FlipperLayout;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->C(I)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->z(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/widgetslib/flipper/FlipperLayout;Landroid/widget/TextView;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->h(Lcom/transsion/widgetslib/flipper/FlipperLayout;Landroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/widgetslib/flipper/FlipperLayout;Le74;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->p(Lcom/transsion/widgetslib/flipper/FlipperLayout;Le74;)V

    return-void
.end method

.method public static synthetic e(Lcom/transsion/widgetslib/flipper/FlipperLayout;Lkotlin/jvm/internal/Ref$IntRef;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->w(Lcom/transsion/widgetslib/flipper/FlipperLayout;Lkotlin/jvm/internal/Ref$IntRef;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final f(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->b:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_0

    const-string v0, "viewPager"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->z:F

    return-void
.end method

.method private final getAlphaInpt()Landroid/view/animation/PathInterpolator;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->C:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/animation/PathInterpolator;

    return-object p0
.end method

.method private final getOnTouchListener()Landroid/view/View$OnTouchListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->H:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method private final getShiftInpt()Lp97;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->B:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lp97;

    return-object p0
.end method

.method private final getShiftWidth()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result p0

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x2

    return v0
.end method

.method public static final h(Lcom/transsion/widgetslib/flipper/FlipperLayout;Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$textView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->u()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineCount()I

    move-result p0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    const p0, 0x800003

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x11

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setGravity(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static final j(IIILandroid/widget/TextView;)I
    .locals 0

    invoke-virtual {p3, p0, p1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    const/4 p1, 0x0

    invoke-virtual {p3, p1, p1, p2, p0}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/text/Layout;->getHeight()I

    move-result p1

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    add-int/2addr p1, p0

    invoke-virtual {p3}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    add-int/2addr p1, p0

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static final p(Lcom/transsion/widgetslib/flipper/FlipperLayout;Le74;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$func"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->getShiftWidth()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->D:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->D:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initAnimator, width: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", shiftDistance: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FlipperLayout"

    invoke-static {v2, v1}, Lbq5;->j(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v0, :cond_0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    const v4, 0x3edb6db7

    invoke-static {v4, v1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    invoke-direct {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->getAlphaInpt()Landroid/view/animation/PathInterpolator;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object p0, Lzfb;->a:Lzfb;

    invoke-static {v2, v1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object p0

    filled-new-array {v3, v4, p0}, [Landroid/animation/Keyframe;

    move-result-object p0

    const-string v1, "pvh_alpha_page_out"

    invoke-static {v1, p0}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    const/4 v1, 0x0

    filled-new-array {v1, v0}, [I

    move-result-object v0

    const-string v1, "pvh_shift"

    invoke-static {v1, v0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    filled-new-array {p0, v0}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p0

    const-wide/16 v0, 0x15e

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {p1, p0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic setCurrentPst$default(Lcom/transsion/widgetslib/flipper/FlipperLayout;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->setCurrentPst(I)V

    return-void
.end method

.method public static final w(Lcom/transsion/widgetslib/flipper/FlipperLayout;Lkotlin/jvm/internal/Ref$IntRef;Landroid/animation/ValueAnimator;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$currentValue"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animation"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pvh_alpha_page_out"

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Float;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Float;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->E:Lcom/transsion/widgetslib/flipper/PageAnimation;

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/flipper/PageAnimation;->setAlphaPageOutRatio$widgetsLib_release(F)V

    :cond_1
    const-string v0, "pvh_shift"

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Integer;

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p2

    invoke-direct {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->getShiftInpt()Lp97;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->D:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->E:Lcom/transsion/widgetslib/flipper/PageAnimation;

    invoke-direct {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->getAlphaInpt()Landroid/view/animation/PathInterpolator;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p2

    invoke-virtual {v1, p2}, Lcom/transsion/widgetslib/flipper/PageAnimation;->setAlphaRatio$widgetsLib_release(F)V

    invoke-static {}, Lolb;->l0()Z

    move-result p2

    if-eqz p2, :cond_3

    iget p2, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sub-int p2, v0, p2

    goto :goto_2

    :cond_3
    iget p2, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sub-int/2addr p2, v0

    :goto_2
    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->b:Landroidx/viewpager2/widget/ViewPager2;

    if-nez p0, :cond_4

    const-string p0, "viewPager"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    move-object v2, p0

    :goto_3
    int-to-float p0, p2

    invoke-virtual {v2, p0}, Landroidx/viewpager2/widget/ViewPager2;->fakeDragBy(F)Z

    iput v0, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    :cond_5
    return-void
.end method

.method public static final z(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->m()V

    return-void
.end method


# virtual methods
.method public final A(I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->b:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_0

    const-string v0, "viewPager"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->m:Landroid/view/ViewGroup;

    iget-boolean v2, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->o:Z

    iget p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->p:I

    invoke-static {v1, p1, v0, v2, p0}, Lty3;->h(Landroid/view/ViewGroup;IIZI)V

    :cond_1
    return-void
.end method

.method public final B(IF)V
    .locals 8

    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->b:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_0

    const-string v0, "viewPager"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    iget-object v1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->m:Landroid/view/ViewGroup;

    iget-boolean v5, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->o:Z

    iget v6, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->p:I

    invoke-static {}, Lolb;->l0()Z

    move-result v7

    move v2, p1

    move v3, p2

    invoke-static/range {v1 .. v7}, Lty3;->g(Landroid/view/ViewGroup;IFIZIZ)V

    :cond_1
    return-void
.end method

.method public final C(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->i:Ljava/util/List;

    if-eqz v0, :cond_4

    if-ltz p1, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_4

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->f:Landroid/widget/TextView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->f:Landroid/widget/TextView;

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->g(Landroid/widget/TextView;)V

    :cond_4
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->j:Ljava/util/List;

    if-eqz v0, :cond_6

    if-ltz p1, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_6

    iget-object v1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->g:Landroid/widget/TextView;

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->n(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->g:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->g(Landroid/widget/TextView;)V

    :cond_6
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "ev"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->z:F

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->z:F

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    :goto_0
    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->b:Landroidx/viewpager2/widget/ViewPager2;

    if-nez p0, :cond_1

    const-string p0, "viewPager"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final g(Landroid/widget/TextView;)V
    .locals 1

    new-instance v0, Lny3;

    invoke-direct {v0, p0, p1}, Lny3;-><init>(Lcom/transsion/widgetslib/flipper/FlipperLayout;Landroid/widget/TextView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final getAnimator$widgetsLib_release()Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->r:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public final getDotLayout$widgetsLib_release()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->m:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public final getLayoutDot()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->m:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public final getTvPrimary()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->f:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getTvSecondary()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->g:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getViewPager()Landroidx/viewpager2/widget/ViewPager2;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->b:Landroidx/viewpager2/widget/ViewPager2;

    if-nez p0, :cond_0

    const-string p0, "viewPager"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final i()V
    .locals 13

    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->j:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->g:Landroid/widget/TextView;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-gtz v2, :cond_2

    return-void

    :cond_2
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    const/4 v6, 0x0

    iput v6, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->w:F

    iget-object v6, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->i:Ljava/util/List;

    check-cast v6, Ljava/util/Collection;

    if-eqz v6, :cond_6

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    iget-object v6, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->i:Ljava/util/List;

    invoke-static {v6}, Ly45;->g(Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->f:Landroid/widget/TextView;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    :goto_0
    if-ge v4, v8, :cond_8

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {p0, v9}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->n(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v3, v5, v2, v1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->j(IIILandroid/widget/TextView;)I

    move-result v9

    int-to-float v9, v9

    iput v9, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->v:F

    if-eqz v7, :cond_4

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v3, v5, v2, v7}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->j(IIILandroid/widget/TextView;)I

    move-result v9

    int-to-float v9, v9

    iput v9, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->u:F

    iget v10, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->w:F

    iget v11, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->v:F

    add-float v12, v9, v11

    cmpg-float v10, v10, v12

    if-gez v10, :cond_5

    add-float/2addr v9, v11

    iput v9, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->w:F

    goto :goto_1

    :cond_4
    iget v10, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->w:F

    cmpg-float v10, v10, v9

    if-gez v10, :cond_5

    iput v9, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->w:F

    :cond_5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    :goto_3
    if-ge v4, v6, :cond_8

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {p0, v7}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->n(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v3, v5, v2, v1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->j(IIILandroid/widget/TextView;)I

    move-result v7

    int-to-float v7, v7

    iput v7, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->v:F

    iget v8, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->w:F

    cmpg-float v8, v8, v7

    if-gez v8, :cond_7

    iput v7, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->w:F

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    iget v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->h:I

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->C(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->c:Landroid/widget/LinearLayout;

    if-nez v0, :cond_9

    const-string v0, "textParent"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->w:F

    float-to-int p0, p0

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method public final isCyclic$widgetsLib_release()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->o:Z

    return p0
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->r:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->d:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->s:Z

    return-void
.end method

.method public final l(Ljava/util/List;)Ljava/util/List;
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->b:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_0

    const-string v0, "viewPager"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    :cond_1
    iget-boolean p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->o:Z

    if-eqz p0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_2

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    invoke-static {p1}, Ly71;->m(Ljava/util/List;)I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, p0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object p0, p1

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object p1
.end method

.method public final m()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->r:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/widgetslib/flipper/FlipperLayout$fakeDragPage$1;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout$fakeDragPage$1;-><init>(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->o(Le74;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->v()V

    :goto_0
    return-void
.end method

.method public final n(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "\n"

    invoke-static {v6, v2, v0, v1, p0}, Lj1a;->X(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return-object p1

    :cond_1
    new-instance p0, Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v4, 0x6

    const/4 v5, 0x0

    const-string v1, "\n"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lj1a;->s0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p1

    :goto_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    add-int/lit8 v0, p1, 0x1

    const-string v1, "\n\u00a0\n"

    invoke-virtual {p0, p1, v0, v1}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    const v2, 0x3f19999a    # 0.6f

    invoke-direct {v1, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    add-int/lit8 v2, p1, 0x3

    const/16 v3, 0x21

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    if-eqz p1, :cond_2

    add-int/lit8 v2, p1, -0x1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "\n"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lj1a;->s0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public final o(Le74;)V
    .locals 1

    new-instance v0, Lqy3;

    invoke-direct {v0, p0, p1}, Lqy3;-><init>(Lcom/transsion/widgetslib/flipper/FlipperLayout;Le74;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->d:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->d:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->n:Lcom/transsion/widgetslib/flipper/DefaultAdapter;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/widgetslib/flipper/DefaultAdapter;->getList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->b:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v1, :cond_1

    const-string v1, "viewPager"

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    iget-object v1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->F:Lcom/transsion/widgetslib/flipper/FlipperLayout$onPageChangeCallback$1;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->i:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->j:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->r:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/animation/Animator;->removeAllListeners()V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    :cond_4
    return-void
.end method

.method public final onItemClick(Le74;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le74;",
            ")V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->n:Lcom/transsion/widgetslib/flipper/DefaultAdapter;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/flipper/DefaultAdapter;->setOnItemClick(Le74;)V

    :goto_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-boolean v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->A:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->A:Z

    invoke-virtual {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->i()V

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_0
    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    iput-boolean p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->t:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->y()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->x()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->k()V

    :goto_0
    return-void
.end method

.method public final q()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->m:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    invoke-static {p0}, Lty3;->c(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->m:Landroid/view/ViewGroup;

    :cond_0
    return-void
.end method

.method public final r()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->b:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "viewPager"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    iget-object v2, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->k:Ljava/util/List;

    const-wide/16 v4, 0xbb8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->l:Ljava/util/List;

    if-eqz v0, :cond_3

    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-virtual {p0, v4, v5, v6}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->setPageInterval(IJ)V

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->l:Ljava/util/List;

    :cond_3
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestDisallowInterceptTouchEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlipperLayout"

    invoke-static {v1, v0}, Lbq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public final s()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->f:Landroid/widget/TextView;

    if-nez v0, :cond_4

    sget v0, Lcom/transsion/widgetslib/R$id;->stubTextPrimary:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->b:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v1, :cond_0

    const-string v1, "viewPager"

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->i:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->h:I

    if-ltz v3, :cond_3

    if-ge v3, v2, :cond_3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->g(Landroid/widget/TextView;)V

    :cond_3
    iput-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->f:Landroid/widget/TextView;

    :cond_4
    return-void
.end method

.method public final setAnimator$widgetsLib_release(Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->r:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public final setCurrentPst(I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->b:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x0

    const-string v2, "viewPager"

    if-nez v0, :cond_0

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_1

    iput p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->h:I

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->b:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_2

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    iget-boolean v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->o:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->p:I

    add-int/2addr v0, p1

    goto :goto_1

    :cond_3
    move v0, p1

    :goto_1
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lty3;->e(Landroidx/viewpager2/widget/ViewPager2;IZ)V

    :goto_2
    iget p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->h:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurrentPst, pst: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", currentPst: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FlipperLayout"

    invoke-static {p1, p0}, Lbq5;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setCyclic$widgetsLib_release(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->o:Z

    return-void
.end method

.method public final setDotLayout$widgetsLib_release(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->m:Landroid/view/ViewGroup;

    return-void
.end method

.method public final setDrawableList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    const-string v0, "drawableList"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setDrawableList$1;

    invoke-direct {v0, p1, p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout$setDrawableList$1;-><init>(Ljava/util/List;Lcom/transsion/widgetslib/flipper/FlipperLayout;)V

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->setFlipperList(Ljava/util/List;Lc74;)V

    return-void
.end method

.method public final setDrawableResList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "drawableResList"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setDrawableResList$1;

    invoke-direct {v0, p1, p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout$setDrawableResList$1;-><init>(Ljava/util/List;Lcom/transsion/widgetslib/flipper/FlipperLayout;)V

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->setFlipperList(Ljava/util/List;Lc74;)V

    return-void
.end method

.method public final setFlipperList(Ljava/util/List;Lc74;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "VH:",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lc74;",
            ")V"
        }
    .end annotation

    const-string v0, "dataList"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->l(Ljava/util/List;)Ljava/util/List;

    iget-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->b:Landroidx/viewpager2/widget/ViewPager2;

    if-nez p1, :cond_0

    const-string p1, "viewPager"

    invoke-static {p1}, Ly45;->B(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-interface {p2}, Lc74;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-boolean p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->o:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->u()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->p:I

    invoke-virtual {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->q()V

    iget p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->h:I

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->setCurrentPst(I)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->r()V

    return-void
.end method

.method public final setPageInterval(IJ)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->b:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_0

    const-string v0, "viewPager"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->l:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->l:Ljava/util/List;

    :cond_1
    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->l:Ljava/util/List;

    if-eqz p0, :cond_7

    new-instance v0, Lkotlin/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->o:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->p:I

    add-int/2addr v0, p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->k:Ljava/util/List;

    invoke-static {p1}, Ly71;->m(Ljava/util/List;)I

    move-result v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->k:Ljava/util/List;

    invoke-static {v1}, Ly71;->m(Ljava/util/List;)I

    move-result v1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->k:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->k:Ljava/util/List;

    invoke-static {p1}, Ly71;->m(Ljava/util/List;)I

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->p:I

    sub-int v0, p1, v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->k:Ljava/util/List;

    invoke-static {v1}, Ly71;->m(Ljava/util/List;)I

    move-result v1

    iget v3, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->p:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->k:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_0
    if-ltz v0, :cond_7

    iget-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_7

    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->k:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    if-ltz p1, :cond_7

    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_7

    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->k:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_1
    return-void
.end method

.method public final setPrimaryTextList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    const-string v0, "textList"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->l(Ljava/util/List;)Ljava/util/List;

    iput-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->i:Ljava/util/List;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->s()V

    iget-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->f:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->h:I

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->C(I)V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->A:Z

    return-void
.end method

.method public final setPrimaryTextResList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "textResList"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->l(Ljava/util/List;)Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "resources.getText(element)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->i:Ljava/util/List;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->s()V

    return-void
.end method

.method public final setSecondaryTextList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    const-string v0, "textList"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->l(Ljava/util/List;)Ljava/util/List;

    iput-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->j:Ljava/util/List;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->t()V

    iget-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->g:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->h:I

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->C(I)V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->A:Z

    return-void
.end method

.method public final setSecondaryTextResList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "textResList"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->l(Ljava/util/List;)Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "resources.getText(element)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->j:Ljava/util/List;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->t()V

    return-void
.end method

.method public final t()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->g:Landroid/widget/TextView;

    if-nez v0, :cond_2

    sget v0, Lcom/transsion/widgetslib/R$id;->stubTextSecondary:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->b:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v1, :cond_0

    const-string v1, "viewPager"

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->j:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->h:I

    if-ltz v3, :cond_1

    if-ge v3, v2, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->n(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->g(Landroid/widget/TextView;)V

    :cond_1
    iput-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->g:Landroid/widget/TextView;

    :cond_2
    return-void
.end method

.method public final u()Z
    .locals 2

    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->b:Landroidx/viewpager2/widget/ViewPager2;

    if-nez p0, :cond_0

    const-string p0, "viewPager"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p0

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_0
    const/4 v1, 0x1

    if-gt p0, v1, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public final v()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->r:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->getShiftWidth()I

    move-result v1

    if-lez v1, :cond_0

    iget v2, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->D:I

    if-eq v2, v1, :cond_0

    iget-object v2, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->E:Lcom/transsion/widgetslib/flipper/PageAnimation;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/flipper/PageAnimation;->d()V

    iput v1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->D:I

    :cond_0
    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    new-instance v2, Loy3;

    invoke-direct {v2, p0, v1}, Loy3;-><init>(Lcom/transsion/widgetslib/flipper/FlipperLayout;Lkotlin/jvm/internal/Ref$IntRef;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/transsion/widgetslib/flipper/FlipperLayout$b;

    invoke-direct {v1, p0, v0, v2}, Lcom/transsion/widgetslib/flipper/FlipperLayout$b;-><init>(Lcom/transsion/widgetslib/flipper/FlipperLayout;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method

.method public final x()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->e:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final y()V
    .locals 5

    iget-boolean v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->t:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->q:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->u()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->e:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    new-instance v0, Lmy3;

    invoke-direct {v0, p0}, Lmy3;-><init>(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->e:Ljava/lang/Runnable;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->b:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v3, 0x0

    const-string v4, "viewPager"

    if-nez v2, :cond_2

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    move-object v2, v3

    :cond_2
    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v2

    if-ltz v2, :cond_4

    if-ge v2, v1, :cond_4

    iget-object v1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->b:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v1, :cond_3

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    move-object v1, v3

    :cond_3
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_1

    :cond_4
    const-wide/16 v0, 0xbb8

    :goto_1
    iget-object v2, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->b:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v2, :cond_5

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object v3, v2

    :goto_2
    invoke-virtual {v3}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendScrollMsg, currentItem: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", interval: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FlipperLayout"

    invoke-static {v3, v2}, Lbq5;->j(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->e:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    return-void
.end method
