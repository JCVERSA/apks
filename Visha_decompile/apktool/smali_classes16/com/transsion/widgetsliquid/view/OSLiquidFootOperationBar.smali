.class public Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;
.super Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$a;,
        Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$LiquidSearchBarSavedState;,
        Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$b;,
        Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u001a\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0007\n\u0002\u0008,\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0016\u0018\u0000 \u00c2\u00012\u00020\u0001:\u0008\u00c3\u0001\u00c4\u0001\u00c5\u0001\u00c6\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ)\u0010\u000f\u001a\u00020\u000e2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00060\n2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\n\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001f\u0010\u0013\u001a\u00020\u000e2\u0008\u0008\u0001\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J!\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u00062\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J!\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u00062\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u0019J\u0019\u0010\u001d\u001a\u00020\u000e2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0017\u0010!\u001a\u00020\u00162\u0006\u0010 \u001a\u00020\u001fH\u0016\u00a2\u0006\u0004\u0008!\u0010\"J\u0015\u0010%\u001a\u00020\u000e2\u0006\u0010$\u001a\u00020#\u00a2\u0006\u0004\u0008%\u0010&J\u0015\u0010(\u001a\u00020\u000e2\u0006\u0010\'\u001a\u00020\u0016\u00a2\u0006\u0004\u0008(\u0010)J\r\u0010*\u001a\u00020\u0006\u00a2\u0006\u0004\u0008*\u0010+J\u0017\u0010-\u001a\u0004\u0018\u00010,2\u0006\u0010\u0015\u001a\u00020\u0006\u00a2\u0006\u0004\u0008-\u0010.J\r\u0010/\u001a\u00020\u0006\u00a2\u0006\u0004\u0008/\u0010+J\u001d\u00101\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u00100\u001a\u00020\u0016\u00a2\u0006\u0004\u00081\u00102J\'\u00103\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u000c\u00a2\u0006\u0004\u00083\u00104J\u0015\u00105\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u0006\u00a2\u0006\u0004\u00085\u00106J\u0017\u00109\u001a\u00020\u000e2\u0006\u00108\u001a\u000207H\u0014\u00a2\u0006\u0004\u00089\u0010:J\u000f\u0010;\u001a\u00020\u000eH\u0014\u00a2\u0006\u0004\u0008;\u0010<J\u0017\u0010>\u001a\u00020\u000e2\u0006\u0010=\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008>\u0010)J5\u0010C\u001a\u00020\u000e2\u0008\u0008\u0002\u0010?\u001a\u00020\u00162\u0008\u0008\u0002\u0010@\u001a\u00020\u00062\u0008\u0008\u0002\u0010A\u001a\u00020\u00162\u0008\u0008\u0002\u0010B\u001a\u00020\u0006\u00a2\u0006\u0004\u0008C\u0010DJ3\u0010H\u001a\u00020\u000e2\u0008\u0008\u0002\u0010?\u001a\u00020\u00162\u0008\u0008\u0002\u0010E\u001a\u00020\u00162\u0008\u0008\u0002\u0010F\u001a\u00020\u00162\u0006\u0010G\u001a\u00020\u0006\u00a2\u0006\u0004\u0008H\u0010IJ\r\u0010J\u001a\u00020\u0006\u00a2\u0006\u0004\u0008J\u0010+J\r\u0010K\u001a\u00020\u0016\u00a2\u0006\u0004\u0008K\u0010LJ\r\u0010M\u001a\u00020\u0006\u00a2\u0006\u0004\u0008M\u0010+J\u0015\u0010O\u001a\u00020\u000e2\u0006\u0010N\u001a\u00020\u0006\u00a2\u0006\u0004\u0008O\u00106J\u0015\u0010Q\u001a\u00020\u000e2\u0006\u0010P\u001a\u00020\u0006\u00a2\u0006\u0004\u0008Q\u00106J\u0011\u0010S\u001a\u0004\u0018\u00010RH\u0014\u00a2\u0006\u0004\u0008S\u0010TJ\u0019\u0010V\u001a\u00020\u000e2\u0008\u0010U\u001a\u0004\u0018\u00010RH\u0014\u00a2\u0006\u0004\u0008V\u0010WJ\u000f\u0010X\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008X\u0010+J\'\u0010Z\u001a\u00020Y2\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008Z\u0010[J\u000f\u0010\\\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\\\u0010<J\u0017\u0010]\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008]\u00106J\u001f\u0010`\u001a\u00020\u000e2\u0006\u0010^\u001a\u00020,2\u0006\u0010_\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008`\u0010aJ\u0017\u0010c\u001a\u00020\u00162\u0006\u0010b\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008c\u0010dJ\u0017\u0010e\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u001fH\u0002\u00a2\u0006\u0004\u0008e\u0010fJ\u0017\u0010h\u001a\u00020g2\u0006\u0010 \u001a\u00020\u001fH\u0002\u00a2\u0006\u0004\u0008h\u0010iJ!\u0010l\u001a\u0004\u0018\u00010Y2\u0006\u0010j\u001a\u00020g2\u0006\u0010k\u001a\u00020gH\u0002\u00a2\u0006\u0004\u0008l\u0010mJ\u0017\u0010o\u001a\u00020\u000e2\u0006\u0010n\u001a\u00020YH\u0002\u00a2\u0006\u0004\u0008o\u0010pJ\u0017\u0010q\u001a\u00020\u000e2\u0006\u0010n\u001a\u00020YH\u0002\u00a2\u0006\u0004\u0008q\u0010pJ\u000f\u0010r\u001a\u00020gH\u0002\u00a2\u0006\u0004\u0008r\u0010sJ\u000f\u0010t\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008t\u0010<J!\u0010v\u001a\u00020\u000e2\u0008\u0008\u0002\u0010A\u001a\u00020\u00162\u0006\u0010u\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008v\u0010wJ\'\u0010y\u001a\u00020\u000e2\u0006\u0010@\u001a\u00020\u00062\u0006\u0010u\u001a\u00020\u00062\u0006\u0010x\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008y\u0010zJ\u0019\u0010{\u001a\u00020\u000e2\u0008\u0008\u0002\u0010A\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008{\u0010)J)\u0010~\u001a\u00020\u000e2\u0006\u0010|\u001a\u00020\u00062\u0006\u0010}\u001a\u00020\u00162\u0008\u0008\u0002\u0010A\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008~\u0010\u007fJ>\u0010\u0084\u0001\u001a\u00020\u000e2\u0007\u0010\u0080\u0001\u001a\u00020g2\u0006\u0010}\u001a\u00020\u00162\u0007\u0010\u0081\u0001\u001a\u00020g2\u0007\u0010\u0082\u0001\u001a\u00020Y2\u0007\u0010\u0083\u0001\u001a\u00020\u0006H\u0002\u00a2\u0006\u0006\u0008\u0084\u0001\u0010\u0085\u0001J\u0011\u0010\u0086\u0001\u001a\u00020\u0006H\u0002\u00a2\u0006\u0005\u0008\u0086\u0001\u0010+J>\u0010\u0087\u0001\u001a\u00020\u000e2\u0007\u0010\u0080\u0001\u001a\u00020g2\u0006\u0010}\u001a\u00020\u00162\u0007\u0010\u0081\u0001\u001a\u00020g2\u0007\u0010\u0082\u0001\u001a\u00020Y2\u0007\u0010\u0083\u0001\u001a\u00020\u0006H\u0002\u00a2\u0006\u0006\u0008\u0087\u0001\u0010\u0085\u0001J5\u0010\u0088\u0001\u001a\u00020\u000e2\u0006\u0010}\u001a\u00020\u00162\u0007\u0010\u0081\u0001\u001a\u00020g2\u0007\u0010\u0083\u0001\u001a\u00020\u00062\u0007\u0010\u0082\u0001\u001a\u00020YH\u0002\u00a2\u0006\u0006\u0008\u0088\u0001\u0010\u0089\u0001J5\u0010\u008c\u0001\u001a\u00020\u000e2\u0006\u0010}\u001a\u00020\u00162\u0007\u0010\u008a\u0001\u001a\u00020\u00062\u0007\u0010\u0081\u0001\u001a\u00020g2\u0007\u0010\u008b\u0001\u001a\u00020\u0006H\u0002\u00a2\u0006\u0006\u0008\u008c\u0001\u0010\u008d\u0001J\u0019\u0010\u008e\u0001\u001a\u00020\u000e2\u0006\u0010}\u001a\u00020\u0016H\u0002\u00a2\u0006\u0005\u0008\u008e\u0001\u0010)J\u0011\u0010\u008f\u0001\u001a\u00020\u0006H\u0002\u00a2\u0006\u0005\u0008\u008f\u0001\u0010+J\u0011\u0010\u0090\u0001\u001a\u00020gH\u0002\u00a2\u0006\u0005\u0008\u0090\u0001\u0010sJ\u001b\u0010\u0092\u0001\u001a\u00020\u00062\u0007\u0010\u0091\u0001\u001a\u00020\u0006H\u0002\u00a2\u0006\u0006\u0008\u0092\u0001\u0010\u0093\u0001R\u0017\u0010\u0096\u0001\u001a\u00030\u0094\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008l\u0010\u0095\u0001R\u001d\u0010\u0099\u0001\u001a\t\u0012\u0004\u0012\u00020,0\u0097\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008e\u0010\u0098\u0001R\u0016\u0010x\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008h\u0010{R\u0018\u0010\u009a\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0092\u0001\u0010{R\u0019\u0010\u009b\u0001\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0088\u0001\u0010\u008e\u0001R\u0018\u0010\u009c\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u008c\u0001\u0010{R\u0018\u0010\u009e\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u009d\u0001\u0010{R\u0018\u0010\u00a2\u0001\u001a\u00030\u009f\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00a0\u0001\u0010\u00a1\u0001R\u0017\u0010\u00a3\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008c\u0010{R\u0018\u0010\u00a5\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00a4\u0001\u0010{R\u0017\u0010\u00a6\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008o\u0010{R\u0017\u0010\u00a7\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008q\u0010{R\u0017\u0010\u00a8\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008y\u0010{R\u0017\u0010u\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0087\u0001\u0010{R\u001c\u0010\u00ab\u0001\u001a\u0005\u0018\u00010\u00a9\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0084\u0001\u0010\u00aa\u0001R\u0019\u0010\u00ad\u0001\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ac\u0001\u0010\u008e\u0001R\u0017\u0010\u00ae\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008`\u0010{R\u0017\u0010\u00af\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008]\u0010{R\u0017\u0010\u00b0\u0001\u001a\u00020g8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008t\u0010~R\u001f\u0010\u00b1\u0001\u001a\t\u0012\u0004\u0012\u00020g0\u0097\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\\\u0010\u0098\u0001R \u0010\u00b3\u0001\u001a\t\u0012\u0004\u0012\u00020g0\u0097\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b2\u0001\u0010\u0098\u0001R\u0019\u0010\u00b5\u0001\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b4\u0001\u0010\u008e\u0001R\u0018\u0010\u00b7\u0001\u001a\u00020g8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00b6\u0001\u0010~R\u0018\u0010\u00b9\u0001\u001a\u00020g8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00b8\u0001\u0010~R\u0019\u0010\u00bb\u0001\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ba\u0001\u0010\u008e\u0001R!\u0010\u00c1\u0001\u001a\u00030\u00bc\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00bd\u0001\u0010\u00be\u0001\u001a\u0006\u0008\u00bf\u0001\u0010\u00c0\u0001\u00a8\u0006\u00c7\u0001"
    }
    d2 = {
        "Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;",
        "Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "iconArr",
        "",
        "titleArr",
        "Lzfb;",
        "addAllTabs",
        "([Ljava/lang/Integer;[Ljava/lang/String;)V",
        "iconRes",
        "title",
        "addTab",
        "(ILjava/lang/String;)V",
        "position",
        "",
        "animatable",
        "selectTab",
        "(ILjava/lang/Boolean;)V",
        "selectTabWithoutNotify",
        "Landroid/view/ViewGroup$LayoutParams;",
        "params",
        "setLayoutParams",
        "(Landroid/view/ViewGroup$LayoutParams;)V",
        "Landroid/view/MotionEvent;",
        "event",
        "dispatchTouchEvent",
        "(Landroid/view/MotionEvent;)Z",
        "Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$b;",
        "listener",
        "setOnTabSelectedListener",
        "(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$b;)V",
        "enabled",
        "setSwipeEnabled",
        "(Z)V",
        "getSelectedPosition",
        "()I",
        "Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;",
        "getTabItem",
        "(I)Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;",
        "getTabCount",
        "show",
        "setTabShowBadge",
        "(IZ)V",
        "updateTab",
        "(IILjava/lang/String;)V",
        "removeTab",
        "(I)V",
        "Landroid/content/res/Configuration;",
        "newConfig",
        "onConfigurationChanged",
        "(Landroid/content/res/Configuration;)V",
        "onDetachedFromWindow",
        "()V",
        "isVisible",
        "onVisibilityAggregated",
        "animated",
        "fromState",
        "isIconMode",
        "toSearchMode",
        "enterSearchMode",
        "(ZIZI)V",
        "forceState",
        "iconMode",
        "toState",
        "exitSearchMode",
        "(ZZZI)V",
        "getCurrentSearchMode",
        "isInSearchMode",
        "()Z",
        "getSelectPosition",
        "selectColor",
        "setSelectColor",
        "unSelectColor",
        "setUnSelectColor",
        "Landroid/os/Parcelable;",
        "onSaveInstanceState",
        "()Landroid/os/Parcelable;",
        "state",
        "onRestoreInstanceState",
        "(Landroid/os/Parcelable;)V",
        "getTabTextHeight",
        "Landroid/view/View;",
        "K",
        "(ILjava/lang/String;I)Landroid/view/View;",
        "j0",
        "h0",
        "tabView",
        "isSelected",
        "g0",
        "(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;Z)V",
        "eventPosition",
        "V",
        "(I)Z",
        "O",
        "(Landroid/view/MotionEvent;)I",
        "",
        "P",
        "(Landroid/view/MotionEvent;)F",
        "x",
        "y",
        "N",
        "(FF)Landroid/view/View;",
        "hostView",
        "a0",
        "(Landroid/view/View;)V",
        "b0",
        "getSavedSelectedPosition",
        "()F",
        "i0",
        "mWhichSearchMode",
        "J",
        "(ZI)V",
        "selectedPosition",
        "c0",
        "(III)V",
        "I",
        "targetWidth",
        "enterSearch",
        "F",
        "(IZZ)V",
        "value",
        "progress",
        "selectedChild",
        "diff",
        "e0",
        "(FZFLandroid/view/View;I)V",
        "getOutIconSize",
        "d0",
        "R",
        "(ZFILandroid/view/View;)V",
        "iconHeight",
        "iconModeHeight",
        "S",
        "(ZIFI)V",
        "Z",
        "getInitHeight",
        "getCurrentIndicatorX",
        "width",
        "Q",
        "(I)I",
        "Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;",
        "Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;",
        "tabContainer",
        "",
        "Ljava/util/List;",
        "tabItems",
        "touchSlop",
        "swipeEnabled",
        "mSelectColor",
        "T",
        "mUnSelectColor",
        "Lu97;",
        "U",
        "Lu97;",
        "liquidPressHelper",
        "mSelectedBackgroundColor",
        "W",
        "mSelectedBackgroundColorA",
        "mSelectedBackgroundColorRGB",
        "mItemSpace",
        "mHorizontalSpace",
        "Ljv9;",
        "Ljv9;",
        "searchModeAnimator",
        "f0",
        "isSearchModeTransitioning",
        "originalWidth",
        "singleItemWidth",
        "tabTextHeight",
        "savedItemPositions",
        "k0",
        "savedItemPositionsP",
        "l0",
        "isDragging",
        "m0",
        "dragStartX",
        "n0",
        "initialIndicatorX",
        "o0",
        "downOnCurrentItem",
        "Lo97;",
        "p0",
        "Lyi5;",
        "getLinearInterpolator",
        "()Lo97;",
        "linearInterpolator",
        "Companion",
        "a",
        "LiquidSearchBarSavedState",
        "b",
        "c",
        "widgetsliquid_release"
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
.field public static final Companion:Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$a;


# instance fields
.field public final N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

.field public final O:Ljava/util/List;

.field public P:I

.field public Q:I

.field public R:Z

.field public S:I

.field public T:I

.field public final U:Lu97;

.field public V:I

.field public W:I

.field public a0:I

.field public b0:I

.field public c0:I

.field public d0:I

.field public e0:Ljv9;

.field public f0:Z

.field public g0:I

.field public h0:I

.field public i0:F

.field public j0:Ljava/util/List;

.field public k0:Ljava/util/List;

.field public l0:Z

.field public m0:F

.field public n0:F

.field public o0:Z

.field public final p0:Lyi5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->Companion:Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$a;

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

    invoke-direct/range {v1 .. v6}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    const/4 p3, 0x1

    .line 6
    iput-boolean p3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->R:Z

    .line 7
    new-instance p3, Lu97;

    invoke-direct {p3}, Lu97;-><init>()V

    iput-object p3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->U:Lu97;

    const/4 p3, -0x1

    .line 8
    iput p3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->d0:I

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->j0:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->k0:Ljava/util/List;

    .line 11
    sget-object v0, Lcom/transsion/widgetsliquid/R$styleable;->OSLiquidFootOperationBar:[I

    const-string v1, "OSLiquidFootOperationBar"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 12
    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const-string v2, "obtainStyledAttributes(s\u2026efStyleAttr, defStyleRes)"

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget v3, Lcom/transsion/widgetsliquid/R$styleable;->OSLiquidFootOperationBar_os_liquid_fob_select_color:I

    .line 14
    invoke-static {p1}, Lolb;->z(Landroid/content/Context;)I

    move-result v4

    .line 15
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->S:I

    .line 16
    sget v3, Lcom/transsion/widgetsliquid/R$styleable;->OSLiquidFootOperationBar_os_liquid_fob_un_select_color:I

    .line 17
    sget v4, Lcom/transsion/widgetsliquid/R$attr;->os_liq_opt_unselect_color_attr:I

    sget v5, Lcom/transsion/widgetsliquid/R$color;->os_opt_icon_primary_color:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-static {v4, v5, p1}, Lolb;->l(IILandroid/content/Context;)I

    move-result v4

    .line 18
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->T:I

    .line 19
    sget v3, Lcom/transsion/widgetsliquid/R$styleable;->OSLiquidFootOperationBar_os_liquid_fob_indicator_color:I

    .line 20
    sget v4, Lcom/transsion/widgetsliquid/R$attr;->os_opacityfill_weaker:I

    sget v5, Lcom/transsion/widgetsliquid/R$color;->os_opacityfill_weaker_hios:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-static {v4, v5, p1}, Lolb;->l(IILandroid/content/Context;)I

    move-result v4

    .line 21
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->V:I

    .line 22
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->W:I

    .line 23
    iget v3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->V:I

    const v4, 0xffffff

    and-int/2addr v3, v4

    iput v3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->a0:I

    .line 24
    sget v3, Lcom/transsion/widgetsliquid/R$styleable;->OSLiquidFootOperationBar_os_liquid_fob_item_space:I

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/widgetsliquid/R$dimen;->os_space100:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 26
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->b0:I

    .line 27
    sget v3, Lcom/transsion/widgetsliquid/R$styleable;->OSLiquidFootOperationBar_os_liquid_fob_horizontal_space:I

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/widgetsliquid/R$dimen;->os_space050:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 29
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->c0:I

    .line 30
    sget v3, Lcom/transsion/widgetsliquid/R$styleable;->OSLiquidFootOperationBar_os_liquid_fob_horizontal_default_select_position:I

    .line 31
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->P:I

    .line 32
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 33
    sget-object v0, Lcom/transsion/widgetslib/R$styleable;->OSLiquidContainer:[I

    const-string v3, "OSLiquidContainer"

    invoke-static {v0, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-static {p2, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget v0, Lcom/transsion/widgetsliquid/R$styleable;->OSLiquidContainer_os_liquid_mixlevel:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_0

    const/4 v0, 0x2

    .line 37
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setMixLevel(I)V

    .line 38
    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 39
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->Q:I

    .line 40
    new-instance p2, Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 41
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 p1, 0x11

    .line 42
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 43
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 44
    iget p3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->c0:I

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 45
    iget p3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->c0:I

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 46
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    iget p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->V:I

    invoke-virtual {p2, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;->setSelectedBackgroundColor(I)V

    .line 48
    iget p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->S:I

    invoke-virtual {p2, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;->setSelectColor(I)V

    .line 49
    iput-object p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    .line 50
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 51
    sget-object p1, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->FOOT_OPERATION_BAR:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setElasticTypeConfig(Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;)V

    .line 52
    sget-object p1, Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;->FOOT_OPERATION_BAR_AUTO:Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setLightTypeConfig(Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;)V

    const p1, 0x3f828f5c    # 1.02f

    .line 53
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setScaleRatio(F)V

    .line 54
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->detachPressAnim()V

    .line 55
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 56
    sget-object p1, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$linearInterpolator$2;->INSTANCE:Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$linearInterpolator$2;

    invoke-static {p1}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->p0:Lyi5;

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
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic A(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->L(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;Z)V

    return-void
.end method

.method public static synthetic B(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;ILjava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->Y(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;ILjava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic C(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->D(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;)V

    return-void
.end method

.method public static final D(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;->setSelectedPosition(ILjava/lang/Boolean;)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->getSavedSelectedPosition()F

    move-result p0

    invoke-virtual {v0, p0, v1}, Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;->updateBackgroundPosition(FLjava/lang/Boolean;)V

    return-void
.end method

.method public static final E(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;->setSelectedPosition(ILjava/lang/Boolean;)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->getSavedSelectedPosition()F

    move-result p0

    invoke-virtual {v0, p0, v1}, Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;->updateBackgroundPosition(FLjava/lang/Boolean;)V

    return-void
.end method

.method public static final G(IIZLcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;ZLandroid/view/View;Lf43;FF)V
    .locals 6

    const-string p6, "this$0"

    invoke-static {p3, p6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "$selectedChild"

    invoke-static {p5, p6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sub-int v5, p0, p1

    if-nez v5, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    move v3, p0

    goto :goto_1

    :cond_0
    int-to-float p0, p0

    sub-float/2addr p0, p7

    int-to-float p1, v5

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    goto :goto_0

    :goto_1
    if-eqz p2, :cond_1

    move-object v0, p3

    move v1, p7

    move v2, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->d0(FZFLandroid/view/View;I)V

    goto :goto_2

    :cond_1
    move-object v0, p3

    move v1, p7

    move v2, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->e0(FZFLandroid/view/View;I)V

    :goto_2
    return-void
.end method

.method public static final H(IIZLcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;Lf43;ZFF)V
    .locals 0

    const-string p4, "this$0"

    invoke-static {p3, p4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sub-int/2addr p0, p1

    const/4 p1, 0x0

    if-nez p2, :cond_1

    if-lez p0, :cond_0

    const/16 p0, 0x8

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    invoke-virtual {p3, p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setVisibility(I)V

    :cond_1
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iput-boolean p1, p3, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->f0:Z

    return-void
.end method

.method public static final L(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;Z)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->I(Z)V

    return-void
.end method

.method public static final M(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;Z)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->I(Z)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->getSavedSelectedPosition()F

    move-result p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p0, v0}, Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;->updateBackgroundPosition(FLjava/lang/Boolean;)V

    return-void
.end method

.method public static final T(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->getSavedSelectedPosition()F

    move-result p0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0, v1}, Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;->updateBackgroundPosition(FLjava/lang/Boolean;)V

    return-void
.end method

.method public static final U(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->getSavedSelectedPosition()F

    move-result p0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0, v1}, Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;->updateBackgroundPosition(FLjava/lang/Boolean;)V

    return-void
.end method

.method public static final W(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->P:I

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->h0(I)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    iget v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->P:I

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;->setSelectedPosition(ILjava/lang/Boolean;)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->getSavedSelectedPosition()F

    move-result p0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0, v1}, Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;->updateBackgroundPosition(FLjava/lang/Boolean;)V

    return-void
.end method

.method public static final X(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;ILjava/lang/Boolean;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;->setSelectedPosition(ILjava/lang/Boolean;)V

    return-void
.end method

.method public static final Y(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;ILjava/lang/Boolean;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;->setSelectedPosition(ILjava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic enterSearchMode$default(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;ZIZIILjava/lang/Object;)V
    .locals 1

    if-nez p6, :cond_4

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 p6, p5, 0x2

    const/4 v0, -0x1

    if-eqz p6, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    const/4 p3, 0x0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move p4, v0

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->enterSearchMode(ZIZI)V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: enterSearchMode"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic exitSearchMode$default(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;ZZZIILjava/lang/Object;)V
    .locals 1

    if-nez p6, :cond_3

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    move p3, v0

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->exitSearchMode(ZZZI)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: exitSearchMode"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final f0(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->getSavedSelectedPosition()F

    move-result p0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0, v1}, Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;->updateBackgroundPosition(FLjava/lang/Boolean;)V

    return-void
.end method

.method private final getCurrentIndicatorX()F
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;->getCurrentBackgroundLeft$widgetsliquid_release()F

    move-result p0

    return p0
.end method

.method private final getInitHeight()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lolb;->g0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lolb;->h0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 v0, 0x30

    invoke-static {p0, v0}, Lolb;->h(Landroid/content/Context;I)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 v0, 0x3c

    invoke-static {p0, v0}, Lolb;->h(Landroid/content/Context;I)I

    move-result p0

    :goto_0
    return p0
.end method

.method private final getLinearInterpolator()Lo97;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->p0:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo97;

    return-object p0
.end method

.method private final getOutIconSize()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lolb;->g0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lolb;->h0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/widgetsliquid/R$dimen;->os_pad_search_bar_out_icon_size:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/widgetsliquid/R$dimen;->os_liquid_fob_out_icon_size:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method private final getSavedSelectedPosition()F
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->j0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->P:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->j0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->j0:Ljava/util/List;

    iget p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->P:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final getTabTextHeight()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lolb;->g0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lolb;->h0(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x18

    goto :goto_0

    :cond_0
    invoke-static {}, Lolb;->s0()Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x12

    goto :goto_0

    :cond_1
    const/16 p0, 0xe

    :goto_0
    return p0
.end method

.method public static synthetic r(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->f0(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;)V

    return-void
.end method

.method public static synthetic s(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->E(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;)V

    return-void
.end method

.method public static synthetic selectTab$default(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;ILjava/lang/Boolean;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->selectTab(ILjava/lang/Boolean;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: selectTab"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic selectTabWithoutNotify$default(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;ILjava/lang/Boolean;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->selectTabWithoutNotify(ILjava/lang/Boolean;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: selectTabWithoutNotify"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic t(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->T(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;)V

    return-void
.end method

.method public static synthetic u(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->W(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;)V

    return-void
.end method

.method public static synthetic v(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->M(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;Z)V

    return-void
.end method

.method public static synthetic w(IIZLcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;ZLandroid/view/View;Lf43;FF)V
    .locals 0

    invoke-static/range {p0 .. p8}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->G(IIZLcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;ZLandroid/view/View;Lf43;FF)V

    return-void
.end method

.method public static synthetic x(IIZLcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;Lf43;ZFF)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->H(IIZLcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;Lf43;ZFF)V

    return-void
.end method

.method public static synthetic y(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->U(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;)V

    return-void
.end method

.method public static synthetic z(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;ILjava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->X(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;ILjava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public final F(IZZ)V
    .locals 10

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->e0:Ljv9;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljv9;->c()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setVisibility(I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->f0:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lolb;->g0(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lolb;->h0(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    iget v3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->P:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;

    invoke-virtual {v2}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->b()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-eqz p3, :cond_3

    iget-object v2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    iget v3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->P:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;

    invoke-virtual {v2}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->b()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->getTabTextHeight()I

    move-result v4

    invoke-static {v0, v4}, Lolb;->h(Landroid/content/Context;I)I

    move-result v0

    :goto_0
    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->g0:I

    if-ne p1, v0, :cond_5

    if-eqz p3, :cond_4

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->getOutIconSize()I

    move-result v0

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->h0:I

    :cond_5
    :goto_1
    new-instance v8, Ljv9;

    new-instance v1, Lfz3;

    invoke-direct {v1}, Lfz3;-><init>()V

    invoke-direct {v8, v1}, Ljv9;-><init>(Lfz3;)V

    new-instance v1, Lkv9;

    invoke-direct {v1}, Lkv9;-><init>()V

    invoke-virtual {v8, v1}, Ljv9;->z(Lkv9;)Ljv9;

    invoke-virtual {v8}, Ljv9;->v()Lkv9;

    move-result-object v1

    const/high16 v2, 0x43c80000    # 400.0f

    invoke-virtual {v1, v2}, Lkv9;->i(F)Lkv9;

    invoke-virtual {v8}, Ljv9;->v()Lkv9;

    move-result-object v1

    const v2, 0x3f4a3d71    # 0.79f

    invoke-virtual {v1, v2}, Lkv9;->g(F)Lkv9;

    int-to-float v1, v0

    invoke-virtual {v8, v1}, Lf43;->m(F)Lf43;

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    iget v2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->P:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;

    invoke-virtual {v1}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->c()Landroid/view/View;

    move-result-object v7

    new-instance v9, Lg67;

    move-object v1, v9

    move v2, v0

    move v3, p1

    move v4, p3

    move-object v5, p0

    move v6, p2

    invoke-direct/range {v1 .. v7}, Lg67;-><init>(IIZLcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;ZLandroid/view/View;)V

    invoke-virtual {v8, v9}, Lf43;->b(Lf43$r;)Lf43;

    new-instance v1, Lh67;

    invoke-direct {v1, v0, p1, p3, p0}, Lh67;-><init>(IIZLcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;)V

    invoke-virtual {v8, v1}, Lf43;->a(Lf43$q;)Lf43;

    int-to-float p1, p1

    invoke-virtual {v8, p1}, Ljv9;->s(F)V

    iput-object v8, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->e0:Ljv9;

    if-eqz p3, :cond_6

    invoke-virtual {p0, p2}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->Z(Z)V

    :cond_6
    return-void
.end method

.method public final I(Z)V
    .locals 2

    iget v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->g0:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->F(IZZ)V

    return-void
.end method

.method public final J(ZI)V
    .locals 8

    iput p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->d0:I

    iget p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->g0:I

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    :goto_0
    iput p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->g0:I

    invoke-virtual {p0, p2}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->Q(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->h0:I

    iget-object p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->j0:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    iget-object p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->k0:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    iget-object p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    invoke-static {p2}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lpc9;

    move-result-object p2

    invoke-interface {p2}, Lpc9;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v3, v0, 0x1

    if-gez v0, :cond_1

    invoke-static {}, Ly71;->u()V

    :cond_1
    check-cast v1, Landroid/view/View;

    iget-object v4, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;

    invoke-static {}, Lolb;->l0()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v0

    add-int/lit8 v6, v5, -0x1

    iget v7, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->h0:I

    mul-int/2addr v7, v6

    iget v6, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->b0:I

    mul-int/2addr v6, v5

    add-int/2addr v7, v6

    int-to-float v5, v7

    goto :goto_2

    :cond_2
    iget v5, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->h0:I

    mul-int/2addr v5, v0

    iget v6, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->b0:I

    mul-int/2addr v6, v3

    add-int/2addr v5, v6

    int-to-float v5, v5

    :goto_2
    invoke-virtual {v4, v5}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->g(F)V

    invoke-static {}, Lolb;->l0()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v0

    add-int/lit8 v5, v4, -0x1

    iget v6, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->h0:I

    mul-int/2addr v6, v5

    iget v5, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->b0:I

    mul-int/2addr v5, v4

    add-int/2addr v6, v5

    int-to-float v4, v6

    goto :goto_3

    :cond_3
    iget v4, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->h0:I

    mul-int/2addr v4, v0

    iget v5, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->b0:I

    mul-int/2addr v5, v3

    add-int/2addr v4, v5

    int-to-float v4, v4

    :goto_3
    iget-object v5, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;

    const-string v6, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v1, v6}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->f(F)V

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->j0:Ljava/util/List;

    iget-object v2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;

    invoke-virtual {v0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->d()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->k0:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v3

    goto/16 :goto_1

    :cond_4
    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->getOutIconSize()I

    move-result p2

    goto :goto_4

    :cond_5
    iget p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->h0:I

    :goto_4
    invoke-virtual {p0, p2, v2, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->F(IZZ)V

    return-void
.end method

.method public final K(ILjava/lang/String;I)Landroid/view/View;
    .locals 11

    new-instance p3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lolb;->g0(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lolb;->h0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lolb;->u0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lolb;->c0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x11

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p3, v2}, Landroid/view/View;->setFocusable(Z)V

    new-instance v10, Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v3, "context"

    invoke-static {v4, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0xe

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/transsion/widgetslib/widget/OSIconTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v10, p1}, Landroid/widget/TextView;->setText(I)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x18

    invoke-static {v3, v4}, Lolb;->h(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lolb;->h(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {p1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lolb;->g0(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lolb;->h0(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lolb;->h(Landroid/content/Context;I)I

    move-result v3

    :goto_1
    iput v3, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v10, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget p1, Lcom/transsion/widgetsliquid/R$attr;->os_icon_primary:I

    invoke-virtual {v10, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v10, v1}, Landroid/view/View;->setClickable(Z)V

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lolb;->g0(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lolb;->h0(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/high16 p2, 0x41400000    # 12.0f

    invoke-virtual {v1, v2, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_2

    :cond_4
    invoke-static {}, Lolb;->a0()Z

    move-result p2

    if-eqz p2, :cond_5

    const/high16 p2, 0x41000000    # 8.0f

    invoke-virtual {v1, v2, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_2

    :cond_5
    const/high16 p2, 0x41200000    # 10.0f

    invoke-virtual {v1, v2, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->getTabTextHeight()I

    move-result p0

    invoke-static {v0, p0}, Lolb;->h(Landroid/content/Context;I)I

    move-result p0

    const/4 v0, -0x2

    invoke-direct {p2, v0, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    sget p0, Lcom/transsion/widgetsliquid/R$style;->os_regular_fontweight:I

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTextAppearance(I)V

    sget-object p0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {p3, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p3
.end method

.method public final N(FF)Landroid/view/View;
    .locals 7

    iget-object p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

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
    iget v3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->c0:I

    if-eqz p2, :cond_2

    neg-int v3, v3

    :cond_2
    iget-object v4, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;

    invoke-virtual {v1}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->c()Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;

    invoke-virtual {v2}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->c()Landroid/view/View;

    move-result-object v2

    if-eqz p2, :cond_3

    int-to-float v4, v3

    sub-float v4, p1, v4

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    iget v6, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->b0:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    goto :goto_1

    :cond_3
    int-to-float v4, v3

    sub-float v4, p1, v4

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->b0:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    :goto_1
    return-object v1

    :cond_4
    if-eqz p2, :cond_5

    int-to-float v1, v3

    sub-float v1, p1, v1

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->b0:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_6

    goto :goto_2

    :cond_5
    int-to-float v1, v3

    sub-float v1, p1, v1

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->b0:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_6

    :goto_2
    return-object v2

    :cond_6
    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;

    invoke-virtual {v2}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->c()Landroid/view/View;

    move-result-object v2

    if-eqz p2, :cond_8

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->b0:I

    add-int/2addr v4, v5

    :goto_3
    add-int/2addr v4, v3

    goto :goto_4

    :cond_8
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->b0:I

    sub-int/2addr v4, v5

    goto :goto_3

    :goto_4
    if-eqz p2, :cond_9

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->b0:I

    sub-int/2addr v5, v6

    :goto_5
    add-int/2addr v5, v3

    goto :goto_6

    :cond_9
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    iget v6, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->b0:I

    add-int/2addr v5, v6

    goto :goto_5

    :goto_6
    if-eqz p2, :cond_a

    int-to-float v4, v4

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_7

    int-to-float v4, v5

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_7

    return-object v2

    :cond_a
    int-to-float v4, v4

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_7

    int-to-float v4, v5

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_7

    return-object v2

    :cond_b
    return-object v0
.end method

.method public final O(Landroid/view/MotionEvent;)I
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->N(FF)Landroid/view/View;

    move-result-object p1

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

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

.method public final P(Landroid/view/MotionEvent;)F
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->N(FF)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    iget p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->b0:I

    int-to-float p0, p0

    sub-float/2addr p1, p0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final Q(I)I
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->c0:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->b0:I

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public final R(ZFILandroid/view/View;)V
    .locals 4

    const/4 p3, 0x0

    const/4 v0, 0x5

    const/16 v1, 0x64

    if-eqz p1, :cond_1

    int-to-float p1, v1

    mul-float/2addr p1, p2

    const/high16 v1, 0x41a00000    # 20.0f

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_0

    iget p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->W:I

    int-to-float p1, p1

    const/4 p3, 0x1

    int-to-float p3, p3

    int-to-float v0, v0

    mul-float/2addr p2, v0

    sub-float/2addr p3, p2

    mul-float/2addr p1, p3

    float-to-int p1, p1

    shl-int/lit8 p1, p1, 0x18

    iget-object p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    iget p3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->a0:I

    or-int/2addr p1, p3

    invoke-virtual {p2, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;->setSelectedBackgroundColor(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    invoke-virtual {p1, p3}, Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;->setSelectedBackgroundColor(I)V

    goto :goto_0

    :cond_1
    int-to-float p1, v1

    const v1, 0x3e4ccccd    # 0.2f

    mul-float v2, p1, v1

    mul-float/2addr p1, p2

    const/16 v3, 0x14

    int-to-float v3, v3

    add-float/2addr v3, v2

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_2

    cmpl-float v3, p1, v2

    if-ltz v3, :cond_2

    iget p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->W:I

    int-to-float p1, p1

    sub-float/2addr p2, v1

    mul-float/2addr p1, p2

    int-to-float p2, v0

    mul-float/2addr p1, p2

    float-to-int p1, p1

    shl-int/lit8 p1, p1, 0x18

    iget-object p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    iget p3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->a0:I

    or-int/2addr p1, p3

    invoke-virtual {p2, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;->setSelectedBackgroundColor(I)V

    goto :goto_0

    :cond_2
    cmpg-float p1, p1, v2

    if-gtz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    invoke-virtual {p1, p3}, Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;->setSelectedBackgroundColor(I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    iget p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->V:I

    invoke-virtual {p1, p2}, Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;->setSelectedBackgroundColor(I)V

    :goto_0
    invoke-virtual {p4}, Landroid/view/View;->getX()F

    move-result p1

    iget-object p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    iget p3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->h0:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    const/16 v0, 0x10

    invoke-static {p4, v0}, Lolb;->h(Landroid/content/Context;I)I

    move-result p4

    add-int/2addr p3, p4

    iget p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->b0:I

    int-to-float p0, p0

    sub-float/2addr p1, p0

    invoke-virtual {p2, p3, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;->setIndicatorWidth(IF)V

    return-void
.end method

.method public final S(ZIFI)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_0

    invoke-static {}, Ly71;->u()V

    :cond_0
    check-cast v2, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;

    iget v4, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->P:I

    const/4 v5, 0x0

    const-string v6, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    if-ne v1, v4, :cond_3

    invoke-virtual {v2}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->c()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v1, v6}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    if-eqz p1, :cond_1

    iget v4, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->h0:I

    int-to-float v5, v4

    sub-int/2addr v4, p2

    int-to-float v4, v4

    mul-float/2addr v4, p3

    sub-float/2addr v5, v4

    float-to-int v4, v5

    goto :goto_1

    :cond_1
    int-to-float v4, p2

    iget v5, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->h0:I

    sub-int/2addr v5, p2

    int-to-float v5, v5

    mul-float/2addr v5, p3

    add-float/2addr v4, v5

    float-to-int v4, v4

    :goto_1
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    sub-int v1, p4, p2

    int-to-float v1, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    iget v4, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->c0:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    invoke-virtual {v2}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->d()F

    move-result v4

    sub-float/2addr v4, v1

    if-eqz p1, :cond_2

    invoke-virtual {v2}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->c()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->d()F

    move-result v5

    mul-float/2addr v4, p3

    sub-float/2addr v5, v4

    invoke-virtual {v1, v5}, Landroid/view/View;->setX(F)V

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->c()Landroid/view/View;

    move-result-object v5

    mul-float/2addr v4, p3

    add-float/2addr v4, v1

    invoke-virtual {v5, v4}, Landroid/view/View;->setX(F)V

    :goto_2
    invoke-virtual {v2}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->c()Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->c()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v1, v6}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->h0:I

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    if-eqz p1, :cond_4

    invoke-virtual {v2}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->c()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->d()F

    move-result v4

    invoke-virtual {v2}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->d()F

    move-result v2

    iget v5, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->b0:I

    int-to-float v5, v5

    sub-float/2addr v2, v5

    mul-float/2addr v2, p3

    sub-float/2addr v4, v2

    invoke-virtual {v1, v4}, Landroid/view/View;->setX(F)V

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->c()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->d()F

    move-result v2

    iget v4, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->b0:I

    int-to-float v5, v4

    sub-float/2addr v2, v5

    mul-float/2addr v2, p3

    int-to-float v4, v4

    add-float/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    :goto_3
    move v1, v3

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public final V(I)Z
    .locals 0

    if-ltz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final Z(Z)V
    .locals 11

    const-wide/16 v0, 0x64

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    iget-object v4, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-gez v5, :cond_1

    invoke-static {}, Ly71;->u()V

    :cond_1
    check-cast v6, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;

    iget v8, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->P:I

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    if-ne v5, v8, :cond_3

    invoke-virtual {v6}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->b()Landroid/widget/TextView;

    move-result-object v5

    if-eqz p1, :cond_2

    move v9, v10

    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->getLinearInterpolator()Lo97;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    move v9, v10

    :cond_4
    invoke-virtual {v6}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->c()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->getLinearInterpolator()Lo97;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_2
    move v5, v7

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final a0(Landroid/view/View;)V
    .locals 1

    sget-boolean v0, Lolb;->P:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->U:Lu97;

    const v0, 0x3f866666    # 1.05f

    invoke-virtual {p0, p1, v0}, Lu97;->h(Landroid/view/View;F)V

    :cond_0
    return-void
.end method

.method public final addAllTabs([Ljava/lang/Integer;[Ljava/lang/String;)V
    .locals 6

    const-string v0, "iconArr"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "titleArr"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_1
    if-ge v2, v0, :cond_2

    aget-object v4, p1, v2

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, p2, v3

    invoke-virtual {p0, v4, v3}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->addTab(ILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lolb;->g0(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lolb;->h0(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->j0()V

    invoke-virtual {p0, v1}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->h0(I)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    new-instance p2, Lj67;

    invoke-direct {p2, p0}, Lj67;-><init>(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public final addTab(ILjava/lang/String;)V
    .locals 15
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    move-object v0, p0

    move-object/from16 v3, p2

    const-string v1, "title"

    invoke-static {v3, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v2, p1

    invoke-virtual {p0, v2, v3, v1}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->K(ILjava/lang/String;I)Landroid/view/View;

    move-result-object v12

    iget-object v13, v0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    new-instance v14, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;

    const/16 v10, 0xf8

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v14

    move-object v4, v12

    invoke-direct/range {v1 .. v11}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;-><init>(ILjava/lang/String;Landroid/view/View;FFFZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    invoke-virtual {v1, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->j0()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->h0(I)V

    iget-object v1, v0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    new-instance v2, Lm67;

    invoke-direct {v2, p0}, Lm67;-><init>(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lolb;->g0(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lolb;->h0(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v4, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetsliquid/R$dimen;->os_pad_liquid_fob_two_item_total_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    :goto_0
    float-to-int v1, v1

    goto/16 :goto_1

    :cond_0
    iget-object v1, v0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetsliquid/R$dimen;->os_pad_liquid_fob_three_item2_total_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetsliquid/R$dimen;->os_pad_liquid_fob_four_item_total_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetsliquid/R$dimen;->os_pad_liquid_fob_five_item_total_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v4, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetsliquid/R$dimen;->os_liquid_fob_two_item_total_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    goto :goto_0

    :cond_4
    iget-object v1, v0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetsliquid/R$dimen;->os_liquid_fob_three_item2_total_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    goto :goto_0

    :cond_5
    iget-object v1, v0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetsliquid/R$dimen;->os_liquid_fob_four_item_total_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetsliquid/R$dimen;->os_liquid_fob_five_item_total_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    goto/16 :goto_0

    :goto_1
    iput v1, v0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->g0:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->getTabTextHeight()I

    move-result v2

    invoke-static {v1, v2}, Lolb;->h(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->i0:F

    return-void
.end method

.method public final b0(Landroid/view/View;)V
    .locals 1

    sget-boolean v0, Lolb;->P:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->U:Lu97;

    invoke-virtual {p0, p1}, Lu97;->i(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final c0(III)V
    .locals 9

    iput p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->d0:I

    iget p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->g0:I

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->g0:I

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->Q(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->h0:I

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->e0:Ljv9;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljv9;->c()V

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setVisibility(I)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->getOutIconSize()I

    move-result v0

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->getOutIconSize()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;

    invoke-virtual {v2}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->c()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x18

    invoke-static {v3, v4}, Lolb;->h(Landroid/content/Context;I)I

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0, v3}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->j0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->k0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    invoke-static {v0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lpc9;

    move-result-object v0

    invoke-interface {v0}, Lpc9;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, p1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    if-gez v1, :cond_2

    invoke-static {}, Ly71;->u()V

    :cond_2
    check-cast v3, Landroid/view/View;

    iget-object v3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;

    invoke-static {}, Lolb;->l0()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v1

    add-int/lit8 v6, v5, -0x1

    iget v7, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->h0:I

    mul-int/2addr v7, v6

    iget v6, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->b0:I

    mul-int/2addr v6, v5

    add-int/2addr v7, v6

    int-to-float v5, v7

    goto :goto_2

    :cond_3
    iget v5, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->h0:I

    mul-int/2addr v5, v1

    iget v6, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->b0:I

    mul-int/2addr v6, v4

    add-int/2addr v5, v6

    int-to-float v5, v5

    :goto_2
    invoke-virtual {v3, v5}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->g(F)V

    invoke-static {}, Lolb;->l0()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    add-int/lit8 v5, v3, -0x1

    iget v6, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->h0:I

    mul-int/2addr v6, v5

    iget v5, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->b0:I

    mul-int/2addr v5, v3

    add-int/2addr v6, v5

    int-to-float v3, v6

    goto :goto_3

    :cond_4
    iget v3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->h0:I

    mul-int/2addr v3, v1

    iget v5, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->b0:I

    mul-int/2addr v5, v4

    add-int/2addr v3, v5

    int-to-float v3, v3

    :goto_3
    iget-object v5, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->j0:Ljava/util/List;

    iget-object v6, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;

    invoke-virtual {v1}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->d()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->k0:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v4

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, p1

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    if-gez v1, :cond_6

    invoke-static {}, Ly71;->u()V

    :cond_6
    check-cast v3, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;

    if-ne v1, p3, :cond_a

    invoke-virtual {v3}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->c()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v5, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-static {v1, v5}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->h0:I

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-static {}, Lolb;->l0()Z

    move-result v1

    const/4 v5, 0x0

    if-eqz v1, :cond_8

    invoke-virtual {v3}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->c()Landroid/view/View;

    move-result-object v1

    iget-object v6, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->k0:Ljava/util/List;

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->k0:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->getTabCount()I

    move-result v7

    sub-int/2addr v7, p3

    sub-int/2addr v7, p2

    iget v8, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->c0:I

    mul-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    goto :goto_5

    :cond_7
    move v6, v5

    :goto_5
    invoke-virtual {v1, v6}, Landroid/view/View;->setX(F)V

    goto :goto_7

    :cond_8
    invoke-virtual {v3}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->c()Landroid/view/View;

    move-result-object v1

    iget-object v6, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->j0:Ljava/util/List;

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->j0:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    iget v7, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->c0:I

    mul-int/2addr v7, p3

    mul-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    goto :goto_6

    :cond_9
    move v6, v5

    :goto_6
    invoke-virtual {v1, v6}, Landroid/view/View;->setX(F)V

    :goto_7
    invoke-virtual {v3}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->b()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput p1, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->c()Landroid/view/View;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v3, p2}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->g0(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lolb;->g0(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lolb;->h0(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    move v1, v4

    goto/16 :goto_4

    :cond_b
    iget-object p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    invoke-virtual {p2, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;->setSelectedBackgroundColor(I)V

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result p1

    iget-object p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    iget p3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->h0:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lolb;->h(Landroid/content/Context;I)I

    move-result v0

    add-int/2addr p3, v0

    iget p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->b0:I

    int-to-float p0, p0

    sub-float/2addr p1, p0

    invoke-virtual {p2, p3, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;->setIndicatorWidth(IF)V

    return-void
.end method

.method public final d0(FZFLandroid/view/View;I)V
    .locals 5

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->getInitHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->getOutIconSize()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x18

    invoke-static {v2, v3}, Lolb;->h(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz p2, :cond_0

    int-to-float v4, v0

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p3

    sub-float/2addr v4, v0

    :goto_0
    float-to-int v0, v4

    goto :goto_1

    :cond_0
    int-to-float v4, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p3

    add-float/2addr v4, v0

    goto :goto_0

    :goto_1
    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    float-to-int p1, p1

    iput p1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0, v3}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p2, v2, p3, v1}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->S(ZIFI)V

    invoke-virtual {p0, p2, p3, p5, p4}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->R(ZFILandroid/view/View;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const-string v0, "event"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->R:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_d

    const/4 v4, 0x0

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_1

    const/4 v5, 0x3

    if-eq v0, v5, :cond_6

    return v3

    :cond_1
    iget v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->d0:I

    if-ne v0, v2, :cond_2

    return v3

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->m0:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-boolean v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->l0:Z

    if-nez v1, :cond_4

    iget v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->Q:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    iput-boolean v3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->l0:Z

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;

    invoke-virtual {v1}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->a()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object v5

    iget v6, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->T:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->b()Landroid/widget/TextView;

    move-result-object v1

    iget v5, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->T:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->l0:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->n0:F

    add-float/2addr v0, p1

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->Q(I)I

    move-result v1

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->b0:I

    mul-int/2addr v1, v2

    sub-int/2addr p1, v1

    int-to-float p1, p1

    invoke-static {v0, v4, p1}, Lwn8;->j(FFF)F

    move-result p1

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;->animateToFinalPosition(F)V

    :cond_5
    return v3

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_7
    iget v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->d0:I

    if-ne v0, v2, :cond_8

    invoke-virtual {p0, v3, v1, v3, v0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->exitSearchMode(ZZZI)V

    return v3

    :cond_8
    invoke-virtual {p0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->P(Landroid/view/MotionEvent;)F

    move-result p1

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->V(I)Z

    move-result v2

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->isInSearchMode()Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_1

    :cond_9
    if-eqz v2, :cond_a

    iget v5, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->P:I

    if-eq v5, v0, :cond_a

    iput v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->P:I

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->h0(I)V

    goto :goto_1

    :cond_a
    iget-boolean v5, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->l0:Z

    if-eqz v5, :cond_b

    iget v5, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->P:I

    invoke-virtual {p0, v5}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->h0(I)V

    :cond_b
    :goto_1
    iget-object v5, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    invoke-virtual {v5, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;->animateToFinalPosition(F)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    invoke-virtual {p1, v0}, Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;->updFinalPosition(I)V

    iget-boolean p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->l0:Z

    if-nez p1, :cond_c

    if-eqz v2, :cond_c

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->isInSearchMode()Z

    move-result p1

    if-nez p1, :cond_c

    iget-boolean p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->f0:Z

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    invoke-static {p1, v0}, Li81;->r0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->b()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_c

    const/4 v0, 0x0

    invoke-static {p1, v4, v3, v0}, Lgcc;->n(Landroid/widget/TextView;FILjava/lang/Object;)V

    :cond_c
    iput-boolean v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->l0:Z

    invoke-virtual {p0, p0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->b0(Landroid/view/View;)V

    return v3

    :cond_d
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_e
    iget v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->d0:I

    if-eq v0, v2, :cond_11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->m0:F

    iput-boolean v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->l0:Z

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->V(I)Z

    move-result v2

    if-eqz v2, :cond_f

    iget v2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->P:I

    if-ne v0, v2, :cond_f

    move v1, v3

    :cond_f
    iput-boolean v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->o0:Z

    if-nez v1, :cond_10

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->P(Landroid/view/MotionEvent;)F

    move-result p1

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;->animateToFinalPosition(F)V

    iput p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->n0:F

    goto :goto_2

    :cond_10
    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->getCurrentIndicatorX()F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->n0:F

    :cond_11
    :goto_2
    invoke-virtual {p0, p0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->a0(Landroid/view/View;)V

    return v3
.end method

.method public final e0(FZFLandroid/view/View;I)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    float-to-int p1, p1

    iput p1, p5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0, p5}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p5, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, p5, 0x1

    if-gez p5, :cond_0

    invoke-static {}, Ly71;->u()V

    :cond_0
    check-cast v0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;

    invoke-virtual {v0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->c()Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    const-string v2, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-static {p5, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p5, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->h0:I

    iput v2, p5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v2, 0x0

    iput v2, p5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->c()Landroid/view/View;

    move-result-object p5

    invoke-virtual {v0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->d()F

    move-result v2

    invoke-virtual {v0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->d()F

    move-result v0

    iget v3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->b0:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    mul-float/2addr v0, p3

    sub-float/2addr v2, v0

    invoke-virtual {p5, v2}, Landroid/view/View;->setX(F)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->c()Landroid/view/View;

    move-result-object p5

    invoke-virtual {v0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->d()F

    move-result v0

    iget v2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->b0:I

    int-to-float v3, v2

    sub-float/2addr v0, v3

    mul-float/2addr v0, p3

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {p5, v0}, Landroid/view/View;->setX(F)V

    :goto_1
    move p5, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p4}, Landroid/view/View;->getX()F

    move-result p1

    iget-object p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    iget p3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->h0:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    const/16 p5, 0x10

    invoke-static {p4, p5}, Lolb;->h(Landroid/content/Context;I)I

    move-result p4

    add-int/2addr p3, p4

    iget p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->b0:I

    int-to-float p0, p0

    sub-float/2addr p1, p0

    invoke-virtual {p2, p3, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;->setIndicatorWidth(IF)V

    return-void
.end method

.method public final enterSearchMode(ZIZI)V
    .locals 3

    iput p4, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->d0:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setVisibility(I)V

    iget v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->d0:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "footbar enterSearchMode fromState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " toWhichSearchMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OSLiquidFootOper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq p4, v0, :cond_4

    const/4 v0, 0x4

    if-eq p4, v0, :cond_3

    const/4 v0, 0x5

    if-eq p4, v0, :cond_0

    goto :goto_0

    :cond_0
    if-ne p2, v2, :cond_1

    iget p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->d0:I

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->getSelectedPosition()I

    move-result p3

    invoke-virtual {p0, p2, p1, p3}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->c0(III)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iput-boolean v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->f0:Z

    :cond_2
    iget p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->d0:I

    invoke-virtual {p0, p3, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->J(ZI)V

    goto :goto_0

    :cond_3
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->d0:I

    if-eq v0, v2, :cond_7

    if-ne v0, p4, :cond_5

    goto :goto_0

    :cond_5
    if-eq p2, v2, :cond_7

    if-eqz p1, :cond_6

    iput-boolean v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->f0:Z

    :cond_6
    new-instance p1, Lo67;

    invoke-direct {p1, p0, p3}, Lo67;-><init>(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;Z)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_7
    :goto_0
    return-void
.end method

.method public final exitSearchMode(ZZZI)V
    .locals 3

    iget p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->d0:I

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->j0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->P:I

    if-ltz v1, :cond_0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->j0:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "n/a"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exitSearchMode  iconMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "   tostate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mFromSearchMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "  tabLeft:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OSLiquidFootOper"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->d0:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    if-ne p2, p4, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setVisibility(I)V

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->f0:Z

    new-instance p1, Ln67;

    invoke-direct {p1, p0, p3}, Ln67;-><init>(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;Z)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    iput v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->d0:I

    :cond_3
    :goto_1
    return-void
.end method

.method public final g0(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;Z)V
    .locals 1

    invoke-virtual {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->a()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->b()Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p1}, Lgcc;->r(Landroid/widget/TextView;)V

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->S:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->S:I

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    sget p0, Lcom/transsion/widgetsliquid/R$style;->os_semibold_font:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->T:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->T:I

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    sget p0, Lcom/transsion/widgetsliquid/R$style;->os_regular_fontweight:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextAppearance(I)V

    :goto_0
    return-void
.end method

.method public final getCurrentSearchMode()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->d0:I

    return p0
.end method

.method public final getSelectPosition()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->P:I

    return p0
.end method

.method public final getSelectedPosition()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->P:I

    return p0
.end method

.method public final getTabCount()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getTabItem(I)Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final h0(I)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_0

    invoke-static {}, Ly71;->u()V

    :cond_0
    check-cast v3, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;

    if-ne v2, p1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    invoke-virtual {p0, v3, v2}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->g0(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;Z)V

    move v2, v4

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final i0()V
    .locals 11

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lolb;->h0(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lolb;->u0(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lolb;->c0(Landroid/content/Context;)Z

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;

    invoke-virtual {v4}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->c()Landroid/view/View;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type android.widget.LinearLayout"

    invoke-static {v5, v6}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lolb;->g0(Landroid/content/Context;)Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    if-eqz v2, :cond_2

    :cond_1
    move v6, v7

    goto :goto_1

    :cond_2
    move v6, v8

    :goto_1
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v9

    if-eq v9, v6, :cond_3

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :cond_3
    invoke-virtual {v4}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->a()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    const-string v10, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-static {v9, v10}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v6, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v10, 0x4

    invoke-static {v6, v10}, Lolb;->h(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v9, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iput v7, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_2

    :cond_4
    invoke-virtual {v9, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v8}, Lolb;->h(Landroid/content/Context;I)I

    move-result v6

    iput v6, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :goto_2
    invoke-virtual {v5, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->b()Landroid/widget/TextView;

    move-result-object v4

    if-eqz v0, :cond_5

    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {v4, v8, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_3

    :cond_5
    invoke-static {}, Lolb;->a0()Z

    move-result v5

    if-eqz v5, :cond_6

    const/high16 v5, 0x41000000    # 8.0f

    invoke-virtual {v4, v8, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_3

    :cond_6
    const/high16 v5, 0x41200000    # 10.0f

    invoke-virtual {v4, v8, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_3
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->getTabTextHeight()I

    move-result v7

    invoke-static {v6, v7}, Lolb;->h(Landroid/content/Context;I)I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->getTabTextHeight()I

    move-result v1

    invoke-static {v0, v1}, Lolb;->h(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->i0:F

    return-void
.end method

.method public final isInSearchMode()Z
    .locals 2

    iget p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->d0:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x5

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public final j0()V
    .locals 9

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    invoke-static {v0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lpc9;

    move-result-object v0

    invoke-interface {v0}, Lpc9;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_0

    invoke-static {}, Ly71;->u()V

    :cond_0
    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    const-string v7, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-static {v6, v7}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v2, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v7, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_2

    iget-object v7, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    sub-int/2addr v7, v8

    if-eq v3, v7, :cond_1

    iget v3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->b0:I

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->b0:I

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget v3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->b0:I

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_1

    :cond_2
    iget v3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->b0:I

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget v3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->b0:I

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :goto_1
    invoke-virtual {v4, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v3, v5

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lolb;->g0(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->i0()V

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->j0()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    new-instance p1, Li67;

    invoke-direct {p1, p0}, Li67;-><init>(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->U:Lu97;

    invoke-virtual {v0}, Lu97;->g()V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->e0:Ljv9;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljv9;->c()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->e0:Ljv9;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->f0:Z

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;

    invoke-virtual {v0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->c()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {v0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->b()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 9

    instance-of v0, p1, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$LiquidSearchBarSavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$LiquidSearchBarSavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    invoke-virtual {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$LiquidSearchBarSavedState;->getSearchMode()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->d0:I

    invoke-virtual {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$LiquidSearchBarSavedState;->getOriginWidth()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->g0:I

    invoke-virtual {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$LiquidSearchBarSavedState;->getSingleItemWidth()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->h0:I

    invoke-virtual {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$LiquidSearchBarSavedState;->getItemPositions()[F

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->j0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->k0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->j0:Ljava/util/List;

    invoke-virtual {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$LiquidSearchBarSavedState;->getItemPositions()[F

    move-result-object v3

    invoke-static {v3}, Lhi;->Z0([F)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->k0:Ljava/util/List;

    invoke-virtual {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$LiquidSearchBarSavedState;->getItemPositionsP()[F

    move-result-object v3

    invoke-static {v3}, Lhi;->Z0([F)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$LiquidSearchBarSavedState;->getItemPositions()[F

    move-result-object v0

    array-length v3, v0

    move v4, v1

    move v5, v4

    :goto_1
    if-ge v4, v3, :cond_5

    aget v6, v0, v4

    add-int/lit8 v6, v5, 0x1

    iget-object v7, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_4

    invoke-virtual {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$LiquidSearchBarSavedState;->getRtl()I

    move-result v7

    if-ne v7, v2, :cond_2

    move v7, v2

    goto :goto_2

    :cond_2
    move v7, v1

    :goto_2
    invoke-static {}, Lolb;->l0()Z

    move-result v8

    if-eq v7, v8, :cond_3

    iget-object v7, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;

    invoke-virtual {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$LiquidSearchBarSavedState;->getItemPositionsP()[F

    move-result-object v8

    aget v8, v8, v5

    invoke-virtual {v7, v8}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->g(F)V

    invoke-virtual {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$LiquidSearchBarSavedState;->getItemPositionsP()[F

    move-result-object v7

    invoke-virtual {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$LiquidSearchBarSavedState;->getItemPositions()[F

    move-result-object v8

    aget v8, v8, v5

    aput v8, v7, v5

    invoke-virtual {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$LiquidSearchBarSavedState;->getItemPositions()[F

    move-result-object v7

    iget-object v8, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;

    invoke-virtual {v8}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->d()F

    move-result v8

    aput v8, v7, v5

    goto :goto_3

    :cond_3
    iget-object v7, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;

    invoke-virtual {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$LiquidSearchBarSavedState;->getItemPositions()[F

    move-result-object v8

    aget v8, v8, v5

    invoke-virtual {v7, v8}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->g(F)V

    :goto_3
    iget-object v7, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;

    invoke-static {}, Lolb;->l0()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->e(Z)V

    iget-object v7, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;

    invoke-virtual {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$LiquidSearchBarSavedState;->getTextHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v7}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->f(F)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    move v5, v6

    goto/16 :goto_1

    :cond_5
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$LiquidSearchBarSavedState;

    invoke-direct {v1, v0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$LiquidSearchBarSavedState;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->d0:I

    invoke-virtual {v1, v0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$LiquidSearchBarSavedState;->setSearchMode(I)V

    iget v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->P:I

    invoke-virtual {v1, v0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$LiquidSearchBarSavedState;->setSelectedPosition(I)V

    iget v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->g0:I

    invoke-virtual {v1, v0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$LiquidSearchBarSavedState;->setOriginWidth(I)V

    iget v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->h0:I

    invoke-virtual {v1, v0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$LiquidSearchBarSavedState;->setSingleItemWidth(I)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->j0:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Li81;->Y0(Ljava/util/Collection;)[F

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$LiquidSearchBarSavedState;->setItemPositions([F)V

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->k0:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Li81;->Y0(Ljava/util/Collection;)[F

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$LiquidSearchBarSavedState;->setItemPositionsP([F)V

    invoke-static {}, Lolb;->l0()Z

    move-result p0

    invoke-virtual {v1, p0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$LiquidSearchBarSavedState;->setRtl(I)V

    return-object v1
.end method

.method public onVisibilityAggregated(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    new-instance v0, Lf67;

    invoke-direct {v0, p0}, Lf67;-><init>(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final removeTab(I)V
    .locals 2

    if-ltz p1, :cond_4

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;

    invoke-virtual {v0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->c()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->j0()V

    iget v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->P:I

    if-eq p1, v0, :cond_2

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->P:I

    if-ge p1, v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->P:I

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->P:I

    :cond_3
    :goto_1
    new-instance p1, Ll67;

    invoke-direct {p1, p0}, Ll67;-><init>(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_2
    return-void
.end method

.method public final selectTab(ILjava/lang/Boolean;)V
    .locals 2

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->P:I

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->h0(I)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    new-instance v1, Lq67;

    invoke-direct {v1, p0, p1, p2}, Lq67;-><init>(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;ILjava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final selectTabWithoutNotify(ILjava/lang/Boolean;)V
    .locals 2

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->h0(I)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    new-instance v1, Lk67;

    invoke-direct {v1, p0, p1, p2}, Lk67;-><init>(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;ILjava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetsliquid/R$dimen;->os_space250:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v2

    if-ge v2, v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v2

    if-ge v2, v0, :cond_1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setOnTabSelectedListener(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$b;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;->setBgAnimEndListener(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$b;)V

    return-void
.end method

.method public final setSelectColor(I)V
    .locals 1

    iget v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->S:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->S:I

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;->setSelectColor(I)V

    iget p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->P:I

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->h0(I)V

    :cond_0
    return-void
.end method

.method public final setSwipeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->R:Z

    return-void
.end method

.method public final setTabShowBadge(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;->setItemShowBadge(IZ)V

    return-void
.end method

.method public final setUnSelectColor(I)V
    .locals 1

    iget v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->T:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->T:I

    iget p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->P:I

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->h0(I)V

    :cond_0
    return-void
.end method

.method public final updateTab(IILjava/lang/String;)V
    .locals 4
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    const-string v0, "title"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;

    invoke-virtual {v0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->c()Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.LinearLayout"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.transsion.widgetslib.widget.OSIconTextView"

    invoke-static {v1, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/transsion/widgetslib/widget/OSIconTextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {v0, v3}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->P:I

    if-ne p1, p2, :cond_1

    iget-object p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->O:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;

    invoke-virtual {p0, p1, v2}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->g0(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;Z)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    new-instance p2, Lp67;

    invoke-direct {p2, p0}, Lp67;-><init>(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method
