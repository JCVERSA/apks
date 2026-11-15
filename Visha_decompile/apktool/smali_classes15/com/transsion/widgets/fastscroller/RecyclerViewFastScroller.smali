.class public Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$Companion;,
        Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$Defaults;,
        Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;,
        Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$HandleAppBarLayoutStateListener;,
        Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$HandleStateListener;,
        Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$OnPopupTextUpdate;,
        Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$OnPopupViewUpdate;,
        Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$PopupPosition;,
        Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00fc\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0015\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u001d*\u0004\u00ba\u0001\u00c1\u0001\u0008\u0016\u0018\u0000 \u00dd\u00012\u00020\u00012\u00020\u0002:\u0010\u00dd\u0001\u00de\u0001\u00df\u0001\u00e0\u0001\u00e1\u0001\u00e2\u0001\u00e3\u0001\u00e4\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001b\u0010\u0010\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\rJ\u000f\u0010\u0013\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\rJ\u000f\u0010\u0014\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\rJ\u0019\u0010\u0016\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u000bH\u0003\u00a2\u0006\u0004\u0008\u0018\u0010\rJ\u000f\u0010\u0019\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\rJ\u000f\u0010\u001a\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\rJ\u001f\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001dH\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J\u000f\u0010!\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008!\u0010\rJ\u001f\u0010#\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008#\u0010$J$\u0010(\u001a\u00020\u000b*\u00020%2\u000e\u0008\u0004\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u000b0&H\u0082\u0008\u00a2\u0006\u0004\u0008(\u0010)J\u001d\u0010+\u001a\u00020\u000b*\u00020\u000e2\u0008\u0008\u0002\u0010*\u001a\u00020\u001dH\u0002\u00a2\u0006\u0004\u0008+\u0010,J\u0019\u0010.\u001a\u00020\u00072\u0008\u0008\u0001\u0010-\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008.\u0010/J\u001b\u00102\u001a\u0004\u0018\u0001012\u0008\u0008\u0001\u00100\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u00082\u00103J\u0013\u00105\u001a\u00020\u0007*\u000204H\u0002\u00a2\u0006\u0004\u00085\u00106J\u001b\u00109\u001a\u00020\u000b*\u0002072\u0006\u00108\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u00089\u0010:J\u001b\u0010<\u001a\u00020\u0007*\u0002072\u0006\u0010;\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008<\u0010=J\u001b\u0010?\u001a\u00020\u000b*\u0002072\u0006\u0010>\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008?\u0010@J\u0013\u0010A\u001a\u00020\u001d*\u000207H\u0002\u00a2\u0006\u0004\u0008A\u0010BJ\u0017\u0010C\u001a\u00020\u000b2\u0006\u00108\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008C\u0010\u0017J\u000f\u0010D\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008D\u0010\rJ\u000f\u0010E\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008E\u0010\rJ\u000f\u0010F\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008F\u0010\rJ\u0019\u0010I\u001a\u00020\u000b2\u0008\u0008\u0002\u0010H\u001a\u00020GH\u0002\u00a2\u0006\u0004\u0008I\u0010JJ\u0015\u0010M\u001a\u00020\u000b2\u0006\u0010L\u001a\u00020K\u00a2\u0006\u0004\u0008M\u0010NJ\u000f\u0010O\u001a\u00020\u000bH\u0014\u00a2\u0006\u0004\u0008O\u0010\rJ\u000f\u0010P\u001a\u00020\u000bH\u0014\u00a2\u0006\u0004\u0008P\u0010\rJ\u000f\u0010Q\u001a\u00020\u000bH\u0015\u00a2\u0006\u0004\u0008Q\u0010\rJ\r\u0010R\u001a\u00020\u000b\u00a2\u0006\u0004\u0008R\u0010\rJ#\u0010V\u001a\u00020\u001d2\u0008\u0010S\u001a\u0004\u0018\u00010\u000e2\u0008\u0010U\u001a\u0004\u0018\u00010TH\u0016\u00a2\u0006\u0004\u0008V\u0010WJ\u001d\u0010Z\u001a\u00020\u000b2\u0006\u0010X\u001a\u0002072\u0006\u0010Y\u001a\u00020\u0007\u00a2\u0006\u0004\u0008Z\u0010:J%\u0010]\u001a\u00020\u000b2\u0006\u0010X\u001a\u0002072\u0006\u0010[\u001a\u00020\u00072\u0006\u0010\\\u001a\u00020\u0007\u00a2\u0006\u0004\u0008]\u0010^J\u0015\u0010`\u001a\u00020\u000b2\u0006\u0010_\u001a\u00020\u001d\u00a2\u0006\u0004\u0008`\u0010aJ\u0015\u0010d\u001a\u00020\u000b2\u0006\u0010c\u001a\u00020b\u00a2\u0006\u0004\u0008d\u0010eJ\u0017\u0010f\u001a\u00020\u000b2\u0006\u0010X\u001a\u000207H\u0007\u00a2\u0006\u0004\u0008f\u0010gJ\u000f\u0010h\u001a\u00020\u000bH\u0007\u00a2\u0006\u0004\u0008h\u0010\rR\u0014\u0010j\u001a\u00020i8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008j\u0010kR\u0014\u0010l\u001a\u00020i8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008l\u0010kR*\u0010n\u001a\u00020\u00072\u0006\u0010m\u001a\u00020\u00078\u0006@FX\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008n\u0010o\u001a\u0004\u0008p\u0010q\"\u0004\u0008r\u0010\u0017R\u0016\u0010s\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008s\u0010tR\"\u0010u\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008u\u0010t\u001a\u0004\u0008u\u0010v\"\u0004\u0008w\u0010aR\"\u0010y\u001a\u00020x8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008y\u0010z\u001a\u0004\u0008{\u0010|\"\u0004\u0008}\u0010~R,\u0010\u007f\u001a\u00020\u00072\u0006\u0010m\u001a\u00020\u00078\u0006@FX\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008\u007f\u0010o\u001a\u0005\u0008\u0080\u0001\u0010q\"\u0005\u0008\u0081\u0001\u0010\u0017R.\u0010\u0082\u0001\u001a\u00020\u00072\u0006\u0010m\u001a\u00020\u00078\u0006@FX\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0082\u0001\u0010o\u001a\u0005\u0008\u0083\u0001\u0010q\"\u0005\u0008\u0084\u0001\u0010\u0017R3\u0010\u0086\u0001\u001a\u00030\u0085\u00012\u0007\u0010m\u001a\u00030\u0085\u00018\u0006@FX\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0086\u0001\u0010\u0087\u0001\u001a\u0006\u0008\u0088\u0001\u0010\u0089\u0001\"\u0006\u0008\u008a\u0001\u0010\u008b\u0001R.\u0010\u008c\u0001\u001a\u00020\u00072\u0006\u0010m\u001a\u00020\u00078\u0006@FX\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u008c\u0001\u0010o\u001a\u0005\u0008\u008d\u0001\u0010q\"\u0005\u0008\u008e\u0001\u0010\u0017R.\u0010\u008f\u0001\u001a\u00020\u00072\u0006\u0010m\u001a\u00020\u00078\u0006@FX\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u008f\u0001\u0010o\u001a\u0005\u0008\u0090\u0001\u0010q\"\u0005\u0008\u0091\u0001\u0010\u0017R&\u0010\u0092\u0001\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0092\u0001\u0010o\u001a\u0005\u0008\u0093\u0001\u0010q\"\u0005\u0008\u0094\u0001\u0010\u0017R\u001a\u0010\u0096\u0001\u001a\u00030\u0095\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0096\u0001\u0010\u0097\u0001R\u0018\u0010\u0098\u0001\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0098\u0001\u0010tR\u001a\u0010\u009a\u0001\u001a\u00030\u0099\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u009a\u0001\u0010\u009b\u0001R\u001a\u0010\u009d\u0001\u001a\u00030\u009c\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u009d\u0001\u0010\u009e\u0001R\u0017\u0010X\u001a\u0002078\u0002@\u0002X\u0082.\u00a2\u0006\u0007\n\u0005\u0008X\u0010\u009f\u0001R\u001f\u0010\u00a2\u0001\u001a\u00080\u00a0\u0001j\u0003`\u00a1\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a2\u0001\u0010\u00a3\u0001R\u0018\u0010\u00a4\u0001\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00a4\u0001\u0010tR\u0019\u0010c\u001a\u0004\u0018\u00010b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008c\u0010\u00a5\u0001R\u0018\u0010\u00a6\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00a6\u0001\u0010oR\u001c\u0010\u00a8\u0001\u001a\u0005\u0018\u00010\u00a7\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a8\u0001\u0010\u00a9\u0001R\u0018\u0010\u00aa\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00aa\u0001\u0010oR\u001b\u0010\u00ab\u0001\u001a\u0004\u0018\u00010K8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ab\u0001\u0010\u00ac\u0001R\u001c\u0010\u00ae\u0001\u001a\u0005\u0018\u00010\u00ad\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ae\u0001\u0010\u00af\u0001R\u0019\u0010\u00b0\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b0\u0001\u0010\u00b1\u0001R!\u0010\u00b4\u0001\u001a\n\u0012\u0005\u0012\u00030\u00b3\u00010\u00b2\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b4\u0001\u0010\u00b5\u0001R\u001a\u0010\u00b7\u0001\u001a\u0005\u0018\u00010\u00b6\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00b7\u0001\u0010\u00b8\u0001R\u0018\u0010\u00b9\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00b9\u0001\u0010oR!\u0010\u00bf\u0001\u001a\u00030\u00ba\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00bb\u0001\u0010\u00bc\u0001\u001a\u0006\u0008\u00bd\u0001\u0010\u00be\u0001R\u001f\u0010\u00c2\u0001\u001a\n\u0012\u0005\u0012\u00030\u00c1\u00010\u00c0\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00c2\u0001\u0010\u00bc\u0001R)\u0010\u00c3\u0001\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00c3\u0001\u0010\u00b1\u0001\u001a\u0006\u0008\u00c4\u0001\u0010\u00c5\u0001\"\u0006\u0008\u00c6\u0001\u0010\u00c7\u0001R\u001a\u0010\u00c9\u0001\u001a\u00030\u00c8\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c9\u0001\u0010\u00ca\u0001R\u0018\u0010\u00cb\u0001\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00cb\u0001\u0010tR\u0017\u0010\u00cd\u0001\u001a\u00020\u001b8BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00cc\u0001\u0010\u00c5\u0001R\u0017\u0010\u00cf\u0001\u001a\u00020\u001b8BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00ce\u0001\u0010\u00c5\u0001R\u0017\u0010\u00d1\u0001\u001a\u00020\u001b8BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00d0\u0001\u0010\u00c5\u0001R-\u0010\u00d6\u0001\u001a\u0004\u0018\u0001012\u0008\u0010m\u001a\u0004\u0018\u0001018F@FX\u0086\u000e\u00a2\u0006\u0010\u001a\u0006\u0008\u00d2\u0001\u0010\u00d3\u0001\"\u0006\u0008\u00d4\u0001\u0010\u00d5\u0001R-\u0010\u00d9\u0001\u001a\u0004\u0018\u0001012\u0008\u0010m\u001a\u0004\u0018\u0001018F@FX\u0086\u000e\u00a2\u0006\u0010\u001a\u0006\u0008\u00d7\u0001\u0010\u00d3\u0001\"\u0006\u0008\u00d8\u0001\u0010\u00d5\u0001R-\u0010\u00dc\u0001\u001a\u0004\u0018\u0001012\u0008\u0010m\u001a\u0004\u0018\u0001018F@FX\u0086\u000e\u00a2\u0006\u0010\u001a\u0006\u0008\u00da\u0001\u0010\u00d3\u0001\"\u0006\u0008\u00db\u0001\u0010\u00d5\u0001\u00a8\u0006\u00e5\u0001"
    }
    d2 = {
        "Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;",
        "Landroid/widget/RelativeLayout;",
        "Landroid/view/View$OnTouchListener;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Lzfb;",
        "initCsRefreshLayout",
        "()V",
        "Landroid/view/View;",
        "view",
        "getDecorViewFromView",
        "(Landroid/view/View;)Landroid/view/View;",
        "alignPopupLayout",
        "alignTrackAndHandle",
        "setTrackMargin",
        "newComputedSize",
        "refreshHandleImageViewSize",
        "(I)V",
        "addThumbAndTrack",
        "addPopupLayout",
        "enableNestedScrolling",
        "",
        "offset",
        "",
        "delayHide",
        "moveHandle",
        "(FZ)V",
        "delayHideHandleImageView",
        "finalOffset",
        "moveViewToRelativePositionWithBounds",
        "(Landroid/view/View;F)V",
        "Landroid/view/ViewPropertyAnimator;",
        "Lkotlin/Function0;",
        "body",
        "onAnimationCancelled",
        "(Landroid/view/ViewPropertyAnimator;Lc74;)V",
        "makeVisible",
        "animateVisibility",
        "(Landroid/view/View;Z)V",
        "dimenSize",
        "loadDimenFromResource",
        "(I)I",
        "styleId",
        "Landroid/graphics/drawable/Drawable;",
        "loadDrawableFromAttributes",
        "(I)Landroid/graphics/drawable/Drawable;",
        "Landroidx/recyclerview/widget/LinearLayoutManager;",
        "getTotalCompletelyVisibleItemCount",
        "(Landroidx/recyclerview/widget/LinearLayoutManager;)I",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "position",
        "safeScrollToPosition",
        "(Landroidx/recyclerview/widget/RecyclerView;I)V",
        "relativeRawPos",
        "computePositionForOffsetAndScroll",
        "(Landroidx/recyclerview/widget/RecyclerView;F)I",
        "newOffset",
        "scrollToRelativeOffset",
        "(Landroidx/recyclerview/widget/RecyclerView;F)V",
        "isRecyclerNearBottom",
        "(Landroidx/recyclerview/widget/RecyclerView;)Z",
        "updateTextInPopup",
        "setEmptySpaceItemDecorator",
        "registerDataObserver",
        "initImpl",
        "",
        "message",
        "log",
        "(Ljava/lang/String;)V",
        "Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$HandleAppBarLayoutStateListener;",
        "handleAppBarLayoutStateListener",
        "setHandleAppBarLayoutStateListener",
        "(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$HandleAppBarLayoutStateListener;)V",
        "onDetachedFromWindow",
        "onAttachedToWindow",
        "onFinishInflate",
        "refreshScrollerBar",
        "v",
        "Landroid/view/MotionEvent;",
        "event",
        "onTouch",
        "(Landroid/view/View;Landroid/view/MotionEvent;)Z",
        "recyclerView",
        "newState",
        "onScrollStateChanged",
        "dx",
        "dy",
        "onScrolled",
        "(Landroidx/recyclerview/widget/RecyclerView;II)V",
        "isExpand",
        "setAppBarExpand",
        "(Z)V",
        "Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$HandleStateListener;",
        "handleStateListener",
        "setHandleStateListener",
        "(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$HandleStateListener;)V",
        "attachFastScrollerToRecyclerView",
        "(Landroidx/recyclerview/widget/RecyclerView;)V",
        "detachFastScrollerFromRecyclerView",
        "",
        "PRESSED_STATE_SET",
        "[I",
        "EMPTY_STATE_SET",
        "value",
        "textStyle",
        "I",
        "getTextStyle",
        "()I",
        "setTextStyle",
        "isFixedSizeHandle",
        "Z",
        "isFastScrollEnabled",
        "()Z",
        "setFastScrollEnabled",
        "Landroid/widget/TextView;",
        "popupTextView",
        "Landroid/widget/TextView;",
        "getPopupTextView",
        "()Landroid/widget/TextView;",
        "setPopupTextView",
        "(Landroid/widget/TextView;)V",
        "trackMarginStart",
        "getTrackMarginStart",
        "setTrackMarginStart",
        "trackMarginEnd",
        "getTrackMarginEnd",
        "setTrackMarginEnd",
        "Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;",
        "fastScrollDirection",
        "Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;",
        "getFastScrollDirection",
        "()Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;",
        "setFastScrollDirection",
        "(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;)V",
        "handleWidth",
        "getHandleWidth",
        "setHandleWidth",
        "handleHeight",
        "getHandleHeight",
        "setHandleHeight",
        "handleVisibilityDuration",
        "getHandleVisibilityDuration",
        "setHandleVisibilityDuration",
        "Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$PopupPosition;",
        "popupPosition",
        "Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$PopupPosition;",
        "hasEmptyItemDecorator",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "handleImageView",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "Landroid/widget/LinearLayout;",
        "trackView",
        "Landroid/widget/LinearLayout;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "popupAnimationRunnable",
        "Ljava/lang/Runnable;",
        "isEngaged",
        "Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$HandleStateListener;",
        "previousTotalVisibleItem",
        "Lkotlinx/coroutines/j;",
        "hideHandleJob",
        "Lkotlinx/coroutines/j;",
        "mScrollState",
        "mHandleAppBarLayoutStateListener",
        "Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$HandleAppBarLayoutStateListener;",
        "Lcom/transsion/WindowInfoViewModel;",
        "mWindowInfoViewModel",
        "Lcom/transsion/WindowInfoViewModel;",
        "mCurrentRelativePos",
        "F",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/transsion/widgets/CustomSwipeRefreshLayout;",
        "mCsRefreshLayout",
        "Ljava/lang/ref/WeakReference;",
        "Landroid/content/res/TypedArray;",
        "attribs",
        "Landroid/content/res/TypedArray;",
        "totalVisibleItems",
        "com/transsion/widgets/fastscroller/RecyclerViewFastScroller$emptySpaceItemDecoration$2$1",
        "emptySpaceItemDecoration$delegate",
        "Lyi5;",
        "getEmptySpaceItemDecoration",
        "()Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$emptySpaceItemDecoration$2$1;",
        "emptySpaceItemDecoration",
        "Lyi5;",
        "com/transsion/widgets/fastscroller/RecyclerViewFastScroller$adapterDataObserver$1$1",
        "adapterDataObserver",
        "mLastScrollerOffset",
        "getMLastScrollerOffset",
        "()F",
        "setMLastScrollerOffset",
        "(F)V",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "onScrollListener",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "mIsAppBarExpand",
        "getTrackLength",
        "trackLength",
        "getHandleLength",
        "handleLength",
        "getPopupLength",
        "popupLength",
        "getTrackDrawable",
        "()Landroid/graphics/drawable/Drawable;",
        "setTrackDrawable",
        "(Landroid/graphics/drawable/Drawable;)V",
        "trackDrawable",
        "getPopupDrawable",
        "setPopupDrawable",
        "popupDrawable",
        "getHandleDrawable",
        "setHandleDrawable",
        "handleDrawable",
        "Companion",
        "FastScrollDirection",
        "PopupPosition",
        "Defaults",
        "OnPopupViewUpdate",
        "OnPopupTextUpdate",
        "HandleStateListener",
        "HandleAppBarLayoutStateListener",
        "common_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$Companion;

.field private static final ERROR_MESSAGE_NO_RECYCLER_VIEW:Ljava/lang/String; = "The RecyclerView required for initialization with FastScroller cannot be null"

.field private static final TAG:Ljava/lang/String; = "RecyclerViewFastScroller"


# instance fields
.field private final EMPTY_STATE_SET:[I

.field private final PRESSED_STATE_SET:[I

.field private final adapterDataObserver:Lyi5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyi5;"
        }
    .end annotation
.end field

.field private final attribs:Landroid/content/res/TypedArray;

.field private final emptySpaceItemDecoration$delegate:Lyi5;

.field private fastScrollDirection:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;

.field private handleHeight:I

.field private handleImageView:Landroidx/appcompat/widget/AppCompatImageView;

.field private handleStateListener:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$HandleStateListener;

.field private handleVisibilityDuration:I

.field private handleWidth:I

.field private hasEmptyItemDecorator:Z

.field private hideHandleJob:Lkotlinx/coroutines/j;

.field private isEngaged:Z

.field private isFastScrollEnabled:Z

.field private isFixedSizeHandle:Z

.field private mCsRefreshLayout:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/widgets/CustomSwipeRefreshLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentRelativePos:F

.field private mHandleAppBarLayoutStateListener:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$HandleAppBarLayoutStateListener;

.field private mIsAppBarExpand:Z

.field private mLastScrollerOffset:F

.field private mScrollState:I

.field private mWindowInfoViewModel:Lcom/transsion/WindowInfoViewModel;

.field private onScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private popupAnimationRunnable:Ljava/lang/Runnable;

.field private popupPosition:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$PopupPosition;

.field public popupTextView:Landroid/widget/TextView;

.field private previousTotalVisibleItem:I

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private textStyle:I
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation
.end field

.field private totalVisibleItems:I

.field private trackMarginEnd:I

.field private trackMarginStart:I

.field private trackView:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->Companion:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$Companion;

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

    invoke-direct/range {v1 .. v6}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p3, 0x10100a7

    .line 5
    filled-new-array {p3}, [I

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->PRESSED_STATE_SET:[I

    const/4 p3, 0x0

    .line 6
    new-array v0, p3, [I

    iput-object v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->EMPTY_STATE_SET:[I

    .line 7
    sget-object v0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$Defaults;->INSTANCE:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$Defaults;

    invoke-virtual {v0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$Defaults;->getTextStyle()I

    move-result v1

    iput v1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->textStyle:I

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->isFastScrollEnabled:Z

    .line 9
    invoke-virtual {v0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$Defaults;->getFastScrollDirection()Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->fastScrollDirection:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;

    const/4 v2, -0x2

    .line 10
    iput v2, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleWidth:I

    .line 11
    iput v2, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleHeight:I

    const/4 v2, -0x1

    .line 12
    iput v2, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleVisibilityDuration:I

    .line 13
    invoke-virtual {v0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$Defaults;->getPopupPosition()Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$PopupPosition;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->popupPosition:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$PopupPosition;

    .line 14
    iput-boolean v1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->hasEmptyItemDecorator:Z

    .line 15
    new-instance v2, Ljava/lang/ref/WeakReference;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->mCsRefreshLayout:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_0

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v4, Lcom/transsion/common/R$styleable;->RecyclerViewFastScroller:[I

    invoke-virtual {v2, p2, v4, p3, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v3

    .line 17
    :goto_0
    iput-object p2, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->attribs:Landroid/content/res/TypedArray;

    .line 18
    invoke-direct {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->addPopupLayout()V

    .line 19
    invoke-direct {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->addThumbAndTrack()V

    .line 20
    invoke-direct {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->initCsRefreshLayout()V

    if-eqz p2, :cond_7

    .line 21
    sget v2, Lcom/transsion/common/R$styleable;->RecyclerViewFastScroller_popupPosition:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 22
    sget-object v4, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$PopupPosition;->Companion:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$PopupPosition$Companion;

    .line 23
    invoke-virtual {v0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$Defaults;->getPopupPosition()Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$PopupPosition;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$PopupPosition;->getValue()I

    move-result v5

    .line 24
    invoke-virtual {p2, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 25
    invoke-virtual {v4, v2}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$PopupPosition$Companion;->getPopupPositionByValue(I)Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$PopupPosition;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->popupPosition:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$PopupPosition;

    .line 26
    :cond_1
    sget v2, Lcom/transsion/common/R$styleable;->RecyclerViewFastScroller_fastScrollDirection:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 27
    sget-object v4, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;->Companion:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection$Companion;

    .line 28
    invoke-virtual {v0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$Defaults;->getFastScrollDirection()Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;->getValue()I

    move-result v5

    .line 29
    invoke-virtual {p2, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 30
    invoke-virtual {v4, v2}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection$Companion;->getFastScrollDirectionByValue(I)Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->setFastScrollDirection(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;)V

    .line 31
    :cond_2
    sget v2, Lcom/transsion/common/R$styleable;->RecyclerViewFastScroller_handleHasFixedSize:I

    .line 32
    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->isFixedSizeHandle:Z

    .line 33
    sget v2, Lcom/transsion/common/R$styleable;->RecyclerViewFastScroller_fastScrollEnabled:I

    .line 34
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->isFastScrollEnabled:Z

    .line 35
    sget v2, Lcom/transsion/common/R$styleable;->RecyclerViewFastScroller_addLastItemPadding:I

    .line 36
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->hasEmptyItemDecorator:Z

    .line 37
    iget-object v1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->trackView:Landroid/widget/LinearLayout;

    if-nez v1, :cond_3

    const-string v1, "trackView"

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v3, v1

    .line 38
    :goto_1
    sget v1, Lcom/transsion/common/R$styleable;->RecyclerViewFastScroller_trackDrawable:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 39
    invoke-virtual {v3, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 40
    sget v1, Lcom/transsion/common/R$styleable;->RecyclerViewFastScroller_supportSwipeToRefresh:I

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 41
    invoke-direct {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->enableNestedScrolling()V

    .line 42
    :cond_4
    invoke-direct {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->alignTrackAndHandle()V

    .line 43
    invoke-direct {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->alignPopupLayout()V

    .line 44
    invoke-virtual {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->getPopupTextView()Landroid/widget/TextView;

    move-result-object v1

    .line 45
    sget v2, Lcom/transsion/common/R$styleable;->RecyclerViewFastScroller_popupDrawable:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 46
    invoke-direct {p0, v2}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->loadDrawableFromAttributes(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_2

    .line 47
    :cond_5
    invoke-virtual {v0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$Defaults;->getPopupDrawableInt()I

    move-result v2

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 48
    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 49
    sget v1, Lcom/transsion/common/R$styleable;->RecyclerViewFastScroller_handleDrawable:I

    invoke-direct {p0, v1}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->loadDrawableFromAttributes(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_6

    .line 50
    invoke-virtual {v0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$Defaults;->getHandleDrawableInt()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 51
    :cond_6
    invoke-virtual {p0, v1}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->setHandleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    sget p1, Lcom/transsion/common/R$styleable;->RecyclerViewFastScroller_handleVisibilityDuration:I

    const/16 v1, 0x7d0

    .line 53
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 54
    iput p1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleVisibilityDuration:I

    .line 55
    sget p1, Lcom/transsion/common/R$styleable;->RecyclerViewFastScroller_handleHeight:I

    .line 56
    invoke-virtual {v0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$Defaults;->getHandleHeight()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->loadDimenFromResource(I)I

    move-result v1

    .line 57
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 58
    invoke-virtual {p0, p1}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->setHandleHeight(I)V

    .line 59
    sget p1, Lcom/transsion/common/R$styleable;->RecyclerViewFastScroller_handleWidth:I

    .line 60
    invoke-virtual {v0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$Defaults;->getHandleWidth()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->loadDimenFromResource(I)I

    move-result v1

    .line 61
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 62
    invoke-virtual {p0, p1}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->setHandleWidth(I)V

    .line 63
    sget p1, Lcom/transsion/common/R$styleable;->RecyclerViewFastScroller_trackMarginStart:I

    .line 64
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 65
    invoke-virtual {p0, p1}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->setTrackMarginStart(I)V

    .line 66
    sget p1, Lcom/transsion/common/R$styleable;->RecyclerViewFastScroller_trackMarginEnd:I

    .line 67
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 68
    invoke-virtual {p0, p1}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->setTrackMarginEnd(I)V

    .line 69
    invoke-virtual {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->getPopupTextView()Landroid/widget/TextView;

    move-result-object p1

    .line 70
    sget p3, Lcom/transsion/common/R$styleable;->RecyclerViewFastScroller_popupTextStyle:I

    .line 71
    invoke-virtual {v0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$Defaults;->getTextStyle()I

    move-result v0

    .line 72
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 73
    invoke-static {p1, p3}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 74
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    :cond_7
    new-instance p1, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$special$$inlined$Runnable$1;

    invoke-direct {p1, p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$special$$inlined$Runnable$1;-><init>(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;)V

    .line 76
    iput-object p1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->popupAnimationRunnable:Ljava/lang/Runnable;

    .line 77
    new-instance p1, Lhp8;

    invoke-direct {p1, p0}, Lhp8;-><init>(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;)V

    invoke-static {p1}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->emptySpaceItemDecoration$delegate:Lyi5;

    .line 78
    new-instance p1, Lip8;

    invoke-direct {p1, p0}, Lip8;-><init>(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;)V

    invoke-static {p1}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->adapterDataObserver:Lyi5;

    .line 79
    new-instance p1, Lcom/transsion/widgets/fastscroller/RecyclerViewScrollListener;

    invoke-direct {p1, p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewScrollListener;-><init>(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;)V

    iput-object p1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->onScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

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
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->onFinishInflate$lambda$5(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;)V

    return-void
.end method

.method public static final synthetic access$animateVisibility(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->animateVisibility(Landroid/view/View;Z)V

    return-void
.end method

.method public static final synthetic access$getHandleImageView$p(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;)Landroidx/appcompat/widget/AppCompatImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleImageView:Landroidx/appcompat/widget/AppCompatImageView;

    return-object p0
.end method

.method public static final synthetic access$getRecyclerView$p(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static final synthetic access$setPreviousTotalVisibleItem$p(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->previousTotalVisibleItem:I

    return-void
.end method

.method public static final synthetic access$setTotalVisibleItems$p(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->totalVisibleItems:I

    return-void
.end method

.method private static final adapterDataObserver$lambda$21(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;)Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$adapterDataObserver$1$1;
    .locals 1

    new-instance v0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$adapterDataObserver$1$1;

    invoke-direct {v0, p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$adapterDataObserver$1$1;-><init>(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;)V

    return-object v0
.end method

.method private final addPopupLayout()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/common/R$layout;->fastscroller_popup:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/transsion/common/R$id;->fastScrollPopupTV:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->setPopupTextView(Landroid/widget/TextView;)V

    return-void
.end method

.method private final addThumbAndTrack()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/common/R$layout;->fastscroller_track_thumb:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/transsion/common/R$id;->thumbIV:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleImageView:Landroidx/appcompat/widget/AppCompatImageView;

    sget v0, Lcom/transsion/common/R$id;->trackView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->trackView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleImageView:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "handleImageView"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->trackView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    const-string v0, "trackView"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private final alignPopupLayout()V
    .locals 7

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->popupPosition:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$PopupPosition;

    sget-object v2, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "trackView"

    const/4 v5, 0x2

    if-eq v1, v2, :cond_5

    if-ne v1, v5, :cond_4

    iget-object v1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->fastScrollDirection:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;

    sget-object v6, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v6, v1

    if-eq v1, v2, :cond_2

    if-ne v1, v5, :cond_1

    iget-object v1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->trackView:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_4

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_2
    iget-object v1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->trackView:Landroid/widget/LinearLayout;

    if-nez v1, :cond_3

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v3, v1

    :goto_1
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v1

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_4

    :cond_4
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_5
    iget-object v1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->fastScrollDirection:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;

    sget-object v6, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v6, v1

    if-eq v1, v2, :cond_8

    if-ne v1, v5, :cond_7

    iget-object v1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->trackView:Landroid/widget/LinearLayout;

    if-nez v1, :cond_6

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move-object v3, v1

    :goto_2
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_4

    :cond_7
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_8
    iget-object v1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->trackView:Landroid/widget/LinearLayout;

    if-nez v1, :cond_9

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    move-object v3, v1

    :goto_3
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v1

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_4
    invoke-virtual {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->getPopupTextView()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final alignTrackAndHandle()V
    .locals 9

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/common/R$dimen;->default_handle_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->fastScrollDirection:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;

    sget-object v2, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    const-string v4, "trackView"

    const-string v5, "handleImageView"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleImageView:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez v1, :cond_0

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    move-object v1, v7

    :cond_0
    invoke-virtual {v1, v6, v0, v6, v0}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->getPopupTextView()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x8

    sget v5, Lcom/transsion/common/R$id;->trackView:I

    invoke-virtual {v1, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->trackView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v7, v0

    :goto_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_3
    iget-object v1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleImageView:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez v1, :cond_4

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    move-object v1, v7

    :cond_4
    invoke-virtual {v1, v0, v6, v0, v6}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->getPopupTextView()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x13

    sget v5, Lcom/transsion/common/R$id;->trackView:I

    invoke-virtual {v1, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->trackView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_5

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v7, v0

    :goto_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    new-instance v0, Lep8;

    invoke-direct {v0, p0}, Lep8;-><init>(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final alignTrackAndHandle$lambda$12(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->fastScrollDirection:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;

    sget-object v1, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const-string v2, "trackView"

    const/4 v3, 0x0

    const-string v4, "handleImageView"

    const/4 v5, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleImageView:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez v0, :cond_0

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v5

    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setY(F)V

    invoke-virtual {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->getPopupTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->trackView:Landroid/widget/LinearLayout;

    if-nez v1, :cond_1

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v1, v5

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->getPopupTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    goto :goto_0

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_3
    iget-object v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleImageView:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez v0, :cond_4

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v5

    :cond_4
    invoke-virtual {v0, v3}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->getPopupTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->trackView:Landroid/widget/LinearLayout;

    if-nez v1, :cond_5

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v1, v5

    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->getPopupTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    :goto_0
    iget-object v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->onScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    iget-object p0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p0, :cond_6

    const-string p0, "recyclerView"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move-object v5, p0

    :goto_1
    const/4 p0, 0x0

    invoke-virtual {v0, v5, p0, p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method

.method private final animateVisibility(Landroid/view/View;Z)V
    .locals 2

    if-eqz p2, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v0, 0x1f4

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-string v0, "setDuration(...)"

    invoke-static {p2, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$animateVisibility$$inlined$onAnimationCancelled$1;

    invoke-direct {v0, p1, p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$animateVisibility$$inlined$onAnimationCancelled$1;-><init>(Landroid/view/View;F)V

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public static synthetic animateVisibility$default(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;Landroid/view/View;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_0

    move p2, p4

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->animateVisibility(Landroid/view/View;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: animateVisibility"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic b(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;ILandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->onFinishInflate$lambda$5$lambda$4(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;ILandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;)Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$emptySpaceItemDecoration$2$1;
    .locals 0

    invoke-static {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->emptySpaceItemDecoration_delegate$lambda$20(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;)Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$emptySpaceItemDecoration$2$1;

    move-result-object p0

    return-object p0
.end method

.method private final computePositionForOffsetAndScroll(Landroidx/recyclerview/widget/RecyclerView;F)I
    .locals 7

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/4 v3, -0x1

    if-gtz v1, :cond_1

    return v3

    :cond_1
    invoke-static {p2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-direct {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->getTrackLength()F

    move-result v3

    invoke-direct {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->getHandleLength()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v6, v4, v5

    if-lez v6, :cond_2

    invoke-static {v4}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_2

    :cond_3
    move v3, v4

    :goto_2
    div-float/2addr p2, v3

    invoke-static {p2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {p2, v5, v4}, Lwn8;->j(FFF)F

    move-result v5

    :cond_4
    instance-of p2, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p2, :cond_7

    add-int/lit8 v1, v1, -0x1

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result p2

    if-eqz p2, :cond_5

    sub-float/2addr v4, v5

    int-to-float p2, v1

    mul-float/2addr v4, p2

    invoke-static {v4}, Ls86;->c(F)I

    move-result p2

    invoke-static {p2, v2, v1}, Lwn8;->k(III)I

    move-result p2

    goto :goto_3

    :cond_5
    int-to-float p2, v1

    mul-float/2addr p2, v5

    invoke-static {p2}, Ls86;->c(F)I

    move-result p2

    invoke-static {p2, v2, v1}, Lwn8;->k(III)I

    move-result p2

    :goto_3
    iget-object v1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->fastScrollDirection:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;

    sget-object v2, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;->VERTICAL:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;

    if-ne v1, v2, :cond_6

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result v0

    if-nez v0, :cond_6

    const v0, 0x3f6b851f    # 0.92f

    cmpl-float v0, v5, v0

    if-ltz v0, :cond_6

    invoke-direct {p0, p1}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->isRecyclerNearBottom(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, p1, v5}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->scrollToRelativeOffset(Landroidx/recyclerview/widget/RecyclerView;F)V

    goto :goto_4

    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->safeScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;I)V

    goto :goto_4

    :cond_7
    add-int/lit8 v1, v1, -0x1

    int-to-float p2, v1

    mul-float/2addr v5, p2

    invoke-static {v5}, Ls86;->c(F)I

    move-result p2

    invoke-static {p2, v2, v1}, Lwn8;->k(III)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->safeScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;I)V

    :goto_4
    return p2

    :cond_8
    return v3
.end method

.method public static synthetic d(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;)Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$adapterDataObserver$1$1;
    .locals 0

    invoke-static {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->adapterDataObserver$lambda$21(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;)Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$adapterDataObserver$1$1;

    move-result-object p0

    return-object p0
.end method

.method private final delayHideHandleImageView()V
    .locals 8

    iget v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleVisibilityDuration:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->hideHandleJob:Lkotlinx/coroutines/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/j$a;->b(Lkotlinx/coroutines/j;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lmc2;->c()Lrx5;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/d;->a(Lkotlin/coroutines/d;)Lnk1;

    move-result-object v2

    new-instance v5, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$delayHideHandleImageView$1;

    invoke-direct {v5, p0, v1}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$delayHideHandleImageView$1;-><init>(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;Lwh1;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->hideHandleJob:Lkotlinx/coroutines/j;

    :cond_1
    return-void
.end method

.method public static synthetic e(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->alignTrackAndHandle$lambda$12(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;)V

    return-void
.end method

.method private static final emptySpaceItemDecoration_delegate$lambda$20(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;)Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$emptySpaceItemDecoration$2$1;
    .locals 1

    new-instance v0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$emptySpaceItemDecoration$2$1;

    invoke-direct {v0, p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$emptySpaceItemDecoration$2$1;-><init>(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;)V

    return-object v0
.end method

.method private final enableNestedScrolling()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method private final getDecorViewFromView(Landroid/view/View;)Landroid/view/View;
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private final getEmptySpaceItemDecoration()Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$emptySpaceItemDecoration$2$1;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->emptySpaceItemDecoration$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$emptySpaceItemDecoration$2$1;

    return-object p0
.end method

.method private final getHandleLength()F
    .locals 4

    iget-object v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->fastScrollDirection:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;

    sget-object v1, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "handleImageView"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleImageView:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez p0, :cond_0

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v2, p0

    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result p0

    goto :goto_2

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_2
    iget-object p0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleImageView:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez p0, :cond_3

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v2, p0

    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result p0

    :goto_2
    int-to-float p0, p0

    return p0
.end method

.method private final getPopupLength()F
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->fastScrollDirection:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;

    sget-object v1, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->getPopupTextView()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->getPopupTextView()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    :goto_0
    int-to-float p0, p0

    return p0
.end method

.method private final getTotalCompletelyVisibleItemCount(Landroidx/recyclerview/widget/LinearLayoutManager;)I
    .locals 4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p0

    :goto_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-eq v3, v2, :cond_2

    move-object v1, v0

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    :goto_2
    if-eq p0, v2, :cond_5

    if-ne p1, v2, :cond_4

    goto :goto_3

    :cond_4
    sub-int v2, p1, p0

    :cond_5
    :goto_3
    return v2
.end method

.method private final getTrackLength()F
    .locals 4

    iget-object v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->fastScrollDirection:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;

    sget-object v1, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "trackView"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->trackView:Landroid/widget/LinearLayout;

    if-nez p0, :cond_0

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v2, p0

    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result p0

    goto :goto_2

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_2
    iget-object p0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->trackView:Landroid/widget/LinearLayout;

    if-nez p0, :cond_3

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v2, p0

    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result p0

    :goto_2
    int-to-float p0, p0

    return p0
.end method

.method private final initCsRefreshLayout()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->mCsRefreshLayout:Ljava/lang/ref/WeakReference;

    return-void

    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final initImpl()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->hasEmptyItemDecorator:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->setEmptySpaceItemDecorator()V

    :cond_0
    invoke-direct {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->registerDataObserver()V

    return-void
.end method

.method private final isRecyclerNearBottom(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result p0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    sub-int/2addr p0, v0

    const/4 v0, 0x0

    if-gtz p0, :cond_0

    return v0

    :cond_0
    int-to-float p1, p1

    int-to-float p0, p0

    div-float/2addr p1, p0

    const p0, 0x3f59999a    # 0.85f

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private final loadDimenFromResource(I)I
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private final loadDrawableFromAttributes(I)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->attribs:Landroid/content/res/TypedArray;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private final log(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static synthetic log$default(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, ""

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: log"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final moveHandle(FZ)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->delayHideHandleImageView()V

    :cond_0
    iget-object p2, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleImageView:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez p2, :cond_1

    const-string p2, "handleImageView"

    invoke-static {p2}, Ly45;->B(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->moveViewToRelativePositionWithBounds(Landroid/view/View;F)V

    invoke-virtual {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->getPopupTextView()Landroid/widget/TextView;

    move-result-object p2

    invoke-direct {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->getPopupLength()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-direct {p0, p2, p1}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->moveViewToRelativePositionWithBounds(Landroid/view/View;F)V

    return-void
.end method

.method private final moveViewToRelativePositionWithBounds(Landroid/view/View;F)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->fastScrollDirection:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;

    sget-object v1, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {p2, v2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-direct {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->getTrackLength()F

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p0, v0

    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setX(F)V

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    invoke-static {p2, v2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-direct {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->getTrackLength()F

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p0, v0

    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setY(F)V

    :goto_0
    return-void
.end method

.method private final onAnimationCancelled(Landroid/view/ViewPropertyAnimator;Lc74;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewPropertyAnimator;",
            "Lc74;",
            ")V"
        }
    .end annotation

    new-instance p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$onAnimationCancelled$1;

    invoke-direct {p0, p2}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$onAnimationCancelled$1;-><init>(Lc74;)V

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private static final onFinishInflate$lambda$5(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    new-instance v1, Lgp8;

    invoke-direct {v1, p0, v0}, Lgp8;-><init>(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;I)V

    iget-object v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleImageView:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "handleImageView"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->trackView:Landroid/widget/LinearLayout;

    if-nez p0, :cond_1

    const-string p0, "trackView"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, p0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private static final onFinishInflate$lambda$5$lambda$4(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;ILandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 p2, 0x2

    new-array v0, p2, [I

    iget-object v1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->trackView:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "trackView"

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v1, Lkotlin/Pair;

    const/4 v3, 0x0

    aget v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aget v0, v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    and-int/2addr v4, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Touch Action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->log(Ljava/lang/String;)V

    if-eqz v4, :cond_5

    if-eq v4, v5, :cond_1

    if-eq v4, p2, :cond_5

    const/4 p1, 0x3

    if-eq v4, p1, :cond_1

    goto/16 :goto_7

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->mCurrentRelativePos:F

    iput-boolean v3, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->isEngaged:Z

    invoke-virtual {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->getHandleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->EMPTY_STATE_SET:[I

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2
    invoke-direct {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->delayHideHandleImageView()V

    iget-object p1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->mCsRefreshLayout:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v3}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setHandleViewPressed(Z)V

    :cond_3
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    iget-boolean p1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->isFastScrollEnabled:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleStateListener:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$HandleStateListener;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$HandleStateListener;->onReleased()V

    :cond_4
    invoke-super {p0, p3}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto/16 :goto_7

    :cond_5
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v4, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->mCsRefreshLayout:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_6

    invoke-direct {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->initCsRefreshLayout()V

    :cond_6
    iget-object v4, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->mCsRefreshLayout:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    if-eqz v4, :cond_7

    invoke-virtual {v4, v5}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setHandleViewPressed(Z)V

    :cond_7
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->adapterDataObserver:Lyi5;

    invoke-interface {v4}, Lyi5;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-direct {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->registerDataObserver()V

    :cond_8
    invoke-virtual {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->getHandleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_9

    iget-object v6, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->PRESSED_STATE_SET:[I

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_9
    iput-boolean v5, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->isEngaged:Z

    iget-boolean v4, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->isFastScrollEnabled:Z

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleStateListener:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$HandleStateListener;

    if-eqz v4, :cond_a

    invoke-interface {v4}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$HandleStateListener;->onEngaged()V

    :cond_a
    invoke-direct {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->getHandleLength()F

    move-result v4

    int-to-float v6, p2

    div-float/2addr v4, v6

    iget-object v6, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->mWindowInfoViewModel:Lcom/transsion/WindowInfoViewModel;

    if-eqz v6, :cond_b

    iget-object v6, v6, Lcom/transsion/WindowInfoViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v6, v7}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    goto :goto_0

    :cond_b
    move v6, v3

    :goto_0
    if-eqz v6, :cond_f

    new-array v6, p2, [I

    invoke-direct {p0, p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->getDecorViewFromView(Landroid/view/View;)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_c

    invoke-virtual {v7, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    :cond_c
    aget v7, v6, v3

    int-to-float v7, v7

    aget v6, v6, v5

    int-to-float v6, v6

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    sub-float/2addr v8, v7

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    sub-float/2addr v7, v6

    iget-object v6, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->fastScrollDirection:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;

    sget-object v9, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v9, v6

    if-eq v6, v5, :cond_e

    if-ne v6, p2, :cond_d

    int-to-float v0, v0

    sub-float/2addr v8, v0

    sub-float/2addr v8, v4

    goto :goto_1

    :cond_d
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_e
    int-to-float v0, v1

    sub-float/2addr v7, v0

    sub-float v8, v7, v4

    goto :goto_1

    :cond_f
    iget-object v6, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->fastScrollDirection:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;

    sget-object v7, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v7, v6

    if-eq v6, v5, :cond_11

    if-ne v6, p2, :cond_10

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    int-to-float v0, v0

    sub-float/2addr v1, v0

    sub-float/2addr v1, v4

    move v8, v1

    goto :goto_1

    :cond_10
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_11
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    int-to-float v1, v1

    sub-float/2addr v0, v1

    sub-float/2addr v0, v4

    move v8, v0

    :goto_1
    iget-boolean v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->isFastScrollEnabled:Z

    const-string v1, "recyclerView"

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleImageView:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v6, "handleImageView"

    if-nez v0, :cond_12

    invoke-static {v6}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_12
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v0, v7}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleImageView:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez v0, :cond_13

    invoke-static {v6}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_13
    invoke-direct {p0, v0, v5}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->animateVisibility(Landroid/view/View;Z)V

    invoke-direct {p0, v8, v3}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->moveHandle(FZ)V

    iget-object v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_14

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_14
    invoke-direct {p0, v0, v8}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->computePositionForOffsetAndScroll(Landroidx/recyclerview/widget/RecyclerView;F)I

    move-result v0

    iget v7, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->mCurrentRelativePos:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    int-to-float p1, p1

    cmpl-float p1, v7, p1

    if-lez p1, :cond_1a

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, p2, :cond_1a

    invoke-virtual {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->getHandleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_15

    iget-object v7, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->PRESSED_STATE_SET:[I

    invoke-virtual {p1, v7}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_15
    iget-object p1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleStateListener:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$HandleStateListener;

    if-eqz p1, :cond_1a

    iget-object v7, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->fastScrollDirection:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;

    sget-object v9, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v7, v9, v7

    if-eq v7, v5, :cond_18

    if-ne v7, p2, :cond_17

    iget-object p2, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleImageView:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez p2, :cond_16

    invoke-static {v6}, Ly45;->B(Ljava/lang/String;)V

    move-object p2, v2

    :cond_16
    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result p2

    goto :goto_2

    :cond_17
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_18
    iget-object p2, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleImageView:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez p2, :cond_19

    invoke-static {v6}, Ly45;->B(Ljava/lang/String;)V

    move-object p2, v2

    :cond_19
    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result p2

    :goto_2
    invoke-interface {p1, p2, v0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$HandleStateListener;->onDragged(FI)V

    :cond_1a
    iput v8, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->mCurrentRelativePos:F

    iget-object p1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_1b

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_3

    :cond_1b
    move-object v2, p1

    :goto_3
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    :cond_1c
    sub-int/2addr v3, v5

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->updateTextInPopup(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_23

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/utils/a;->l(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    int-to-float p1, p1

    sub-float/2addr p1, v4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 v0, 0x42700000    # 60.0f

    invoke-static {p3, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p1, p3

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_23

    iget-object p0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->mHandleAppBarLayoutStateListener:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$HandleAppBarLayoutStateListener;

    if-eqz p0, :cond_23

    invoke-interface {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$HandleAppBarLayoutStateListener;->onAppBarCollapsed()V

    goto :goto_6

    :cond_1d
    iget-object p1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_1e

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v2

    :cond_1e
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-static {p1, p2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p1

    if-eqz p1, :cond_21

    if-eq p1, v5, :cond_1f

    goto :goto_6

    :cond_1f
    iget-object p0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p0, :cond_20

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_4

    :cond_20
    move-object v2, p0

    :goto_4
    float-to-int p0, v8

    invoke-virtual {v2, v3, p0}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_6

    :cond_21
    iget-object p0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p0, :cond_22

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_5

    :cond_22
    move-object v2, p0

    :goto_5
    float-to-int p0, v8

    invoke-virtual {v2, p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :cond_23
    :goto_6
    move v3, v5

    :goto_7
    return v3
.end method

.method private final refreshHandleImageViewSize(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleImageView:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez p1, :cond_0

    const-string p1, "handleImageView"

    invoke-static {p1}, Ly45;->B(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleWidth:I

    iget p0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleHeight:I

    invoke-direct {v0, v1, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    new-instance p0, Lkotlin/NotImplementedError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "An operation is not implemented: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@shahsurajk dynamic sizing of handle"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic refreshHandleImageViewSize$default(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;IILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, -0x1

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->refreshHandleImageViewSize(I)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: refreshHandleImageViewSize"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final registerDataObserver()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    const-string v0, "recyclerView"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->adapterDataObserver:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    :cond_1
    return-void
.end method

.method private final safeScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    instance-of p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p1, :cond_0

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final scrollToRelativeOffset(Landroidx/recyclerview/widget/RecyclerView;F)V
    .locals 4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    instance-of v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    return-void

    :cond_2
    new-instance v0, Lkotlin/Triple;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    new-instance v0, Lkotlin/Triple;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollExtent()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {v0}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lwn8;->d(II)I

    move-result v1

    if-nez v1, :cond_4

    return-void

    :cond_4
    invoke-static {p2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_7

    int-to-float v3, v1

    mul-float/2addr v3, p2

    invoke-static {v3}, Ls86;->c(F)I

    move-result p2

    invoke-static {p2, v2, v1}, Lwn8;->k(III)I

    move-result p2

    sub-int/2addr p2, v0

    if-nez p2, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {p1, p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_2

    :cond_6
    invoke-virtual {p1, v2, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :cond_7
    :goto_2
    return-void
.end method

.method private final setEmptySpaceItemDecorator()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    const-string v0, "recyclerView"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->getEmptySpaceItemDecoration()Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$emptySpaceItemDecoration$2$1;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method private final setTrackMargin()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->trackView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const-string v0, "trackView"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->fastScrollDirection:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;

    sget-object v2, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->trackMarginStart:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget p0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->trackMarginEnd:I

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_2
    iget v1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->trackMarginStart:I

    iget p0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->trackMarginEnd:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_0
    return-void
.end method

.method private final updateTextInPopup(I)V
    .locals 3

    if-ltz p1, :cond_6

    iget-object v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    const-string v2, "recyclerView"

    if-nez v0, :cond_0

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-ge p1, v0, :cond_6

    iget-object v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_2

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_5

    instance-of v1, v0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$OnPopupTextUpdate;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->getPopupTextView()Landroid/widget/TextView;

    move-result-object p0

    check-cast v0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$OnPopupTextUpdate;

    invoke-interface {v0, p1}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$OnPopupTextUpdate;->onChange(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    instance-of v1, v0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$OnPopupViewUpdate;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$OnPopupViewUpdate;

    invoke-virtual {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->getPopupTextView()Landroid/widget/TextView;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$OnPopupViewUpdate;->onUpdate(ILandroid/widget/TextView;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->getPopupTextView()Landroid/widget/TextView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalAccessException;

    const-string p1, "No adapter found, if you have an adapter then try placing if before calling the attachFastScrollerToRecyclerView() method"

    invoke-direct {p0, p1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    return-void
.end method


# virtual methods
.method public final attachFastScrollerToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->initImpl()V

    return-void
.end method

.method public final detachFastScrollerFromRecyclerView()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const-string v0, "RecyclerViewFastScroller"

    const-string v1, "recyclerView"

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->adapterDataObserver:Lyi5;

    invoke-interface {v3}, Lyi5;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v3, :cond_0

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v3, v2

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->adapterDataObserver:Lyi5;

    invoke-interface {v4}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "detachFastScrollerFromRecyclerView, unregisterAdapterDataObserver exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleImageView:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v4, "handleImageView"

    if-nez v3, :cond_2

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    move-object v3, v2

    :cond_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v3, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->trackView:Landroid/widget/LinearLayout;

    if-nez v3, :cond_3

    const-string v3, "trackView"

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    move-object v3, v2

    :cond_3
    invoke-virtual {v3, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->getPopupTextView()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v3, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v3, :cond_4

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v3, v2

    :cond_4
    iget-object v5, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->onScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :try_start_1
    iget-boolean v3, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->hasEmptyItemDecorator:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v3, :cond_5

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v3, v2

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_4

    :cond_5
    :goto_3
    invoke-direct {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->getEmptySpaceItemDecoration()Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$emptySpaceItemDecoration$2$1;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :goto_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "detachFastScrollerFromRecyclerView, removeItemDecoration exception:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_5
    iget-object v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->hideHandleJob:Lkotlinx/coroutines/j;

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/j$a;->b(Lkotlinx/coroutines/j;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_7
    iget-object v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleImageView:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez v0, :cond_8

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_a
    return-void
.end method

.method public final getFastScrollDirection()Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->fastScrollDirection:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;

    return-object p0
.end method

.method public final getHandleDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleImageView:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez p0, :cond_0

    const-string p0, "handleImageView"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final getHandleHeight()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleHeight:I

    return p0
.end method

.method public final getHandleVisibilityDuration()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleVisibilityDuration:I

    return p0
.end method

.method public final getHandleWidth()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleWidth:I

    return p0
.end method

.method public final getMLastScrollerOffset()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->mLastScrollerOffset:F

    return p0
.end method

.method public final getPopupDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->getPopupTextView()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final getPopupTextView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->popupTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "popupTextView"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTextStyle()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->textStyle:I

    return p0
.end method

.method public final getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->trackView:Landroid/widget/LinearLayout;

    if-nez p0, :cond_0

    const-string p0, "trackView"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final getTrackMarginEnd()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->trackMarginEnd:I

    return p0
.end method

.method public final getTrackMarginStart()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->trackMarginStart:I

    return p0
.end method

.method public final isFastScrollEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->isFastScrollEnabled:Z

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    const-string v0, "recyclerView"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->onScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_2

    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    invoke-static {v1, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/transsion/WindowInfoViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/WindowInfoViewModel;

    iput-object v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->mWindowInfoViewModel:Lcom/transsion/WindowInfoViewModel;

    :cond_2
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->detachFastScrollerFromRecyclerView()V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onFinishInflate()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v2}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->attachFastScrollerToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lfp8;

    invoke-direct {v0, p0}, Lfp8;-><init>(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput p2, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->mScrollState:I

    return-void
.end method

.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 10

    const-string p2, "recyclerView"

    invoke-static {p1, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->mIsAppBarExpand:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    invoke-direct {p0, p0, v0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->animateVisibility(Landroid/view/View;Z)V

    iget-object p2, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->hideHandleJob:Lkotlinx/coroutines/j;

    if-eqz p2, :cond_0

    invoke-static {p2, v2, v1, v2}, Lkotlinx/coroutines/j$a;->b(Lkotlinx/coroutines/j;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    iget-boolean p2, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->isEngaged:Z

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->isFastScrollEnabled:Z

    if-eqz p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    const-string v3, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-static {p2, v3}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p2

    if-eqz p2, :cond_3

    if-ne p2, v1, :cond_2

    new-instance p2, Lkotlin/Triple;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p2, v4, v5, v6}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The orientation of the LinearLayoutManager should be horizontal or vertical"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p2, Lkotlin/Triple;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollExtent()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p2, v4, v5, v6}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p2}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {p2}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {p2}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    const-string v6, "trackView"

    const-string v7, "handleImageView"

    if-ge v5, v4, :cond_c

    iget v8, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->mScrollState:I

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleImageView:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez v8, :cond_4

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    move-object v8, v2

    :cond_4
    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Landroid/view/View;->setAlpha(F)V

    iget-object v8, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleImageView:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez v8, :cond_5

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    move-object v8, v2

    :cond_5
    invoke-static {p0, v8, v0, v1, v2}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->animateVisibility$default(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;Landroid/view/View;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleImageView:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez v0, :cond_6

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_6
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->trackView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_7

    invoke-static {v6}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move-object v2, v0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_8
    invoke-direct {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->getTrackLength()F

    move-result v0

    invoke-direct {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->getHandleLength()F

    move-result v2

    sub-float/2addr v0, v2

    int-to-float p2, p2

    mul-float/2addr v0, p2

    int-to-float p2, v4

    int-to-float v2, v5

    sub-float/2addr p2, v2

    div-float/2addr v0, p2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-static {p1, v3}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p1

    if-ne p1, v1, :cond_b

    iget p1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->mLastScrollerOffset:F

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-lez p2, :cond_a

    if-lez p3, :cond_9

    cmpg-float p2, v0, p1

    if-gez p2, :cond_a

    :goto_2
    move v0, p1

    goto :goto_3

    :cond_9
    if-gez p3, :cond_a

    cmpl-float p2, v0, p1

    if-lez p2, :cond_a

    goto :goto_2

    :cond_a
    :goto_3
    iput v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->mLastScrollerOffset:F

    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->moveHandle(FZ)V

    return-void

    :cond_c
    iget-object p1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleImageView:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez p1, :cond_d

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v2

    :cond_d
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->animateVisibility(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->trackView:Landroid/widget/LinearLayout;

    if-nez p1, :cond_e

    invoke-static {v6}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v2

    :cond_e
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleImageView:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez p0, :cond_f

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_4

    :cond_f
    move-object v2, p0

    :goto_4
    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    iget-object p1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->mCsRefreshLayout:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->initCsRefreshLayout()V

    :cond_0
    const/4 p1, 0x0

    if-nez p2, :cond_1

    return p1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    const/4 v1, 0x2

    new-array v2, v1, [I

    iget-object v3, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->trackView:Landroid/widget/LinearLayout;

    const-string v4, "trackView"

    const/4 v5, 0x0

    if-nez v3, :cond_2

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    move-object v3, v5

    :cond_2
    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v3, Lkotlin/Pair;

    aget v6, v2, p1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aget v2, v2, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v3, v6, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    and-int/2addr v6, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Touch Action: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->log(Ljava/lang/String;)V

    if-eqz v6, :cond_7

    if-eq v6, v7, :cond_3

    if-eq v6, v1, :cond_7

    const/4 v0, 0x3

    if-eq v6, v0, :cond_3

    goto/16 :goto_7

    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->mCurrentRelativePos:F

    iput-boolean p1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->isEngaged:Z

    invoke-virtual {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->getHandleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->EMPTY_STATE_SET:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_4
    invoke-direct {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->delayHideHandleImageView()V

    iget-boolean v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->isFastScrollEnabled:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleStateListener:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$HandleStateListener;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$HandleStateListener;->onReleased()V

    :cond_5
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->mCsRefreshLayout:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setHandleViewPressed(Z)V

    :cond_6
    invoke-super {p0, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    goto/16 :goto_7

    :cond_7
    iget-object v6, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleImageView:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v8, "handleImageView"

    if-nez v6, :cond_8

    invoke-static {v8}, Ly45;->B(Ljava/lang/String;)V

    move-object v6, v5

    :cond_8
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_9

    move v6, v7

    goto :goto_0

    :cond_9
    move v6, p1

    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleImageView.visibility: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v9, "RecyclerViewFastScroller"

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleImageView:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez v6, :cond_a

    invoke-static {v8}, Ly45;->B(Ljava/lang/String;)V

    move-object v6, v5

    :cond_a
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleImageView:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez v6, :cond_b

    invoke-static {v8}, Ly45;->B(Ljava/lang/String;)V

    move-object v6, v5

    :cond_b
    invoke-direct {p0, v6, v7}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->animateVisibility(Landroid/view/View;Z)V

    iget-object v6, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleImageView:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez v6, :cond_c

    invoke-static {v8}, Ly45;->B(Ljava/lang/String;)V

    move-object v6, v5

    :cond_c
    invoke-virtual {v6, v7}, Landroid/view/View;->setEnabled(Z)V

    iget-object v6, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->trackView:Landroid/widget/LinearLayout;

    if-nez v6, :cond_d

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    move-object v6, v5

    :cond_d
    invoke-virtual {v6, v7}, Landroid/view/View;->setEnabled(Z)V

    :cond_e
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v4, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->mCsRefreshLayout:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    if-eqz v4, :cond_f

    invoke-virtual {v4, v7}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setHandleViewPressed(Z)V

    :cond_f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_12

    iget-object v4, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->adapterDataObserver:Lyi5;

    invoke-interface {v4}, Lyi5;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_10

    invoke-direct {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->registerDataObserver()V

    :cond_10
    invoke-virtual {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->getHandleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_11

    iget-object v6, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->PRESSED_STATE_SET:[I

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_11
    iput-boolean v7, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->isEngaged:Z

    iget-boolean v4, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->isFastScrollEnabled:Z

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleStateListener:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$HandleStateListener;

    if-eqz v4, :cond_12

    invoke-interface {v4}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$HandleStateListener;->onEngaged()V

    :cond_12
    invoke-direct {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->getHandleLength()F

    move-result v4

    int-to-float v6, v1

    div-float/2addr v4, v6

    iget-object v6, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->fastScrollDirection:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;

    sget-object v9, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v9, v6

    if-eq v6, v7, :cond_14

    if-ne v6, v1, :cond_13

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    int-to-float v2, v2

    sub-float/2addr v3, v2

    sub-float/2addr v3, v4

    goto :goto_1

    :cond_13
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_14
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sub-float v3, v2, v4

    :goto_1
    iget-boolean v2, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->isFastScrollEnabled:Z

    const-string v4, "recyclerView"

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleImageView:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez v2, :cond_15

    invoke-static {v8}, Ly45;->B(Ljava/lang/String;)V

    move-object v2, v5

    :cond_15
    invoke-direct {p0, v2, v7}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->animateVisibility(Landroid/view/View;Z)V

    invoke-direct {p0, v3, p1}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->moveHandle(FZ)V

    iget-object v2, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v2, :cond_16

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    move-object v2, v5

    :cond_16
    invoke-direct {p0, v2, v3}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->computePositionForOffsetAndScroll(Landroidx/recyclerview/widget/RecyclerView;F)I

    move-result v2

    iget v6, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->mCurrentRelativePos:F

    sub-float/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    int-to-float v0, v0

    cmpl-float v0, v6, v0

    if-lez v0, :cond_1c

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-ne p2, v1, :cond_1c

    invoke-virtual {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->getHandleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_17

    iget-object v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->PRESSED_STATE_SET:[I

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_17
    iget-object p2, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleStateListener:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$HandleStateListener;

    if-eqz p2, :cond_1c

    iget-object v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->fastScrollDirection:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v9, v0

    if-eq v0, v7, :cond_1a

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleImageView:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez v0, :cond_18

    invoke-static {v8}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v5

    :cond_18
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    goto :goto_2

    :cond_19
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1a
    iget-object v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleImageView:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez v0, :cond_1b

    invoke-static {v8}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v5

    :cond_1b
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    :goto_2
    invoke-interface {p2, v0, v2}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$HandleStateListener;->onDragged(FI)V

    :cond_1c
    iput v3, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->mCurrentRelativePos:F

    iget-object p2, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p2, :cond_1d

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_3

    :cond_1d
    move-object v5, p2

    :goto_3
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    if-eqz p2, :cond_1e

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    :cond_1e
    sub-int/2addr p1, v7

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->updateTextInPopup(I)V

    goto :goto_6

    :cond_1f
    iget-object p2, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p2, :cond_20

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    move-object p2, v5

    :cond_20
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-static {p2, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p2

    if-eqz p2, :cond_23

    if-eq p2, v7, :cond_21

    goto :goto_6

    :cond_21
    iget-object p0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p0, :cond_22

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_4

    :cond_22
    move-object v5, p0

    :goto_4
    float-to-int p0, v3

    invoke-virtual {v5, p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_6

    :cond_23
    iget-object p0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p0, :cond_24

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_5

    :cond_24
    move-object v5, p0

    :goto_5
    float-to-int p0, v3

    invoke-virtual {v5, p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :goto_6
    move p1, v7

    :goto_7
    return p1
.end method

.method public final refreshScrollerBar()V
    .locals 10

    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->mIsAppBarExpand:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, p0, v1}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->animateVisibility(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->hideHandleJob:Lkotlinx/coroutines/j;

    if-eqz v0, :cond_0

    invoke-static {v0, v3, v2, v3}, Lkotlinx/coroutines/j$a;->b(Lkotlinx/coroutines/j;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->isEngaged:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->isFastScrollEnabled:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "recyclerView"

    if-nez v0, :cond_2

    :try_start_1
    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v3

    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_4

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v3

    :cond_4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const-string v5, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-static {v0, v5}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v0

    if-eqz v0, :cond_9

    if-ne v0, v2, :cond_8

    new-instance v0, Lkotlin/Triple;

    iget-object v5, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v5, :cond_5

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    move-object v5, v3

    :cond_5
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v6, :cond_6

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    move-object v6, v3

    :cond_6
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v7, :cond_7

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    move-object v7, v3

    :cond_7
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v5, v6, v4}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "The orientation of the LinearLayoutManager should be horizontal or vertical"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance v0, Lkotlin/Triple;

    iget-object v5, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v5, :cond_a

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    move-object v5, v3

    :cond_a
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v6, :cond_b

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    move-object v6, v3

    :cond_b
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollExtent()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v7, :cond_c

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    move-object v7, v3

    :cond_c
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v5, v6, v4}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v0}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v0}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v0}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v6, "trackView"

    const-string v7, "handleImageView"

    if-ge v5, v4, :cond_12

    :try_start_2
    iget v8, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->mScrollState:I

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleImageView:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez v8, :cond_d

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    move-object v8, v3

    :cond_d
    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Landroid/view/View;->setAlpha(F)V

    iget-object v8, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleImageView:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez v8, :cond_e

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    move-object v8, v3

    :cond_e
    invoke-static {p0, v8, v1, v2, v3}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->animateVisibility$default(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;Landroid/view/View;ZILjava/lang/Object;)V

    iget-object v1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleImageView:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez v1, :cond_f

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    move-object v1, v3

    :cond_f
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->trackView:Landroid/widget/LinearLayout;

    if-nez v1, :cond_10

    invoke-static {v6}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_1

    :cond_10
    move-object v3, v1

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_11
    invoke-direct {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->getTrackLength()F

    move-result v1

    invoke-direct {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->getHandleLength()F

    move-result v3

    sub-float/2addr v1, v3

    int-to-float v0, v0

    mul-float/2addr v1, v0

    int-to-float v0, v4

    int-to-float v3, v5

    sub-float/2addr v0, v3

    div-float/2addr v1, v0

    invoke-direct {p0, v1, v2}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->moveHandle(FZ)V

    goto :goto_3

    :cond_12
    iget-object v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleImageView:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez v0, :cond_13

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v3

    :cond_13
    invoke-direct {p0, v0, v1}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->animateVisibility(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->trackView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_14

    invoke-static {v6}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v3

    :cond_14
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleImageView:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez p0, :cond_15

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_2

    :cond_15
    move-object v3, p0

    :goto_2
    invoke-virtual {v3, v1}, Landroid/view/View;->setEnabled(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_3
    return-void
.end method

.method public final setAppBarExpand(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->mIsAppBarExpand:Z

    return-void
.end method

.method public final setFastScrollDirection(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->fastScrollDirection:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;

    invoke-direct {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->alignTrackAndHandle()V

    return-void
.end method

.method public final setFastScrollEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->isFastScrollEnabled:Z

    return-void
.end method

.method public final setHandleAppBarLayoutStateListener(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$HandleAppBarLayoutStateListener;)V
    .locals 1

    const-string v0, "handleAppBarLayoutStateListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->mHandleAppBarLayoutStateListener:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$HandleAppBarLayoutStateListener;

    return-void
.end method

.method public final setHandleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleImageView:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez p0, :cond_0

    const-string p0, "handleImageView"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No drawable found for the given ID"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setHandleHeight(I)V
    .locals 2

    iput p1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleHeight:I

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->refreshHandleImageViewSize$default(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;IILjava/lang/Object;)V

    return-void
.end method

.method public final setHandleStateListener(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$HandleStateListener;)V
    .locals 1

    const-string v0, "handleStateListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleStateListener:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$HandleStateListener;

    return-void
.end method

.method public final setHandleVisibilityDuration(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleVisibilityDuration:I

    return-void
.end method

.method public final setHandleWidth(I)V
    .locals 2

    iput p1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->handleWidth:I

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->refreshHandleImageViewSize$default(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;IILjava/lang/Object;)V

    return-void
.end method

.method public final setMLastScrollerOffset(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->mLastScrollerOffset:F

    return-void
.end method

.method public final setPopupDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->getPopupTextView()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setPopupTextView(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->popupTextView:Landroid/widget/TextView;

    return-void
.end method

.method public final setTextStyle(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->getPopupTextView()Landroid/widget/TextView;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    return-void
.end method

.method public final setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->trackView:Landroid/widget/LinearLayout;

    if-nez p0, :cond_0

    const-string p0, "trackView"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setTrackMarginEnd(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->trackMarginEnd:I

    invoke-direct {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->setTrackMargin()V

    return-void
.end method

.method public final setTrackMarginStart(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->trackMarginStart:I

    invoke-direct {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->setTrackMargin()V

    return-void
.end method
