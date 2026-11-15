.class public final Lcom/transsion/widgetslib/widget/OSSegmentedTab;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/widget/OSSegmentedTab$a;,
        Lcom/transsion/widgetslib/widget/OSSegmentedTab$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ca\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0017\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0008\u0003\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u001e\n\u0002\u0010\t\n\u0002\u0008\u000b\n\u0002\u0010\r\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c*\u0002BE\u0018\u0000 \u00c5\u00012\u00020\u0001:\u0003\u00c6\u0001}B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0015\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\r\u0010\u0013\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J!\u0010\u001c\u001a\u00020\u000c2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00192\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ/\u0010#\u001a\u00020\u000c2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001e2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020!0 2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0006\u00a2\u0006\u0004\u0008#\u0010$J\u001b\u0010%\u001a\u00020\u000c2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020!0 \u00a2\u0006\u0004\u0008%\u0010&J%\u0010%\u001a\u00020\u000c2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020!0 2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0006\u00a2\u0006\u0004\u0008%\u0010\'J9\u0010,\u001a\u00020\u000c2\u0006\u0010(\u001a\u00020\u00062\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010\u000f2\n\u0008\u0002\u0010*\u001a\u0004\u0018\u00010\u000f2\n\u0008\u0002\u0010+\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0004\u0008,\u0010-J\u001f\u00100\u001a\u00020\u000c2\u0006\u0010.\u001a\u00020\u00062\u0006\u0010/\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u00080\u00101J\u000f\u00102\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u00082\u00103J\u000f\u00104\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u00084\u00103J!\u00105\u001a\u00020\u000c2\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002\u00a2\u0006\u0004\u00085\u00106J\u0017\u00107\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u00087\u00108J!\u0010<\u001a\u0004\u0018\u00010;2\u0006\u00107\u001a\u0002092\u0006\u0010:\u001a\u000209H\u0002\u00a2\u0006\u0004\u0008<\u0010=J\u0017\u0010?\u001a\u00020\u00062\u0006\u0010>\u001a\u000209H\u0002\u00a2\u0006\u0004\u0008?\u0010@J\u000f\u0010A\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008A\u00103J\u000f\u0010C\u001a\u00020BH\u0002\u00a2\u0006\u0004\u0008C\u0010DJ\u000f\u0010F\u001a\u00020EH\u0002\u00a2\u0006\u0004\u0008F\u0010GJ\u0017\u0010:\u001a\u00020\u000c2\u0006\u0010H\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008:\u0010IJ\u0017\u0010J\u001a\u00020\u000c2\u0006\u0010\u001b\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008J\u0010IJ\'\u0010N\u001a\u00020\u000c2\u0006\u0010K\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010M\u001a\u00020LH\u0002\u00a2\u0006\u0004\u0008N\u0010OJ\u000f\u0010P\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008P\u00103J\u0017\u0010R\u001a\u0002092\u0006\u0010Q\u001a\u00020LH\u0002\u00a2\u0006\u0004\u0008R\u0010SJ\u001f\u0010U\u001a\u00020\u000c2\u0006\u0010(\u001a\u00020\u00062\u0006\u0010T\u001a\u000209H\u0002\u00a2\u0006\u0004\u0008U\u0010VJ\u0017\u0010W\u001a\u00020\u000c2\u0006\u0010(\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008W\u0010IJ\u001f\u0010Z\u001a\u00020\u000c2\u0006\u0010X\u001a\u00020\u00062\u0006\u0010Y\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008Z\u0010[J\'\u0010]\u001a\u00020\u000c2\u0006\u0010Q\u001a\u00020L2\u0006\u0010\\\u001a\u00020\u000f2\u0006\u0010Y\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008]\u0010^J\'\u0010a\u001a\u00020\u000c2\u0006\u0010Q\u001a\u00020L2\u0006\u0010_\u001a\u00020\u00062\u0006\u0010`\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008a\u0010bJ\u0017\u0010c\u001a\u00020\u000c2\u0006\u0010Q\u001a\u00020LH\u0002\u00a2\u0006\u0004\u0008c\u0010dJ\u0017\u0010e\u001a\u00020\u000c2\u0006\u0010(\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008e\u0010IJ\u001f\u0010h\u001a\u00020\u000c2\u0006\u0010f\u001a\u0002092\u0006\u0010g\u001a\u000209H\u0002\u00a2\u0006\u0004\u0008h\u0010iJ\u0017\u0010l\u001a\u00020k2\u0006\u0010j\u001a\u000209H\u0002\u00a2\u0006\u0004\u0008l\u0010mJ\u000f\u0010n\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008n\u00103J\u000f\u0010o\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008o\u00103J\u001f\u0010q\u001a\u00020\u000c2\u0006\u00107\u001a\u0002092\u0006\u0010p\u001a\u000209H\u0002\u00a2\u0006\u0004\u0008q\u0010iJ\u0017\u0010s\u001a\u0002092\u0006\u0010r\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008s\u0010tJ\u000f\u0010u\u001a\u000209H\u0002\u00a2\u0006\u0004\u0008u\u0010vJ\u0019\u0010x\u001a\u0004\u0018\u00010w2\u0006\u0010(\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008x\u0010yJ\u000f\u0010z\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008z\u00103J\u000f\u0010{\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008{\u00103J\u000f\u0010|\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008|\u00103R\u001d\u0010\u0081\u0001\u001a\u00020\u00018BX\u0082\u0084\u0002\u00a2\u0006\r\n\u0004\u0008}\u0010~\u001a\u0005\u0008\u007f\u0010\u0080\u0001R\u001f\u0010\u0085\u0001\u001a\u00020;8BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u0082\u0001\u0010~\u001a\u0006\u0008\u0083\u0001\u0010\u0084\u0001R \u0010\u008a\u0001\u001a\u00030\u0086\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u0087\u0001\u0010~\u001a\u0006\u0008\u0088\u0001\u0010\u0089\u0001R\u001b\u0010\u008d\u0001\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008b\u0001\u0010\u008c\u0001R\u001b\u0010\u0090\u0001\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008e\u0001\u0010\u008f\u0001R\u0017\u0010\u0091\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008P\u0010cR\u0017\u0010\u0092\u0001\u001a\u0002098\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008h\u0010{R\u0017\u0010\u0093\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008K\u0010cR\u0017\u0010\u0094\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008a\u0010cR\u0018\u0010\u0096\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0095\u0001\u0010cR\u0017\u0010\u0097\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00084\u0010cR\u0017\u0010\u0098\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008l\u0010cR\u0017\u0010\u0099\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008R\u0010cR\u0017\u0010\u009a\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008|\u0010cR\u0017\u0010\u009b\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008F\u0010cR\u0017\u0010\u009c\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008C\u0010cR\u0017\u0010\u009d\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008J\u0010cR)\u0010\u00a2\u0001\u001a\u0014\u0012\u0004\u0012\u00020!0\u009e\u0001j\t\u0012\u0004\u0012\u00020!`\u009f\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00a0\u0001\u0010\u00a1\u0001R\u0019\u0010\u00a5\u0001\u001a\u0005\u0018\u00010\u00a3\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008u\u0010\u00a4\u0001R\u0019\u0010\u00a8\u0001\u001a\u0005\u0018\u00010\u00a6\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008?\u0010\u00a7\u0001R\u0017\u0010\u00a9\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008<\u0010cR\u0018\u0010\u00ab\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008x\u0010\u00aa\u0001R\u0018\u0010\u00ac\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u00087\u0010\u00aa\u0001R\u0018\u0010\u00ad\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008:\u0010\u00aa\u0001R\u001b\u0010\u00b0\u0001\u001a\u0005\u0018\u00010\u00ae\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008s\u0010\u00af\u0001R\u001b\u0010\u00b1\u0001\u001a\u0005\u0018\u00010\u00ae\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u00085\u0010\u00af\u0001R\u0018\u0010\u00b5\u0001\u001a\u00030\u00b2\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00b3\u0001\u0010\u00b4\u0001R\u0018\u0010\u00b6\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008z\u0010\u00aa\u0001R\u001f\u0010\u00ba\u0001\u001a\u00030\u00b7\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000e\n\u0004\u0008A\u0010~\u001a\u0006\u0008\u00b8\u0001\u0010\u00b9\u0001R\u001f\u0010\u00be\u0001\u001a\u00030\u00bb\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000e\n\u0004\u0008n\u0010~\u001a\u0006\u0008\u00bc\u0001\u0010\u00bd\u0001R\u0018\u0010\u00bf\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008{\u0010\u00aa\u0001R\u0017\u0010\u00c0\u0001\u001a\u0002098\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008U\u0010{R\u0017\u0010\u00c1\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008N\u0010cR\u0017\u0010\u00c4\u0001\u001a\u00020\u00068BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00c2\u0001\u0010\u00c3\u0001\u00a8\u0006\u00c7\u0001"
    }
    d2 = {
        "Lcom/transsion/widgetslib/widget/OSSegmentedTab;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Lcom/transsion/widgetslib/widget/OSSegmentedTab$b;",
        "listener",
        "Lzfb;",
        "setOnTabSelectedListener",
        "(Lcom/transsion/widgetslib/widget/OSSegmentedTab$b;)V",
        "",
        "enabled",
        "setSwipeEnabled",
        "(Z)V",
        "isSwipeEnabled",
        "()Z",
        "Landroid/view/MotionEvent;",
        "event",
        "dispatchTouchEvent",
        "(Landroid/view/MotionEvent;)Z",
        "Landroidx/viewpager/widget/ViewPager;",
        "viewPager",
        "selectPosition",
        "setupWithViewPager",
        "(Landroidx/viewpager/widget/ViewPager;I)V",
        "Landroidx/viewpager2/widget/ViewPager2;",
        "viewPager2",
        "",
        "",
        "titleArray",
        "setupWithViewPager2",
        "(Landroidx/viewpager2/widget/ViewPager2;Ljava/util/List;I)V",
        "addTabs",
        "(Ljava/util/List;)V",
        "(Ljava/util/List;I)V",
        "position",
        "isClick",
        "isAnim",
        "isReset",
        "setSelectedPosition",
        "(ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onMeasure",
        "(II)V",
        "onDetachedFromWindow",
        "()V",
        "l",
        "A",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "x",
        "(Landroid/view/MotionEvent;)I",
        "",
        "y",
        "Landroid/view/View;",
        "v",
        "(FF)Landroid/view/View;",
        "indicatorX",
        "u",
        "(F)I",
        "D",
        "com/transsion/widgetslib/widget/OSSegmentedTab$createPageChangeListener$1",
        "q",
        "()Lcom/transsion/widgetslib/widget/OSSegmentedTab$createPageChangeListener$1;",
        "com/transsion/widgetslib/widget/OSSegmentedTab$createPageChangeCallback$1",
        "p",
        "()Lcom/transsion/widgetslib/widget/OSSegmentedTab$createPageChangeCallback$1;",
        "state",
        "(I)V",
        "r",
        "i",
        "Landroid/widget/TextView;",
        "tabView",
        "H",
        "(IILandroid/widget/TextView;)V",
        "g",
        "textView",
        "n",
        "(Landroid/widget/TextView;)F",
        "positionOffset",
        "G",
        "(IF)V",
        "Q",
        "selectedPosition",
        "useAnimation",
        "P",
        "(IZ)V",
        "isSelected",
        "N",
        "(Landroid/widget/TextView;ZZ)V",
        "fromColor",
        "toColor",
        "j",
        "(Landroid/widget/TextView;II)V",
        "I",
        "(Landroid/widget/TextView;)V",
        "M",
        "targetX",
        "targetWidth",
        "h",
        "(FF)V",
        "displacementDp",
        "",
        "m",
        "(F)J",
        "E",
        "J",
        "width",
        "L",
        "indicatorWidth",
        "z",
        "(I)F",
        "t",
        "()F",
        "",
        "w",
        "(I)Ljava/lang/CharSequence;",
        "C",
        "F",
        "o",
        "b",
        "Lyi5;",
        "getMCapsuleContainer",
        "()Landroid/widget/FrameLayout;",
        "mCapsuleContainer",
        "c",
        "getMIndicator",
        "()Landroid/view/View;",
        "mIndicator",
        "Landroid/widget/LinearLayout;",
        "d",
        "getMTabContainer",
        "()Landroid/widget/LinearLayout;",
        "mTabContainer",
        "e",
        "Landroidx/viewpager/widget/ViewPager;",
        "mViewPager",
        "f",
        "Landroidx/viewpager2/widget/ViewPager2;",
        "mViewPager2",
        "mSelectedPosition",
        "mIndicatorStartX",
        "mIndicatorWidth",
        "mAnimDuration",
        "k",
        "capsuleOutLineWidth",
        "mTextNormalColor",
        "mTextSelectedColor",
        "mTextSelectSize",
        "mTextUnSelectSize",
        "mSegmentTextPadding",
        "mBackgroundDrawableResId",
        "mIndicatorDrawableResId",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "s",
        "Ljava/util/ArrayList;",
        "mTitleArray",
        "Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;",
        "Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;",
        "mVpOnPageChangeListener",
        "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;",
        "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;",
        "mVpOnPageChangeCallback",
        "mTouchSlop",
        "Z",
        "mSwipeEnabled",
        "mIsViewPagerScrolling",
        "mIsClickTriggered",
        "Landroid/animation/ValueAnimator;",
        "Landroid/animation/ValueAnimator;",
        "mCurrentAnimator",
        "mCurrentTextAnimator",
        "Landroid/view/View$OnTouchListener;",
        "B",
        "Landroid/view/View$OnTouchListener;",
        "mBlockViewPagerTouchListener",
        "mIsMultiTouchInProgress",
        "Lp97;",
        "getStandardInterpolator",
        "()Lp97;",
        "standardInterpolator",
        "Lo97;",
        "getLinearInterpolator",
        "()Lo97;",
        "linearInterpolator",
        "isDragging",
        "dragStartX",
        "downPosition",
        "getAdapterCount",
        "()I",
        "adapterCount",
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
.field public static final Companion:Lcom/transsion/widgetslib/widget/OSSegmentedTab$a;

.field public static final I:I


# instance fields
.field public A:Landroid/animation/ValueAnimator;

.field public final B:Landroid/view/View$OnTouchListener;

.field public C:Z

.field public final D:Lyi5;

.field public final E:Lyi5;

.field public F:Z

.field public G:F

.field public H:I

.field public final b:Lyi5;

.field public final c:Lyi5;

.field public final d:Lyi5;

.field public e:Landroidx/viewpager/widget/ViewPager;

.field public f:Landroidx/viewpager2/widget/ViewPager2;

.field public g:I

.field public h:F

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public final s:Ljava/util/ArrayList;

.field public final t:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field public final u:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field public v:I

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/widgetslib/widget/OSSegmentedTab$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/widget/OSSegmentedTab$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->Companion:Lcom/transsion/widgetslib/widget/OSSegmentedTab$a;

    sget v0, Lcom/transsion/widgetslib/R$id;->os_segmented_tab_font_styleRunnable:I

    sput v0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->I:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p3, Lcom/transsion/widgetslib/widget/OSSegmentedTab$mCapsuleContainer$2;

    invoke-direct {p3, p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab$mCapsuleContainer$2;-><init>(Lcom/transsion/widgetslib/widget/OSSegmentedTab;)V

    invoke-static {p3}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->b:Lyi5;

    .line 6
    new-instance p3, Lcom/transsion/widgetslib/widget/OSSegmentedTab$mIndicator$2;

    invoke-direct {p3, p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab$mIndicator$2;-><init>(Lcom/transsion/widgetslib/widget/OSSegmentedTab;)V

    invoke-static {p3}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->c:Lyi5;

    .line 7
    new-instance p3, Lcom/transsion/widgetslib/widget/OSSegmentedTab$mTabContainer$2;

    invoke-direct {p3, p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab$mTabContainer$2;-><init>(Lcom/transsion/widgetslib/widget/OSSegmentedTab;)V

    invoke-static {p3}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->d:Lyi5;

    const/4 p3, -0x1

    .line 8
    iput p3, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->g:I

    const/16 v0, 0x190

    .line 9
    iput v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->j:I

    .line 10
    sget v0, Lcom/transsion/widgetslib/R$drawable;->os_segment_tab_bg:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->q:I

    .line 11
    sget v0, Lcom/transsion/widgetslib/R$drawable;->os_segment_tab_indicator:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->r:I

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->s:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->w:Z

    .line 14
    new-instance v0, Lab7;

    invoke-direct {v0, p0}, Lab7;-><init>(Lcom/transsion/widgetslib/widget/OSSegmentedTab;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->B:Landroid/view/View$OnTouchListener;

    .line 15
    sget-object v0, Lcom/transsion/widgetslib/widget/OSSegmentedTab$standardInterpolator$2;->INSTANCE:Lcom/transsion/widgetslib/widget/OSSegmentedTab$standardInterpolator$2;

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->D:Lyi5;

    .line 16
    sget-object v0, Lcom/transsion/widgetslib/widget/OSSegmentedTab$linearInterpolator$2;->INSTANCE:Lcom/transsion/widgetslib/widget/OSSegmentedTab$linearInterpolator$2;

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->E:Lyi5;

    .line 17
    iput p3, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->H:I

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->A(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    div-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->v:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final B(Lcom/transsion/widgetslib/widget/OSSegmentedTab;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->w:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static final K(Lcom/transsion/widgetslib/widget/OSSegmentedTab;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$tab"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getMIndicator()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-eq p0, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    :cond_0
    return-void
.end method

.method public static final O(Landroid/widget/TextView;IF)V
    .locals 1

    const-string v0, "$textView"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/widgetslib/widget/OSSegmentedTab;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->s(Lcom/transsion/widgetslib/widget/OSSegmentedTab;)V

    return-void
.end method

.method public static final synthetic access$getMIsClickTriggered$p(Lcom/transsion/widgetslib/widget/OSSegmentedTab;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->y:Z

    return p0
.end method

.method public static final synthetic access$handlePageScrollStateChanged(Lcom/transsion/widgetslib/widget/OSSegmentedTab;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->y(I)V

    return-void
.end method

.method public static final synthetic access$resetAnimationState(Lcom/transsion/widgetslib/widget/OSSegmentedTab;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->E()V

    return-void
.end method

.method public static final synthetic access$scroll(Lcom/transsion/widgetslib/widget/OSSegmentedTab;IF)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->G(IF)V

    return-void
.end method

.method public static synthetic addTabs$default(Lcom/transsion/widgetslib/widget/OSSegmentedTab;Ljava/util/List;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->addTabs(Ljava/util/List;I)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/widgetslib/widget/OSSegmentedTab;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->K(Lcom/transsion/widgetslib/widget/OSSegmentedTab;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Landroid/widget/TextView;IF)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->O(Landroid/widget/TextView;IF)V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/widgetslib/widget/OSSegmentedTab;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->B(Lcom/transsion/widgetslib/widget/OSSegmentedTab;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/transsion/widgetslib/widget/OSSegmentedTab;FLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->i(Lcom/transsion/widgetslib/widget/OSSegmentedTab;FLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic f(Landroid/widget/TextView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->k(Landroid/widget/TextView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final getAdapterCount()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->e:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->f:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->s:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method private final getLinearInterpolator()Lo97;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->E:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo97;

    return-object p0
.end method

.method private final getMCapsuleContainer()Landroid/widget/FrameLayout;
    .locals 1

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->b:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-mCapsuleContainer>(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private final getMIndicator()Landroid/view/View;
    .locals 1

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->c:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-mIndicator>(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method private final getMTabContainer()Landroid/widget/LinearLayout;
    .locals 1

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->d:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-mTabContainer>(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private final getStandardInterpolator()Lp97;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->D:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lp97;

    return-object p0
.end method

.method public static final i(Lcom/transsion/widgetslib/widget/OSSegmentedTab;FLandroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animation"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p2, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->L(FF)V

    return-void
.end method

.method public static final k(Landroid/widget/TextView;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "$textView"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public static final s(Lcom/transsion/widgetslib/widget/OSSegmentedTab;)V
    .locals 9

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->g()V

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getMTabContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getMTabContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->g:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->i:I

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getMIndicator()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->i:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getMIndicator()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getMIndicator()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v3, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->g:I

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->setSelectedPosition$default(Lcom/transsion/widgetslib/widget/OSSegmentedTab;ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic setSelectedPosition$default(Lcom/transsion/widgetslib/widget/OSSegmentedTab;ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->setSelectedPosition(ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic setupWithViewPager$default(Lcom/transsion/widgetslib/widget/OSSegmentedTab;Landroidx/viewpager/widget/ViewPager;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;I)V

    return-void
.end method

.method public static synthetic setupWithViewPager2$default(Lcom/transsion/widgetslib/widget/OSSegmentedTab;Landroidx/viewpager2/widget/ViewPager2;Ljava/util/List;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->setupWithViewPager2(Landroidx/viewpager2/widget/ViewPager2;Ljava/util/List;I)V

    return-void
.end method


# virtual methods
.method public final A(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-static {p1}, Lolb;->Z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/transsion/widgetslib/R$layout;->os_ultra_small_capsule_tab_layout:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/widgetslib/R$layout;->os_capsule_tab_layout:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    :goto_0
    invoke-static {p1}, Lolb;->g0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getMCapsuleContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_1
    sget-object v0, Lcom/transsion/widgetslib/R$styleable;->OSSegmentTab:[I

    const-string v1, "OSSegmentTab"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "obtainStyledAttributes(s\u2026efStyleAttr, defStyleRes)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSegmentTab_segmentTabBackground:I

    iget v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->q:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->q:I

    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSegmentTab_segmentTabIndicatorColor:I

    iget v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->r:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->r:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_segment_tab_text_select_size:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->n:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_segment_tab_text_unselect_size:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->o:I

    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSegmentTab_segmentTabSelectTextSize:I

    iget v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->n:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->n:I

    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSegmentTab_segmentTabUnSelectTextSize:I

    iget v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->o:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->o:I

    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSegmentTab_segmentTabTextSelectedColor:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$attr;->os_text_primary:I

    sget v2, Lcom/transsion/widgetslib/R$color;->os_text_primary_hios:I

    invoke-static {v0, v1, v2}, Lolb;->m(Landroid/content/Context;II)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->m:I

    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSegmentTab_segmentTabTextNormalColor:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$attr;->os_text_tertiary:I

    sget v2, Lcom/transsion/widgetslib/R$color;->os_text_tertiary_hios:I

    invoke-static {v0, v1, v2}, Lolb;->m(Landroid/content/Context;II)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->l:I

    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSegmentTab_segmentTabPadding:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->k:I

    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSegmentTab_segmentTabIndicatorAnimDuration:I

    iget v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->j:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->j:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_space050:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->p:I

    sget v0, Lcom/transsion/widgetslib/R$styleable;->OSSegmentTab_segmentTabTextPadding:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->p:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getMCapsuleContainer()Landroid/widget/FrameLayout;

    move-result-object p1

    iget p2, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->k:I

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/view/View;->setPadding(IIII)V

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getMCapsuleContainer()Landroid/widget/FrameLayout;

    move-result-object p1

    iget p2, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->q:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getMIndicator()Landroid/view/View;

    move-result-object p1

    iget p0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->r:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public final C()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->z:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iput-object v1, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->z:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->A:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    iput-object v1, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->A:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public final D()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->e:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->f:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    :goto_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->e:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->t:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->f:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->u:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    if-eqz p0, :cond_3

    invoke-virtual {v0, p0}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    :cond_3
    return-void
.end method

.method public final E()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->z:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->y:Z

    return-void
.end method

.method public final F()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getMTabContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->g:I

    if-ltz v1, :cond_0

    if-ge v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->C()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->o()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->H:I

    iget v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->g:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->P(IZ)V

    iget v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->g:I

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->M(I)V

    :cond_0
    return-void
.end method

.method public final G(IF)V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getMTabContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getMTabContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->k:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->h:F

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->i:I

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getMTabContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_3

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getMTabContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->k:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    iget v1, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->h:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p2

    add-float/2addr v1, v0

    iget v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->i:I

    int-to-float v2, v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    mul-float/2addr p1, p2

    add-float/2addr v2, p1

    invoke-virtual {p0, v1, v2}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->L(FF)V

    :cond_3
    return-void
.end method

.method public final H(IILandroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    sget p1, Lcom/transsion/widgetslib/R$style;->os_semibold_font:I

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget p1, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->n:I

    int-to-float p1, p1

    invoke-virtual {p3, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget p0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->m:I

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    sget p1, Lcom/transsion/widgetslib/R$style;->os_regular_fontweight:I

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget p1, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->o:I

    int-to-float p1, p1

    invoke-virtual {p3, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget p0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->l:I

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method public final I(Landroid/widget/TextView;)V
    .locals 2

    const/4 p0, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, v0}, Lgcc;->n(Landroid/widget/TextView;FILjava/lang/Object;)V

    return-void
.end method

.method public final J()V
    .locals 2

    iget v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->g:I

    if-ltz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getMTabContainer()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getMTabContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->g:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lya7;

    invoke-direct {v1, p0, v0}, Lya7;-><init>(Lcom/transsion/widgetslib/widget/OSSegmentedTab;Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final L(FF)V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getMIndicator()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    float-to-int p2, p2

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getMIndicator()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->z(I)F

    move-result p2

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getMIndicator()Landroid/view/View;

    move-result-object v0

    sub-float/2addr p1, p2

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getMIndicator()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final M(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->x:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->y:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->H:I

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getMTabContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->k:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    iget-boolean v1, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->y:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->h(FF)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->L(FF)V

    :goto_0
    return-void
.end method

.method public final N(Landroid/widget/TextView;ZZ)V
    .locals 6

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->m:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->l:I

    :goto_0
    if-eqz p2, :cond_1

    sget v1, Lcom/transsion/widgetslib/R$style;->os_semibold_font:I

    goto :goto_1

    :cond_1
    sget v1, Lcom/transsion/widgetslib/R$style;->os_regular_fontweight:I

    :goto_1
    if-eqz p2, :cond_2

    iget v2, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->n:I

    :goto_2
    int-to-float v2, v2

    goto :goto_3

    :cond_2
    iget v2, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->o:I

    goto :goto_2

    :goto_3
    sget v3, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->I:I

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/Runnable;

    if-eqz v5, :cond_3

    check-cast v4, Ljava/lang/Runnable;

    goto :goto_4

    :cond_3
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_4

    invoke-virtual {p1, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_4
    if-eqz p3, :cond_5

    new-instance v4, Lza7;

    invoke-direct {v4, p1, v1, v2}, Lza7;-><init>(Landroid/widget/TextView;IF)V

    invoke-virtual {p1, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v4, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5

    :cond_5
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_5
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    if-nez p2, :cond_6

    invoke-static {p1}, Lgcc;->r(Landroid/widget/TextView;)V

    :cond_6
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p2

    if-eq p2, v0, :cond_8

    if-eqz p3, :cond_7

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->j(Landroid/widget/TextView;II)V

    goto :goto_6

    :cond_7
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_8
    :goto_6
    return-void
.end method

.method public final P(IZ)V
    .locals 5

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getMTabContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getMTabContainer()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {v3, v4}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/TextView;

    if-ne v2, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-virtual {p0, v3, v4, p2}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->N(Landroid/widget/TextView;ZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final Q(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->e:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->f:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_1
    return-void
.end method

.method public final addTabs(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "titleArray"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->addTabs(Ljava/util/List;I)V

    return-void
.end method

.method public final addTabs(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "titleArray"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput p2, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->g:I

    .line 3
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->s:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5
    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->r(I)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const-string v0, "event"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->w:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    if-eq v0, v2, :cond_9

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    const/4 v3, 0x3

    if-eq v0, v3, :cond_9

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 p1, 0x6

    if-eq v0, p1, :cond_1

    return v2

    :cond_1
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->C:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->F()V

    :cond_2
    return v2

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-le p1, v2, :cond_4

    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->C:Z

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->F()V

    :cond_4
    return v2

    :cond_5
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->C:Z

    if-eqz v0, :cond_6

    return v2

    :cond_6
    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->H:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->G:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-boolean v3, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->F:Z

    if-nez v3, :cond_7

    iget v3, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->v:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_7

    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->F:Z

    :cond_7
    iget-boolean v1, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->F:Z

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->t()F

    move-result v1

    add-float/2addr v1, v0

    iget v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->k:I

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getMTabContainer()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->i:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->k:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v1, v0, v3}, Lwn8;->j(FFF)F

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->i:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->L(FF)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->G:F

    :cond_8
    return v2

    :cond_9
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->C:Z

    if-eqz v0, :cond_a

    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->C:Z

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->F()V

    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->F:Z

    return v2

    :cond_a
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->F:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->t()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->u(F)I

    move-result v4

    if-ltz v4, :cond_b

    iget p1, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->g:I

    if-eq v4, p1, :cond_b

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v8, 0xc

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v9}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->setSelectedPosition$default(Lcom/transsion/widgetslib/widget/OSSegmentedTab;ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Object;)V

    goto :goto_1

    :cond_b
    iget p1, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->g:I

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->M(I)V

    goto :goto_1

    :cond_c
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->x(Landroid/view/MotionEvent;)I

    move-result p1

    if-ltz p1, :cond_f

    iget v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->g:I

    if-eq p1, v0, :cond_d

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v8, 0xc

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move v4, p1

    invoke-static/range {v3 .. v9}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->setSelectedPosition$default(Lcom/transsion/widgetslib/widget/OSSegmentedTab;ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getMTabContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_e

    check-cast p1, Landroid/widget/TextView;

    goto :goto_0

    :cond_e
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_f

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->I(Landroid/widget/TextView;)V

    :cond_f
    :goto_1
    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->F:Z

    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->C:Z

    return v2

    :cond_10
    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->C:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->G:F

    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->F:Z

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->x(Landroid/view/MotionEvent;)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->H:I

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getMTabContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_11

    return v2

    :cond_11
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->k:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    if-ltz p1, :cond_12

    iget v1, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->g:I

    if-eq p1, v1, :cond_12

    iget p1, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->i:I

    int-to-float p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->h(FF)V

    :cond_12
    return v2
.end method

.method public final g()V
    .locals 7

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getMTabContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v0, :cond_2

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getMTabContainer()Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    move-object v4, v5

    check-cast v4, Landroid/widget/TextView;

    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {p0, v4}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->n(Landroid/widget/TextView;)F

    move-result v4

    cmpg-float v5, v4, v1

    if-gez v5, :cond_1

    move v1, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    float-to-int v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->n:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->o:I

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getMTabContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_5

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getMTabContainer()Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Landroid/widget/TextView;

    if-eqz v6, :cond_3

    check-cast v5, Landroid/widget/TextView;

    goto :goto_2

    :cond_3
    move-object v5, v4

    :goto_2
    if-eqz v5, :cond_4

    invoke-virtual {v5, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final h(FF)V
    .locals 6

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->z:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->z:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->t()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sub-float v3, p1, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v2, v3}, Lolb;->D0(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->m(F)J

    move-result-wide v2

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v1, v4, v5

    aput p1, v4, v0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getStandardInterpolator()Lp97;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcb7;

    invoke-direct {v0, p0, p2}, Lcb7;-><init>(Lcom/transsion/widgetslib/widget/OSSegmentedTab;F)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p2, Lcom/transsion/widgetslib/widget/OSSegmentedTab$c;

    invoke-direct {p2, p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab$c;-><init>(Lcom/transsion/widgetslib/widget/OSSegmentedTab;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->z:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public final isSwipeEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->w:Z

    return p0
.end method

.method public final j(Landroid/widget/TextView;II)V
    .locals 2

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v0, 0x64

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getLinearInterpolator()Lo97;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance p3, Ldb7;

    invoke-direct {p3, p1}, Ldb7;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->A:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->e:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->w:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->B:Landroid/view/View$OnTouchListener;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->f:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->w:Z

    invoke-virtual {v0, p0}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    :goto_1
    return-void
.end method

.method public final m(F)J
    .locals 2

    const/high16 p0, 0x42c80000    # 100.0f

    const/high16 v0, 0x44480000    # 800.0f

    invoke-static {p1, p0, v0}, Lwn8;->j(FFF)F

    move-result p1

    sub-float/2addr p1, p0

    const/high16 p0, 0x442f0000    # 700.0f

    div-float/2addr p1, p0

    const-wide/16 v0, 0x64

    long-to-float p0, v0

    mul-float/2addr p1, p0

    float-to-long p0, p1

    const-wide/16 v0, 0xfa

    add-long/2addr p0, v0

    return-wide p0
.end method

.method public final n(Landroid/widget/TextView;)F
    .locals 10

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lolb;->g0(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_segment_tab_text_width_tablet:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    :cond_1
    if-gtz v1, :cond_2

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/4 v4, 0x1

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v4, v5, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    const/high16 v6, 0x41700000    # 15.0f

    invoke-static {v4, v6, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v4, v6, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    int-to-float v1, v1

    cmpg-float v4, v4, v1

    if-gtz v4, :cond_3

    add-float v4, p1, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    move v6, p1

    :goto_0
    cmpg-float v7, v4, v5

    if-gtz v7, :cond_5

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    cmpg-float v7, v7, v1

    if-gtz v7, :cond_5

    add-float v6, v4, p0

    move v9, v6

    move v6, v4

    move v4, v9

    goto :goto_0

    :cond_3
    move p0, p1

    move v4, v3

    :goto_1
    move v6, v4

    :goto_2
    sub-float v7, p0, v4

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_5

    add-float v7, v4, p0

    const/4 v8, 0x2

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    cmpg-float v8, v8, v1

    if-gtz v8, :cond_4

    move v4, v7

    goto :goto_1

    :cond_4
    move p0, v7

    goto :goto_2

    :cond_5
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    cmpl-float p0, p0, v1

    if-lez p0, :cond_6

    move v6, v3

    :cond_6
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-static {v6, v3, v5}, Lwn8;->j(FFF)F

    move-result p0

    return p0
.end method

.method public final o()V
    .locals 5

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getMTabContainer()Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lpc9;

    move-result-object p0

    invoke-interface {p0}, Lpc9;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    instance-of v1, v0, Landroid/widget/TextView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_1

    :cond_0
    move-object v0, v2

    :goto_1
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget v1, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->I:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/Runnable;

    if-eqz v4, :cond_2

    check-cast v3, Ljava/lang/Runnable;

    goto :goto_2

    :cond_2
    move-object v3, v2

    :goto_2
    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->o()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->C()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->J()V

    return-void
.end method

.method public final p()Lcom/transsion/widgetslib/widget/OSSegmentedTab$createPageChangeCallback$1;
    .locals 1

    new-instance v0, Lcom/transsion/widgetslib/widget/OSSegmentedTab$createPageChangeCallback$1;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab$createPageChangeCallback$1;-><init>(Lcom/transsion/widgetslib/widget/OSSegmentedTab;)V

    return-object v0
.end method

.method public final q()Lcom/transsion/widgetslib/widget/OSSegmentedTab$createPageChangeListener$1;
    .locals 1

    new-instance v0, Lcom/transsion/widgetslib/widget/OSSegmentedTab$createPageChangeListener$1;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab$createPageChangeListener$1;-><init>(Lcom/transsion/widgetslib/widget/OSSegmentedTab;)V

    return-object v0
.end method

.method public final r(I)V
    .locals 7

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->o()V

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getMTabContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getAdapterCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {p0, v2}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->w(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2, p1, v4}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->H(IILandroid/widget/TextView;)V

    iget v5, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->p:I

    invoke-virtual {v4, v5, v1, v5, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v3, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lolb;->g0(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/transsion/widgetslib/R$dimen;->os_segment_tab_text_width_tablet:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v3, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    :cond_0
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :goto_1
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getMTabContainer()Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getMTabContainer()Landroid/widget/LinearLayout;

    move-result-object p1

    sub-int/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lbb7;

    invoke-direct {v0, p0}, Lbb7;-><init>(Lcom/transsion/widgetslib/widget/OSSegmentedTab;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public final setOnTabSelectedListener(Lcom/transsion/widgetslib/widget/OSSegmentedTab$b;)V
    .locals 0

    return-void
.end method

.method public final setSelectedPosition(ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 1

    iget v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->g:I

    if-ne v0, p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p4, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_0

    return-void

    :cond_0
    iget p4, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->H:I

    if-eq p1, p4, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->C()V

    :cond_1
    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2, p4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->y:Z

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->Q(I)V

    :cond_2
    invoke-static {p3, p4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->P(IZ)V

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->M(I)V

    iput p1, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->g:I

    return-void
.end method

.method public final setSwipeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->w:Z

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->l()V

    return-void
.end method

.method public final setupWithViewPager(Landroidx/viewpager/widget/ViewPager;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->D()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->e:Landroidx/viewpager/widget/ViewPager;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->f:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->l()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->q()Lcom/transsion/widgetslib/widget/OSSegmentedTab$createPageChangeListener$1;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->r(I)V

    :cond_0
    return-void
.end method

.method public final setupWithViewPager2(Landroidx/viewpager2/widget/ViewPager2;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/viewpager2/widget/ViewPager2;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "titleArray"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->D()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->f:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->l()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->p()Lcom/transsion/widgetslib/widget/OSSegmentedTab$createPageChangeCallback$1;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->s:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->s:Ljava/util/ArrayList;

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, p3}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->r(I)V

    :cond_0
    return-void
.end method

.method public final t()F
    .locals 1

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getMIndicator()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->z(I)F

    move-result v0

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getMIndicator()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result p0

    add-float/2addr v0, p0

    return v0
.end method

.method public final u(F)I
    .locals 7

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getMTabContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->g:I

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getMTabContainer()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getMTabContainer()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    add-float/2addr v5, v4

    iget v4, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->i:I

    int-to-float v4, v4

    div-float/2addr v4, v6

    add-float/2addr v4, p1

    sub-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v5, v4, v2

    if-gez v5, :cond_2

    move v0, v3

    move v2, v4

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public final v(FF)Landroid/view/View;
    .locals 7

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getMTabContainer()Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 v0, 0x0

    if-gtz p2, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    move p2, v2

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    iget v3, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->k:I

    if-eqz p2, :cond_2

    neg-int v3, v3

    :cond_2
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getMTabContainer()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getMTabContainer()Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getMTabContainer()Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz p2, :cond_3

    int-to-float v5, v3

    sub-float v5, p1, v5

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    goto :goto_1

    :cond_3
    int-to-float v5, v3

    sub-float v5, p1, v5

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_4

    :goto_1
    return-object v4

    :cond_4
    if-eqz p2, :cond_5

    int-to-float v3, v3

    sub-float v3, p1, v3

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    goto :goto_2

    :cond_5
    int-to-float v3, v3

    sub-float v3, p1, v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_6

    :goto_2
    return-object v2

    :cond_6
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getMTabContainer()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_b

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getMTabContainer()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz p2, :cond_7

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v4

    goto :goto_4

    :cond_7
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    :goto_4
    if-eqz p2, :cond_8

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    goto :goto_5

    :cond_8
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    :goto_5
    if-eqz p2, :cond_9

    int-to-float v4, v4

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_a

    int-to-float v4, v5

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_a

    return-object v3

    :cond_9
    int-to-float v4, v4

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_a

    int-to-float v4, v5

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_a

    return-object v3

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_b
    return-object v0
.end method

.method public final w(I)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->e:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p0

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->f:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_1

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->s:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0

    :cond_1
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getAdapterCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_2

    const-string p0, ""

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->s:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final x(Landroid/view/MotionEvent;)I
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->v(FF)Landroid/view/View;

    move-result-object p1

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getMTabContainer()Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lpc9;

    move-result-object p0

    invoke-interface {p0}, Lpc9;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-gez v1, :cond_0

    invoke-static {}, Ly71;->u()V

    :cond_0
    check-cast v2, Landroid/view/View;

    invoke-static {v2, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public final y(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->x:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->y:Z

    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->x:Z

    return-void
.end method

.method public final z(I)F
    .locals 3

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->getMCapsuleContainer()Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    int-to-float p0, p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    sub-int/2addr v0, p0

    sub-int/2addr v0, p1

    int-to-float p0, v0

    :goto_0
    return p0
.end method
