.class public Lcom/yandex/div/internal/widget/slider/SliderView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/internal/widget/slider/SliderView$a;,
        Lcom/yandex/div/internal/widget/slider/SliderView$b;,
        Lcom/yandex/div/internal/widget/slider/SliderView$c;,
        Lcom/yandex/div/internal/widget/slider/SliderView$d;,
        Lcom/yandex/div/internal/widget/slider/SliderView$Thumb;,
        Lcom/yandex/div/internal/widget/slider/SliderView$e;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u001b*\u0002hk\u0008\u0016\u0018\u00002\u00020\u0001:\u0007\u00dd\u0001]ad\u00de\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001f\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J!\u0010\u0011\u001a\u00020\u000e2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0015\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0015\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0017\u0010\u0016J\r\u0010\u0018\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u001f\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008 \u0010\u001fJ\u0017\u0010#\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020!H\u0014\u00a2\u0006\u0004\u0008#\u0010$J\u0017\u0010\'\u001a\u00020\u000c2\u0006\u0010&\u001a\u00020%H\u0017\u00a2\u0006\u0004\u0008\'\u0010(J)\u0010-\u001a\u00020\u000e2\u0006\u0010)\u001a\u00020\u000c2\u0006\u0010*\u001a\u00020\u00062\u0008\u0010,\u001a\u0004\u0018\u00010+H\u0014\u00a2\u0006\u0004\u0008-\u0010.J\u0017\u00100\u001a\u00020\u000c2\u0006\u0010/\u001a\u00020%H\u0014\u00a2\u0006\u0004\u00080\u0010(J\u0017\u00102\u001a\u00020\u000c2\u0006\u0010/\u001a\u000201H\u0016\u00a2\u0006\u0004\u00082\u00103J!\u00106\u001a\u00020\u000e2\u0008\u00104\u001a\u0004\u0018\u00010\n2\u0006\u00105\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u00086\u00107J#\u00108\u001a\u00020\u000e2\u0008\u00104\u001a\u0004\u0018\u00010\n2\u0008\u00105\u001a\u0004\u0018\u00010\nH\u0002\u00a2\u0006\u0004\u00088\u00109J)\u0010;\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c2\u0006\u0010:\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008;\u0010<J)\u0010=\u001a\u00020\u000e2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010:\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008=\u0010>J\u001f\u0010A\u001a\u00020\u00062\u0006\u0010?\u001a\u00020\u00062\u0006\u0010@\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008A\u0010BJ\u0017\u0010E\u001a\u00020D2\u0006\u0010C\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008E\u0010FJ1\u0010H\u001a\u00020\u000e2\u0006\u0010G\u001a\u00020D2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0008\u0008\u0002\u0010:\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008H\u0010IJ\u0017\u0010J\u001a\u00020\n2\u0006\u0010C\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008J\u0010KJ\u000f\u0010L\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008L\u0010MJ\u000f\u0010N\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008N\u0010\u0019J\u000f\u0010O\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008O\u0010\u0019J\u001d\u0010Q\u001a\u00020\u0006*\u00020\n2\u0008\u0008\u0002\u0010P\u001a\u00020\u0006H\u0003\u00a2\u0006\u0004\u0008Q\u0010RJ\u0019\u0010S\u001a\u00020\u00062\u0008\u0008\u0002\u0010P\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008S\u0010TJ\u0013\u0010U\u001a\u00020\u0006*\u00020\u0006H\u0003\u00a2\u0006\u0004\u0008U\u0010TJ\u0013\u0010V\u001a\u00020\n*\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008V\u0010KJ\u0013\u0010W\u001a\u00020\n*\u00020\nH\u0002\u00a2\u0006\u0004\u0008W\u0010XJ\u0013\u0010Z\u001a\u00020\u000e*\u00020YH\u0002\u00a2\u0006\u0004\u0008Z\u0010[R\u0014\u0010_\u001a\u00020\\8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008]\u0010^R\u001a\u0010c\u001a\u0008\u0012\u0004\u0012\u00020\u00130`8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008a\u0010bR\u0018\u0010f\u001a\u0004\u0018\u00010Y8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008d\u0010eR\u0018\u0010g\u001a\u0004\u0018\u00010Y8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008E\u0010eR\u0014\u0010j\u001a\u00020h8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008J\u0010iR\u0014\u0010m\u001a\u00020k8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008S\u0010lR\u001d\u0010t\u001a\u0008\u0012\u0004\u0012\u00020o0n8\u0006\u00a2\u0006\u000c\n\u0004\u0008p\u0010q\u001a\u0004\u0008r\u0010sR*\u0010{\u001a\u00020u2\u0006\u0010\u000b\u001a\u00020u8\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008W\u0010v\u001a\u0004\u0008w\u0010x\"\u0004\u0008y\u0010zR%\u0010\u0082\u0001\u001a\u00020|8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008L\u0010}\u001a\u0004\u0008~\u0010\u007f\"\u0006\u0008\u0080\u0001\u0010\u0081\u0001R\'\u0010\u0087\u0001\u001a\u00020\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0005\u0008A\u0010\u0083\u0001\u001a\u0005\u0008\u0084\u0001\u0010M\"\u0006\u0008\u0085\u0001\u0010\u0086\u0001R0\u0010\u008d\u0001\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n8\u0006@FX\u0086\u000e\u00a2\u0006\u0017\n\u0005\u00086\u0010\u0088\u0001\u001a\u0006\u0008\u0089\u0001\u0010\u008a\u0001\"\u0006\u0008\u008b\u0001\u0010\u008c\u0001R0\u0010\u0090\u0001\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n8\u0006@FX\u0086\u000e\u00a2\u0006\u0017\n\u0005\u00088\u0010\u0088\u0001\u001a\u0006\u0008\u008e\u0001\u0010\u008a\u0001\"\u0006\u0008\u008f\u0001\u0010\u008c\u0001R7\u0010\u0098\u0001\u001a\u0005\u0018\u00010\u0091\u00012\t\u0010\u000b\u001a\u0005\u0018\u00010\u0091\u00018\u0006@FX\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0092\u0001\u0010\u0093\u0001\u001a\u0006\u0008\u0094\u0001\u0010\u0095\u0001\"\u0006\u0008\u0096\u0001\u0010\u0097\u0001R7\u0010\u009c\u0001\u001a\u0005\u0018\u00010\u0091\u00012\t\u0010\u000b\u001a\u0005\u0018\u00010\u0091\u00018\u0006@FX\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0099\u0001\u0010\u0093\u0001\u001a\u0006\u0008\u009a\u0001\u0010\u0095\u0001\"\u0006\u0008\u009b\u0001\u0010\u0097\u0001R6\u0010\u009f\u0001\u001a\u0005\u0018\u00010\u0091\u00012\t\u0010\u000b\u001a\u0005\u0018\u00010\u0091\u00018\u0006@FX\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008N\u0010\u0093\u0001\u001a\u0006\u0008\u009d\u0001\u0010\u0095\u0001\"\u0006\u0008\u009e\u0001\u0010\u0097\u0001R6\u0010\u00a2\u0001\u001a\u0005\u0018\u00010\u0091\u00012\t\u0010\u000b\u001a\u0005\u0018\u00010\u0091\u00018\u0006@FX\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008O\u0010\u0093\u0001\u001a\u0006\u0008\u00a0\u0001\u0010\u0095\u0001\"\u0006\u0008\u00a1\u0001\u0010\u0097\u0001R)\u0010\u00a5\u0001\u001a\u00020\n2\u0007\u0010\u00a3\u0001\u001a\u00020\n8\u0006@BX\u0086\u000e\u00a2\u0006\u000f\n\u0005\u0008H\u0010\u0088\u0001\u001a\u0006\u0008\u00a4\u0001\u0010\u008a\u0001R8\u0010\u00aa\u0001\u001a\u0005\u0018\u00010\u0091\u00012\n\u0010\u00a6\u0001\u001a\u0005\u0018\u00010\u0091\u00018\u0006@FX\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00a7\u0001\u0010\u0093\u0001\u001a\u0006\u0008\u00a8\u0001\u0010\u0095\u0001\"\u0006\u0008\u00a9\u0001\u0010\u0097\u0001R7\u0010\u00b1\u0001\u001a\u0005\u0018\u00010\u00ab\u00012\n\u0010\u00a6\u0001\u001a\u0005\u0018\u00010\u00ab\u00018\u0006@FX\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008Q\u0010\u00ac\u0001\u001a\u0006\u0008\u00ad\u0001\u0010\u00ae\u0001\"\u0006\u0008\u00af\u0001\u0010\u00b0\u0001R-\u0010\u00b5\u0001\u001a\u0004\u0018\u00010\n2\t\u0010\u00a3\u0001\u001a\u0004\u0018\u00010\n8\u0006@BX\u0086\u000e\u00a2\u0006\u000f\n\u0005\u0008U\u0010\u00b2\u0001\u001a\u0006\u0008\u00b3\u0001\u0010\u00b4\u0001R\u001c\u0010\u00b9\u0001\u001a\u00070\u00b6\u0001R\u00020\u00008\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00b7\u0001\u0010\u00b8\u0001R6\u0010\u00bc\u0001\u001a\u0005\u0018\u00010\u0091\u00012\t\u0010\u000b\u001a\u0005\u0018\u00010\u0091\u00018\u0006@FX\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008V\u0010\u0093\u0001\u001a\u0006\u0008\u00ba\u0001\u0010\u0095\u0001\"\u0006\u0008\u00bb\u0001\u0010\u0097\u0001R7\u0010\u00bf\u0001\u001a\u0005\u0018\u00010\u00ab\u00012\n\u0010\u00a6\u0001\u001a\u0005\u0018\u00010\u00ab\u00018\u0006@FX\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008=\u0010\u00ac\u0001\u001a\u0006\u0008\u00bd\u0001\u0010\u00ae\u0001\"\u0006\u0008\u00be\u0001\u0010\u00b0\u0001R \u0010\u00c3\u0001\u001a\u00020\u00068B@\u0002X\u0082\u000e\u00a2\u0006\u000f\n\u0006\u0008\u00c0\u0001\u0010\u00c1\u0001\u001a\u0005\u0008\u00c2\u0001\u0010\u001fR\u001b\u0010\u00c6\u0001\u001a\u00070\u00c4\u0001R\u00020\u00008\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008;\u0010\u00c5\u0001R\u0019\u0010\u00c9\u0001\u001a\u00020D8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c7\u0001\u0010\u00c8\u0001R(\u0010\u00cd\u0001\u001a\u00020\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0006\u0008\u00ca\u0001\u0010\u0083\u0001\u001a\u0005\u0008\u00cb\u0001\u0010M\"\u0006\u0008\u00cc\u0001\u0010\u0086\u0001R1\u0010\u00d1\u0001\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n8\u0006@FX\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00ce\u0001\u0010\u0088\u0001\u001a\u0006\u0008\u00cf\u0001\u0010\u008a\u0001\"\u0006\u0008\u00d0\u0001\u0010\u008c\u0001R\u0019\u0010\u00d3\u0001\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d2\u0001\u0010\u0088\u0001R\u0019\u0010\u00d5\u0001\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d4\u0001\u0010\u0088\u0001R\u0019\u0010\u00d6\u0001\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0088\u0001\u0010\u0088\u0001R\u001b\u0010\u00d9\u0001\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d7\u0001\u0010\u00d8\u0001R\u001d\u0010\u00db\u0001\u001a\u00020\u0006*\u0005\u0018\u00010\u0091\u00018BX\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008d\u0010\u00da\u0001R\u001d\u0010\u00dc\u0001\u001a\u00020\u0006*\u0005\u0018\u00010\u0091\u00018BX\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008a\u0010\u00da\u0001\u00a8\u0006\u00df\u0001"
    }
    d2 = {
        "Lcom/yandex/div/internal/widget/slider/SliderView;",
        "Landroid/view/View;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "value",
        "",
        "animated",
        "Lzfb;",
        "setThumbValue",
        "(FZ)V",
        "setThumbSecondaryValue",
        "(Ljava/lang/Float;Z)V",
        "Lcom/yandex/div/internal/widget/slider/SliderView$c;",
        "listener",
        "addOnThumbChangedListener",
        "(Lcom/yandex/div/internal/widget/slider/SliderView$c;)V",
        "removeOnChangedListener",
        "clearOnThumbChangedListener",
        "()V",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onMeasure",
        "(II)V",
        "getSuggestedMinimumHeight",
        "()I",
        "getSuggestedMinimumWidth",
        "Landroid/graphics/Canvas;",
        "canvas",
        "onDraw",
        "(Landroid/graphics/Canvas;)V",
        "Landroid/view/MotionEvent;",
        "ev",
        "onTouchEvent",
        "(Landroid/view/MotionEvent;)Z",
        "gainFocus",
        "direction",
        "Landroid/graphics/Rect;",
        "previouslyFocusedRect",
        "onFocusChanged",
        "(ZILandroid/graphics/Rect;)V",
        "event",
        "dispatchHoverEvent",
        "Landroid/view/KeyEvent;",
        "dispatchKeyEvent",
        "(Landroid/view/KeyEvent;)Z",
        "prevValue",
        "newValue",
        "l",
        "(Ljava/lang/Float;F)V",
        "m",
        "(Ljava/lang/Float;Ljava/lang/Float;)V",
        "forced",
        "z",
        "(FZZ)V",
        "x",
        "(Ljava/lang/Float;ZZ)V",
        "desiredSize",
        "measureSpec",
        "k",
        "(II)I",
        "position",
        "Lcom/yandex/div/internal/widget/slider/SliderView$Thumb;",
        "e",
        "(I)Lcom/yandex/div/internal/widget/slider/SliderView$Thumb;",
        "thumb",
        "r",
        "(Lcom/yandex/div/internal/widget/slider/SliderView$Thumb;FZZ)V",
        "f",
        "(I)F",
        "j",
        "()Z",
        "p",
        "q",
        "viewWidth",
        "t",
        "(FI)I",
        "g",
        "(I)I",
        "u",
        "w",
        "i",
        "(F)F",
        "Landroid/animation/ValueAnimator;",
        "setBaseParams",
        "(Landroid/animation/ValueAnimator;)V",
        "Lmp9;",
        "b",
        "Lmp9;",
        "sliderDrawDelegate",
        "Lqd7;",
        "c",
        "Lqd7;",
        "listeners",
        "d",
        "Landroid/animation/ValueAnimator;",
        "sliderAnimator",
        "sliderSecondaryAnimator",
        "com/yandex/div/internal/widget/slider/SliderView$f",
        "Lcom/yandex/div/internal/widget/slider/SliderView$f;",
        "animatorListener",
        "com/yandex/div/internal/widget/slider/SliderView$g",
        "Lcom/yandex/div/internal/widget/slider/SliderView$g;",
        "animatorSecondaryListener",
        "",
        "Lcom/yandex/div/internal/widget/slider/SliderView$d;",
        "h",
        "Ljava/util/List;",
        "getRanges",
        "()Ljava/util/List;",
        "ranges",
        "",
        "J",
        "getAnimationDuration",
        "()J",
        "setAnimationDuration",
        "(J)V",
        "animationDuration",
        "Landroid/view/animation/AccelerateDecelerateInterpolator;",
        "Landroid/view/animation/AccelerateDecelerateInterpolator;",
        "getAnimationInterpolator",
        "()Landroid/view/animation/AccelerateDecelerateInterpolator;",
        "setAnimationInterpolator",
        "(Landroid/view/animation/AccelerateDecelerateInterpolator;)V",
        "animationInterpolator",
        "Z",
        "getAnimationEnabled",
        "setAnimationEnabled",
        "(Z)V",
        "animationEnabled",
        "F",
        "getMinValue",
        "()F",
        "setMinValue",
        "(F)V",
        "minValue",
        "getMaxValue",
        "setMaxValue",
        "maxValue",
        "Landroid/graphics/drawable/Drawable;",
        "n",
        "Landroid/graphics/drawable/Drawable;",
        "getActiveTickMarkDrawable",
        "()Landroid/graphics/drawable/Drawable;",
        "setActiveTickMarkDrawable",
        "(Landroid/graphics/drawable/Drawable;)V",
        "activeTickMarkDrawable",
        "o",
        "getInactiveTickMarkDrawable",
        "setInactiveTickMarkDrawable",
        "inactiveTickMarkDrawable",
        "getActiveTrackDrawable",
        "setActiveTrackDrawable",
        "activeTrackDrawable",
        "getInactiveTrackDrawable",
        "setInactiveTrackDrawable",
        "inactiveTrackDrawable",
        "<set-?>",
        "getThumbValue",
        "thumbValue",
        "drawable",
        "s",
        "getThumbDrawable",
        "setThumbDrawable",
        "thumbDrawable",
        "Ldha;",
        "Ldha;",
        "getThumbTextDrawable",
        "()Ldha;",
        "setThumbTextDrawable",
        "(Ldha;)V",
        "thumbTextDrawable",
        "Ljava/lang/Float;",
        "getThumbSecondaryValue",
        "()Ljava/lang/Float;",
        "thumbSecondaryValue",
        "Lcom/yandex/div/internal/widget/slider/SliderView$a;",
        "v",
        "Lcom/yandex/div/internal/widget/slider/SliderView$a;",
        "a11yHelper",
        "getThumbSecondaryDrawable",
        "setThumbSecondaryDrawable",
        "thumbSecondaryDrawable",
        "getThumbSecondTextDrawable",
        "setThumbSecondTextDrawable",
        "thumbSecondTextDrawable",
        "y",
        "I",
        "getMaxTickmarkOrThumbWidth",
        "maxTickmarkOrThumbWidth",
        "Lcom/yandex/div/internal/widget/slider/SliderView$b;",
        "Lcom/yandex/div/internal/widget/slider/SliderView$b;",
        "activeRange",
        "A",
        "Lcom/yandex/div/internal/widget/slider/SliderView$Thumb;",
        "thumbOnTouch",
        "B",
        "getInteractive",
        "setInteractive",
        "interactive",
        "C",
        "getInterceptionAngle",
        "setInterceptionAngle",
        "interceptionAngle",
        "D",
        "interceptionAngleTg",
        "E",
        "prevX",
        "prevY",
        "G",
        "Ljava/lang/Integer;",
        "touchSlop",
        "(Landroid/graphics/drawable/Drawable;)I",
        "boundsWidth",
        "boundsHeight",
        "a",
        "Thumb",
        "div_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public A:Lcom/yandex/div/internal/widget/slider/SliderView$Thumb;

.field public B:Z

.field public C:F

.field public D:F

.field public E:F

.field public F:F

.field public G:Ljava/lang/Integer;

.field public final b:Lmp9;

.field public final c:Lqd7;

.field public d:Landroid/animation/ValueAnimator;

.field public e:Landroid/animation/ValueAnimator;

.field public final f:Lcom/yandex/div/internal/widget/slider/SliderView$f;

.field public final g:Lcom/yandex/div/internal/widget/slider/SliderView$g;

.field public final h:Ljava/util/List;

.field public i:J

.field public j:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field public k:Z

.field public l:F

.field public m:F

.field public n:Landroid/graphics/drawable/Drawable;

.field public o:Landroid/graphics/drawable/Drawable;

.field public p:Landroid/graphics/drawable/Drawable;

.field public q:Landroid/graphics/drawable/Drawable;

.field public r:F

.field public s:Landroid/graphics/drawable/Drawable;

.field public t:Ldha;

.field public u:Ljava/lang/Float;

.field public final v:Lcom/yandex/div/internal/widget/slider/SliderView$a;

.field public w:Landroid/graphics/drawable/Drawable;

.field public x:Ldha;

.field public y:I

.field public final z:Lcom/yandex/div/internal/widget/slider/SliderView$b;


# direct methods
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

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/internal/widget/slider/SliderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/internal/widget/slider/SliderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p1, Lmp9;

    invoke-direct {p1}, Lmp9;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->b:Lmp9;

    .line 6
    new-instance p1, Lqd7;

    invoke-direct {p1}, Lqd7;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->c:Lqd7;

    .line 7
    new-instance p1, Lcom/yandex/div/internal/widget/slider/SliderView$f;

    invoke-direct {p1, p0}, Lcom/yandex/div/internal/widget/slider/SliderView$f;-><init>(Lcom/yandex/div/internal/widget/slider/SliderView;)V

    iput-object p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->f:Lcom/yandex/div/internal/widget/slider/SliderView$f;

    .line 8
    new-instance p1, Lcom/yandex/div/internal/widget/slider/SliderView$g;

    invoke-direct {p1, p0}, Lcom/yandex/div/internal/widget/slider/SliderView$g;-><init>(Lcom/yandex/div/internal/widget/slider/SliderView;)V

    iput-object p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->g:Lcom/yandex/div/internal/widget/slider/SliderView$g;

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->h:Ljava/util/List;

    const-wide/16 p1, 0x12c

    .line 10
    iput-wide p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->i:J

    .line 11
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->j:Landroid/view/animation/AccelerateDecelerateInterpolator;

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->k:Z

    const/high16 p2, 0x42c80000    # 100.0f

    .line 13
    iput p2, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->m:F

    .line 14
    iget p2, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->l:F

    iput p2, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->r:F

    .line 15
    new-instance p2, Lcom/yandex/div/internal/widget/slider/SliderView$a;

    invoke-direct {p2, p0, p0}, Lcom/yandex/div/internal/widget/slider/SliderView$a;-><init>(Lcom/yandex/div/internal/widget/slider/SliderView;Lcom/yandex/div/internal/widget/slider/SliderView;)V

    iput-object p2, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->v:Lcom/yandex/div/internal/widget/slider/SliderView$a;

    .line 16
    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 17
    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    const/4 p2, -0x1

    .line 18
    iput p2, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->y:I

    .line 19
    new-instance p2, Lcom/yandex/div/internal/widget/slider/SliderView$b;

    invoke-direct {p2, p0}, Lcom/yandex/div/internal/widget/slider/SliderView$b;-><init>(Lcom/yandex/div/internal/widget/slider/SliderView;)V

    iput-object p2, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->z:Lcom/yandex/div/internal/widget/slider/SliderView$b;

    .line 20
    sget-object p2, Lcom/yandex/div/internal/widget/slider/SliderView$Thumb;->THUMB:Lcom/yandex/div/internal/widget/slider/SliderView$Thumb;

    iput-object p2, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->A:Lcom/yandex/div/internal/widget/slider/SliderView$Thumb;

    .line 21
    iput-boolean p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->B:Z

    const/high16 p1, 0x42340000    # 45.0f

    .line 22
    iput p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->C:F

    float-to-double p1, p1

    .line 23
    invoke-static {p1, p2}, Ljava/lang/Math;->tan(D)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->D:F

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
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/div/internal/widget/slider/SliderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final A(Lcom/yandex/div/internal/widget/slider/SliderView;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->r:F

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method

.method public static synthetic a(Lcom/yandex/div/internal/widget/slider/SliderView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div/internal/widget/slider/SliderView;->A(Lcom/yandex/div/internal/widget/slider/SliderView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic access$getBoundsHeight(Lcom/yandex/div/internal/widget/slider/SliderView;Landroid/graphics/drawable/Drawable;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/slider/SliderView;->c(Landroid/graphics/drawable/Drawable;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getBoundsWidth(Lcom/yandex/div/internal/widget/slider/SliderView;Landroid/graphics/drawable/Drawable;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/slider/SliderView;->d(Landroid/graphics/drawable/Drawable;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getClosestThumb(Lcom/yandex/div/internal/widget/slider/SliderView;I)Lcom/yandex/div/internal/widget/slider/SliderView$Thumb;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/slider/SliderView;->e(I)Lcom/yandex/div/internal/widget/slider/SliderView$Thumb;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLeftPaddingOffset(Lcom/yandex/div/internal/widget/slider/SliderView;)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getLeftPaddingOffset()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$inBoarders(Lcom/yandex/div/internal/widget/slider/SliderView;F)F
    .locals 0

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/slider/SliderView;->i(F)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$isThumbSecondaryEnabled(Lcom/yandex/div/internal/widget/slider/SliderView;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/slider/SliderView;->j()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$notifyThumbChangedListeners(Lcom/yandex/div/internal/widget/slider/SliderView;Ljava/lang/Float;F)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/internal/widget/slider/SliderView;->l(Ljava/lang/Float;F)V

    return-void
.end method

.method public static final synthetic access$notifyThumbSecondaryChangedListeners(Lcom/yandex/div/internal/widget/slider/SliderView;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/internal/widget/slider/SliderView;->m(Ljava/lang/Float;Ljava/lang/Float;)V

    return-void
.end method

.method public static final synthetic access$setSliderAnimator$p(Lcom/yandex/div/internal/widget/slider/SliderView;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->d:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public static final synthetic access$setSliderSecondaryAnimator$p(Lcom/yandex/div/internal/widget/slider/SliderView;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->e:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public static final synthetic access$setValueToThumb(Lcom/yandex/div/internal/widget/slider/SliderView;Lcom/yandex/div/internal/widget/slider/SliderView$Thumb;FZZ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/div/internal/widget/slider/SliderView;->r(Lcom/yandex/div/internal/widget/slider/SliderView$Thumb;FZZ)V

    return-void
.end method

.method public static synthetic b(Lcom/yandex/div/internal/widget/slider/SliderView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div/internal/widget/slider/SliderView;->y(Lcom/yandex/div/internal/widget/slider/SliderView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final getMaxTickmarkOrThumbWidth()I
    .locals 3

    iget v0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->y:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/yandex/div/internal/widget/slider/SliderView;->d(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    iget-object v1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/yandex/div/internal/widget/slider/SliderView;->d(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->s:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/yandex/div/internal/widget/slider/SliderView;->d(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    iget-object v2, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/yandex/div/internal/widget/slider/SliderView;->d(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->y:I

    :cond_0
    iget p0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->y:I

    return p0
.end method

.method public static synthetic h(Lcom/yandex/div/internal/widget/slider/SliderView;IILjava/lang/Object;)I
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/slider/SliderView;->g(I)I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getTrackLength"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final n(Lcom/yandex/div/internal/widget/slider/SliderView$d;Lcom/yandex/div/internal/widget/slider/SliderView;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V
    .locals 0

    iget-object p0, p1, Lcom/yandex/div/internal/widget/slider/SliderView;->b:Lmp9;

    invoke-virtual {p0, p2, p3, p4, p5}, Lmp9;->f(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V

    return-void
.end method

.method public static synthetic o(Lcom/yandex/div/internal/widget/slider/SliderView$d;Lcom/yandex/div/internal/widget/slider/SliderView;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIILjava/lang/Object;)V
    .locals 6

    if-nez p7, :cond_2

    and-int/lit8 p7, p6, 0x10

    if-eqz p7, :cond_0

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/slider/SliderView$d;->g()I

    move-result p4

    :cond_0
    move v4, p4

    and-int/lit8 p4, p6, 0x20

    if-eqz p4, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/slider/SliderView$d;->b()I

    move-result p5

    :cond_1
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/yandex/div/internal/widget/slider/SliderView;->n(Lcom/yandex/div/internal/widget/slider/SliderView$d;Lcom/yandex/div/internal/widget/slider/SliderView;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: onDraw$lambda$10$drawTrackPart"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic s(Lcom/yandex/div/internal/widget/slider/SliderView;Lcom/yandex/div/internal/widget/slider/SliderView$Thumb;FZZILjava/lang/Object;)V
    .locals 0

    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/div/internal/widget/slider/SliderView;->r(Lcom/yandex/div/internal/widget/slider/SliderView$Thumb;FZZ)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setValueToThumb"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final setBaseParams(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-wide v0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->i:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->j:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public static synthetic setThumbSecondaryValue$default(Lcom/yandex/div/internal/widget/slider/SliderView;Ljava/lang/Float;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    iget-boolean p2, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->k:Z

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/internal/widget/slider/SliderView;->setThumbSecondaryValue(Ljava/lang/Float;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setThumbSecondaryValue"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic setThumbValue$default(Lcom/yandex/div/internal/widget/slider/SliderView;FZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    iget-boolean p2, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->k:Z

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/internal/widget/slider/SliderView;->setThumbValue(FZ)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setThumbValue"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic v(Lcom/yandex/div/internal/widget/slider/SliderView;FIILjava/lang/Object;)I
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/internal/widget/slider/SliderView;->t(FI)I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: toPosition"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final y(Lcom/yandex/div/internal/widget/slider/SliderView;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    iput-object p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->u:Ljava/lang/Float;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method


# virtual methods
.method public final addOnThumbChangedListener(Lcom/yandex/div/internal/widget/slider/SliderView$c;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->c:Lqd7;

    invoke-virtual {p0, p1}, Lqd7;->j(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Landroid/graphics/drawable/Drawable;)I
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final clearOnThumbChangedListener()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->c:Lqd7;

    invoke-virtual {p0}, Lqd7;->clear()V

    return-void
.end method

.method public final d(Landroid/graphics/drawable/Drawable;)I
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->v:Lcom/yandex/div/internal/widget/slider/SliderView$a;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->v:Lcom/yandex/div/internal/widget/slider/SliderView$a;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final e(I)Lcom/yandex/div/internal/widget/slider/SliderView$Thumb;
    .locals 5

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/slider/SliderView;->j()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/yandex/div/internal/widget/slider/SliderView$Thumb;->THUMB:Lcom/yandex/div/internal/widget/slider/SliderView$Thumb;

    return-object p0

    :cond_0
    iget v0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->r:F

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/yandex/div/internal/widget/slider/SliderView;->v(Lcom/yandex/div/internal/widget/slider/SliderView;FIILjava/lang/Object;)I

    move-result v0

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v4, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->u:Ljava/lang/Float;

    invoke-static {v4}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {p0, v4, v1, v2, v3}, Lcom/yandex/div/internal/widget/slider/SliderView;->v(Lcom/yandex/div/internal/widget/slider/SliderView;FIILjava/lang/Object;)I

    move-result p0

    sub-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-ge v0, p0, :cond_1

    sget-object p0, Lcom/yandex/div/internal/widget/slider/SliderView$Thumb;->THUMB:Lcom/yandex/div/internal/widget/slider/SliderView$Thumb;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/yandex/div/internal/widget/slider/SliderView$Thumb;->THUMB_SECONDARY:Lcom/yandex/div/internal/widget/slider/SliderView$Thumb;

    :goto_0
    return-object p0
.end method

.method public final f(I)F
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->o:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/slider/SliderView;->w(I)F

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/slider/SliderView;->w(I)F

    move-result p0

    invoke-static {p0}, Ls86;->c(F)I

    move-result p0

    int-to-float p0, p0

    :goto_1
    return p0
.end method

.method public final g(I)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-direct {p0}, Lcom/yandex/div/internal/widget/slider/SliderView;->getMaxTickmarkOrThumbWidth()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method public final getActiveTickMarkDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->n:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getActiveTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->p:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getAnimationDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->i:J

    return-wide v0
.end method

.method public final getAnimationEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->k:Z

    return p0
.end method

.method public final getAnimationInterpolator()Landroid/view/animation/AccelerateDecelerateInterpolator;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->j:Landroid/view/animation/AccelerateDecelerateInterpolator;

    return-object p0
.end method

.method public final getInactiveTickMarkDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->o:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getInactiveTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->q:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getInteractive()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->B:Z

    return p0
.end method

.method public final getInterceptionAngle()F
    .locals 0

    iget p0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->C:F

    return p0
.end method

.method public final getMaxValue()F
    .locals 0

    iget p0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->m:F

    return p0
.end method

.method public final getMinValue()F
    .locals 0

    iget p0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->l:F

    return p0
.end method

.method public final getRanges()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/div/internal/widget/slider/SliderView$d;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->h:Ljava/util/List;

    return-object p0
.end method

.method public getSuggestedMinimumHeight()I
    .locals 5

    iget-object v0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/yandex/div/internal/widget/slider/SliderView;->c(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    iget-object v1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/yandex/div/internal/widget/slider/SliderView;->c(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->h:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/div/internal/widget/slider/SliderView$d;

    invoke-virtual {v2}, Lcom/yandex/div/internal/widget/slider/SliderView$d;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/yandex/div/internal/widget/slider/SliderView;->c(Landroid/graphics/drawable/Drawable;)I

    move-result v3

    invoke-virtual {v2}, Lcom/yandex/div/internal/widget/slider/SliderView$d;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/yandex/div/internal/widget/slider/SliderView;->c(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/div/internal/widget/slider/SliderView$d;

    invoke-virtual {v3}, Lcom/yandex/div/internal/widget/slider/SliderView$d;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/yandex/div/internal/widget/slider/SliderView;->c(Landroid/graphics/drawable/Drawable;)I

    move-result v4

    invoke-virtual {v3}, Lcom/yandex/div/internal/widget/slider/SliderView$d;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/yandex/div/internal/widget/slider/SliderView;->c(Landroid/graphics/drawable/Drawable;)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->s:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/yandex/div/internal/widget/slider/SliderView;->c(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    iget-object v3, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Lcom/yandex/div/internal/widget/slider/SliderView;->c(Landroid/graphics/drawable/Drawable;)I

    move-result p0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public getSuggestedMinimumWidth()I
    .locals 3

    iget v0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->m:F

    iget v1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->l:F

    sub-float/2addr v0, v1

    const/4 v1, 0x1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/yandex/div/internal/widget/slider/SliderView;->d(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    iget-object v2, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/yandex/div/internal/widget/slider/SliderView;->d(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/2addr v1, v0

    iget-object v0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->s:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/yandex/div/internal/widget/slider/SliderView;->d(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    iget-object v2, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/yandex/div/internal/widget/slider/SliderView;->d(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->t:Ldha;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ldha;->getIntrinsicWidth()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object p0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->x:Ldha;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ldha;->getIntrinsicWidth()I

    move-result v2

    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public final getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->s:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getThumbSecondTextDrawable()Ldha;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->x:Ldha;

    return-object p0
.end method

.method public final getThumbSecondaryDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->w:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getThumbSecondaryValue()Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->u:Ljava/lang/Float;

    return-object p0
.end method

.method public final getThumbTextDrawable()Ldha;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->t:Ldha;

    return-object p0
.end method

.method public final getThumbValue()F
    .locals 0

    iget p0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->r:F

    return p0
.end method

.method public final i(F)F
    .locals 1

    iget v0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->l:F

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget p0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->m:F

    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public final j()Z
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->u:Ljava/lang/Float;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final k(II)I
    .locals 1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    goto :goto_0

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    return p1
.end method

.method public final l(Ljava/lang/Float;F)V
    .locals 0

    invoke-static {p1, p2}, Ly45;->c(Ljava/lang/Float;F)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->c:Lqd7;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/div/internal/widget/slider/SliderView$c;

    invoke-interface {p1, p2}, Lcom/yandex/div/internal/widget/slider/SliderView$c;->a(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final m(Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 0

    invoke-static {p1, p2}, Ly45;->d(Ljava/lang/Float;Ljava/lang/Float;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->c:Lqd7;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/div/internal/widget/slider/SliderView$c;

    invoke-interface {p1, p2}, Lcom/yandex/div/internal/widget/slider/SliderView$c;->b(Ljava/lang/Float;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    const-string v0, "canvas"

    invoke-static {v9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-direct/range {p0 .. p0}, Lcom/yandex/div/internal/widget/slider/SliderView;->getMaxTickmarkOrThumbWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    iget-object v0, v8, Lcom/yandex/div/internal/widget/slider/SliderView;->h:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div/internal/widget/slider/SliderView$d;

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/slider/SliderView$d;->g()I

    move-result v1

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/slider/SliderView$d;->f()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/slider/SliderView$d;->b()I

    move-result v2

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/slider/SliderView$d;->e()I

    move-result v0

    add-int/2addr v2, v0

    int-to-float v3, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    goto :goto_0

    :cond_0
    iget-object v0, v8, Lcom/yandex/div/internal/widget/slider/SliderView;->b:Lmp9;

    iget-object v1, v8, Lcom/yandex/div/internal/widget/slider/SliderView;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v9, v1}, Lmp9;->c(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v8, Lcom/yandex/div/internal/widget/slider/SliderView;->z:Lcom/yandex/div/internal/widget/slider/SliderView$b;

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/slider/SliderView$b;->b()F

    move-result v10

    iget-object v0, v8, Lcom/yandex/div/internal/widget/slider/SliderView;->z:Lcom/yandex/div/internal/widget/slider/SliderView$b;

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/slider/SliderView$b;->a()F

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static {v8, v10, v12, v13, v14}, Lcom/yandex/div/internal/widget/slider/SliderView;->v(Lcom/yandex/div/internal/widget/slider/SliderView;FIILjava/lang/Object;)I

    move-result v15

    invoke-static {v8, v11, v12, v13, v14}, Lcom/yandex/div/internal/widget/slider/SliderView;->v(Lcom/yandex/div/internal/widget/slider/SliderView;FIILjava/lang/Object;)I

    move-result v7

    iget-object v0, v8, Lcom/yandex/div/internal/widget/slider/SliderView;->b:Lmp9;

    iget-object v1, v8, Lcom/yandex/div/internal/widget/slider/SliderView;->p:Landroid/graphics/drawable/Drawable;

    invoke-static {v15, v7}, Lwn8;->g(II)I

    move-result v2

    invoke-static {v7, v15}, Lwn8;->d(II)I

    move-result v3

    invoke-virtual {v0, v9, v1, v2, v3}, Lmp9;->f(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V

    invoke-virtual {v9, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object v0, v8, Lcom/yandex/div/internal/widget/slider/SliderView;->h:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/yandex/div/internal/widget/slider/SliderView$d;

    invoke-virtual/range {v17 .. v17}, Lcom/yandex/div/internal/widget/slider/SliderView$d;->b()I

    move-result v0

    if-lt v0, v15, :cond_1

    invoke-virtual/range {v17 .. v17}, Lcom/yandex/div/internal/widget/slider/SliderView$d;->g()I

    move-result v0

    if-le v0, v7, :cond_2

    :cond_1
    move v12, v7

    goto/16 :goto_2

    :cond_2
    invoke-virtual/range {v17 .. v17}, Lcom/yandex/div/internal/widget/slider/SliderView$d;->g()I

    move-result v0

    if-lt v0, v15, :cond_3

    invoke-virtual/range {v17 .. v17}, Lcom/yandex/div/internal/widget/slider/SliderView$d;->b()I

    move-result v0

    if-gt v0, v7, :cond_3

    invoke-virtual/range {v17 .. v17}, Lcom/yandex/div/internal/widget/slider/SliderView$d;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v6, 0x30

    const/16 v18, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v12, v7

    move-object/from16 v7, v18

    invoke-static/range {v0 .. v7}, Lcom/yandex/div/internal/widget/slider/SliderView;->o(Lcom/yandex/div/internal/widget/slider/SliderView$d;Lcom/yandex/div/internal/widget/slider/SliderView;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIILjava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    move v12, v7

    invoke-virtual/range {v17 .. v17}, Lcom/yandex/div/internal/widget/slider/SliderView$d;->g()I

    move-result v0

    if-ge v0, v15, :cond_4

    invoke-virtual/range {v17 .. v17}, Lcom/yandex/div/internal/widget/slider/SliderView$d;->b()I

    move-result v0

    if-gt v0, v12, :cond_4

    invoke-virtual/range {v17 .. v17}, Lcom/yandex/div/internal/widget/slider/SliderView$d;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    add-int/lit8 v0, v15, -0x1

    invoke-virtual/range {v17 .. v17}, Lcom/yandex/div/internal/widget/slider/SliderView$d;->g()I

    move-result v1

    invoke-static {v0, v1}, Lwn8;->d(II)I

    move-result v5

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static/range {v0 .. v7}, Lcom/yandex/div/internal/widget/slider/SliderView;->o(Lcom/yandex/div/internal/widget/slider/SliderView$d;Lcom/yandex/div/internal/widget/slider/SliderView;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIILjava/lang/Object;)V

    invoke-virtual/range {v17 .. v17}, Lcom/yandex/div/internal/widget/slider/SliderView$d;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v6, 0x20

    const/4 v5, 0x0

    move v4, v15

    invoke-static/range {v0 .. v7}, Lcom/yandex/div/internal/widget/slider/SliderView;->o(Lcom/yandex/div/internal/widget/slider/SliderView$d;Lcom/yandex/div/internal/widget/slider/SliderView;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIILjava/lang/Object;)V

    goto :goto_3

    :cond_4
    invoke-virtual/range {v17 .. v17}, Lcom/yandex/div/internal/widget/slider/SliderView$d;->g()I

    move-result v0

    if-lt v0, v15, :cond_5

    invoke-virtual/range {v17 .. v17}, Lcom/yandex/div/internal/widget/slider/SliderView$d;->b()I

    move-result v0

    if-le v0, v12, :cond_5

    invoke-virtual/range {v17 .. v17}, Lcom/yandex/div/internal/widget/slider/SliderView$d;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v5, v12

    invoke-static/range {v0 .. v7}, Lcom/yandex/div/internal/widget/slider/SliderView;->o(Lcom/yandex/div/internal/widget/slider/SliderView$d;Lcom/yandex/div/internal/widget/slider/SliderView;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIILjava/lang/Object;)V

    invoke-virtual/range {v17 .. v17}, Lcom/yandex/div/internal/widget/slider/SliderView$d;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    add-int/lit8 v7, v12, 0x1

    invoke-virtual/range {v17 .. v17}, Lcom/yandex/div/internal/widget/slider/SliderView$d;->b()I

    move-result v0

    invoke-static {v7, v0}, Lwn8;->g(II)I

    move-result v4

    const/16 v6, 0x20

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-static/range {v0 .. v7}, Lcom/yandex/div/internal/widget/slider/SliderView;->o(Lcom/yandex/div/internal/widget/slider/SliderView$d;Lcom/yandex/div/internal/widget/slider/SliderView;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIILjava/lang/Object;)V

    goto :goto_3

    :cond_5
    invoke-virtual/range {v17 .. v17}, Lcom/yandex/div/internal/widget/slider/SliderView$d;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v6, 0x30

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static/range {v0 .. v7}, Lcom/yandex/div/internal/widget/slider/SliderView;->o(Lcom/yandex/div/internal/widget/slider/SliderView$d;Lcom/yandex/div/internal/widget/slider/SliderView;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIILjava/lang/Object;)V

    invoke-virtual/range {v17 .. v17}, Lcom/yandex/div/internal/widget/slider/SliderView$d;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move v4, v15

    move v5, v12

    invoke-static/range {v0 .. v5}, Lcom/yandex/div/internal/widget/slider/SliderView;->n(Lcom/yandex/div/internal/widget/slider/SliderView$d;Lcom/yandex/div/internal/widget/slider/SliderView;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V

    goto :goto_3

    :goto_2
    invoke-virtual/range {v17 .. v17}, Lcom/yandex/div/internal/widget/slider/SliderView$d;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v6, 0x30

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static/range {v0 .. v7}, Lcom/yandex/div/internal/widget/slider/SliderView;->o(Lcom/yandex/div/internal/widget/slider/SliderView$d;Lcom/yandex/div/internal/widget/slider/SliderView;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIILjava/lang/Object;)V

    :goto_3
    move v7, v12

    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_6
    iget v0, v8, Lcom/yandex/div/internal/widget/slider/SliderView;->l:F

    float-to-int v0, v0

    iget v1, v8, Lcom/yandex/div/internal/widget/slider/SliderView;->m:F

    float-to-int v1, v1

    if-gt v0, v1, :cond_8

    :goto_4
    float-to-int v2, v10

    float-to-int v3, v11

    if-gt v0, v3, :cond_7

    if-gt v2, v0, :cond_7

    iget-object v2, v8, Lcom/yandex/div/internal/widget/slider/SliderView;->n:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    :cond_7
    iget-object v2, v8, Lcom/yandex/div/internal/widget/slider/SliderView;->o:Landroid/graphics/drawable/Drawable;

    :goto_5
    iget-object v3, v8, Lcom/yandex/div/internal/widget/slider/SliderView;->b:Lmp9;

    invoke-virtual {v8, v0}, Lcom/yandex/div/internal/widget/slider/SliderView;->u(I)I

    move-result v4

    invoke-virtual {v3, v9, v2, v4}, Lmp9;->d(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;I)V

    if-eq v0, v1, :cond_8

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    iget-object v0, v8, Lcom/yandex/div/internal/widget/slider/SliderView;->b:Lmp9;

    iget v1, v8, Lcom/yandex/div/internal/widget/slider/SliderView;->r:F

    const/4 v2, 0x0

    invoke-static {v8, v1, v2, v13, v14}, Lcom/yandex/div/internal/widget/slider/SliderView;->v(Lcom/yandex/div/internal/widget/slider/SliderView;FIILjava/lang/Object;)I

    move-result v3

    iget-object v4, v8, Lcom/yandex/div/internal/widget/slider/SliderView;->s:Landroid/graphics/drawable/Drawable;

    iget v1, v8, Lcom/yandex/div/internal/widget/slider/SliderView;->r:F

    float-to-int v5, v1

    iget-object v6, v8, Lcom/yandex/div/internal/widget/slider/SliderView;->t:Ldha;

    move-object/from16 v1, p1

    move v2, v3

    move-object v3, v4

    move v4, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lmp9;->e(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;ILdha;)V

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div/internal/widget/slider/SliderView;->j()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v8, Lcom/yandex/div/internal/widget/slider/SliderView;->b:Lmp9;

    iget-object v1, v8, Lcom/yandex/div/internal/widget/slider/SliderView;->u:Ljava/lang/Float;

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v8, v1, v2, v13, v14}, Lcom/yandex/div/internal/widget/slider/SliderView;->v(Lcom/yandex/div/internal/widget/slider/SliderView;FIILjava/lang/Object;)I

    move-result v2

    iget-object v3, v8, Lcom/yandex/div/internal/widget/slider/SliderView;->w:Landroid/graphics/drawable/Drawable;

    iget-object v1, v8, Lcom/yandex/div/internal/widget/slider/SliderView;->u:Ljava/lang/Float;

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-int v4, v1

    iget-object v5, v8, Lcom/yandex/div/internal/widget/slider/SliderView;->x:Ldha;

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lmp9;->e(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;ILdha;)V

    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->v:Lcom/yandex/div/internal/widget/slider/SliderView$a;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/customview/widget/ExploreByTouchHelper;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/slider/SliderView;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/slider/SliderView;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, p1}, Lcom/yandex/div/internal/widget/slider/SliderView;->k(II)I

    move-result p1

    invoke-virtual {p0, v1, p2}, Lcom/yandex/div/internal/widget/slider/SliderView;->k(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    iget-object v0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->b:Lmp9;

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/slider/SliderView;->g(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr p2, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr p2, v2

    invoke-virtual {v0, v1, p2}, Lmp9;->h(II)V

    iget-object p2, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->h:Ljava/util/List;

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div/internal/widget/slider/SliderView$d;

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/slider/SliderView$d;->h()F

    move-result v1

    iget v2, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->l:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/yandex/div/internal/widget/slider/SliderView;->t(FI)I

    move-result v1

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/slider/SliderView$d;->f()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/yandex/div/internal/widget/slider/SliderView$d;->o(I)V

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/slider/SliderView$d;->c()F

    move-result v1

    iget v2, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->m:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/yandex/div/internal/widget/slider/SliderView;->t(FI)I

    move-result v1

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/slider/SliderView$d;->e()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/yandex/div/internal/widget/slider/SliderView$d;->j(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const-string v0, "ev"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->B:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-direct {p0}, Lcom/yandex/div/internal/widget/slider/SliderView;->getMaxTickmarkOrThumbWidth()I

    move-result v2

    const/4 v3, 0x2

    div-int/2addr v2, v3

    sub-int/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v7, 0x1

    if-eqz v2, :cond_6

    if-eq v2, v7, :cond_5

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->A:Lcom/yandex/div/internal/widget/slider/SliderView$Thumb;

    invoke-virtual {p0, v0}, Lcom/yandex/div/internal/widget/slider/SliderView;->f(I)F

    move-result v0

    invoke-virtual {p0, v2, v0, v1, v7}, Lcom/yandex/div/internal/widget/slider/SliderView;->r(Lcom/yandex/div/internal/widget/slider/SliderView$Thumb;FZZ)V

    iget-object v0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->G:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->G:Ljava/lang/Integer;

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->F:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v0, v0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->E:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    div-float/2addr v2, v0

    iget v0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->D:F

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_4

    move v1, v7

    :cond_4
    invoke-interface {v3, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->E:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->F:F

    return v7

    :cond_5
    iget-object v1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->A:Lcom/yandex/div/internal/widget/slider/SliderView$Thumb;

    invoke-virtual {p0, v0}, Lcom/yandex/div/internal/widget/slider/SliderView;->f(I)F

    move-result v2

    iget-boolean v3, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->k:Z

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/yandex/div/internal/widget/slider/SliderView;->s(Lcom/yandex/div/internal/widget/slider/SliderView;Lcom/yandex/div/internal/widget/slider/SliderView$Thumb;FZZILjava/lang/Object;)V

    return v7

    :cond_6
    invoke-virtual {p0, v0}, Lcom/yandex/div/internal/widget/slider/SliderView;->e(I)Lcom/yandex/div/internal/widget/slider/SliderView$Thumb;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->A:Lcom/yandex/div/internal/widget/slider/SliderView$Thumb;

    invoke-virtual {p0, v0}, Lcom/yandex/div/internal/widget/slider/SliderView;->f(I)F

    move-result v2

    iget-boolean v3, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->k:Z

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/yandex/div/internal/widget/slider/SliderView;->s(Lcom/yandex/div/internal/widget/slider/SliderView;Lcom/yandex/div/internal/widget/slider/SliderView$Thumb;FZZILjava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->E:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->F:F

    return v7
.end method

.method public final p()V
    .locals 3

    iget v0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->r:F

    invoke-virtual {p0, v0}, Lcom/yandex/div/internal/widget/slider/SliderView;->i(F)F

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/yandex/div/internal/widget/slider/SliderView;->z(FZZ)V

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/slider/SliderView;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->u:Ljava/lang/Float;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yandex/div/internal/widget/slider/SliderView;->i(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/yandex/div/internal/widget/slider/SliderView;->x(Ljava/lang/Float;ZZ)V

    :cond_1
    return-void
.end method

.method public final q()V
    .locals 3

    iget v0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->r:F

    invoke-static {v0}, Ls86;->c(F)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/yandex/div/internal/widget/slider/SliderView;->z(FZZ)V

    iget-object v0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->u:Ljava/lang/Float;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {v0}, Ls86;->c(F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/yandex/div/internal/widget/slider/SliderView;->x(Ljava/lang/Float;ZZ)V

    :cond_0
    return-void
.end method

.method public final r(Lcom/yandex/div/internal/widget/slider/SliderView$Thumb;FZZ)V
    .locals 1

    sget-object v0, Lcom/yandex/div/internal/widget/slider/SliderView$e;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Lcom/yandex/div/internal/widget/slider/SliderView;->x(Ljava/lang/Float;ZZ)V

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    invoke-virtual {p0, p2, p3, p4}, Lcom/yandex/div/internal/widget/slider/SliderView;->z(FZZ)V

    :goto_0
    return-void
.end method

.method public final removeOnChangedListener(Lcom/yandex/div/internal/widget/slider/SliderView$c;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->c:Lqd7;

    invoke-virtual {p0, p1}, Lqd7;->p(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setActiveTickMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->n:Landroid/graphics/drawable/Drawable;

    const/4 p1, -0x1

    iput p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->y:I

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/slider/SliderView;->q()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setActiveTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setAnimationDuration(J)V
    .locals 2

    iget-wide v0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->i:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-wide p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->i:J

    :cond_1
    :goto_0
    return-void
.end method

.method public final setAnimationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->k:Z

    return-void
.end method

.method public final setAnimationInterpolator(Landroid/view/animation/AccelerateDecelerateInterpolator;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->j:Landroid/view/animation/AccelerateDecelerateInterpolator;

    return-void
.end method

.method public final setInactiveTickMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->o:Landroid/graphics/drawable/Drawable;

    const/4 p1, -0x1

    iput p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->y:I

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/slider/SliderView;->q()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setInactiveTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setInteractive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->B:Z

    return-void
.end method

.method public final setInterceptionAngle(F)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/16 v0, 0x5a

    int-to-float v0, v0

    rem-float/2addr p1, v0

    const/high16 v0, 0x42340000    # 45.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->C:F

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->D:F

    return-void
.end method

.method public final setMaxValue(F)V
    .locals 2

    iget v0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->m:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->l:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yandex/div/internal/widget/slider/SliderView;->setMinValue(F)V

    iput p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->m:F

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/slider/SliderView;->p()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setMinValue(F)V
    .locals 2

    iget v0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->l:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->m:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yandex/div/internal/widget/slider/SliderView;->setMaxValue(F)V

    iput p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->l:F

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/slider/SliderView;->p()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->s:Landroid/graphics/drawable/Drawable;

    const/4 p1, -0x1

    iput p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->y:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setThumbSecondTextDrawable(Ldha;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->x:Ldha;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setThumbSecondaryDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->w:Landroid/graphics/drawable/Drawable;

    const/4 p1, -0x1

    iput p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->y:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setThumbSecondaryValue(Ljava/lang/Float;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/yandex/div/internal/widget/slider/SliderView;->x(Ljava/lang/Float;ZZ)V

    return-void
.end method

.method public final setThumbTextDrawable(Ldha;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->t:Ldha;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setThumbValue(FZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/yandex/div/internal/widget/slider/SliderView;->z(FZZ)V

    return-void
.end method

.method public final t(FI)I
    .locals 2

    invoke-virtual {p0, p2}, Lcom/yandex/div/internal/widget/slider/SliderView;->g(I)I

    move-result p2

    int-to-float p2, p2

    iget v0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->m:F

    iget v1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->l:F

    sub-float/2addr v0, v1

    div-float/2addr p2, v0

    invoke-static {p0}, Lpdc;->f(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->m:F

    sub-float/2addr p0, p1

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->l:F

    sub-float p0, p1, p0

    :goto_0
    mul-float/2addr p2, p0

    invoke-static {p2}, Ls86;->c(F)I

    move-result p0

    return p0
.end method

.method public final u(I)I
    .locals 3

    int-to-float p1, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/yandex/div/internal/widget/slider/SliderView;->v(Lcom/yandex/div/internal/widget/slider/SliderView;FIILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final w(I)F
    .locals 4

    iget v0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->l:F

    int-to-float p1, p1

    iget v1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->m:F

    sub-float/2addr v1, v0

    mul-float/2addr p1, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v2, v3, v1}, Lcom/yandex/div/internal/widget/slider/SliderView;->h(Lcom/yandex/div/internal/widget/slider/SliderView;IILjava/lang/Object;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    invoke-static {p0}, Lpdc;->f(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget p0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->m:F

    sub-float/2addr p0, p1

    int-to-float p1, v3

    sub-float p1, p0, p1

    :cond_0
    add-float/2addr v0, p1

    return v0
.end method

.method public final x(Ljava/lang/Float;ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/slider/SliderView;->i(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->u:Ljava/lang/Float;

    invoke-static {v0, p1}, Ly45;->d(Ljava/lang/Float;Ljava/lang/Float;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_4

    iget-boolean p2, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->k:Z

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->u:Ljava/lang/Float;

    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    iget-object p3, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->e:Landroid/animation/ValueAnimator;

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->g:Lcom/yandex/div/internal/widget/slider/SliderView$g;

    invoke-virtual {p3, p2}, Lcom/yandex/div/internal/widget/slider/SliderView$g;->b(Ljava/lang/Float;)V

    :cond_2
    iget-object p2, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->e:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    iget-object p2, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->u:Ljava/lang/Float;

    invoke-static {p2}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 p3, 0x2

    new-array p3, p3, [F

    const/4 v0, 0x0

    aput p2, p3, v0

    const/4 p2, 0x1

    aput p1, p3, p2

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p2, Lqp9;

    invoke-direct {p2, p0}, Lqp9;-><init>(Lcom/yandex/div/internal/widget/slider/SliderView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->g:Lcom/yandex/div/internal/widget/slider/SliderView$g;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-string p2, "trySetThumbSecondaryValue$lambda$5"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/yandex/div/internal/widget/slider/SliderView;->setBaseParams(Landroid/animation/ValueAnimator;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iput-object p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->e:Landroid/animation/ValueAnimator;

    goto :goto_1

    :cond_4
    if-eqz p3, :cond_5

    iget-object p2, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->e:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_5
    if-nez p3, :cond_6

    iget-object p2, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->e:Landroid/animation/ValueAnimator;

    if-nez p2, :cond_7

    :cond_6
    iget-object p2, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->g:Lcom/yandex/div/internal/widget/slider/SliderView$g;

    iget-object p3, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->u:Ljava/lang/Float;

    invoke-virtual {p2, p3}, Lcom/yandex/div/internal/widget/slider/SliderView$g;->b(Ljava/lang/Float;)V

    iput-object p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->u:Ljava/lang/Float;

    iget-object p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->g:Lcom/yandex/div/internal/widget/slider/SliderView$g;

    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/slider/SliderView$g;->a()Ljava/lang/Float;

    move-result-object p1

    iget-object p2, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->u:Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/internal/widget/slider/SliderView;->m(Ljava/lang/Float;Ljava/lang/Float;)V

    :cond_7
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final z(FZZ)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/slider/SliderView;->i(F)F

    move-result p1

    iget v0, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->r:F

    cmpg-float v1, v0, p1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_3

    iget-boolean p2, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->k:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->d:Landroid/animation/ValueAnimator;

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->f:Lcom/yandex/div/internal/widget/slider/SliderView$f;

    invoke-virtual {p2, v0}, Lcom/yandex/div/internal/widget/slider/SliderView$f;->b(F)V

    :cond_1
    iget-object p2, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->d:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iget p2, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->r:F

    const/4 p3, 0x2

    new-array p3, p3, [F

    const/4 v0, 0x0

    aput p2, p3, v0

    const/4 p2, 0x1

    aput p1, p3, p2

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p2, Lpp9;

    invoke-direct {p2, p0}, Lpp9;-><init>(Lcom/yandex/div/internal/widget/slider/SliderView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->f:Lcom/yandex/div/internal/widget/slider/SliderView$f;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-string p2, "trySetThumbValue$lambda$3"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/yandex/div/internal/widget/slider/SliderView;->setBaseParams(Landroid/animation/ValueAnimator;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iput-object p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->d:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    iget-object p2, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->d:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4
    if-nez p3, :cond_5

    iget-object p2, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->d:Landroid/animation/ValueAnimator;

    if-nez p2, :cond_6

    :cond_5
    iget-object p2, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->f:Lcom/yandex/div/internal/widget/slider/SliderView$f;

    iget p3, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->r:F

    invoke-virtual {p2, p3}, Lcom/yandex/div/internal/widget/slider/SliderView$f;->b(F)V

    iput p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->r:F

    iget-object p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->f:Lcom/yandex/div/internal/widget/slider/SliderView$f;

    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/slider/SliderView$f;->a()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget p2, p0, Lcom/yandex/div/internal/widget/slider/SliderView;->r:F

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/internal/widget/slider/SliderView;->l(Ljava/lang/Float;F)V

    :cond_6
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
