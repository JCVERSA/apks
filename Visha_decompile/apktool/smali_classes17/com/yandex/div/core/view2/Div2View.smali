.class public Lcom/yandex/div/core/view2/Div2View;
.super Lcom/yandex/div/internal/widget/FrameContainerLayout;
.source "SourceFile"

# interfaces
.implements Lsv2;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/Div2View$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0094\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u001a\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\"\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010%\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0017\u0018\u00002\u00020\u00012\u00020\u0002:\u0002\u00e1\u0003B/\u0008\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cB\'\u0008\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\rJ!\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J+\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0016J7\u0010\u001b\u001a\u00020\u00122\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00172\u0006\u0010\u001a\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0017\u0010\u001f\u001a\u00020\u00122\u0006\u0010\u001e\u001a\u00020\u001dH\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 J\u000f\u0010\"\u001a\u00020!H\u0016\u00a2\u0006\u0004\u0008\"\u0010#J\u000f\u0010$\u001a\u00020!H\u0016\u00a2\u0006\u0004\u0008$\u0010#J\u000f\u0010%\u001a\u00020!H\u0016\u00a2\u0006\u0004\u0008%\u0010#J\u000f\u0010)\u001a\u00020&H\u0010\u00a2\u0006\u0004\u0008\'\u0010(J7\u0010/\u001a\u00020!2\u0006\u0010*\u001a\u00020\u00122\u0006\u0010+\u001a\u00020\u00072\u0006\u0010,\u001a\u00020\u00072\u0006\u0010-\u001a\u00020\u00072\u0006\u0010.\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u0008/\u00100J\u001f\u00103\u001a\u00020!2\u0006\u00101\u001a\u00020\u00072\u0006\u00102\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u00083\u00104J\u0017\u00107\u001a\u00020!2\u0006\u00106\u001a\u000205H\u0016\u00a2\u0006\u0004\u00087\u00108J\u000f\u00109\u001a\u00020!H\u0014\u00a2\u0006\u0004\u00089\u0010#J\u000f\u0010:\u001a\u00020!H\u0014\u00a2\u0006\u0004\u0008:\u0010#J\u001f\u0010?\u001a\u00020!2\u0006\u0010<\u001a\u00020;2\u0006\u0010>\u001a\u00020=H\u0016\u00a2\u0006\u0004\u0008?\u0010@J/\u0010D\u001a\u00020\u00122\u0006\u0010A\u001a\u00020\u000e2\n\u0008\u0002\u0010B\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010C\u001a\u0004\u0018\u00010\u0010H\u0016\u00a2\u0006\u0004\u0008D\u0010\u0016J\u000f\u0010E\u001a\u00020!H\u0016\u00a2\u0006\u0004\u0008E\u0010#J\u000f\u0010F\u001a\u00020!H\u0016\u00a2\u0006\u0004\u0008F\u0010#J\u001f\u0010H\u001a\u00020!2\u0006\u0010G\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008H\u0010IJ\u000f\u0010J\u001a\u00020!H\u0016\u00a2\u0006\u0004\u0008J\u0010#J\u001f\u0010H\u001a\u00020!2\u0006\u0010K\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008H\u0010LJ-\u0010O\u001a\u00020!2\u000c\u0010M\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00172\u0006\u0010\u001a\u001a\u00020\u00122\u0006\u0010N\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008O\u0010PJ\u0017\u0010R\u001a\u00020\u00122\u0006\u0010Q\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008R\u0010SJ\u0017\u0010V\u001a\u00020!2\u0006\u0010U\u001a\u00020TH\u0016\u00a2\u0006\u0004\u0008V\u0010WJ\u0017\u0010X\u001a\u00020!2\u0006\u0010U\u001a\u00020TH\u0016\u00a2\u0006\u0004\u0008X\u0010WJ\u0017\u0010\\\u001a\u00020!2\u0006\u0010U\u001a\u00020YH\u0010\u00a2\u0006\u0004\u0008Z\u0010[J\u0017\u0010^\u001a\u00020!2\u0006\u0010U\u001a\u00020YH\u0010\u00a2\u0006\u0004\u0008]\u0010[J\u000f\u0010_\u001a\u00020!H\u0016\u00a2\u0006\u0004\u0008_\u0010#J\u0011\u0010c\u001a\u0004\u0018\u00010`H\u0010\u00a2\u0006\u0004\u0008a\u0010bJ\u000f\u0010d\u001a\u00020!H\u0016\u00a2\u0006\u0004\u0008d\u0010#J\u000f\u0010e\u001a\u00020!H\u0016\u00a2\u0006\u0004\u0008e\u0010#J+\u0010l\u001a\u00020!2\u0006\u0010g\u001a\u00020f2\u0008\u0008\u0002\u0010i\u001a\u00020h2\u0008\u0008\u0002\u0010k\u001a\u00020jH\u0017\u00a2\u0006\u0004\u0008l\u0010mJ+\u0010n\u001a\u00020\u00122\u0006\u0010g\u001a\u00020f2\u0008\u0008\u0002\u0010i\u001a\u00020h2\u0008\u0008\u0002\u0010k\u001a\u00020jH\u0017\u00a2\u0006\u0004\u0008n\u0010oJ\u0017\u0010r\u001a\u00020!2\u0006\u0010q\u001a\u00020pH\u0016\u00a2\u0006\u0004\u0008r\u0010sJ\u0017\u0010v\u001a\u00020!2\u0006\u0010u\u001a\u00020tH\u0016\u00a2\u0006\u0004\u0008v\u0010wJ\u000f\u0010x\u001a\u00020tH\u0016\u00a2\u0006\u0004\u0008x\u0010yJ\u000f\u0010z\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008z\u0010{J\u0017\u0010~\u001a\u00020!2\u0006\u0010}\u001a\u00020|H\u0016\u00a2\u0006\u0004\u0008~\u0010\u007fJ\u0011\u0010\u0080\u0001\u001a\u00020!H\u0016\u00a2\u0006\u0005\u0008\u0080\u0001\u0010#J\u001c\u0010\u0083\u0001\u001a\u00020!2\u0008\u0010\u0082\u0001\u001a\u00030\u0081\u0001H\u0016\u00a2\u0006\u0006\u0008\u0083\u0001\u0010\u0084\u0001J\u0011\u0010\u0085\u0001\u001a\u00020!H\u0016\u00a2\u0006\u0005\u0008\u0085\u0001\u0010#J\u001c\u0010\u0088\u0001\u001a\u00020\u00122\u0008\u0010\u0087\u0001\u001a\u00030\u0086\u0001H\u0016\u00a2\u0006\u0006\u0008\u0088\u0001\u0010\u0089\u0001J\u0012\u0010\u008a\u0001\u001a\u00020\tH\u0016\u00a2\u0006\u0006\u0008\u008a\u0001\u0010\u008b\u0001J\u0015\u0010\u008d\u0001\u001a\u0005\u0018\u00010\u008c\u0001H\u0016\u00a2\u0006\u0006\u0008\u008d\u0001\u0010\u008e\u0001J\u0012\u0010\u008f\u0001\u001a\u00020\u0000H\u0016\u00a2\u0006\u0006\u0008\u008f\u0001\u0010\u0090\u0001J\u0012\u0010\u0091\u0001\u001a\u00020jH\u0016\u00a2\u0006\u0006\u0008\u0091\u0001\u0010\u0092\u0001J\u001b\u0010\u0094\u0001\u001a\u00020!2\u0007\u0010\u0093\u0001\u001a\u00020hH\u0016\u00a2\u0006\u0006\u0008\u0094\u0001\u0010\u0095\u0001J$\u0010\u0094\u0001\u001a\u00020!2\u0007\u0010\u0093\u0001\u001a\u00020h2\u0007\u0010\u0096\u0001\u001a\u00020\u0012H\u0016\u00a2\u0006\u0006\u0008\u0094\u0001\u0010\u0097\u0001J\u001b\u0010\u0098\u0001\u001a\u00020!2\u0007\u0010\u0093\u0001\u001a\u00020hH\u0016\u00a2\u0006\u0006\u0008\u0098\u0001\u0010\u0095\u0001J\u0011\u0010\u0099\u0001\u001a\u00020!H\u0016\u00a2\u0006\u0005\u0008\u0099\u0001\u0010#J\u0019\u0010\u009a\u0001\u001a\u00020!2\u0006\u00106\u001a\u000205H\u0014\u00a2\u0006\u0005\u0008\u009a\u0001\u00108J.\u0010\u009d\u0001\u001a\u00020\u00122\u0006\u00106\u001a\u0002052\t\u0010\u009b\u0001\u001a\u0004\u0018\u00010=2\u0007\u0010\u009c\u0001\u001a\u00020\tH\u0014\u00a2\u0006\u0006\u0008\u009d\u0001\u0010\u009e\u0001J$\u0010\u00a3\u0001\u001a\u00020!2\u0007\u0010\u009f\u0001\u001a\u00020=2\u0007\u0010\u00a0\u0001\u001a\u00020`H\u0010\u00a2\u0006\u0006\u0008\u00a1\u0001\u0010\u00a2\u0001J\u001d\u0010\u00a6\u0001\u001a\u0004\u0018\u00010`2\u0007\u0010\u009f\u0001\u001a\u00020=H\u0010\u00a2\u0006\u0006\u0008\u00a4\u0001\u0010\u00a5\u0001J%\u0010\u00ab\u0001\u001a\u00020!2\u0007\u0010\u009f\u0001\u001a\u00020=2\u0008\u0010\u00a8\u0001\u001a\u00030\u00a7\u0001H\u0010\u00a2\u0006\u0006\u0008\u00a9\u0001\u0010\u00aa\u0001J\u001e\u0010\u00ae\u0001\u001a\u0005\u0018\u00010\u00a7\u00012\u0007\u0010\u009f\u0001\u001a\u00020=H\u0010\u00a2\u0006\u0006\u0008\u00ac\u0001\u0010\u00ad\u0001J\u001b\u0010\u00b1\u0001\u001a\u00020\u00122\u0007\u0010\u009f\u0001\u001a\u00020=H\u0010\u00a2\u0006\u0006\u0008\u00af\u0001\u0010\u00b0\u0001J\'\u0010\u00b5\u0001\u001a\u0005\u0018\u00010\u00b4\u00012\u0007\u0010\u00b2\u0001\u001a\u00020h2\u0007\u0010\u00b3\u0001\u001a\u00020hH\u0016\u00a2\u0006\u0006\u0008\u00b5\u0001\u0010\u00b6\u0001J$\u0010\u00b9\u0001\u001a\u00020!2\u0007\u0010\u00b7\u0001\u001a\u00020h2\u0007\u0010\u00b8\u0001\u001a\u00020hH\u0016\u00a2\u0006\u0006\u0008\u00b9\u0001\u0010\u00ba\u0001J/\u0010\u00bd\u0001\u001a\u00020\u00122\u0007\u0010\u00bb\u0001\u001a\u00020h2\u0007\u0010\u00b8\u0001\u001a\u00020h2\t\u0008\u0002\u0010\u00bc\u0001\u001a\u00020jH\u0017\u00a2\u0006\u0006\u0008\u00bd\u0001\u0010\u00be\u0001J\u001d\u0010\u00c0\u0001\u001a\u0004\u0018\u00010`2\u0007\u0010\u009f\u0001\u001a\u00020=H\u0010\u00a2\u0006\u0006\u0008\u00bf\u0001\u0010\u00a5\u0001J\u001e\u0010\u00c3\u0001\u001a\u0005\u0018\u00010\u00c2\u00012\u0007\u0010\u00c1\u0001\u001a\u00020\u000eH\u0016\u00a2\u0006\u0006\u0008\u00c3\u0001\u0010\u00c4\u0001J\"\u0010\u00c9\u0001\u001a\u00020!2\u000e\u0010\u00c6\u0001\u001a\t\u0012\u0004\u0012\u00020!0\u00c5\u0001H\u0010\u00a2\u0006\u0006\u0008\u00c7\u0001\u0010\u00c8\u0001J(\u0010\u00ca\u0001\u001a\u00020!2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0010H\u0012\u00a2\u0006\u0006\u0008\u00ca\u0001\u0010\u00cb\u0001J\u001a\u0010\u00cc\u0001\u001a\u00020!2\u0006\u0010\u000f\u001a\u00020\u000eH\u0012\u00a2\u0006\u0006\u0008\u00cc\u0001\u0010\u00cd\u0001J\u0011\u0010\u00ce\u0001\u001a\u00020!H\u0012\u00a2\u0006\u0005\u0008\u00ce\u0001\u0010#J\u0011\u0010\u00cf\u0001\u001a\u00020!H\u0012\u00a2\u0006\u0005\u0008\u00cf\u0001\u0010#J\u0011\u0010\u00d0\u0001\u001a\u00020!H\u0012\u00a2\u0006\u0005\u0008\u00d0\u0001\u0010#J5\u0010\u00d4\u0001\u001a\u00020\u00122\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010B\u001a\u00020\u000e2\u0007\u0010\u00d1\u0001\u001a\u00020\u000e2\u0008\u0010\u00d3\u0001\u001a\u00030\u00d2\u0001H\u0012\u00a2\u0006\u0006\u0008\u00d4\u0001\u0010\u00d5\u0001J,\u0010\u00d7\u0001\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\u0008\u0010\u00d3\u0001\u001a\u00030\u00d6\u0001H\u0012\u00a2\u0006\u0006\u0008\u00d7\u0001\u0010\u00d8\u0001J\u001c\u0010\u00da\u0001\u001a\u00020!2\u0008\u0010\u00d9\u0001\u001a\u00030\u00c2\u0001H\u0012\u00a2\u0006\u0006\u0008\u00da\u0001\u0010\u00db\u0001J\u001c\u0010\u00dc\u0001\u001a\u00020!2\u0008\u0010\u00d9\u0001\u001a\u00030\u00c2\u0001H\u0012\u00a2\u0006\u0006\u0008\u00dc\u0001\u0010\u00db\u0001J\u0011\u0010\u00dd\u0001\u001a\u00020!H\u0012\u00a2\u0006\u0005\u0008\u00dd\u0001\u0010#J\u0011\u0010\u00de\u0001\u001a\u00020!H\u0012\u00a2\u0006\u0005\u0008\u00de\u0001\u0010#J\u001b\u0010\u00e0\u0001\u001a\u00020!2\u0007\u0010\u00df\u0001\u001a\u00020\u0012H\u0012\u00a2\u0006\u0006\u0008\u00e0\u0001\u0010\u00e1\u0001J\u0011\u0010\u00e2\u0001\u001a\u00020!H\u0012\u00a2\u0006\u0005\u0008\u00e2\u0001\u0010#J\u0011\u0010\u00e3\u0001\u001a\u00020!H\u0012\u00a2\u0006\u0005\u0008\u00e3\u0001\u0010#J.\u0010\u00e4\u0001\u001a\u00020\u00122\u0008\u0010B\u001a\u0004\u0018\u00010\u000e2\u0006\u0010A\u001a\u00020\u000e2\u0008\u0010\u00d3\u0001\u001a\u00030\u00d6\u0001H\u0012\u00a2\u0006\u0006\u0008\u00e4\u0001\u0010\u00e5\u0001J\u0016\u0010\u00e6\u0001\u001a\u00020\t*\u00020\u000eH\u0012\u00a2\u0006\u0006\u0008\u00e6\u0001\u0010\u00e7\u0001J\u0019\u0010\u00e8\u0001\u001a\u0005\u0018\u00010\u00c2\u0001*\u00020\u000eH\u0012\u00a2\u0006\u0006\u0008\u00e8\u0001\u0010\u00c4\u0001J\"\u0010\u00e9\u0001\u001a\u00020\u00122\u0006\u0010G\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u0012H\u0012\u00a2\u0006\u0006\u0008\u00e9\u0001\u0010\u00ea\u0001JT\u0010\u00f0\u0001\u001a\u00020!2\u0008\u0010B\u001a\u0004\u0018\u00010\u000e2\u0006\u0010A\u001a\u00020\u000e2\t\u0010\u00eb\u0001\u001a\u0004\u0018\u00010`2\u0008\u0010\u00ec\u0001\u001a\u00030\u00c2\u00012\u0007\u0010\u00ed\u0001\u001a\u00020=2\u0007\u0010\u00ee\u0001\u001a\u00020\u00122\u0007\u0010\u00ef\u0001\u001a\u00020\u0012H\u0012\u00a2\u0006\u0006\u0008\u00f0\u0001\u0010\u00f1\u0001J\"\u0010\u00f2\u0001\u001a\u00020=2\u0006\u0010G\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u0012H\u0012\u00a2\u0006\u0006\u0008\u00f2\u0001\u0010\u00f3\u0001J/\u0010\u00f5\u0001\u001a\u00020=2\u0008\u0010\u00ec\u0001\u001a\u00030\u00c2\u00012\u0006\u0010G\u001a\u00020\t2\t\u0008\u0002\u0010\u00f4\u0001\u001a\u00020\u0012H\u0012\u00a2\u0006\u0006\u0008\u00f5\u0001\u0010\u00f6\u0001J/\u0010\u00f7\u0001\u001a\u00020=2\u0008\u0010\u00ec\u0001\u001a\u00030\u00c2\u00012\u0006\u0010G\u001a\u00020\t2\t\u0008\u0002\u0010\u00f4\u0001\u001a\u00020\u0012H\u0012\u00a2\u0006\u0006\u0008\u00f7\u0001\u0010\u00f6\u0001J=\u0010\u00fa\u0001\u001a\u0005\u0018\u00010\u00f9\u00012\u0008\u0010B\u001a\u0004\u0018\u00010\u000e2\u0006\u0010A\u001a\u00020\u000e2\t\u0010\u00eb\u0001\u001a\u0004\u0018\u00010`2\t\u0010\u00f8\u0001\u001a\u0004\u0018\u00010`H\u0012\u00a2\u0006\u0006\u0008\u00fa\u0001\u0010\u00fb\u0001J6\u0010\u00fe\u0001\u001a\n\u0012\u0005\u0012\u00030\u00fd\u00010\u00fc\u00012\t\u0010\u00c1\u0001\u001a\u0004\u0018\u00010\u000e2\u0007\u0010\u00a0\u0001\u001a\u00020`2\u0006\u0010k\u001a\u00020jH\u0012\u00a2\u0006\u0006\u0008\u00fe\u0001\u0010\u00ff\u0001J-\u0010\u0082\u0002\u001a\u00020!2\u0006\u0010A\u001a\u00020\u000e2\u0007\u0010\u0080\u0002\u001a\u00020\u00122\u0008\u0010\u00d3\u0001\u001a\u00030\u0081\u0002H\u0012\u00a2\u0006\u0006\u0008\u0082\u0002\u0010\u0083\u0002J,\u0010\u0085\u0002\u001a\u00020\u00122\u0006\u0010A\u001a\u00020\u000e2\u0006\u0010B\u001a\u00020\u000e2\u0008\u0010\u00d3\u0001\u001a\u00030\u0084\u0002H\u0012\u00a2\u0006\u0006\u0008\u0085\u0002\u0010\u0086\u0002R\u001e\u0010\u0004\u001a\u00020\u00038\u0010X\u0090\u0004\u00a2\u0006\u0010\n\u0006\u0008\u0087\u0002\u0010\u0088\u0002\u001a\u0006\u0008\u0089\u0002\u0010\u008a\u0002R\u0016\u0010\n\u001a\u00020\t8\u0012X\u0092\u0004\u00a2\u0006\u0008\n\u0006\u0008\u008b\u0002\u0010\u00de\u0001R \u0010\u0091\u0002\u001a\u00030\u008c\u00028\u0010X\u0090\u0004\u00a2\u0006\u0010\n\u0006\u0008\u008d\u0002\u0010\u008e\u0002\u001a\u0006\u0008\u008f\u0002\u0010\u0090\u0002R \u0010\u0097\u0002\u001a\u00030\u0092\u00028\u0010X\u0090\u0004\u00a2\u0006\u0010\n\u0006\u0008\u0093\u0002\u0010\u0094\u0002\u001a\u0006\u0008\u0095\u0002\u0010\u0096\u0002R\u0017\u0010\u0099\u0002\u001a\u00020\u00128\u0012X\u0092\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00f0\u0001\u0010\u0098\u0002R\u0017\u0010\u009b\u0002\u001a\u00020\u00128\u0012X\u0092\u0004\u00a2\u0006\u0008\n\u0006\u0008\u009a\u0002\u0010\u0098\u0002R\u0018\u0010\u009e\u0002\u001a\u00030\u009c\u00028\u0012X\u0092\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00cc\u0001\u0010\u009d\u0002R\u0018\u0010\u00a1\u0002\u001a\u00030\u009f\u00028\u0012X\u0092\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00f5\u0001\u0010\u00a0\u0002R\u0018\u0010\u00a5\u0002\u001a\u00030\u00a2\u00028\u0012X\u0092\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00a3\u0002\u0010\u00a4\u0002R\u0018\u0010\u00a8\u0002\u001a\u00030\u00a6\u00028\u0012X\u0092\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00f7\u0001\u0010\u00a7\u0002R\u001e\u0010\u00ac\u0002\u001a\t\u0012\u0004\u0012\u00020;0\u00a9\u00028\u0012X\u0092\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00aa\u0002\u0010\u00ab\u0002R\u001e\u0010\u00ad\u0002\u001a\t\u0012\u0004\u0012\u00020|0\u00a9\u00028\u0012X\u0092\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00e3\u0001\u0010\u00ab\u0002R\u001e\u0010\u00ae\u0002\u001a\t\u0012\u0004\u0012\u00020T0\u00a9\u00028\u0012X\u0092\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00e0\u0001\u0010\u00ab\u0002R\u001e\u0010\u00b1\u0002\u001a\t\u0012\u0004\u0012\u00020Y0\u00af\u00028\u0012X\u0092\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0085\u0002\u0010\u00b0\u0002R$\u0010\u00b4\u0002\u001a\u000f\u0012\u0004\u0012\u00020=\u0012\u0004\u0012\u00020`0\u00b2\u00028\u0012X\u0092\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00dd\u0001\u0010\u00b3\u0002R%\u0010\u00b5\u0002\u001a\u0010\u0012\u0004\u0012\u00020=\u0012\u0005\u0012\u00030\u00a7\u00010\u00b2\u00028\u0012X\u0092\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00dc\u0001\u0010\u00b3\u0002R\u001c\u0010\u00b8\u0002\u001a\u00070\u00b6\u0002R\u00020\u00008\u0012X\u0092\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00e9\u0001\u0010\u00b7\u0002R,\u0010\u00c0\u0002\u001a\u0005\u0018\u00010\u00b9\u00028\u0010@\u0010X\u0090\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00ba\u0002\u0010\u00bb\u0002\u001a\u0006\u0008\u00bc\u0002\u0010\u00bd\u0002\"\u0006\u0008\u00be\u0002\u0010\u00bf\u0002R\u001c\u0010\u00c1\u0002\u001a\u0005\u0018\u00010\u00b9\u00028\u0012@\u0012X\u0092\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00fe\u0001\u0010\u00bb\u0002R,\u0010\u00c8\u0002\u001a\u0005\u0018\u00010\u00c2\u00028\u0010@\u0010X\u0090\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00d0\u0001\u0010\u00c3\u0002\u001a\u0006\u0008\u00c4\u0002\u0010\u00c5\u0002\"\u0006\u0008\u00c6\u0002\u0010\u00c7\u0002R)\u0010\u00cc\u0002\u001a\u00020\u00128\u0010@\u0010X\u0090\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00cf\u0001\u0010\u0098\u0002\u001a\u0006\u0008\u00c9\u0002\u0010\u00ca\u0002\"\u0006\u0008\u00cb\u0002\u0010\u00e1\u0001R*\u0010\u00d3\u0002\u001a\u00030\u00cd\u00028\u0010@\u0010X\u0090\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00fa\u0001\u0010\u00ce\u0002\u001a\u0006\u0008\u00cf\u0002\u0010\u00d0\u0002\"\u0006\u0008\u00d1\u0002\u0010\u00d2\u0002R,\u0010\u00da\u0002\u001a\u0005\u0018\u00010\u00d4\u00028\u0010@\u0010X\u0090\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0082\u0002\u0010\u00d5\u0002\u001a\u0006\u0008\u00d6\u0002\u0010\u00d7\u0002\"\u0006\u0008\u00d8\u0002\u0010\u00d9\u0002R0\u0010\u00de\u0002\u001a\u00020\u00128\u0010@\u0010X\u0091\u000e\u00a2\u0006\u001f\n\u0006\u0008\u00de\u0001\u0010\u0098\u0002\u0012\u0005\u0008\u00dd\u0002\u0010#\u001a\u0006\u0008\u00db\u0002\u0010\u00ca\u0002\"\u0006\u0008\u00dc\u0002\u0010\u00e1\u0001R\u0018\u0010\u00e1\u0002\u001a\u00030\u00df\u00028\u0012X\u0092\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00e8\u0001\u0010\u00e0\u0002R\u001c\u0010\u00e4\u0002\u001a\u0005\u0018\u00010\u00e2\u00028\u0012@\u0012X\u0092\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00e6\u0001\u0010\u00e3\u0002R3\u0010\u00ea\u0002\u001a\u0005\u0018\u00010\u00e2\u00028\u0010@\u0010X\u0091\u000e\u00a2\u0006\u001f\n\u0006\u0008\u00e2\u0001\u0010\u00e3\u0002\u0012\u0005\u0008\u00e9\u0002\u0010#\u001a\u0006\u0008\u00e5\u0002\u0010\u00e6\u0002\"\u0006\u0008\u00e7\u0002\u0010\u00e8\u0002R\u001c\u0010\u00eb\u0002\u001a\u0005\u0018\u00010\u00e2\u00028\u0012@\u0012X\u0092\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00e4\u0001\u0010\u00e3\u0002R\u001c\u0010\u00ec\u0002\u001a\u0005\u0018\u00010\u00e2\u00028\u0012@\u0012X\u0092\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00da\u0001\u0010\u00e3\u0002R/\u0010G\u001a\u00020\t8\u0010@\u0010X\u0091\u000e\u00a2\u0006\u001f\n\u0006\u0008\u00d4\u0001\u0010\u00de\u0001\u0012\u0005\u0008\u00f0\u0002\u0010#\u001a\u0006\u0008\u00ed\u0002\u0010\u008b\u0001\"\u0006\u0008\u00ee\u0002\u0010\u00ef\u0002R\"\u0010\u00f3\u0002\u001a\u000b \u00f1\u0002*\u0004\u0018\u00010t0t8\u0012@\u0012X\u0092\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ca\u0001\u0010\u00f2\u0002R\u001c\u0010\u00f7\u0002\u001a\u0005\u0018\u00010\u00f4\u00028\u0012@\u0012X\u0092\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00f5\u0002\u0010\u00f6\u0002R)\u0010\u00fa\u0002\u001a\u0014\u0012\u000f\u0012\r \u00f1\u0002*\u0005\u0018\u00010\u00f8\u00020\u00f8\u00020\u00c5\u00018\u0012X\u0092\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00d7\u0001\u0010\u00f9\u0002R!\u0010\u00ff\u0002\u001a\u00030\u00fb\u00028RX\u0092\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00f2\u0001\u0010\u00fc\u0002\u001a\u0006\u0008\u00fd\u0002\u0010\u00fe\u0002R \u0010\u0084\u0003\u001a\u00030\u0080\u00038\u0010X\u0090\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00ce\u0001\u0010\u0081\u0003\u001a\u0006\u0008\u0082\u0003\u0010\u0083\u0003R9\u0010\u008a\u0003\u001a\u001c\u0012\u0004\u0012\u00020j\u0012\u0011\u0012\u000f\u0012\u0004\u0012\u00020h\u0012\u0004\u0012\u00020\u00070\u0085\u00030\u0085\u00038\u0010X\u0090\u0004\u00a2\u0006\u0010\n\u0006\u0008\u0086\u0003\u0010\u0087\u0003\u001a\u0006\u0008\u0088\u0003\u0010\u0089\u0003R-\u0010\u008e\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0005\u0012\u00030\u008b\u00030\u0085\u00038\u0010X\u0090\u0004\u00a2\u0006\u0010\n\u0006\u0008\u008c\u0003\u0010\u0087\u0003\u001a\u0006\u0008\u008d\u0003\u0010\u0089\u0003R,\u0010\u0096\u0003\u001a\u0005\u0018\u00010\u008f\u00038\u0010@\u0010X\u0090\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0090\u0003\u0010\u0091\u0003\u001a\u0006\u0008\u0092\u0003\u0010\u0093\u0003\"\u0006\u0008\u0094\u0003\u0010\u0095\u0003R1\u0010\u009c\u0003\u001a\u00020\u00102\u0007\u0010\u00b3\u0001\u001a\u00020\u00108\u0016@PX\u0096\u000e\u00a2\u0006\u0017\n\u0006\u0008\u0097\u0003\u0010\u0098\u0003\u001a\u0005\u0008\u0099\u0003\u0010{\"\u0006\u0008\u009a\u0003\u0010\u009b\u0003R1\u0010\u00a1\u0003\u001a\u00020\u00102\u0007\u0010\u009d\u0003\u001a\u00020\u00108\u0016@PX\u0096\u000e\u00a2\u0006\u0017\n\u0006\u0008\u009e\u0003\u0010\u0098\u0003\u001a\u0005\u0008\u009f\u0003\u0010{\"\u0006\u0008\u00a0\u0003\u0010\u009b\u0003R6\u0010\u00c1\u0001\u001a\u0004\u0018\u00010\u000e2\t\u0010\u00b3\u0001\u001a\u0004\u0018\u00010\u000e8\u0016@PX\u0096\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00a2\u0003\u0010\u00a3\u0003\u001a\u0006\u0008\u00a4\u0003\u0010\u00a5\u0003\"\u0006\u0008\u00a6\u0003\u0010\u00cd\u0001R,\u0010\u00ae\u0003\u001a\u0005\u0018\u00010\u00a7\u00038\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00a8\u0003\u0010\u00a9\u0003\u001a\u0006\u0008\u00aa\u0003\u0010\u00ab\u0003\"\u0006\u0008\u00ac\u0003\u0010\u00ad\u0003R\u0019\u0010\u00b0\u0003\u001a\u00020\t8\u0012@\u0012X\u0092\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00af\u0003\u0010\u00de\u0001R\u001e\u0010\u00b4\u0003\u001a\u00020h8\u0012X\u0093\u0004\u00a2\u0006\u000f\n\u0006\u0008\u00b1\u0003\u0010\u00b2\u0003\u0012\u0005\u0008\u00b3\u0003\u0010#R\u0019\u0010\u00b6\u0003\u001a\u00020\u00128\u0012@\u0012X\u0092\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b5\u0003\u0010\u0098\u0002R \u0010\u00bc\u0003\u001a\u00030\u00b7\u00038\u0010X\u0090\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00b8\u0003\u0010\u00b9\u0003\u001a\u0006\u0008\u00ba\u0003\u0010\u00bb\u0003R\u0018\u0010\u00c0\u0003\u001a\u00030\u00bd\u00038PX\u0090\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00be\u0003\u0010\u00bf\u0003R\u0018\u0010\u00c4\u0003\u001a\u00030\u00c1\u00038PX\u0090\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00c2\u0003\u0010\u00c3\u0003R\u0017\u0010\u00c6\u0003\u001a\u00020j8PX\u0090\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00c5\u0003\u0010\u0092\u0001R\u001a\u0010\u00ca\u0003\u001a\u0005\u0018\u00010\u00c7\u00038PX\u0090\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00c8\u0003\u0010\u00c9\u0003R\u0017\u0010\u00cc\u0003\u001a\u00020\u00128PX\u0090\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00cb\u0003\u0010\u00ca\u0002R\u0017\u0010\u00cf\u0003\u001a\u00020h8VX\u0096\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00cd\u0003\u0010\u00ce\u0003R.\u0010\u00d2\u0003\u001a\u0004\u0018\u00010h2\t\u0010\u00b3\u0001\u001a\u0004\u0018\u00010h8V@VX\u0096\u000e\u00a2\u0006\u0010\u001a\u0006\u0008\u00d0\u0003\u0010\u00ce\u0003\"\u0006\u0008\u00d1\u0003\u0010\u0095\u0001R\u0017\u0010\u00d5\u0003\u001a\u00020\u00188PX\u0090\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00d3\u0003\u0010\u00d4\u0003R*\u0010\u00d8\u0003\u001a\u00020\u00122\u0007\u0010\u00b3\u0001\u001a\u00020\u00128V@VX\u0096\u000e\u00a2\u0006\u0010\u001a\u0006\u0008\u00d6\u0003\u0010\u00ca\u0002\"\u0006\u0008\u00d7\u0003\u0010\u00e1\u0001R\u0018\u0010\u00dc\u0003\u001a\u00030\u00d9\u00038RX\u0092\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00da\u0003\u0010\u00db\u0003R\u0018\u0010\u00e0\u0003\u001a\u00030\u00dd\u00038RX\u0092\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00de\u0003\u0010\u00df\u0003R\u001e\u0010\u00c3\u0001\u001a\u0005\u0018\u00010\u00c2\u0001*\u00020\u000e8RX\u0092\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00ba\u0002\u0010\u00c4\u0001\u00a8\u0006\u00e2\u0003"
    }
    d2 = {
        "Lcom/yandex/div/core/view2/Div2View;",
        "Lcom/yandex/div/internal/widget/FrameContainerLayout;",
        "Lsv2;",
        "Lcom/yandex/div/core/Div2Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "",
        "constructorCallTime",
        "<init>",
        "(Lcom/yandex/div/core/Div2Context;Landroid/util/AttributeSet;IJ)V",
        "(Lcom/yandex/div/core/Div2Context;Landroid/util/AttributeSet;I)V",
        "Lcom/yandex/div2/DivData;",
        "data",
        "Lei2;",
        "tag",
        "",
        "setData",
        "(Lcom/yandex/div2/DivData;Lei2;)Z",
        "oldDivData",
        "(Lcom/yandex/div2/DivData;Lcom/yandex/div2/DivData;Lei2;)Z",
        "",
        "Lcom/yandex/div/core/state/DivStatePath;",
        "paths",
        "temporary",
        "setDataWithStates",
        "(Lcom/yandex/div2/DivData;Lei2;Ljava/util/List;Z)Z",
        "Lcom/yandex/div2/DivPatch;",
        "patch",
        "applyPatch",
        "(Lcom/yandex/div2/DivPatch;)Z",
        "Lzfb;",
        "tryLogVisibility",
        "()V",
        "discardVisibilityTracking",
        "trackChildrenVisibility",
        "Lwh2;",
        "getCustomContainerChildFactory$div_release",
        "()Lwh2;",
        "getCustomContainerChildFactory",
        "changed",
        "left",
        "top",
        "right",
        "bottom",
        "onLayout",
        "(ZIIII)V",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onMeasure",
        "(II)V",
        "Landroid/graphics/Canvas;",
        "canvas",
        "draw",
        "(Landroid/graphics/Canvas;)V",
        "onAttachedToWindow",
        "onDetachedFromWindow",
        "Ljn5;",
        "loadReference",
        "Landroid/view/View;",
        "targetView",
        "addLoadReference",
        "(Ljn5;Landroid/view/View;)V",
        "newData",
        "oldData",
        "newDataTag",
        "prepareForRecycleOrCleanup",
        "releaseMedia",
        "cleanup",
        "stateId",
        "switchToState",
        "(JZ)V",
        "switchToInitialState",
        "path",
        "(Lcom/yandex/div/core/state/DivStatePath;Z)V",
        "pathList",
        "withAnimations",
        "switchToMultipleStates",
        "(Ljava/util/List;ZZ)V",
        "statePath",
        "isInState",
        "(Lcom/yandex/div/core/state/DivStatePath;)Z",
        "Lci2;",
        "observer",
        "addDivDataChangeObserver",
        "(Lci2;)V",
        "removeDivDataChangeObserver",
        "Lw08;",
        "addPersistentDivDataObserver$div_release",
        "(Lw08;)V",
        "addPersistentDivDataObserver",
        "removePersistentDivDataObserver$div_release",
        "removePersistentDivDataObserver",
        "resetToInitialState",
        "Lcom/yandex/div2/Div;",
        "rootDiv$div_release",
        "()Lcom/yandex/div2/Div;",
        "rootDiv",
        "startDivAnimation",
        "stopDivAnimation",
        "Lcom/yandex/div2/DivAction;",
        "action",
        "",
        "reason",
        "Loj3;",
        "resolver",
        "handleAction",
        "(Lcom/yandex/div2/DivAction;Ljava/lang/String;Loj3;)V",
        "handleActionWithResult",
        "(Lcom/yandex/div2/DivAction;Ljava/lang/String;Loj3;)Z",
        "Landroid/net/Uri;",
        "uri",
        "handleUri",
        "(Landroid/net/Uri;)V",
        "Lyu2;",
        "viewConfig",
        "setConfig",
        "(Lyu2;)V",
        "getConfig",
        "()Lyu2;",
        "getDivTag",
        "()Lei2;",
        "Lxt7;",
        "listener",
        "subscribe",
        "(Lxt7;)V",
        "clearSubscriptions",
        "Landroid/content/res/Configuration;",
        "newConfig",
        "onConfigurationChangedOutside",
        "(Landroid/content/res/Configuration;)V",
        "dismissPendingOverflowMenus",
        "Landroid/view/MotionEvent;",
        "event",
        "hasScrollableViewUnder",
        "(Landroid/view/MotionEvent;)Z",
        "getCurrentStateId",
        "()J",
        "Luv2;",
        "getCurrentState",
        "()Luv2;",
        "getView",
        "()Lcom/yandex/div/core/view2/Div2View;",
        "getExpressionResolver",
        "()Loj3;",
        "tooltipId",
        "showTooltip",
        "(Ljava/lang/String;)V",
        "multiple",
        "(Ljava/lang/String;Z)V",
        "hideTooltip",
        "cancelTooltips",
        "dispatchDraw",
        "child",
        "drawingTime",
        "drawChild",
        "(Landroid/graphics/Canvas;Landroid/view/View;J)Z",
        "view",
        "div",
        "bindViewToDiv$div_release",
        "(Landroid/view/View;Lcom/yandex/div2/Div;)V",
        "bindViewToDiv",
        "takeBindingDiv$div_release",
        "(Landroid/view/View;)Lcom/yandex/div2/Div;",
        "takeBindingDiv",
        "Lcom/yandex/div2/DivAccessibility$Mode;",
        "mode",
        "setPropagatedAccessibilityMode$div_release",
        "(Landroid/view/View;Lcom/yandex/div2/DivAccessibility$Mode;)V",
        "setPropagatedAccessibilityMode",
        "getPropagatedAccessibilityMode$div_release",
        "(Landroid/view/View;)Lcom/yandex/div2/DivAccessibility$Mode;",
        "getPropagatedAccessibilityMode",
        "isDescendantAccessibilityMode$div_release",
        "(Landroid/view/View;)Z",
        "isDescendantAccessibilityMode",
        "name",
        "value",
        "Lcom/yandex/div/data/VariableMutationException;",
        "setVariable",
        "(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/div/data/VariableMutationException;",
        "id",
        "command",
        "applyTimerCommand",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "divId",
        "expressionResolver",
        "applyVideoCommand",
        "(Ljava/lang/String;Ljava/lang/String;Loj3;)Z",
        "unbindViewFromDiv$div_release",
        "unbindViewFromDiv",
        "divData",
        "Lcom/yandex/div2/DivData$State;",
        "stateToBind",
        "(Lcom/yandex/div2/DivData;)Lcom/yandex/div2/DivData$State;",
        "Lkotlin/Function0;",
        "function",
        "bulkActions$div_release",
        "(Lc74;)V",
        "bulkActions",
        "Q",
        "(Lcom/yandex/div2/DivData;Lei2;)V",
        "s",
        "(Lcom/yandex/div2/DivData;)V",
        "U",
        "G",
        "F",
        "newDivData",
        "Lxx7;",
        "reporter",
        "P",
        "(Lcom/yandex/div2/DivPatch;Lcom/yandex/div2/DivData;Lcom/yandex/div2/DivData;Lxx7;)Z",
        "Lj34;",
        "S",
        "(Lcom/yandex/div2/DivData;Lei2;Lj34;)Z",
        "state",
        "O",
        "(Lcom/yandex/div2/DivData$State;)V",
        "B",
        "A",
        "J",
        "removeChildren",
        "y",
        "(Z)V",
        "M",
        "x",
        "N",
        "(Lcom/yandex/div2/DivData;Lcom/yandex/div2/DivData;Lj34;)Z",
        "L",
        "(Lcom/yandex/div2/DivData;)J",
        "K",
        "C",
        "(JZ)Z",
        "oldDiv",
        "newState",
        "newStateView",
        "allowsTransition",
        "bindBeforeViewAdded",
        "q",
        "(Lcom/yandex/div2/DivData;Lcom/yandex/div2/DivData;Lcom/yandex/div2/Div;Lcom/yandex/div2/DivData$State;Landroid/view/View;ZZ)V",
        "T",
        "(JZ)Landroid/view/View;",
        "isUpdateTemporary",
        "t",
        "(Lcom/yandex/div2/DivData$State;JZ)Landroid/view/View;",
        "v",
        "newDiv",
        "Landroidx/transition/Transition;",
        "H",
        "(Lcom/yandex/div2/DivData;Lcom/yandex/div2/DivData;Lcom/yandex/div2/Div;Lcom/yandex/div2/Div;)Landroidx/transition/Transition;",
        "Lpc9;",
        "Lzl2;",
        "E",
        "(Lcom/yandex/div2/DivData;Lcom/yandex/div2/Div;Loj3;)Lpc9;",
        "isAutoanimations",
        "Lpm9;",
        "I",
        "(Lcom/yandex/div2/DivData;ZLpm9;)V",
        "Lcom/yandex/div/core/view2/reuse/a;",
        "z",
        "(Lcom/yandex/div2/DivData;Lcom/yandex/div2/DivData;Lcom/yandex/div/core/view2/reuse/a;)Z",
        "m",
        "Lcom/yandex/div/core/Div2Context;",
        "getContext$div_release",
        "()Lcom/yandex/div/core/Div2Context;",
        "n",
        "Lcom/yandex/div/core/dagger/Div2Component;",
        "o",
        "Lcom/yandex/div/core/dagger/Div2Component;",
        "getDiv2Component$div_release",
        "()Lcom/yandex/div/core/dagger/Div2Component;",
        "div2Component",
        "Lcom/yandex/div/core/dagger/Div2ViewComponent;",
        "p",
        "Lcom/yandex/div/core/dagger/Div2ViewComponent;",
        "getViewComponent$div_release",
        "()Lcom/yandex/div/core/dagger/Div2ViewComponent;",
        "viewComponent",
        "Z",
        "bindOnAttachEnabled",
        "r",
        "complexRebindEnabled",
        "Lvbc;",
        "Lvbc;",
        "bindingProvider",
        "Lwe0;",
        "Lwe0;",
        "bindingReporterProvider",
        "Lzx7;",
        "u",
        "Lzx7;",
        "patchReporterProvider",
        "Ldd2;",
        "Ldd2;",
        "divBuilder",
        "",
        "w",
        "Ljava/util/List;",
        "loadReferences",
        "overflowMenuListeners",
        "divDataChangedObservers",
        "Lqd7;",
        "Lqd7;",
        "persistentDivDataObservers",
        "Ljava/util/WeakHashMap;",
        "Ljava/util/WeakHashMap;",
        "viewToDivBindings",
        "propagatedAccessibilityModes",
        "Lcom/yandex/div/core/view2/Div2View$a;",
        "Lcom/yandex/div/core/view2/Div2View$a;",
        "bulkActionsHandler",
        "Lvj3;",
        "D",
        "Lvj3;",
        "getExpressionsRuntime$div_release",
        "()Lvj3;",
        "setExpressionsRuntime$div_release",
        "(Lvj3;)V",
        "expressionsRuntime",
        "oldExpressionsRuntime",
        "Lcom/yandex/div/core/expression/local/RuntimeStore;",
        "Lcom/yandex/div/core/expression/local/RuntimeStore;",
        "getRuntimeStore$div_release",
        "()Lcom/yandex/div/core/expression/local/RuntimeStore;",
        "setRuntimeStore$div_release",
        "(Lcom/yandex/div/core/expression/local/RuntimeStore;)V",
        "runtimeStore",
        "getInMiddleOfBind$div_release",
        "()Z",
        "setInMiddleOfBind$div_release",
        "inMiddleOfBind",
        "Lcom/yandex/div/core/view2/a;",
        "Lcom/yandex/div/core/view2/a;",
        "getBindingContext$div_release",
        "()Lcom/yandex/div/core/view2/a;",
        "setBindingContext$div_release",
        "(Lcom/yandex/div/core/view2/a;)V",
        "bindingContext",
        "Lbt2;",
        "Lbt2;",
        "getDivTimerEventDispatcher$div_release",
        "()Lbt2;",
        "setDivTimerEventDispatcher$div_release",
        "(Lbt2;)V",
        "divTimerEventDispatcher",
        "getForceCanvasClipping",
        "setForceCanvasClipping",
        "getForceCanvasClipping$annotations",
        "forceCanvasClipping",
        "",
        "Ljava/lang/Object;",
        "monitor",
        "Lon9;",
        "Lon9;",
        "setActiveBindingRunnable",
        "getBindOnAttachRunnable$div_release",
        "()Lon9;",
        "setBindOnAttachRunnable$div_release",
        "(Lon9;)V",
        "getBindOnAttachRunnable$div_release$annotations",
        "bindOnAttachRunnable",
        "reportBindingResumedRunnable",
        "reportBindingFinishedRunnable",
        "getStateId$div_release",
        "setStateId$div_release",
        "(J)V",
        "getStateId$div_release$annotations",
        "kotlin.jvm.PlatformType",
        "Lyu2;",
        "config",
        "Lcom/yandex/div/core/view2/reuse/RebindTask;",
        "R",
        "Lcom/yandex/div/core/view2/reuse/RebindTask;",
        "rebindTask",
        "Lfs8;",
        "Lc74;",
        "renderConfig",
        "Lcom/yandex/div/histogram/Div2ViewHistogramReporter;",
        "Lyi5;",
        "getHistogramReporter",
        "()Lcom/yandex/div/histogram/Div2ViewHistogramReporter;",
        "histogramReporter",
        "La15;",
        "La15;",
        "getInputFocusTracker$div_release",
        "()La15;",
        "inputFocusTracker",
        "",
        "V",
        "Ljava/util/Map;",
        "getLayoutSizes$div_release",
        "()Ljava/util/Map;",
        "layoutSizes",
        "Lcom/yandex/div/core/view2/divs/DivLayoutProviderVariablesHolder;",
        "W",
        "getVariablesHolders$div_release",
        "variablesHolders",
        "Landroid/view/ViewTreeObserver$OnPreDrawListener;",
        "a0",
        "Landroid/view/ViewTreeObserver$OnPreDrawListener;",
        "getClearVariablesListener$div_release",
        "()Landroid/view/ViewTreeObserver$OnPreDrawListener;",
        "setClearVariablesListener$div_release",
        "(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V",
        "clearVariablesListener",
        "b0",
        "Lei2;",
        "getDataTag",
        "setDataTag$div_release",
        "(Lei2;)V",
        "dataTag",
        "<set-?>",
        "c0",
        "getPrevDataTag",
        "setPrevDataTag$div_release",
        "prevDataTag",
        "d0",
        "Lcom/yandex/div2/DivData;",
        "getDivData",
        "()Lcom/yandex/div2/DivData;",
        "setDivData$div_release",
        "Lcf2;",
        "e0",
        "Lcf2;",
        "getActionHandler",
        "()Lcf2;",
        "setActionHandler",
        "(Lcf2;)V",
        "actionHandler",
        "f0",
        "timeCreated",
        "g0",
        "Ljava/lang/String;",
        "getViewCreateCallType$annotations",
        "viewCreateCallType",
        "h0",
        "drawWasSkipped",
        "Lcom/yandex/div/core/view2/animations/DivTransitionHandler;",
        "i0",
        "Lcom/yandex/div/core/view2/animations/DivTransitionHandler;",
        "getDivTransitionHandler$div_release",
        "()Lcom/yandex/div/core/view2/animations/DivTransitionHandler;",
        "divTransitionHandler",
        "Lzr8;",
        "getReleaseViewVisitor$div_release",
        "()Lzr8;",
        "releaseViewVisitor",
        "Ldl6;",
        "getMediaReleaseViewVisitor$div_release",
        "()Ldl6;",
        "mediaReleaseViewVisitor",
        "getOldExpressionResolver$div_release",
        "oldExpressionResolver",
        "Lxu8;",
        "getCurrentRebindReusableList$div_release",
        "()Lxu8;",
        "currentRebindReusableList",
        "getComplexRebindInProgress$div_release",
        "complexRebindInProgress",
        "getLogId",
        "()Ljava/lang/String;",
        "logId",
        "getComponentName",
        "setComponentName",
        "componentName",
        "getCurrentRootPath$div_release",
        "()Lcom/yandex/div/core/state/DivStatePath;",
        "currentRootPath",
        "getVisualErrorsEnabled",
        "setVisualErrorsEnabled",
        "visualErrorsEnabled",
        "Liu2;",
        "getDivVideoActionHandler",
        "()Liu2;",
        "divVideoActionHandler",
        "Lcom/yandex/div/core/tooltip/DivTooltipController;",
        "getTooltipController",
        "()Lcom/yandex/div/core/tooltip/DivTooltipController;",
        "tooltipController",
        "a",
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
.field public final A:Ljava/util/WeakHashMap;

.field public final B:Ljava/util/WeakHashMap;

.field public final C:Lcom/yandex/div/core/view2/Div2View$a;

.field public D:Lvj3;

.field public E:Lvj3;

.field public F:Lcom/yandex/div/core/expression/local/RuntimeStore;

.field public G:Z

.field public H:Lcom/yandex/div/core/view2/a;

.field public I:Lbt2;

.field public J:Z

.field public final K:Ljava/lang/Object;

.field public L:Lon9;

.field public M:Lon9;

.field public N:Lon9;

.field public O:Lon9;

.field public P:J

.field public Q:Lyu2;

.field public R:Lcom/yandex/div/core/view2/reuse/RebindTask;

.field public final S:Lc74;

.field public final T:Lyi5;

.field public final U:La15;

.field public final V:Ljava/util/Map;

.field public final W:Ljava/util/Map;

.field public a0:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field public b0:Lei2;

.field public c0:Lei2;

.field public d0:Lcom/yandex/div2/DivData;

.field public e0:Lcf2;

.field public f0:J

.field public final g0:Ljava/lang/String;

.field public h0:Z

.field public final i0:Lcom/yandex/div/core/view2/animations/DivTransitionHandler;

.field public final m:Lcom/yandex/div/core/Div2Context;

.field public final n:J

.field public final o:Lcom/yandex/div/core/dagger/Div2Component;

.field public final p:Lcom/yandex/div/core/dagger/Div2ViewComponent;

.field public final q:Z

.field public final r:Z

.field public final s:Lvbc;

.field public final t:Lwe0;

.field public final u:Lzx7;

.field public final v:Ldd2;

.field public final w:Ljava/util/List;

.field public final x:Ljava/util/List;

.field public final y:Ljava/util/List;

.field public final z:Lqd7;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/Div2Context;)V
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

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/core/view2/Div2View;-><init>(Lcom/yandex/div/core/Div2Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div/core/Div2Context;Landroid/util/AttributeSet;)V
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

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/core/view2/Div2View;-><init>(Lcom/yandex/div/core/Div2Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div/core/Div2Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/core/view2/Div2View;-><init>(Lcom/yandex/div/core/Div2Context;Landroid/util/AttributeSet;IJ)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yandex/div/core/Div2Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 40
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/Div2View;-><init>(Lcom/yandex/div/core/Div2Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div/core/Div2Context;Landroid/util/AttributeSet;IJ)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/div/internal/widget/FrameContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    iput-object p1, p0, Lcom/yandex/div/core/view2/Div2View;->m:Lcom/yandex/div/core/Div2Context;

    .line 5
    iput-wide p4, p0, Lcom/yandex/div/core/view2/Div2View;->n:J

    .line 6
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getContext$div_release()Lcom/yandex/div/core/Div2Context;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/div/core/Div2Context;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/core/view2/Div2View;->o:Lcom/yandex/div/core/dagger/Div2Component;

    .line 7
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object p1

    invoke-interface {p1}, Lcom/yandex/div/core/dagger/Div2Component;->r()Lcom/yandex/div/core/dagger/Div2ViewComponent$Builder;

    move-result-object p1

    .line 8
    invoke-interface {p1, p0}, Lcom/yandex/div/core/dagger/Div2ViewComponent$Builder;->a(Lcom/yandex/div/core/view2/Div2View;)Lcom/yandex/div/core/dagger/Div2ViewComponent$Builder;

    move-result-object p1

    .line 9
    invoke-interface {p1}, Lcom/yandex/div/core/dagger/Div2ViewComponent$Builder;->build()Lcom/yandex/div/core/dagger/Div2ViewComponent;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/core/view2/Div2View;->p:Lcom/yandex/div/core/dagger/Div2ViewComponent;

    .line 10
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object p1

    invoke-interface {p1}, Lcom/yandex/div/core/dagger/Div2Component;->u()Z

    move-result p1

    iput-boolean p1, p0, Lcom/yandex/div/core/view2/Div2View;->q:Z

    .line 11
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object p1

    invoke-interface {p1}, Lcom/yandex/div/core/dagger/Div2Component;->E()Z

    move-result p1

    iput-boolean p1, p0, Lcom/yandex/div/core/view2/Div2View;->r:Z

    .line 12
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getViewComponent$div_release()Lcom/yandex/div/core/dagger/Div2ViewComponent;

    move-result-object p1

    invoke-interface {p1}, Lcom/yandex/div/core/dagger/Div2ViewComponent;->l()Lvbc;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/core/view2/Div2View;->s:Lvbc;

    .line 13
    new-instance p1, Lwe0;

    invoke-direct {p1, p0}, Lwe0;-><init>(Lcom/yandex/div/core/view2/Div2View;)V

    iput-object p1, p0, Lcom/yandex/div/core/view2/Div2View;->t:Lwe0;

    .line 14
    new-instance p1, Lzx7;

    invoke-direct {p1, p0}, Lzx7;-><init>(Lcom/yandex/div/core/view2/Div2View;)V

    iput-object p1, p0, Lcom/yandex/div/core/view2/Div2View;->u:Lzx7;

    .line 15
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getContext$div_release()Lcom/yandex/div/core/Div2Context;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/div/core/Div2Context;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object p1

    invoke-interface {p1}, Lcom/yandex/div/core/dagger/Div2Component;->v()Ldd2;

    move-result-object p1

    const-string p2, "context.div2Component.div2Builder"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/div/core/view2/Div2View;->v:Ldd2;

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/Div2View;->w:Ljava/util/List;

    .line 17
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/Div2View;->x:Ljava/util/List;

    .line 18
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/Div2View;->y:Ljava/util/List;

    .line 19
    new-instance p1, Lqd7;

    invoke-direct {p1}, Lqd7;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/Div2View;->z:Lqd7;

    .line 20
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/Div2View;->A:Ljava/util/WeakHashMap;

    .line 21
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/Div2View;->B:Ljava/util/WeakHashMap;

    .line 22
    new-instance p1, Lcom/yandex/div/core/view2/Div2View$a;

    invoke-direct {p1, p0}, Lcom/yandex/div/core/view2/Div2View$a;-><init>(Lcom/yandex/div/core/view2/Div2View;)V

    iput-object p1, p0, Lcom/yandex/div/core/view2/Div2View;->C:Lcom/yandex/div/core/view2/Div2View$a;

    .line 23
    sget-object p1, Lcom/yandex/div/core/view2/a;->d:Lcom/yandex/div/core/view2/a$a;

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/a$a;->a(Lcom/yandex/div/core/view2/Div2View;)Lcom/yandex/div/core/view2/a;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/core/view2/Div2View;->H:Lcom/yandex/div/core/view2/a;

    .line 24
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/Div2View;->K:Ljava/lang/Object;

    .line 25
    sget-object p1, Lcom/yandex/div2/DivData;->j:Lcom/yandex/div2/DivData$a;

    invoke-static {p1}, Lfi2;->a(Lcom/yandex/div2/DivData$a;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/yandex/div/core/view2/Div2View;->P:J

    .line 26
    sget-object p1, Lyu2;->a:Lyu2;

    iput-object p1, p0, Lcom/yandex/div/core/view2/Div2View;->Q:Lyu2;

    .line 27
    new-instance p1, Lcom/yandex/div/core/view2/Div2View$renderConfig$1;

    invoke-direct {p1, p0}, Lcom/yandex/div/core/view2/Div2View$renderConfig$1;-><init>(Lcom/yandex/div/core/view2/Div2View;)V

    iput-object p1, p0, Lcom/yandex/div/core/view2/Div2View;->S:Lc74;

    .line 28
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/yandex/div/core/view2/Div2View$histogramReporter$2;

    invoke-direct {p2, p0}, Lcom/yandex/div/core/view2/Div2View$histogramReporter$2;-><init>(Lcom/yandex/div/core/view2/Div2View;)V

    invoke-static {p1, p2}, Lkotlin/b;->b(Lkotlin/LazyThreadSafetyMode;Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/core/view2/Div2View;->T:Lyi5;

    .line 29
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getViewComponent$div_release()Lcom/yandex/div/core/dagger/Div2ViewComponent;

    move-result-object p1

    invoke-interface {p1}, Lcom/yandex/div/core/dagger/Div2ViewComponent;->f()La15;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/core/view2/Div2View;->U:La15;

    .line 30
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/Div2View;->V:Ljava/util/Map;

    .line 31
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/Div2View;->W:Ljava/util/Map;

    .line 32
    sget-object p1, Lei2;->b:Lei2;

    const-string p2, "INVALID"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/div/core/view2/Div2View;->b0:Lei2;

    .line 33
    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/div/core/view2/Div2View;->c0:Lei2;

    const-wide/16 p1, -0x1

    .line 34
    iput-wide p1, p0, Lcom/yandex/div/core/view2/Div2View;->f0:J

    .line 35
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object p1

    invoke-interface {p1}, Lcom/yandex/div/core/dagger/Div2Component;->d()Lsh2;

    move-result-object p1

    invoke-virtual {p1}, Lsh2;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/core/view2/Div2View;->g0:Ljava/lang/String;

    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Lcom/yandex/div/core/view2/Div2View;->h0:Z

    .line 37
    new-instance p1, Lcom/yandex/div/core/view2/animations/DivTransitionHandler;

    invoke-direct {p1, p0}, Lcom/yandex/div/core/view2/animations/DivTransitionHandler;-><init>(Lcom/yandex/div/core/view2/Div2View;)V

    iput-object p1, p0, Lcom/yandex/div/core/view2/Div2View;->i0:Lcom/yandex/div/core/view2/animations/DivTransitionHandler;

    .line 38
    sget-object p1, Lsh2;->f:Lsh2$a;

    invoke-virtual {p1}, Lsh2$a;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/yandex/div/core/view2/Div2View;->f0:J

    .line 39
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object p1

    invoke-interface {p1}, Lcom/yandex/div/core/dagger/Div2Component;->z()Lxr8;

    move-result-object p1

    invoke-virtual {p1, p0}, Lxr8;->d(Lcom/yandex/div/core/view2/Div2View;)V

    return-void
.end method

.method public static synthetic R(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivData;Lei2;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_2

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDivData()Lcom/yandex/div2/DivData;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDataTag()Lei2;

    move-result-object p2

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/Div2View;->Q(Lcom/yandex/div2/DivData;Lei2;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateExpressionsRuntime"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic access$getHistogramReporter(Lcom/yandex/div/core/view2/Div2View;)Lcom/yandex/div/histogram/Div2ViewHistogramReporter;
    .locals 0

    invoke-direct {p0}, Lcom/yandex/div/core/view2/Div2View;->getHistogramReporter()Lcom/yandex/div/histogram/Div2ViewHistogramReporter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getRenderConfig$p(Lcom/yandex/div/core/view2/Div2View;)Lc74;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/Div2View;->S:Lc74;

    return-object p0
.end method

.method public static synthetic applyVideoCommand$default(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Ljava/lang/String;Loj3;ILjava/lang/Object;)Z
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getExpressionResolver()Loj3;

    move-result-object p3

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/Div2View;->applyVideoCommand(Ljava/lang/String;Ljava/lang/String;Loj3;)Z

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: applyVideoCommand"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic getBindOnAttachRunnable$div_release$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method private getDivVideoActionHandler()Liu2;
    .locals 1

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object p0

    invoke-interface {p0}, Lcom/yandex/div/core/dagger/Div2Component;->b()Liu2;

    move-result-object p0

    const-string v0, "div2Component.divVideoActionHandler"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic getForceCanvasClipping$annotations()V
    .locals 0

    return-void
.end method

.method private getHistogramReporter()Lcom/yandex/div/histogram/Div2ViewHistogramReporter;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/Div2View;->T:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;

    return-object p0
.end method

.method public static synthetic getStateId$div_release$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method private getTooltipController()Lcom/yandex/div/core/tooltip/DivTooltipController;
    .locals 1

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object p0

    invoke-interface {p0}, Lcom/yandex/div/core/dagger/Div2Component;->t()Lcom/yandex/div/core/tooltip/DivTooltipController;

    move-result-object p0

    const-string v0, "div2Component.tooltipController"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static synthetic getViewCreateCallType$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic handleAction$default(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivAction;Ljava/lang/String;Loj3;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const-string p2, "external"

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getExpressionResolver()Loj3;

    move-result-object p3

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/Div2View;->handleAction(Lcom/yandex/div2/DivAction;Ljava/lang/String;Loj3;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: handleAction"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic handleActionWithResult$default(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivAction;Ljava/lang/String;Loj3;ILjava/lang/Object;)Z
    .locals 0

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const-string p2, "external"

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getExpressionResolver()Loj3;

    move-result-object p3

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/Div2View;->handleActionWithResult(Lcom/yandex/div2/DivAction;Ljava/lang/String;Loj3;)Z

    move-result p0

    return p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: handleActionWithResult"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic p(Lcom/yandex/div/core/view2/Div2View;)V
    .locals 0

    invoke-static {p0}, Lcom/yandex/div/core/view2/Div2View;->r(Lcom/yandex/div/core/view2/Div2View;)V

    return-void
.end method

.method public static synthetic prepareForRecycleOrCleanup$default(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivData;Lcom/yandex/div2/DivData;Lei2;ILjava/lang/Object;)Z
    .locals 1

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/Div2View;->prepareForRecycleOrCleanup(Lcom/yandex/div2/DivData;Lcom/yandex/div2/DivData;Lei2;)Z

    move-result p0

    return p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: prepareForRecycleOrCleanup"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final r(Lcom/yandex/div/core/view2/Div2View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lyr8;->a:Lyr8;

    invoke-virtual {v0, p0, p0}, Lyr8;->a(Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/Div2View;)V

    return-void
.end method

.method public static synthetic u(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivData$State;JZILjava/lang/Object;)Landroid/view/View;
    .locals 0

    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p4, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/div/core/view2/Div2View;->t(Lcom/yandex/div2/DivData$State;JZ)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: buildViewAndUpdateState"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic w(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivData$State;JZILjava/lang/Object;)Landroid/view/View;
    .locals 0

    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p4, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/div/core/view2/Div2View;->v(Lcom/yandex/div2/DivData$State;JZ)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: buildViewAsyncAndUpdateState"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final A()V
    .locals 11

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/div/core/dagger/Div2Component;->H()Lcom/yandex/div/core/view2/DivVisibilityActionTracker;

    move-result-object v0

    const-string v1, "div2Component.visibilityActionTracker"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/div/core/view2/Div2View;->A:Ljava/util/WeakHashMap;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/yandex/div2/Div;

    const-string v1, "view"

    invoke-static {v2, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->Z(Landroid/view/View;)Lcom/yandex/div/core/view2/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v1, "div"

    invoke-static {v5, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x30

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-static/range {v1 .. v9}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->x(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lcom/yandex/div2/Div;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final B(Lcom/yandex/div2/DivData$State;)V
    .locals 10

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/div/core/dagger/Div2Component;->H()Lcom/yandex/div/core/view2/DivVisibilityActionTracker;

    move-result-object v1

    const-string v0, "div2Component.visibilityActionTracker"

    invoke-static {v1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getExpressionResolver()Loj3;

    move-result-object v3

    iget-object v5, p1, Lcom/yandex/div2/DivData$State;->a:Lcom/yandex/div2/Div;

    const/16 v8, 0x30

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v9}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->x(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lcom/yandex/div2/Div;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public final C(JZ)Z
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual/range {p0 .. p2}, Lcom/yandex/div/core/view2/Div2View;->setStateId$div_release(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div/core/view2/Div2View;->getCurrentState()Luv2;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Luv2;->c()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div/core/view2/Div2View;->getDivData()Lcom/yandex/div2/DivData;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v5, :cond_1

    return v6

    :cond_1
    iget-object v7, v5, Lcom/yandex/div2/DivData;->c:Ljava/util/List;

    check-cast v7, Ljava/lang/Iterable;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/yandex/div2/DivData$State;

    iget-wide v9, v9, Lcom/yandex/div2/DivData$State;->b:J

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-nez v9, :cond_2

    goto :goto_2

    :cond_4
    move-object v8, v4

    :goto_2
    check-cast v8, Lcom/yandex/div2/DivData$State;

    iget-object v3, v5, Lcom/yandex/div2/DivData;->c:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Lcom/yandex/div2/DivData$State;

    iget-wide v9, v9, Lcom/yandex/div2/DivData$State;->b:J

    cmp-long v9, v9, v1

    if-nez v9, :cond_5

    goto :goto_3

    :cond_6
    move-object v7, v4

    :goto_3
    check-cast v7, Lcom/yandex/div2/DivData$State;

    if-nez v7, :cond_7

    return v6

    :cond_7
    if-eqz v8, :cond_8

    invoke-virtual {v0, v8}, Lcom/yandex/div/core/view2/Div2View;->B(Lcom/yandex/div2/DivData$State;)V

    :cond_8
    invoke-virtual {v0, v7}, Lcom/yandex/div/core/view2/Div2View;->O(Lcom/yandex/div2/DivData$State;)V

    sget-object v9, Lhh2;->a:Lhh2;

    if-eqz v8, :cond_9

    iget-object v3, v8, Lcom/yandex/div2/DivData$State;->a:Lcom/yandex/div2/Div;

    move-object v10, v3

    goto :goto_4

    :cond_9
    move-object v10, v4

    :goto_4
    iget-object v11, v7, Lcom/yandex/div2/DivData$State;->a:Lcom/yandex/div2/Div;

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div/core/view2/Div2View;->getExpressionResolver()Loj3;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div/core/view2/Div2View;->getExpressionResolver()Loj3;

    move-result-object v13

    const/16 v15, 0x10

    const/16 v16, 0x0

    const/4 v14, 0x0

    invoke-static/range {v9 .. v16}, Lhh2;->d(Lhh2;Lcom/yandex/div2/Div;Lcom/yandex/div2/Div;Loj3;Loj3;Lih2;ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual/range {p0 .. p3}, Lcom/yandex/div/core/view2/Div2View;->T(JZ)Landroid/view/View;

    move-result-object v1

    :goto_5
    move-object v6, v1

    goto :goto_6

    :cond_a
    move/from16 v3, p3

    invoke-virtual {v0, v7, v1, v2, v3}, Lcom/yandex/div/core/view2/Div2View;->t(Lcom/yandex/div2/DivData$State;JZ)Landroid/view/View;

    move-result-object v1

    goto :goto_5

    :goto_6
    if-eqz v8, :cond_b

    iget-object v1, v8, Lcom/yandex/div2/DivData$State;->a:Lcom/yandex/div2/Div;

    move-object v3, v1

    goto :goto_7

    :cond_b
    move-object v3, v4

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div/core/view2/Div2View;->getExpressionResolver()Loj3;

    move-result-object v1

    invoke-static {v5, v1}, Lwt2;->a(Lcom/yandex/div2/DivData;Loj3;)Z

    move-result v8

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v5

    move-object v4, v7

    move-object v5, v6

    move v6, v8

    move v7, v9

    invoke-virtual/range {v0 .. v7}, Lcom/yandex/div/core/view2/Div2View;->q(Lcom/yandex/div2/DivData;Lcom/yandex/div2/DivData;Lcom/yandex/div2/Div;Lcom/yandex/div2/DivData$State;Landroid/view/View;ZZ)V

    const/4 v0, 0x1

    return v0
.end method

.method public final D(Lcom/yandex/div2/DivData;)Lcom/yandex/div2/DivData$State;
    .locals 6

    iget-object v0, p1, Lcom/yandex/div2/DivData;->c:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/yandex/div2/DivData$State;

    iget-wide v2, v2, Lcom/yandex/div2/DivData$State;->b:J

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getStateId$div_release()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/yandex/div2/DivData$State;

    if-nez v1, :cond_2

    iget-object p0, p1, Lcom/yandex/div2/DivData;->c:Ljava/util/List;

    invoke-static {p0}, Li81;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/yandex/div2/DivData$State;

    :cond_2
    return-object v1
.end method

.method public final E(Lcom/yandex/div2/DivData;Lcom/yandex/div2/Div;Loj3;)Lpc9;
    .locals 0

    new-instance p0, Lhg;

    invoke-direct {p0}, Lhg;-><init>()V

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/yandex/div2/DivData;->e:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/div2/DivTransitionSelector;

    if-nez p1, :cond_1

    :cond_0
    sget-object p1, Lcom/yandex/div2/DivTransitionSelector;->NONE:Lcom/yandex/div2/DivTransitionSelector;

    :cond_1
    invoke-virtual {p0, p1}, Lhg;->addLast(Ljava/lang/Object;)V

    invoke-static {p2, p3}, Lzt2;->c(Lcom/yandex/div2/Div;Loj3;)Lyt2;

    move-result-object p1

    new-instance p2, Lcom/yandex/div/core/view2/Div2View$itemSequenceForTransition$1;

    invoke-direct {p2, p0, p3}, Lcom/yandex/div/core/view2/Div2View$itemSequenceForTransition$1;-><init>(Lhg;Loj3;)V

    invoke-virtual {p1, p2}, Lyt2;->e(Le74;)Lyt2;

    move-result-object p1

    new-instance p2, Lcom/yandex/div/core/view2/Div2View$itemSequenceForTransition$2;

    invoke-direct {p2, p0}, Lcom/yandex/div/core/view2/Div2View$itemSequenceForTransition$2;-><init>(Lhg;)V

    invoke-virtual {p1, p2}, Lyt2;->f(Le74;)Lyt2;

    move-result-object p1

    new-instance p2, Lcom/yandex/div/core/view2/Div2View$itemSequenceForTransition$3;

    invoke-direct {p2, p0}, Lcom/yandex/div/core/view2/Div2View$itemSequenceForTransition$3;-><init>(Lhg;)V

    invoke-static {p1, p2}, Lkotlin/sequences/SequencesKt___SequencesKt;->F(Lpc9;Le74;)Lpc9;

    move-result-object p0

    return-object p0
.end method

.method public final F()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/view2/Div2View;->setInMiddleOfBind$div_release(Z)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/Div2View;->z:Lqd7;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw08;

    invoke-interface {v0}, Lw08;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final G()V
    .locals 2

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getInMiddleOfBind$div_release()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "New binding started when previous not ended!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Leg2;->e(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/view2/Div2View;->setInMiddleOfBind$div_release(Z)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/Div2View;->z:Lqd7;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw08;

    invoke-interface {v0}, Lw08;->b()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final H(Lcom/yandex/div2/DivData;Lcom/yandex/div2/DivData;Lcom/yandex/div2/Div;Lcom/yandex/div2/Div;)Landroidx/transition/Transition;
    .locals 3

    const/4 v0, 0x0

    if-ne p3, p4, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getViewComponent$div_release()Lcom/yandex/div/core/dagger/Div2ViewComponent;

    move-result-object v1

    invoke-interface {v1}, Lcom/yandex/div/core/dagger/Div2ViewComponent;->c()Lut2;

    move-result-object v1

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getOldExpressionResolver$div_release()Loj3;

    move-result-object v2

    invoke-virtual {p0, p1, p3, v2}, Lcom/yandex/div/core/view2/Div2View;->E(Lcom/yandex/div2/DivData;Lcom/yandex/div2/Div;Loj3;)Lpc9;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    if-eqz p4, :cond_2

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getExpressionResolver()Loj3;

    move-result-object p3

    invoke-virtual {p0, p2, p4, p3}, Lcom/yandex/div/core/view2/Div2View;->E(Lcom/yandex/div2/DivData;Lcom/yandex/div2/Div;Loj3;)Lpc9;

    move-result-object p3

    goto :goto_1

    :cond_2
    move-object p3, v0

    :goto_1
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getOldExpressionResolver$div_release()Loj3;

    move-result-object p4

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getExpressionResolver()Loj3;

    move-result-object v2

    invoke-virtual {v1, p1, p3, p4, v2}, Lut2;->d(Lpc9;Lpc9;Loj3;Loj3;)Landroidx/transition/TransitionSet;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/transition/TransitionSet;->getTransitionCount()I

    move-result p3

    if-nez p3, :cond_3

    return-object v0

    :cond_3
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object p3

    invoke-interface {p3}, Lcom/yandex/div/core/dagger/Div2Component;->B()Lbi2;

    move-result-object p3

    const-string p4, "div2Component.divDataChangeListener"

    invoke-static {p3, p4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, p0, p2}, Lbi2;->b(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivData;)V

    new-instance p4, Lcom/yandex/div/core/view2/Div2View$prepareTransition$$inlined$doOnEnd$1;

    invoke-direct {p4, p1, p3, p0, p2}, Lcom/yandex/div/core/view2/Div2View$prepareTransition$$inlined$doOnEnd$1;-><init>(Landroidx/transition/Transition;Lbi2;Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivData;)V

    invoke-virtual {p1, p4}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    return-object p1
.end method

.method public final I(Lcom/yandex/div2/DivData;ZLpm9;)V
    .locals 7

    :try_start_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p3}, Lpm9;->l()V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDataTag()Lei2;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/Div2View;->S(Lcom/yandex/div2/DivData;Lei2;Lj34;)Z

    return-void

    :catch_0
    move-exception p2

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/Div2View;->D(Lcom/yandex/div2/DivData;)Lcom/yandex/div2/DivData$State;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p3}, Lpm9;->e()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/yandex/div/core/view2/Div2View;->getHistogramReporter()Lcom/yandex/div/histogram/Div2ViewHistogramReporter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->q()V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getViewComponent$div_release()Lcom/yandex/div/core/dagger/Div2ViewComponent;

    move-result-object v1

    invoke-interface {v1}, Lcom/yandex/div/core/dagger/Div2ViewComponent;->a()Lxc3;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDataTag()Lei2;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDivData()Lcom/yandex/div2/DivData;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lxc3;->b(Lei2;Lcom/yandex/div2/DivData;)Lwc3;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lwc3;->c()V

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "rebind$lambda$57"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/yandex/div2/DivData$State;->a:Lcom/yandex/div2/Div;

    invoke-virtual {v2}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getExpressionResolver()Loj3;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->D(Landroid/view/View;Log2;Loj3;)V

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/Div2View;->setDivData$div_release(Lcom/yandex/div2/DivData;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object v2

    invoke-interface {v2}, Lcom/yandex/div/core/dagger/Div2Component;->A()Lsq2;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDataTag()Lei2;

    move-result-object v3

    iget-wide v4, v0, Lcom/yandex/div2/DivData$State;->b:J

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Lsq2;->c(Lei2;JZ)V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object v2

    invoke-interface {v2}, Lcom/yandex/div/core/dagger/Div2Component;->F()Lrg2;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getBindingContext$div_release()Lcom/yandex/div/core/view2/a;

    move-result-object v3

    const-string v4, "rootDivView"

    invoke-static {v1, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/yandex/div2/DivData$State;->a:Lcom/yandex/div2/Div;

    sget-object v5, Lcom/yandex/div/core/state/DivStatePath;->f:Lcom/yandex/div/core/state/DivStatePath$a;

    invoke-virtual {v5, v0}, Lcom/yandex/div/core/state/DivStatePath$a;->j(Lcom/yandex/div2/DivData$State;)Lcom/yandex/div/core/state/DivStatePath;

    move-result-object v0

    invoke-virtual {v2, v3, v1, v4, v0}, Lrg2;->b(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/Div;Lcom/yandex/div/core/state/DivStatePath;)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object p2

    invoke-interface {p2}, Lcom/yandex/div/core/dagger/Div2Component;->f()Lmq2;

    move-result-object p2

    invoke-interface {p2, p0}, Lmq2;->a(Lcom/yandex/div/core/view2/Div2View;)V

    :cond_3
    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/Div2View;->s(Lcom/yandex/div2/DivData;)V

    invoke-direct {p0}, Lcom/yandex/div/core/view2/Div2View;->getHistogramReporter()Lcom/yandex/div/histogram/Div2ViewHistogramReporter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->p()V

    invoke-interface {p3}, Lpm9;->p()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-interface {p3, p2}, Lpm9;->o(Ljava/lang/Exception;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDataTag()Lei2;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/yandex/div/core/view2/Div2View;->S(Lcom/yandex/div2/DivData;Lei2;Lj34;)Z

    sget-object p0, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, ""

    invoke-static {p0, p2}, Lxi;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final J()V
    .locals 8

    iget-wide v0, p0, Lcom/yandex/div/core/view2/Div2View;->f0:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/div/core/dagger/Div2Component;->d()Lsh2;

    move-result-object v1

    iget-wide v2, p0, Lcom/yandex/div/core/view2/Div2View;->n:J

    iget-wide v4, p0, Lcom/yandex/div/core/view2/Div2View;->f0:J

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/div/core/dagger/Div2Component;->k()Lrq4;

    move-result-object v6

    const-string v0, "div2Component.histogramReporter"

    invoke-static {v6, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/yandex/div/core/view2/Div2View;->g0:Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Lsh2;->d(JJLrq4;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/yandex/div/core/view2/Div2View;->f0:J

    return-void
.end method

.method public final K(Lcom/yandex/div2/DivData;)Lcom/yandex/div2/DivData$State;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/Div2View;->L(Lcom/yandex/div2/DivData;)J

    move-result-wide v0

    iget-object p0, p1, Lcom/yandex/div2/DivData;->c:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/yandex/div2/DivData$State;

    iget-wide v2, v2, Lcom/yandex/div2/DivData$State;->b:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Lcom/yandex/div2/DivData$State;

    return-object p1
.end method

.method public final L(Lcom/yandex/div2/DivData;)J
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getCurrentState()Luv2;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Luv2;->c()J

    move-result-wide p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lfi2;->b(Lcom/yandex/div2/DivData;)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public final M()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/core/view2/Div2View;->A:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    iget-object v0, p0, Lcom/yandex/div/core/view2/Div2View;->B:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->cancelTooltips()V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->clearSubscriptions()V

    iget-object p0, p0, Lcom/yandex/div/core/view2/Div2View;->y:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final N(Lcom/yandex/div2/DivData;Lcom/yandex/div2/DivData;Lj34;)Z
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/Div2View;->K(Lcom/yandex/div2/DivData;)Lcom/yandex/div2/DivData$State;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {p0, p2}, Lcom/yandex/div/core/view2/Div2View;->K(Lcom/yandex/div2/DivData;)Lcom/yandex/div2/DivData$State;

    move-result-object v9

    invoke-virtual {p0, p2}, Lcom/yandex/div/core/view2/Div2View;->L(Lcom/yandex/div2/DivData;)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/yandex/div/core/view2/Div2View;->setStateId$div_release(J)V

    const/4 v10, 0x0

    if-nez v9, :cond_1

    invoke-interface {p3}, Lj34;->j()V

    return v10

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getStateId$div_release()J

    move-result-wide v4

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, v9

    invoke-static/range {v2 .. v8}, Lcom/yandex/div/core/view2/Div2View;->w(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivData$State;JZILjava/lang/Object;)Landroid/view/View;

    move-result-object v2

    :goto_1
    move-object v7, v2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getStateId$div_release()J

    move-result-wide v4

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, v9

    invoke-static/range {v2 .. v8}, Lcom/yandex/div/core/view2/Div2View;->u(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivData$State;JZILjava/lang/Object;)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    :goto_2
    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/yandex/div/core/view2/Div2View;->B(Lcom/yandex/div2/DivData$State;)V

    :cond_3
    invoke-virtual {p0, v9}, Lcom/yandex/div/core/view2/Div2View;->O(Lcom/yandex/div2/DivData$State;)V

    const/4 v11, 0x1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getOldExpressionResolver$div_release()Loj3;

    move-result-object v2

    invoke-static {p1, v2}, Lwt2;->a(Lcom/yandex/div2/DivData;Loj3;)Z

    move-result v2

    if-ne v2, v11, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getExpressionResolver()Loj3;

    move-result-object v2

    invoke-static {p2, v2}, Lwt2;->a(Lcom/yandex/div2/DivData;Loj3;)Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_3
    move v8, v11

    goto :goto_4

    :cond_5
    move v8, v10

    :goto_4
    if-eqz v1, :cond_6

    iget-object v0, v1, Lcom/yandex/div2/DivData$State;->a:Lcom/yandex/div2/Div;

    :cond_6
    move-object v5, v0

    const/4 v0, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, v9

    move v9, v0

    invoke-virtual/range {v2 .. v9}, Lcom/yandex/div/core/view2/Div2View;->q(Lcom/yandex/div2/DivData;Lcom/yandex/div2/DivData;Lcom/yandex/div2/Div;Lcom/yandex/div2/DivData$State;Landroid/view/View;ZZ)V

    if-eqz p1, :cond_7

    invoke-interface {p3}, Lj34;->q()V

    goto :goto_5

    :cond_7
    invoke-interface {p3}, Lj34;->c()V

    :goto_5
    return v11
.end method

.method public final O(Lcom/yandex/div2/DivData$State;)V
    .locals 10

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/div/core/dagger/Div2Component;->H()Lcom/yandex/div/core/view2/DivVisibilityActionTracker;

    move-result-object v1

    const-string v0, "div2Component.visibilityActionTracker"

    invoke-static {v1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getExpressionResolver()Loj3;

    move-result-object v3

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getView()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v4

    iget-object v5, p1, Lcom/yandex/div2/DivData$State;->a:Lcom/yandex/div2/Div;

    const/16 v8, 0x30

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v9}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->x(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lcom/yandex/div2/Div;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public final P(Lcom/yandex/div2/DivPatch;Lcom/yandex/div2/DivData;Lcom/yandex/div2/DivData;Lxx7;)Z
    .locals 10

    invoke-virtual {p0, p3}, Lcom/yandex/div/core/view2/Div2View;->D(Lcom/yandex/div2/DivData;)Lcom/yandex/div2/DivData$State;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getBindOnAttachRunnable$div_release()Lon9;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lon9;->a()V

    :cond_1
    invoke-virtual {p0, p2}, Lcom/yandex/div/core/view2/Div2View;->K(Lcom/yandex/div2/DivData;)Lcom/yandex/div2/DivData$State;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/yandex/div2/DivData$State;->a:Lcom/yandex/div2/Div;

    move-object v5, v2

    goto :goto_0

    :cond_2
    move-object v5, v3

    :goto_0
    iget-object p1, p1, Lcom/yandex/div2/DivPatch;->a:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/yandex/div2/DivPatch$Change;

    iget-object v4, v4, Lcom/yandex/div2/DivPatch$Change;->a:Ljava/lang/String;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-interface {v6}, Log2;->getId()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_4
    move-object v6, v3

    :goto_1
    invoke-static {v4, v6}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v3, v2

    :cond_5
    check-cast v3, Lcom/yandex/div2/DivPatch$Change;

    const/4 p1, 0x1

    if-nez v3, :cond_6

    invoke-virtual {p0, p2, v1, p4}, Lcom/yandex/div/core/view2/Div2View;->I(Lcom/yandex/div2/DivData;ZLpm9;)V

    invoke-virtual {p0, p3}, Lcom/yandex/div/core/view2/Div2View;->setDivData$div_release(Lcom/yandex/div2/DivData;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object p2

    invoke-interface {p2}, Lcom/yandex/div/core/dagger/Div2Component;->F()Lrg2;

    move-result-object p2

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getBindingContext$div_release()Lcom/yandex/div/core/view2/a;

    move-result-object p3

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    const-string p4, "getChildAt(0)"

    invoke-static {p0, p4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p4, v0, Lcom/yandex/div2/DivData$State;->a:Lcom/yandex/div2/Div;

    invoke-virtual {p2, p3, p0, p4}, Lrg2;->w(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/Div;)V

    return p1

    :cond_6
    iget-object v0, v3, Lcom/yandex/div2/DivPatch$Change;->b:Ljava/util/List;

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    const/4 v3, 0x6

    const-string v4, "DivPatchApply"

    if-eqz v2, :cond_c

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_5

    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, p1, :cond_9

    sget-object v2, Lne5;->a:Lne5;

    sget-object v6, Lcom/yandex/div/logging/Severity;->ERROR:Lcom/yandex/div/logging/Severity;

    invoke-virtual {v2, v6}, Lne5;->a(Lcom/yandex/div/logging/Severity;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "More than 1 div in patch for root div. The first was applied."

    invoke-virtual {v2, v3, v4, v6}, Lne5;->b(ILjava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/Div;

    :goto_2
    move-object v6, v0

    goto :goto_3

    :cond_9
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/Div;

    goto :goto_2

    :goto_3
    iget-object v0, p0, Lcom/yandex/div/core/view2/Div2View;->t:Lwe0;

    invoke-virtual {v0, p3, p2}, Lwe0;->a(Lcom/yandex/div2/DivData;Lcom/yandex/div2/DivData;)Lue0;

    move-result-object v0

    sget-object v4, Lhh2;->a:Lhh2;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getExpressionResolver()Loj3;

    move-result-object v7

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getExpressionResolver()Loj3;

    move-result-object v8

    move-object v9, v0

    invoke-virtual/range {v4 .. v9}, Lhh2;->c(Lcom/yandex/div2/Div;Lcom/yandex/div2/Div;Loj3;Loj3;Lih2;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-boolean v3, p0, Lcom/yandex/div/core/view2/Div2View;->r:Z

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getView()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_a

    invoke-virtual {p0, p3, p2, v0}, Lcom/yandex/div/core/view2/Div2View;->z(Lcom/yandex/div2/DivData;Lcom/yandex/div2/DivData;Lcom/yandex/div/core/view2/reuse/a;)Z

    move-result p2

    if-eqz p2, :cond_a

    goto :goto_4

    :cond_a
    if-eqz v2, :cond_b

    invoke-virtual {p0, p3, v1, p4}, Lcom/yandex/div/core/view2/Div2View;->I(Lcom/yandex/div2/DivData;ZLpm9;)V

    goto :goto_4

    :cond_b
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDataTag()Lei2;

    move-result-object p1

    invoke-virtual {p0, p3, p1, p4}, Lcom/yandex/div/core/view2/Div2View;->S(Lcom/yandex/div2/DivData;Lei2;Lj34;)Z

    move-result p1

    :goto_4
    return p1

    :cond_c
    :goto_5
    sget-object p0, Lne5;->a:Lne5;

    sget-object p1, Lcom/yandex/div/logging/Severity;->ERROR:Lcom/yandex/div/logging/Severity;

    invoke-virtual {p0, p1}, Lne5;->a(Lcom/yandex/div/logging/Severity;)Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "Unable to patch root div because there is no div in patch."

    invoke-virtual {p0, v3, v4, p1}, Lne5;->b(ILjava/lang/String;Ljava/lang/String;)V

    :cond_d
    return v1
.end method

.method public final Q(Lcom/yandex/div2/DivData;Lei2;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getExpressionsRuntime$div_release()Lvj3;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/div/core/view2/Div2View;->E:Lvj3;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/div/core/dagger/Div2Component;->p()Lcom/yandex/div/core/expression/a;

    move-result-object v0

    invoke-virtual {v0, p2, p1, p0}, Lcom/yandex/div/core/expression/a;->h(Lei2;Lcom/yandex/div2/DivData;Lcom/yandex/div/core/view2/Div2View;)Lvj3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/Div2View;->setExpressionsRuntime$div_release(Lvj3;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getExpressionsRuntime$div_release()Lvj3;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lvj3;->e()Lcom/yandex/div/core/expression/local/RuntimeStore;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/yandex/div/core/expression/local/RuntimeStore;->s()V

    :cond_1
    iget-object p1, p0, Lcom/yandex/div/core/view2/Div2View;->E:Lvj3;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getExpressionsRuntime$div_release()Lvj3;

    move-result-object p2

    invoke-static {p1, p2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getRuntimeStore$div_release()Lcom/yandex/div/core/expression/local/RuntimeStore;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/yandex/div/core/expression/local/RuntimeStore;->b()V

    :cond_2
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getExpressionsRuntime$div_release()Lvj3;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lvj3;->e()Lcom/yandex/div/core/expression/local/RuntimeStore;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/Div2View;->setRuntimeStore$div_release(Lcom/yandex/div/core/expression/local/RuntimeStore;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getBindingContext$div_release()Lcom/yandex/div/core/view2/a;

    move-result-object p1

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getExpressionResolver()Loj3;

    move-result-object p2

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getRuntimeStore$div_release()Lcom/yandex/div/core/expression/local/RuntimeStore;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/yandex/div/core/view2/a;->d(Loj3;Lcom/yandex/div/core/expression/local/RuntimeStore;)Lcom/yandex/div/core/view2/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/Div2View;->setBindingContext$div_release(Lcom/yandex/div/core/view2/a;)V

    return-void
.end method

.method public final S(Lcom/yandex/div2/DivData;Lei2;Lj34;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDivData()Lcom/yandex/div2/DivData;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/yandex/div/core/view2/Div2View;->getHistogramReporter()Lcom/yandex/div/histogram/Div2ViewHistogramReporter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->i()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/yandex/div/core/view2/Div2View;->getHistogramReporter()Lcom/yandex/div/histogram/Div2ViewHistogramReporter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->q()V

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/yandex/div/core/view2/Div2View;->y(Z)V

    invoke-virtual {p0, p2}, Lcom/yandex/div/core/view2/Div2View;->setDataTag$div_release(Lei2;)V

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/Div2View;->setDivData$div_release(Lcom/yandex/div2/DivData;)V

    invoke-virtual {p0, v0, p1, p3}, Lcom/yandex/div/core/view2/Div2View;->N(Lcom/yandex/div2/DivData;Lcom/yandex/div2/DivData;Lj34;)Z

    move-result p2

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/Div2View;->s(Lcom/yandex/div2/DivData;)V

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/yandex/div/core/view2/Div2View;->getHistogramReporter()Lcom/yandex/div/histogram/Div2ViewHistogramReporter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->p()V

    return p2

    :cond_1
    iget-boolean p1, p0, Lcom/yandex/div/core/view2/Div2View;->q:Z

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/yandex/div/core/view2/Div2View;->getHistogramReporter()Lcom/yandex/div/histogram/Div2ViewHistogramReporter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->f()V

    return p2

    :cond_2
    invoke-direct {p0}, Lcom/yandex/div/core/view2/Div2View;->getHistogramReporter()Lcom/yandex/div/histogram/Div2ViewHistogramReporter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->g()V

    new-instance p1, Lon9;

    new-instance p3, Lcom/yandex/div/core/view2/Div2View$updateNow$1;

    invoke-direct {p3, p0}, Lcom/yandex/div/core/view2/Div2View$updateNow$1;-><init>(Lcom/yandex/div/core/view2/Div2View;)V

    invoke-direct {p1, p0, p3}, Lon9;-><init>(Landroid/view/View;Lc74;)V

    iput-object p1, p0, Lcom/yandex/div/core/view2/Div2View;->N:Lon9;

    new-instance p1, Lon9;

    new-instance p3, Lcom/yandex/div/core/view2/Div2View$updateNow$2;

    invoke-direct {p3, p0}, Lcom/yandex/div/core/view2/Div2View$updateNow$2;-><init>(Lcom/yandex/div/core/view2/Div2View;)V

    invoke-direct {p1, p0, p3}, Lon9;-><init>(Landroid/view/View;Lc74;)V

    iput-object p1, p0, Lcom/yandex/div/core/view2/Div2View;->O:Lon9;

    return p2
.end method

.method public final T(JZ)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getView()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object v1

    invoke-interface {v1}, Lcom/yandex/div/core/dagger/Div2Component;->A()Lsq2;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDataTag()Lei2;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2, p3}, Lsq2;->c(Lei2;JZ)V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object p0

    invoke-interface {p0}, Lcom/yandex/div/core/dagger/Div2Component;->F()Lrg2;

    move-result-object p0

    invoke-virtual {p0}, Lrg2;->a()V

    const-string p0, "rootView"

    invoke-static {v0, p0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final U()V
    .locals 4

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDivData()Lcom/yandex/div2/DivData;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object v1

    invoke-interface {v1}, Lcom/yandex/div/core/dagger/Div2Component;->x()Lct2;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDataTag()Lei2;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getExpressionResolver()Loj3;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lct2;->a(Lei2;Lcom/yandex/div2/DivData;Loj3;)Lbt2;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDivTimerEventDispatcher$div_release()Lbt2;

    move-result-object v1

    invoke-static {v1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDivTimerEventDispatcher$div_release()Lbt2;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Lbt2;->e(Lcom/yandex/div/core/view2/Div2View;)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/yandex/div/core/view2/Div2View;->setDivTimerEventDispatcher$div_release(Lbt2;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lbt2;->d(Lcom/yandex/div/core/view2/Div2View;)V

    :cond_2
    return-void
.end method

.method public addDivDataChangeObserver(Lci2;)V
    .locals 1

    const-string v0, "observer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/Div2View;->K:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/yandex/div/core/view2/Div2View;->y:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public addLoadReference(Ljn5;Landroid/view/View;)V
    .locals 1

    const-string v0, "loadReference"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetView"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/yandex/div/core/view2/Div2View;->K:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object p0, p0, Lcom/yandex/div/core/view2/Div2View;->w:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2

    throw p0
.end method

.method public addPersistentDivDataObserver$div_release(Lw08;)V
    .locals 1

    const-string v0, "observer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/Div2View;->K:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/yandex/div/core/view2/Div2View;->z:Lqd7;

    invoke-virtual {p0, p1}, Lqd7;->j(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public applyPatch(Lcom/yandex/div2/DivPatch;)Z
    .locals 13

    const-string v0, "patch"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/Div2View;->K:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDivData()Lcom/yandex/div2/DivData;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object v3

    invoke-interface {v3}, Lcom/yandex/div/core/dagger/Div2Component;->D()Lco2;

    move-result-object v3

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDataTag()Lei2;

    move-result-object v4

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getExpressionResolver()Loj3;

    move-result-object v5

    invoke-virtual {v3, v1, v4, p1, v5}, Lco2;->b(Lcom/yandex/div2/DivData;Lei2;Lcom/yandex/div2/DivPatch;Loj3;)Lcom/yandex/div2/DivData;

    move-result-object v3

    iget-object v4, p0, Lcom/yandex/div/core/view2/Div2View;->u:Lzx7;

    invoke-virtual {v4, p1}, Lzx7;->a(Lcom/yandex/div2/DivPatch;)Lxx7;

    move-result-object v4

    if-eqz v3, :cond_2

    invoke-virtual {p0, p1, v1, v3, v4}, Lcom/yandex/div/core/view2/Div2View;->P(Lcom/yandex/div2/DivPatch;Lcom/yandex/div2/DivData;Lcom/yandex/div2/DivData;Lxx7;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object v1

    invoke-interface {v1}, Lcom/yandex/div/core/dagger/Div2Component;->D()Lco2;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDataTag()Lei2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco2;->e(Lei2;)V

    iget-object v1, p0, Lcom/yandex/div/core/view2/Div2View;->y:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v3}, Lcom/yandex/div/core/view2/Div2View;->s(Lcom/yandex/div2/DivData;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object v1

    invoke-interface {v1}, Lcom/yandex/div/core/dagger/Div2Component;->F()Lrg2;

    move-result-object v1

    invoke-virtual {v1}, Lrg2;->a()V

    invoke-interface {v4}, Lxx7;->a()V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object v1

    invoke-interface {v1}, Lcom/yandex/div/core/dagger/Div2Component;->n()Lcom/yandex/div/core/view2/divs/DivActionBinder;

    move-result-object v2

    const-string v1, "div2Component.actionBinder"

    invoke-static {v2, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getExpressionResolver()Loj3;

    move-result-object v4

    iget-object v5, p1, Lcom/yandex/div2/DivPatch;->c:Ljava/util/List;

    const-string v6, "patch"

    const/16 v8, 0x10

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v9}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->I(Lcom/yandex/div/core/view2/divs/DivActionBinder;Lsv2;Loj3;Ljava/util/List;Ljava/lang/String;Le74;ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object v1

    invoke-interface {v1}, Lcom/yandex/div/core/dagger/Div2Component;->n()Lcom/yandex/div/core/view2/divs/DivActionBinder;

    move-result-object v5

    const-string v1, "div2Component.actionBinder"

    invoke-static {v5, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getExpressionResolver()Loj3;

    move-result-object v7

    iget-object v8, p1, Lcom/yandex/div2/DivPatch;->d:Ljava/util/List;

    const-string v9, "patch"

    const/16 v11, 0x10

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object v6, p0

    invoke-static/range {v5 .. v12}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->I(Lcom/yandex/div/core/view2/divs/DivActionBinder;Lsv2;Loj3;Ljava/util/List;Ljava/lang/String;Le74;ILjava/lang/Object;)V

    invoke-interface {v4}, Lxx7;->h()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return v2

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public applyTimerCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "command"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDivTimerEventDispatcher$div_release()Lbt2;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lbt2;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final applyVideoCommand(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 1
    const-string v0, "divId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "command"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/yandex/div/core/view2/Div2View;->applyVideoCommand$default(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Ljava/lang/String;Loj3;ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public applyVideoCommand(Ljava/lang/String;Ljava/lang/String;Loj3;)Z
    .locals 1

    const-string v0, "divId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "command"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expressionResolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/yandex/div/core/view2/Div2View;->getDivVideoActionHandler()Liu2;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Liu2;->b(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Ljava/lang/String;Loj3;)Z

    move-result p0

    return p0
.end method

.method public bindViewToDiv$div_release(Landroid/view/View;Lcom/yandex/div2/Div;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "div"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/Div2View;->A:Ljava/util/WeakHashMap;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bulkActions$div_release(Lc74;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc74;",
            ")V"
        }
    .end annotation

    const-string v0, "function"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/Div2View;->C:Lcom/yandex/div/core/view2/Div2View$a;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/Div2View$a;->a(Lc74;)V

    return-void
.end method

.method public cancelTooltips()V
    .locals 1

    invoke-direct {p0}, Lcom/yandex/div/core/view2/Div2View;->getTooltipController()Lcom/yandex/div/core/tooltip/DivTooltipController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yandex/div/core/tooltip/DivTooltipController;->i(Lcom/yandex/div/core/view2/Div2View;)V

    return-void
.end method

.method public cleanup()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/div/core/view2/Div2View;->K:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/yandex/div/core/view2/Div2View;->y(Z)V

    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public clearSubscriptions()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/core/view2/Div2View;->K:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/yandex/div/core/view2/Div2View;->x:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public discardVisibilityTracking()V
    .locals 7

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDivData()Lcom/yandex/div2/DivData;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/yandex/div2/DivData;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/yandex/div2/DivData$State;

    iget-wide v3, v3, Lcom/yandex/div2/DivData$State;->b:J

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getStateId$div_release()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move-object v1, v2

    :cond_1
    check-cast v1, Lcom/yandex/div2/DivData$State;

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/yandex/div/core/view2/Div2View;->B(Lcom/yandex/div2/DivData$State;)V

    :cond_3
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->A()V

    return-void
.end method

.method public dismissPendingOverflowMenus()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/div/core/view2/Div2View;->K:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/yandex/div/core/view2/Div2View;->x:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxt7;

    invoke-interface {v1}, Lxt7;->dismiss()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/yandex/div/core/view2/Div2View;->h0:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/yandex/div/core/view2/Div2View;->getHistogramReporter()Lcom/yandex/div/histogram/Div2ViewHistogramReporter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->k()V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean p1, p0, Lcom/yandex/div/core/view2/Div2View;->h0:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/yandex/div/core/view2/Div2View;->getHistogramReporter()Lcom/yandex/div/histogram/Div2ViewHistogramReporter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->j()V

    :cond_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/div/core/view2/Div2View;->h0:Z

    invoke-direct {p0}, Lcom/yandex/div/core/view2/Div2View;->getHistogramReporter()Lcom/yandex/div/histogram/Div2ViewHistogramReporter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->k()V

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lcom/yandex/div/core/view2/Div2View;->getHistogramReporter()Lcom/yandex/div/histogram/Div2ViewHistogramReporter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->j()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/yandex/div/core/view2/Div2View;->h0:Z

    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2, p1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->N(Landroid/view/View;Landroid/graphics/Canvas;)V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    return p0
.end method

.method public getActionHandler()Lcf2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/Div2View;->e0:Lcf2;

    return-object p0
.end method

.method public getBindOnAttachRunnable$div_release()Lon9;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/Div2View;->M:Lon9;

    return-object p0
.end method

.method public getBindingContext$div_release()Lcom/yandex/div/core/view2/a;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/Div2View;->H:Lcom/yandex/div/core/view2/a;

    return-object p0
.end method

.method public getClearVariablesListener$div_release()Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/Div2View;->a0:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object p0
.end method

.method public getComplexRebindInProgress$div_release()Z
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/Div2View;->R:Lcom/yandex/div/core/view2/reuse/RebindTask;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/reuse/RebindTask;->f()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getComponentName()Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/yandex/div/core/view2/Div2View;->getHistogramReporter()Lcom/yandex/div/histogram/Div2ViewHistogramReporter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getConfig()Lyu2;
    .locals 1

    iget-object p0, p0, Lcom/yandex/div/core/view2/Div2View;->Q:Lyu2;

    const-string v0, "config"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getContext$div_release()Lcom/yandex/div/core/Div2Context;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/Div2View;->m:Lcom/yandex/div/core/Div2Context;

    return-object p0
.end method

.method public getCurrentRebindReusableList$div_release()Lxu8;
    .locals 2

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getComplexRebindInProgress$div_release()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, Lcom/yandex/div/core/view2/Div2View;->R:Lcom/yandex/div/core/view2/reuse/RebindTask;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/reuse/RebindTask;->g()Lxu8;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getCurrentRootPath$div_release()Lcom/yandex/div/core/state/DivStatePath;
    .locals 6

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDivData()Lcom/yandex/div2/DivData;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/yandex/div2/DivData;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/yandex/div2/DivData$State;

    iget-wide v2, v2, Lcom/yandex/div2/DivData$State;->b:J

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getStateId$div_release()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/yandex/div2/DivData$State;

    if-eqz v1, :cond_2

    sget-object v0, Lcom/yandex/div/core/state/DivStatePath;->f:Lcom/yandex/div/core/state/DivStatePath$a;

    invoke-virtual {v0, v1}, Lcom/yandex/div/core/state/DivStatePath$a;->j(Lcom/yandex/div2/DivData$State;)Lcom/yandex/div/core/state/DivStatePath;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Lcom/yandex/div/core/state/DivStatePath;->f:Lcom/yandex/div/core/state/DivStatePath$a;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getStateId$div_release()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/yandex/div/core/state/DivStatePath$a;->i(J)Lcom/yandex/div/core/state/DivStatePath;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public getCurrentState()Luv2;
    .locals 6

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDivData()Lcom/yandex/div2/DivData;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object v2

    invoke-interface {v2}, Lcom/yandex/div/core/dagger/Div2Component;->A()Lsq2;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDataTag()Lei2;

    move-result-object p0

    invoke-virtual {v2, p0}, Lsq2;->a(Lei2;)Luv2;

    move-result-object p0

    iget-object v0, v0, Lcom/yandex/div2/DivData;->c:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/div2/DivData$State;

    if-eqz p0, :cond_2

    iget-wide v2, v2, Lcom/yandex/div2/DivData$State;->b:J

    invoke-virtual {p0}, Luv2;->c()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    move-object v1, p0

    :cond_3
    :goto_0
    return-object v1
.end method

.method public getCurrentStateId()J
    .locals 2

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getStateId$div_release()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCustomContainerChildFactory$div_release()Lwh2;
    .locals 1

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object p0

    invoke-interface {p0}, Lcom/yandex/div/core/dagger/Div2Component;->i()Lwh2;

    move-result-object p0

    const-string v0, "div2Component.divCustomContainerChildFactory"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getDataTag()Lei2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/Div2View;->b0:Lei2;

    return-object p0
.end method

.method public getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/Div2View;->o:Lcom/yandex/div/core/dagger/Div2Component;

    return-object p0
.end method

.method public getDivData()Lcom/yandex/div2/DivData;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/Div2View;->d0:Lcom/yandex/div2/DivData;

    return-object p0
.end method

.method public getDivTag()Lei2;
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDataTag()Lei2;

    move-result-object p0

    return-object p0
.end method

.method public getDivTimerEventDispatcher$div_release()Lbt2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/Div2View;->I:Lbt2;

    return-object p0
.end method

.method public getDivTransitionHandler$div_release()Lcom/yandex/div/core/view2/animations/DivTransitionHandler;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/Div2View;->i0:Lcom/yandex/div/core/view2/animations/DivTransitionHandler;

    return-object p0
.end method

.method public getExpressionResolver()Loj3;
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getExpressionsRuntime$div_release()Lvj3;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lvj3;->c()Lcom/yandex/div/core/expression/ExpressionResolverImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Loj3;->b:Loj3;

    :goto_0
    return-object p0
.end method

.method public getExpressionsRuntime$div_release()Lvj3;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/Div2View;->D:Lvj3;

    return-object p0
.end method

.method public getForceCanvasClipping()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/div/core/view2/Div2View;->J:Z

    return p0
.end method

.method public getInMiddleOfBind$div_release()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/div/core/view2/Div2View;->G:Z

    return p0
.end method

.method public getInputFocusTracker$div_release()La15;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/Div2View;->U:La15;

    return-object p0
.end method

.method public getLayoutSizes$div_release()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Loj3;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/div/core/view2/Div2View;->V:Ljava/util/Map;

    return-object p0
.end method

.method public getLogId()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDivData()Lcom/yandex/div2/DivData;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/yandex/div2/DivData;->b:Ljava/lang/String;

    if-nez p0, :cond_1

    :cond_0
    const-string p0, ""

    :cond_1
    return-object p0
.end method

.method public getMediaReleaseViewVisitor$div_release()Ldl6;
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getViewComponent$div_release()Lcom/yandex/div/core/dagger/Div2ViewComponent;

    move-result-object p0

    invoke-interface {p0}, Lcom/yandex/div/core/dagger/Div2ViewComponent;->m()Ldl6;

    move-result-object p0

    return-object p0
.end method

.method public getOldExpressionResolver$div_release()Loj3;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/Div2View;->E:Lvj3;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lvj3;->c()Lcom/yandex/div/core/expression/ExpressionResolverImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Loj3;->b:Loj3;

    :goto_0
    return-object p0
.end method

.method public getPrevDataTag()Lei2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/Div2View;->c0:Lei2;

    return-object p0
.end method

.method public getPropagatedAccessibilityMode$div_release(Landroid/view/View;)Lcom/yandex/div2/DivAccessibility$Mode;
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/Div2View;->B:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivAccessibility$Mode;

    return-object p0
.end method

.method public getReleaseViewVisitor$div_release()Lzr8;
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getViewComponent$div_release()Lcom/yandex/div/core/dagger/Div2ViewComponent;

    move-result-object p0

    invoke-interface {p0}, Lcom/yandex/div/core/dagger/Div2ViewComponent;->k()Lzr8;

    move-result-object p0

    return-object p0
.end method

.method public getRuntimeStore$div_release()Lcom/yandex/div/core/expression/local/RuntimeStore;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/Div2View;->F:Lcom/yandex/div/core/expression/local/RuntimeStore;

    return-object p0
.end method

.method public getStateId$div_release()J
    .locals 2

    iget-wide v0, p0, Lcom/yandex/div/core/view2/Div2View;->P:J

    return-wide v0
.end method

.method public getVariablesHolders$div_release()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/yandex/div2/DivData;",
            "Lcom/yandex/div/core/view2/divs/DivLayoutProviderVariablesHolder;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/div/core/view2/Div2View;->W:Ljava/util/Map;

    return-object p0
.end method

.method public bridge synthetic getView()Landroid/view/View;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getView()Lcom/yandex/div/core/view2/Div2View;

    move-result-object p0

    return-object p0
.end method

.method public getView()Lcom/yandex/div/core/view2/Div2View;
    .locals 0

    .line 1
    return-object p0
.end method

.method public getViewComponent$div_release()Lcom/yandex/div/core/dagger/Div2ViewComponent;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/Div2View;->p:Lcom/yandex/div/core/dagger/Div2ViewComponent;

    return-object p0
.end method

.method public getVisualErrorsEnabled()Z
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getViewComponent$div_release()Lcom/yandex/div/core/dagger/Div2ViewComponent;

    move-result-object p0

    invoke-interface {p0}, Lcom/yandex/div/core/dagger/Div2ViewComponent;->e()Lcom/yandex/div/core/view2/errors/ErrorVisualMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/errors/ErrorVisualMonitor;->d()Z

    move-result p0

    return p0
.end method

.method public final handleAction(Lcom/yandex/div2/DivAction;)V
    .locals 7

    .line 1
    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/yandex/div/core/view2/Div2View;->handleAction$default(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivAction;Ljava/lang/String;Loj3;ILjava/lang/Object;)V

    return-void
.end method

.method public final handleAction(Lcom/yandex/div2/DivAction;Ljava/lang/String;)V
    .locals 7

    .line 2
    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/yandex/div/core/view2/Div2View;->handleAction$default(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivAction;Ljava/lang/String;Loj3;ILjava/lang/Object;)V

    return-void
.end method

.method public handleAction(Lcom/yandex/div2/DivAction;Ljava/lang/String;Loj3;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/Div2View;->handleActionWithResult(Lcom/yandex/div2/DivAction;Ljava/lang/String;Loj3;)Z

    return-void
.end method

.method public final handleActionWithResult(Lcom/yandex/div2/DivAction;)Z
    .locals 7

    .line 1
    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/yandex/div/core/view2/Div2View;->handleActionWithResult$default(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivAction;Ljava/lang/String;Loj3;ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final handleActionWithResult(Lcom/yandex/div2/DivAction;Ljava/lang/String;)Z
    .locals 7

    .line 2
    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/yandex/div/core/view2/Div2View;->handleActionWithResult$default(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivAction;Ljava/lang/String;Loj3;ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public handleActionWithResult(Lcom/yandex/div2/DivAction;Ljava/lang/String;Loj3;)Z
    .locals 8

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/div/core/dagger/Div2Component;->n()Lcom/yandex/div/core/view2/divs/DivActionBinder;

    move-result-object v1

    const/4 v6, 0x0

    .line 4
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getActionHandler()Lcf2;

    move-result-object v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    .line 5
    invoke-virtual/range {v1 .. v7}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->D(Lsv2;Loj3;Lcom/yandex/div2/DivAction;Ljava/lang/String;Ljava/lang/String;Lcf2;)Z

    move-result p0

    return p0
.end method

.method public handleUri(Landroid/net/Uri;)V
    .locals 2

    const-string v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getActionHandler()Lcf2;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p0}, Lcf2;->handleActionUrl(Landroid/net/Uri;Lsv2;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/div/core/dagger/Div2Component;->G()Lcf2;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcf2;->handleActionUrl(Landroid/net/Uri;Lsv2;)Z

    return-void
.end method

.method public hasScrollableViewUnder(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lkcc;->c(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public hideTooltip(Ljava/lang/String;)V
    .locals 1

    const-string v0, "tooltipId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/yandex/div/core/view2/Div2View;->getTooltipController()Lcom/yandex/div/core/tooltip/DivTooltipController;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/yandex/div/core/tooltip/DivTooltipController;->n(Ljava/lang/String;Lcom/yandex/div/core/view2/Div2View;)V

    return-void
.end method

.method public isDescendantAccessibilityMode$div_release(Landroid/view/View;)Z
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/yandex/div/core/view2/Div2View;->B:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/div/core/view2/Div2View;->B:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne v0, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isInState(Lcom/yandex/div/core/state/DivStatePath;)Z
    .locals 2

    const-string v0, "statePath"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/div/core/dagger/Div2Component;->C()Lrga;

    move-result-object v0

    const-string v1, "div2Component.temporaryDivStateCache"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDataTag()Lei2;

    move-result-object p0

    invoke-virtual {p0}, Lei2;->a()Ljava/lang/String;

    move-result-object p0

    const-string v1, "dataTag.id"

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/div/core/state/DivStatePath;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lrga;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/div/core/state/DivStatePath;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/yandex/div/core/view2/Div2View;->N:Lon9;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lon9;->b()V

    :cond_0
    iget-object v0, p0, Lcom/yandex/div/core/view2/Div2View;->L:Lon9;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lon9;->b()V

    :cond_1
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getBindOnAttachRunnable$div_release()Lon9;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lon9;->b()V

    :cond_2
    iget-object v0, p0, Lcom/yandex/div/core/view2/Div2View;->O:Lon9;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lon9;->b()V

    :cond_3
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDivTimerEventDispatcher$div_release()Lbt2;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, p0}, Lbt2;->d(Lcom/yandex/div/core/view2/Div2View;)V

    :cond_4
    return-void
.end method

.method public onConfigurationChangedOutside(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->dismissPendingOverflowMenus()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->discardVisibilityTracking()V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDivTimerEventDispatcher$div_release()Lbt2;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lbt2;->e(Lcom/yandex/div/core/view2/Div2View;)V

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getViewComponent$div_release()Lcom/yandex/div/core/dagger/Div2ViewComponent;

    move-result-object p0

    invoke-interface {p0}, Lcom/yandex/div/core/dagger/Div2ViewComponent;->j()Lkg2;

    move-result-object p0

    invoke-virtual {p0}, Lkg2;->d()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 1

    invoke-direct {p0}, Lcom/yandex/div/core/view2/Div2View;->getHistogramReporter()Lcom/yandex/div/histogram/Div2ViewHistogramReporter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->m()V

    invoke-super/range {p0 .. p5}, Lcom/yandex/div/internal/widget/FrameContainerLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->tryLogVisibility()V

    invoke-direct {p0}, Lcom/yandex/div/core/view2/Div2View;->getHistogramReporter()Lcom/yandex/div/histogram/Div2ViewHistogramReporter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->l()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    invoke-direct {p0}, Lcom/yandex/div/core/view2/Div2View;->getHistogramReporter()Lcom/yandex/div/histogram/Div2ViewHistogramReporter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->o()V

    invoke-super {p0, p1, p2}, Lcom/yandex/div/internal/widget/FrameContainerLayout;->onMeasure(II)V

    invoke-direct {p0}, Lcom/yandex/div/core/view2/Div2View;->getHistogramReporter()Lcom/yandex/div/histogram/Div2ViewHistogramReporter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->n()V

    return-void
.end method

.method public prepareForRecycleOrCleanup(Lcom/yandex/div2/DivData;Lcom/yandex/div2/DivData;Lei2;)Z
    .locals 10

    const-string v0, "newData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    new-instance p3, Lei2;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Lei2;-><init>(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lhh2;->a:Lhh2;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDivData()Lcom/yandex/div2/DivData;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v1, p2

    :cond_1
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getStateId$div_release()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getExpressionResolver()Loj3;

    move-result-object v5

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object p2

    invoke-interface {p2}, Lcom/yandex/div/core/dagger/Div2Component;->p()Lcom/yandex/div/core/expression/a;

    move-result-object p2

    invoke-virtual {p2, p3, p1, p0}, Lcom/yandex/div/core/expression/a;->h(Lei2;Lcom/yandex/div2/DivData;Lcom/yandex/div/core/view2/Div2View;)Lvj3;

    move-result-object p2

    invoke-virtual {p2}, Lvj3;->c()Lcom/yandex/div/core/expression/ExpressionResolverImpl;

    move-result-object v6

    const/16 v8, 0x20

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v9}, Lhh2;->j(Lhh2;Lcom/yandex/div2/DivData;Lcom/yandex/div2/DivData;JLoj3;Loj3;Lih2;ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p2, Lyr8;->a:Lyr8;

    invoke-virtual {p2, p0, p0}, Lyr8;->b(Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/Div2View;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->M()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->cleanup()V

    :goto_0
    return p1
.end method

.method public final q(Lcom/yandex/div2/DivData;Lcom/yandex/div2/DivData;Lcom/yandex/div2/Div;Lcom/yandex/div2/DivData$State;Landroid/view/View;ZZ)V
    .locals 0

    if-eqz p6, :cond_0

    iget-object p6, p4, Lcom/yandex/div2/DivData$State;->a:Lcom/yandex/div2/Div;

    invoke-virtual {p0, p1, p2, p3, p6}, Lcom/yandex/div/core/view2/Div2View;->H(Lcom/yandex/div2/DivData;Lcom/yandex/div2/DivData;Lcom/yandex/div2/Div;Lcom/yandex/div2/Div;)Landroidx/transition/Transition;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-static {p0}, Landroidx/transition/Scene;->getCurrentScene(Landroid/view/ViewGroup;)Landroidx/transition/Scene;

    move-result-object p2

    if-eqz p2, :cond_2

    new-instance p3, Lid2;

    invoke-direct {p3, p0}, Lid2;-><init>(Lcom/yandex/div/core/view2/Div2View;)V

    invoke-virtual {p2, p3}, Landroidx/transition/Scene;->setExitAction(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    sget-object p2, Lyr8;->a:Lyr8;

    invoke-virtual {p2, p0, p0}, Lyr8;->a(Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/Div2View;)V

    :cond_2
    :goto_1
    if-eqz p7, :cond_3

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object p2

    invoke-interface {p2}, Lcom/yandex/div/core/dagger/Div2Component;->F()Lrg2;

    move-result-object p2

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getBindingContext$div_release()Lcom/yandex/div/core/view2/a;

    move-result-object p3

    iget-object p6, p4, Lcom/yandex/div2/DivData$State;->a:Lcom/yandex/div2/Div;

    sget-object p7, Lcom/yandex/div/core/state/DivStatePath;->f:Lcom/yandex/div/core/state/DivStatePath$a;

    invoke-virtual {p7, p4}, Lcom/yandex/div/core/state/DivStatePath$a;->j(Lcom/yandex/div2/DivData$State;)Lcom/yandex/div/core/state/DivStatePath;

    move-result-object p4

    invoke-virtual {p2, p3, p5, p6, p4}, Lrg2;->b(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/Div;Lcom/yandex/div/core/state/DivStatePath;)V

    :cond_3
    if-eqz p1, :cond_4

    invoke-static {p0}, Landroidx/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    new-instance p2, Landroidx/transition/Scene;

    invoke-direct {p2, p0, p5}, Landroidx/transition/Scene;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    sget-object p0, Lcom/yandex/div/core/view2/animations/SceneRootWatcher;->a:Lcom/yandex/div/core/view2/animations/SceneRootWatcher;

    invoke-virtual {p0, p2, p1}, Lcom/yandex/div/core/view2/animations/SceneRootWatcher;->b(Landroidx/transition/Scene;Landroidx/transition/Transition;)V

    invoke-static {p2, p1}, Landroidx/transition/TransitionManager;->go(Landroidx/transition/Scene;Landroidx/transition/Transition;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getViewComponent$div_release()Lcom/yandex/div/core/dagger/Div2ViewComponent;

    move-result-object p1

    invoke-interface {p1}, Lcom/yandex/div/core/dagger/Div2ViewComponent;->e()Lcom/yandex/div/core/view2/errors/ErrorVisualMonitor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/errors/ErrorVisualMonitor;->b(Landroid/view/ViewGroup;)V

    :goto_2
    return-void
.end method

.method public releaseMedia()V
    .locals 1

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->x()V

    sget-object v0, Lyr8;->a:Lyr8;

    invoke-virtual {v0, p0, p0}, Lyr8;->c(Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/Div2View;)V

    return-void
.end method

.method public removeDivDataChangeObserver(Lci2;)V
    .locals 1

    const-string v0, "observer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/Div2View;->K:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/yandex/div/core/view2/Div2View;->y:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public removePersistentDivDataObserver$div_release(Lw08;)V
    .locals 1

    const-string v0, "observer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/Div2View;->K:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/yandex/div/core/view2/Div2View;->z:Lqd7;

    invoke-virtual {p0, p1}, Lqd7;->p(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public resetToInitialState()V
    .locals 3

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getCurrentState()Luv2;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Luv2;->e()V

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/div/core/dagger/Div2Component;->C()Lrga;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDivTag()Lei2;

    move-result-object v1

    invoke-virtual {v1}, Lei2;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "divTag.id"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lrga;->e(Ljava/lang/String;)Ljava/util/Map;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->switchToInitialState()V

    return-void
.end method

.method public rootDiv$div_release()Lcom/yandex/div2/Div;
    .locals 1

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDivData()Lcom/yandex/div2/DivData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/view2/Div2View;->K(Lcom/yandex/div2/DivData;)Lcom/yandex/div2/DivData$State;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/yandex/div2/DivData$State;->a:Lcom/yandex/div2/Div;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final s(Lcom/yandex/div2/DivData;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/Div2View;->K(Lcom/yandex/div2/DivData;)Lcom/yandex/div2/DivData$State;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/yandex/div/core/view2/Div2View$attachVariableTriggers$attachTriggers$1;

    invoke-direct {v0, p0, p1}, Lcom/yandex/div/core/view2/Div2View$attachVariableTriggers$attachTriggers$1;-><init>(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivData$State;)V

    iget-boolean p1, p0, Lcom/yandex/div/core/view2/Div2View;->q:Z

    if-eqz p1, :cond_1

    new-instance p1, Lon9;

    new-instance v1, Lcom/yandex/div/core/view2/Div2View$attachVariableTriggers$1;

    invoke-direct {v1, v0}, Lcom/yandex/div/core/view2/Div2View$attachVariableTriggers$1;-><init>(Lc74;)V

    invoke-direct {p1, p0, v1}, Lon9;-><init>(Landroid/view/View;Lc74;)V

    iput-object p1, p0, Lcom/yandex/div/core/view2/Div2View;->L:Lon9;

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lc74;->invoke()Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public setActionHandler(Lcf2;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/Div2View;->e0:Lcf2;

    return-void
.end method

.method public setBindOnAttachRunnable$div_release(Lon9;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/Div2View;->M:Lon9;

    return-void
.end method

.method public setBindingContext$div_release(Lcom/yandex/div/core/view2/a;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/div/core/view2/Div2View;->H:Lcom/yandex/div/core/view2/a;

    return-void
.end method

.method public setClearVariablesListener$div_release(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/Div2View;->a0:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-void
.end method

.method public setComponentName(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/yandex/div/core/view2/Div2View;->getHistogramReporter()Lcom/yandex/div/histogram/Div2ViewHistogramReporter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->u(Ljava/lang/String;)V

    return-void
.end method

.method public setConfig(Lyu2;)V
    .locals 1

    const-string v0, "viewConfig"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/div/core/view2/Div2View;->Q:Lyu2;

    return-void
.end method

.method public setData(Lcom/yandex/div2/DivData;Lcom/yandex/div2/DivData;Lei2;)Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    const-string v1, "tag"

    invoke-static {v10, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v11, v0, Lcom/yandex/div/core/view2/Div2View;->K:Ljava/lang/Object;

    monitor-enter v11

    .line 3
    :try_start_0
    iget-object v1, v0, Lcom/yandex/div/core/view2/Div2View;->t:Lwe0;

    move-object/from16 v2, p2

    invoke-virtual {v1, v2, v9}, Lwe0;->a(Lcom/yandex/div2/DivData;Lcom/yandex/div2/DivData;)Lue0;

    move-result-object v12

    const/4 v13, 0x0

    if-nez v9, :cond_0

    .line 4
    invoke-interface {v12}, Lue0;->z()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit v11

    return v13

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 6
    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div/core/view2/Div2View;->getDivData()Lcom/yandex/div2/DivData;

    move-result-object v1

    if-ne v1, v9, :cond_1

    .line 7
    invoke-interface {v12}, Lue0;->i()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit v11

    return v13

    .line 9
    :cond_1
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div/core/view2/Div2View;->G()V

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div/core/view2/Div2View;->getBindOnAttachRunnable$div_release()Lon9;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lon9;->a()V

    .line 11
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/yandex/div/core/view2/Div2View;->getHistogramReporter()Lcom/yandex/div/histogram/Div2ViewHistogramReporter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->r()V

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div/core/view2/Div2View;->getDivData()Lcom/yandex/div2/DivData;

    move-result-object v1

    if-nez v1, :cond_3

    move-object v14, v2

    goto :goto_0

    :cond_3
    move-object v14, v1

    .line 13
    :goto_0
    invoke-virtual {v0, v9, v10}, Lcom/yandex/div/core/view2/Div2View;->Q(Lcom/yandex/div2/DivData;Lei2;)V

    .line 14
    invoke-virtual {v0, v10}, Lcom/yandex/div/core/view2/Div2View;->setDataTag$div_release(Lei2;)V

    .line 15
    iget-object v1, v9, Lcom/yandex/div2/DivData;->c:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 16
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/div2/DivData$State;

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object v3

    invoke-interface {v3}, Lcom/yandex/div/core/dagger/Div2Component;->q()Lcom/yandex/div/core/d;

    move-result-object v15

    const-string v3, "div2Component.divViewDataPreloader"

    invoke-static {v15, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v2, Lcom/yandex/div2/DivData$State;->a:Lcom/yandex/div2/Div;

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div/core/view2/Div2View;->getBindingContext$div_release()Lcom/yandex/div/core/view2/a;

    move-result-object v17

    sget-object v4, Lcom/yandex/div/core/state/DivStatePath;->f:Lcom/yandex/div/core/state/DivStatePath$a;

    invoke-virtual {v4, v2}, Lcom/yandex/div/core/state/DivStatePath$a;->j(Lcom/yandex/div2/DivData$State;)Lcom/yandex/div/core/state/DivStatePath;

    move-result-object v18

    const/16 v20, 0x8

    const/16 v21, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v3

    invoke-static/range {v15 .. v21}, Lcom/yandex/div/core/d;->f(Lcom/yandex/div/core/d;Lcom/yandex/div2/Div;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;Lcom/yandex/div/core/DivPreloader$a;ILjava/lang/Object;)Lcom/yandex/div/core/DivPreloader$f;

    goto :goto_1

    .line 18
    :cond_4
    sget-object v1, Lhh2;->a:Lhh2;

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div/core/view2/Div2View;->getStateId$div_release()J

    move-result-wide v4

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div/core/view2/Div2View;->getOldExpressionResolver$div_release()Loj3;

    move-result-object v6

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div/core/view2/Div2View;->getExpressionResolver()Loj3;

    move-result-object v7

    move-object v2, v14

    move-object/from16 v3, p1

    move-object v8, v12

    .line 22
    invoke-virtual/range {v1 .. v8}, Lhh2;->i(Lcom/yandex/div2/DivData;Lcom/yandex/div2/DivData;JLoj3;Loj3;Lih2;)Z

    move-result v1

    if-eqz v14, :cond_8

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div/core/view2/Div2View;->getExpressionResolver()Loj3;

    move-result-object v2

    invoke-static {v9, v2}, Lwt2;->a(Lcom/yandex/div2/DivData;Loj3;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    if-nez v1, :cond_6

    .line 24
    iget-boolean v2, v0, Lcom/yandex/div/core/view2/Div2View;->r:Z

    if-eqz v2, :cond_6

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div/core/view2/Div2View;->getView()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_6

    .line 26
    invoke-virtual {v0, v9, v14, v12}, Lcom/yandex/div/core/view2/Div2View;->z(Lcom/yandex/div2/DivData;Lcom/yandex/div2/DivData;Lcom/yandex/div/core/view2/reuse/a;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    if-eqz v1, :cond_7

    .line 27
    invoke-virtual {v0, v9, v13, v12}, Lcom/yandex/div/core/view2/Div2View;->I(Lcom/yandex/div2/DivData;ZLpm9;)V

    goto :goto_3

    .line 28
    :cond_7
    invoke-virtual {v0, v9, v10, v12}, Lcom/yandex/div/core/view2/Div2View;->S(Lcom/yandex/div2/DivData;Lei2;Lj34;)Z

    move-result v13

    goto :goto_3

    .line 29
    :cond_8
    :goto_2
    invoke-virtual {v0, v9, v10, v12}, Lcom/yandex/div/core/view2/Div2View;->S(Lcom/yandex/div2/DivData;Lei2;Lj34;)Z

    move-result v13

    .line 30
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object v1

    invoke-interface {v1}, Lcom/yandex/div/core/dagger/Div2Component;->F()Lrg2;

    move-result-object v1

    invoke-virtual {v1}, Lrg2;->a()V

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div/core/view2/Div2View;->J()V

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div/core/view2/Div2View;->getExpressionsRuntime$div_release()Lvj3;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/div/core/view2/Div2View;->E:Lvj3;

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div/core/view2/Div2View;->F()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    monitor-exit v11

    return v13

    :goto_4
    monitor-exit v11

    throw v0
.end method

.method public setData(Lcom/yandex/div2/DivData;Lei2;)Z
    .locals 1

    const-string v0, "tag"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDivData()Lcom/yandex/div2/DivData;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/yandex/div/core/view2/Div2View;->setData(Lcom/yandex/div2/DivData;Lcom/yandex/div2/DivData;Lei2;)Z

    move-result p0

    return p0
.end method

.method public setDataTag$div_release(Lei2;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/Div2View;->b0:Lei2;

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/view2/Div2View;->setPrevDataTag$div_release(Lei2;)V

    iput-object p1, p0, Lcom/yandex/div/core/view2/Div2View;->b0:Lei2;

    iget-object v0, p0, Lcom/yandex/div/core/view2/Div2View;->s:Lvbc;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDivData()Lcom/yandex/div2/DivData;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lvbc;->b(Lei2;Lcom/yandex/div2/DivData;)V

    return-void
.end method

.method public setDataWithStates(Lcom/yandex/div2/DivData;Lei2;Ljava/util/List;Z)Z
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/div2/DivData;",
            "Lei2;",
            "Ljava/util/List<",
            "Lcom/yandex/div/core/state/DivStatePath;",
            ">;Z)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v1, "tag"

    invoke-static {v10, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "paths"

    invoke-static {v11, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v12, v0, Lcom/yandex/div/core/view2/Div2View;->K:Ljava/lang/Object;

    monitor-enter v12

    :try_start_0
    iget-object v1, v0, Lcom/yandex/div/core/view2/Div2View;->t:Lwe0;

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div/core/view2/Div2View;->getDivData()Lcom/yandex/div2/DivData;

    move-result-object v2

    invoke-virtual {v1, v2, v9}, Lwe0;->a(Lcom/yandex/div2/DivData;Lcom/yandex/div2/DivData;)Lue0;

    move-result-object v13

    const/4 v14, 0x0

    if-nez v9, :cond_0

    invoke-interface {v13}, Lue0;->z()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v12

    return v14

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div/core/view2/Div2View;->getDivData()Lcom/yandex/div2/DivData;

    move-result-object v1

    if-ne v1, v9, :cond_1

    invoke-interface {v13}, Lue0;->i()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v12

    return v14

    :cond_1
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div/core/view2/Div2View;->G()V

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div/core/view2/Div2View;->getBindOnAttachRunnable$div_release()Lon9;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lon9;->a()V

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/yandex/div/core/view2/Div2View;->getHistogramReporter()Lcom/yandex/div/histogram/Div2ViewHistogramReporter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->r()V

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div/core/view2/Div2View;->getDivData()Lcom/yandex/div2/DivData;

    move-result-object v15

    invoke-virtual/range {p0 .. p2}, Lcom/yandex/div/core/view2/Div2View;->Q(Lcom/yandex/div2/DivData;Lei2;)V

    sget-object v1, Lhh2;->a:Lhh2;

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div/core/view2/Div2View;->getStateId$div_release()J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div/core/view2/Div2View;->getOldExpressionResolver$div_release()Loj3;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div/core/view2/Div2View;->getExpressionResolver()Loj3;

    move-result-object v7

    move-object v2, v15

    move-object/from16 v3, p1

    move-object v8, v13

    invoke-virtual/range {v1 .. v8}, Lhh2;->i(Lcom/yandex/div2/DivData;Lcom/yandex/div2/DivData;JLoj3;Loj3;Lih2;)Z

    move-result v1

    invoke-virtual {v0, v10}, Lcom/yandex/div/core/view2/Div2View;->setDataTag$div_release(Lei2;)V

    iget-object v2, v9, Lcom/yandex/div2/DivData;->c:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/div2/DivData$State;

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object v4

    invoke-interface {v4}, Lcom/yandex/div/core/dagger/Div2Component;->q()Lcom/yandex/div/core/d;

    move-result-object v4

    const-string v5, "div2Component.divViewDataPreloader"

    invoke-static {v4, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v3, Lcom/yandex/div2/DivData$State;->a:Lcom/yandex/div2/Div;

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div/core/view2/Div2View;->getBindingContext$div_release()Lcom/yandex/div/core/view2/a;

    move-result-object v18

    sget-object v6, Lcom/yandex/div/core/state/DivStatePath;->f:Lcom/yandex/div/core/state/DivStatePath$a;

    invoke-virtual {v6, v3}, Lcom/yandex/div/core/state/DivStatePath$a;->j(Lcom/yandex/div2/DivData$State;)Lcom/yandex/div/core/state/DivStatePath;

    move-result-object v19

    const/16 v21, 0x8

    const/16 v22, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    invoke-static/range {v16 .. v22}, Lcom/yandex/div/core/d;->f(Lcom/yandex/div/core/d;Lcom/yandex/div2/Div;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;Lcom/yandex/div/core/DivPreloader$a;ILjava/lang/Object;)Lcom/yandex/div/core/DivPreloader$f;

    goto :goto_0

    :cond_3
    move-object v2, v11

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/div/core/state/DivStatePath;

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object v4

    invoke-interface {v4}, Lcom/yandex/div/core/dagger/Div2Component;->A()Lsq2;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div/core/view2/Div2View;->getDivTag()Lei2;

    move-result-object v5

    invoke-virtual {v5}, Lei2;->a()Ljava/lang/String;

    move-result-object v5

    const-string v6, "divTag.id"

    invoke-static {v5, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v6, p4

    invoke-virtual {v4, v5, v3, v6}, Lsq2;->d(Ljava/lang/String;Lcom/yandex/div/core/state/DivStatePath;Z)V

    goto :goto_1

    :cond_4
    if-nez v15, :cond_5

    invoke-virtual {v0, v9, v10, v13}, Lcom/yandex/div/core/view2/Div2View;->S(Lcom/yandex/div2/DivData;Lei2;Lj34;)Z

    move-result v1

    goto :goto_3

    :cond_5
    const/4 v2, 0x1

    if-nez v1, :cond_6

    iget-boolean v3, v0, Lcom/yandex/div/core/view2/Div2View;->r:Z

    if-eqz v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div/core/view2/Div2View;->getView()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_6

    invoke-virtual {v0, v9, v15, v13}, Lcom/yandex/div/core/view2/Div2View;->z(Lcom/yandex/div2/DivData;Lcom/yandex/div2/DivData;Lcom/yandex/div/core/view2/reuse/a;)Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_2
    move v1, v2

    goto :goto_3

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v0, v9, v14, v13}, Lcom/yandex/div/core/view2/Div2View;->I(Lcom/yandex/div2/DivData;ZLpm9;)V

    goto :goto_2

    :cond_7
    invoke-virtual {v0, v9, v10, v13}, Lcom/yandex/div/core/view2/Div2View;->S(Lcom/yandex/div2/DivData;Lei2;Lj34;)Z

    move-result v1

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object v2

    invoke-interface {v2}, Lcom/yandex/div/core/dagger/Div2Component;->F()Lrg2;

    move-result-object v2

    invoke-virtual {v2}, Lrg2;->a()V

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div/core/view2/Div2View;->J()V

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div/core/view2/Div2View;->getExpressionsRuntime$div_release()Lvj3;

    move-result-object v2

    iput-object v2, v0, Lcom/yandex/div/core/view2/Div2View;->E:Lvj3;

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div/core/view2/Div2View;->F()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v12

    return v1

    :goto_4
    monitor-exit v12

    throw v0
.end method

.method public setDivData$div_release(Lcom/yandex/div2/DivData;)V
    .locals 1

    iput-object p1, p0, Lcom/yandex/div/core/view2/Div2View;->d0:Lcom/yandex/div2/DivData;

    const/4 p1, 0x0

    const/4 v0, 0x3

    invoke-static {p0, p1, p1, v0, p1}, Lcom/yandex/div/core/view2/Div2View;->R(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivData;Lei2;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->U()V

    iget-object p1, p0, Lcom/yandex/div/core/view2/Div2View;->s:Lvbc;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDataTag()Lei2;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/div/core/view2/Div2View;->d0:Lcom/yandex/div2/DivData;

    invoke-virtual {p1, v0, p0}, Lvbc;->b(Lei2;Lcom/yandex/div2/DivData;)V

    return-void
.end method

.method public setDivTimerEventDispatcher$div_release(Lbt2;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/Div2View;->I:Lbt2;

    return-void
.end method

.method public setExpressionsRuntime$div_release(Lvj3;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/Div2View;->D:Lvj3;

    return-void
.end method

.method public setForceCanvasClipping(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yandex/div/core/view2/Div2View;->J:Z

    return-void
.end method

.method public setInMiddleOfBind$div_release(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yandex/div/core/view2/Div2View;->G:Z

    return-void
.end method

.method public setPrevDataTag$div_release(Lei2;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/div/core/view2/Div2View;->c0:Lei2;

    return-void
.end method

.method public setPropagatedAccessibilityMode$div_release(Landroid/view/View;Lcom/yandex/div2/DivAccessibility$Mode;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/Div2View;->B:Ljava/util/WeakHashMap;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setRuntimeStore$div_release(Lcom/yandex/div/core/expression/local/RuntimeStore;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/Div2View;->F:Lcom/yandex/div/core/expression/local/RuntimeStore;

    return-void
.end method

.method public setStateId$div_release(J)V
    .locals 0

    iput-wide p1, p0, Lcom/yandex/div/core/view2/Div2View;->P:J

    return-void
.end method

.method public setVariable(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/div/data/VariableMutationException;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lbob;->a:Lbob$a;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getExpressionResolver()Loj3;

    move-result-object v1

    invoke-virtual {v0, p0, p1, p2, v1}, Lbob$a;->d(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Ljava/lang/String;Loj3;)Lcom/yandex/div/data/VariableMutationException;

    move-result-object p0

    return-object p0
.end method

.method public setVisualErrorsEnabled(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getViewComponent$div_release()Lcom/yandex/div/core/dagger/Div2ViewComponent;

    move-result-object p0

    invoke-interface {p0}, Lcom/yandex/div/core/dagger/Div2ViewComponent;->e()Lcom/yandex/div/core/view2/errors/ErrorVisualMonitor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/errors/ErrorVisualMonitor;->e(Z)V

    return-void
.end method

.method public showTooltip(Ljava/lang/String;)V
    .locals 7

    const-string v0, "tooltipId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/yandex/div/core/view2/Div2View;->getTooltipController()Lcom/yandex/div/core/tooltip/DivTooltipController;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getBindingContext$div_release()Lcom/yandex/div/core/view2/a;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/yandex/div/core/tooltip/DivTooltipController;->r(Lcom/yandex/div/core/tooltip/DivTooltipController;Ljava/lang/String;Lcom/yandex/div/core/view2/a;ZILjava/lang/Object;)V

    return-void
.end method

.method public showTooltip(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "tooltipId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/yandex/div/core/view2/Div2View;->getTooltipController()Lcom/yandex/div/core/tooltip/DivTooltipController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getBindingContext$div_release()Lcom/yandex/div/core/view2/a;

    move-result-object p0

    invoke-virtual {v0, p1, p0, p2}, Lcom/yandex/div/core/tooltip/DivTooltipController;->q(Ljava/lang/String;Lcom/yandex/div/core/view2/a;Z)V

    return-void
.end method

.method public startDivAnimation()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Lig2;

    if-eqz v0, :cond_0

    check-cast p0, Lig2;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lig2;->startDivAnimation()V

    :cond_1
    return-void
.end method

.method public stateToBind(Lcom/yandex/div2/DivData;)Lcom/yandex/div2/DivData$State;
    .locals 1

    const-string v0, "divData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/Div2View;->D(Lcom/yandex/div2/DivData;)Lcom/yandex/div2/DivData$State;

    move-result-object p0

    return-object p0
.end method

.method public stopDivAnimation()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Lig2;

    if-eqz v0, :cond_0

    check-cast p0, Lig2;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lig2;->stopDivAnimation()V

    :cond_1
    return-void
.end method

.method public subscribe(Lxt7;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/Div2View;->K:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/yandex/div/core/view2/Div2View;->x:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public switchToInitialState()V
    .locals 3

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDivData()Lcom/yandex/div2/DivData;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lfi2;->b(Lcom/yandex/div2/DivData;)J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getCurrentState()Luv2;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Luv2;->c()J

    move-result-wide v0

    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/yandex/div/core/view2/Div2View;->switchToState(J)V

    return-void
.end method

.method public switchToMultipleStates(Ljava/util/List;ZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yandex/div/core/state/DivStatePath;",
            ">;ZZ)V"
        }
    .end annotation

    const-string p3, "pathList"

    invoke-static {p1, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p3, p1

    check-cast p3, Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_8

    const/4 p3, 0x0

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/yandex/div/core/state/DivStatePath;

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/yandex/div/core/state/DivStatePath;

    invoke-virtual {v4}, Lcom/yandex/div/core/state/DivStatePath;->k()J

    move-result-wide v4

    invoke-virtual {p3}, Lcom/yandex/div/core/state/DivStatePath;->k()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    check-cast v2, Lcom/yandex/div/core/state/DivStatePath;

    if-eqz v2, :cond_2

    const-string v1, "Trying to switch different top level states in path list!"

    invoke-static {v1}, Lxi;->i(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getStateId$div_release()J

    move-result-wide v1

    invoke-virtual {p3}, Lcom/yandex/div/core/state/DivStatePath;->k()J

    move-result-wide v4

    cmp-long v1, v1, v4

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDivData()Lcom/yandex/div2/DivData;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/yandex/div2/DivData;->c:Ljava/util/List;

    if-eqz v0, :cond_5

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/yandex/div2/DivData$State;

    iget-wide v4, v2, Lcom/yandex/div2/DivData$State;->b:J

    invoke-virtual {p3}, Lcom/yandex/div/core/state/DivStatePath;->k()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_3

    move-object v3, v1

    :cond_4
    check-cast v3, Lcom/yandex/div2/DivData$State;

    :cond_5
    iget-object p0, p0, Lcom/yandex/div/core/view2/Div2View;->C:Lcom/yandex/div/core/view2/Div2View$a;

    invoke-virtual {p0, v3, p1, p2}, Lcom/yandex/div/core/view2/Div2View$a;->d(Lcom/yandex/div2/DivData$State;Ljava/util/List;Z)V

    goto :goto_2

    :cond_6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div/core/state/DivStatePath;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object v1

    invoke-interface {v1}, Lcom/yandex/div/core/dagger/Div2Component;->A()Lsq2;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDivTag()Lei2;

    move-result-object v2

    invoke-virtual {v2}, Lei2;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "divTag.id"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0, p2}, Lsq2;->d(Ljava/lang/String;Lcom/yandex/div/core/state/DivStatePath;Z)V

    goto :goto_1

    :cond_7
    invoke-virtual {p3}, Lcom/yandex/div/core/state/DivStatePath;->k()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/Div2View;->switchToState(J)V

    :goto_2
    return-void

    :cond_8
    const-string p0, "Empty path list!"

    invoke-static {p0}, Lxi;->i(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic switchToState(J)V
    .locals 0
    .param p1    # J
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lsv2;->switchToState(J)V

    return-void
.end method

.method public switchToState(JZ)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/yandex/div/core/view2/Div2View;->K:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/yandex/div2/DivData;->j:Lcom/yandex/div2/DivData$a;

    invoke-static {v1}, Lfi2;->a(Lcom/yandex/div2/DivData$a;)J

    move-result-wide v1

    cmp-long v1, p1, v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getBindOnAttachRunnable$div_release()Lon9;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lon9;->a()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/Div2View;->C(JZ)Z

    .line 6
    :cond_1
    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public switchToState(Lcom/yandex/div/core/state/DivStatePath;Z)V
    .locals 8

    const-string v0, "path"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/yandex/div/core/view2/Div2View;->K:Ljava/lang/Object;

    monitor-enter v0

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDivData()Lcom/yandex/div2/DivData;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/yandex/div2/DivData;->c:Ljava/util/List;

    if-eqz v1, :cond_2

    check-cast v1, Ljava/lang/Iterable;

    .line 10
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/yandex/div2/DivData$State;

    .line 11
    iget-wide v4, v4, Lcom/yandex/div2/DivData$State;->b:J

    invoke-virtual {p1}, Lcom/yandex/div/core/state/DivStatePath;->k()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    move-object v2, v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    check-cast v2, Lcom/yandex/div2/DivData$State;

    .line 13
    :cond_2
    iget-object p0, p0, Lcom/yandex/div/core/view2/Div2View;->C:Lcom/yandex/div/core/view2/Div2View$a;

    invoke-virtual {p0, v2, p1, p2}, Lcom/yandex/div/core/view2/Div2View$a;->e(Lcom/yandex/div2/DivData$State;Lcom/yandex/div/core/state/DivStatePath;Z)V

    .line 14
    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final t(Lcom/yandex/div2/DivData$State;JZ)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/div/core/dagger/Div2Component;->A()Lsq2;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDataTag()Lei2;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lsq2;->c(Lei2;JZ)V

    iget-object p2, p0, Lcom/yandex/div/core/view2/Div2View;->v:Ldd2;

    iget-object p3, p1, Lcom/yandex/div2/DivData$State;->a:Lcom/yandex/div2/Div;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getBindingContext$div_release()Lcom/yandex/div/core/view2/a;

    move-result-object p4

    sget-object v0, Lcom/yandex/div/core/state/DivStatePath;->f:Lcom/yandex/div/core/state/DivStatePath$a;

    invoke-virtual {v0, p1}, Lcom/yandex/div/core/state/DivStatePath$a;->j(Lcom/yandex/div2/DivData$State;)Lcom/yandex/div/core/state/DivStatePath;

    move-result-object p1

    invoke-virtual {p2, p3, p4, p1}, Ldd2;->a(Lcom/yandex/div2/Div;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object p0

    invoke-interface {p0}, Lcom/yandex/div/core/dagger/Div2Component;->F()Lrg2;

    move-result-object p0

    invoke-virtual {p0}, Lrg2;->a()V

    return-object p1
.end method

.method public takeBindingDiv$div_release(Landroid/view/View;)Lcom/yandex/div2/Div;
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/Div2View;->A:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/Div;

    return-object p0
.end method

.method public trackChildrenVisibility()V
    .locals 11

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/div/core/dagger/Div2Component;->H()Lcom/yandex/div/core/view2/DivVisibilityActionTracker;

    move-result-object v0

    const-string v1, "div2Component.visibilityActionTracker"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/div/core/view2/Div2View;->A:Ljava/util/WeakHashMap;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/view/View;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/yandex/div2/Div;

    const-string v1, "view"

    invoke-static {v4, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->Z(Landroid/view/View;)Lcom/yandex/div/core/view2/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v4}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v1

    const-string v2, "div"

    if-eqz v1, :cond_1

    invoke-static {v5, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x30

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-static/range {v1 .. v9}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->x(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lcom/yandex/div2/Div;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {v5, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x30

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-static/range {v1 .. v9}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->x(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lcom/yandex/div2/Div;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public tryLogVisibility()V
    .locals 7

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDivData()Lcom/yandex/div2/DivData;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/yandex/div2/DivData;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/yandex/div2/DivData$State;

    iget-wide v3, v3, Lcom/yandex/div2/DivData$State;->b:J

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getStateId$div_release()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move-object v1, v2

    :cond_1
    check-cast v1, Lcom/yandex/div2/DivData$State;

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/yandex/div/core/view2/Div2View;->O(Lcom/yandex/div2/DivData$State;)V

    :cond_3
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->trackChildrenVisibility()V

    return-void
.end method

.method public unbindViewFromDiv$div_release(Landroid/view/View;)Lcom/yandex/div2/Div;
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/Div2View;->A:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/Div;

    return-object p0
.end method

.method public final v(Lcom/yandex/div2/DivData$State;JZ)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/div/core/dagger/Div2Component;->A()Lsq2;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDataTag()Lei2;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lsq2;->c(Lei2;JZ)V

    sget-object p2, Lcom/yandex/div/core/state/DivStatePath;->f:Lcom/yandex/div/core/state/DivStatePath$a;

    invoke-virtual {p2, p1}, Lcom/yandex/div/core/state/DivStatePath$a;->j(Lcom/yandex/div2/DivData$State;)Lcom/yandex/div/core/state/DivStatePath;

    move-result-object p2

    iget-object p3, p0, Lcom/yandex/div/core/view2/Div2View;->v:Ldd2;

    iget-object p4, p1, Lcom/yandex/div2/DivData$State;->a:Lcom/yandex/div2/Div;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getBindingContext$div_release()Lcom/yandex/div/core/view2/a;

    move-result-object v0

    invoke-virtual {p3, p4, v0, p2}, Ldd2;->b(Lcom/yandex/div2/Div;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)Landroid/view/View;

    move-result-object p3

    iget-boolean p4, p0, Lcom/yandex/div/core/view2/Div2View;->q:Z

    if-eqz p4, :cond_0

    new-instance p4, Lon9;

    new-instance v0, Lcom/yandex/div/core/view2/Div2View$buildViewAsyncAndUpdateState$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/yandex/div/core/view2/Div2View$buildViewAsyncAndUpdateState$1;-><init>(Lcom/yandex/div/core/view2/Div2View;Landroid/view/View;Lcom/yandex/div2/DivData$State;Lcom/yandex/div/core/state/DivStatePath;)V

    invoke-direct {p4, p0, v0}, Lon9;-><init>(Landroid/view/View;Lc74;)V

    invoke-virtual {p0, p4}, Lcom/yandex/div/core/view2/Div2View;->setBindOnAttachRunnable$div_release(Lon9;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object p4

    invoke-interface {p4}, Lcom/yandex/div/core/dagger/Div2Component;->F()Lrg2;

    move-result-object p4

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getBindingContext$div_release()Lcom/yandex/div/core/view2/a;

    move-result-object v0

    iget-object p1, p1, Lcom/yandex/div2/DivData$State;->a:Lcom/yandex/div2/Div;

    invoke-virtual {p4, v0, p3, p1, p2}, Lrg2;->b(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/Div;Lcom/yandex/div/core/state/DivStatePath;)V

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object p0

    invoke-interface {p0}, Lcom/yandex/div/core/dagger/Div2Component;->F()Lrg2;

    move-result-object p0

    invoke-virtual {p0}, Lrg2;->a()V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/yandex/div/core/view2/Div2View$b;

    invoke-direct {p1, p0, p0}, Lcom/yandex/div/core/view2/Div2View$b;-><init>(Landroid/view/View;Lcom/yandex/div/core/view2/Div2View;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_0
    return-object p3
.end method

.method public final x()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/div/core/view2/Div2View;->w:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljn5;

    invoke-interface {v1}, Ljn5;->cancel()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/div/core/view2/Div2View;->w:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final y(Z)V
    .locals 3

    iget-object v0, p0, Lcom/yandex/div/core/view2/Div2View;->R:Lcom/yandex/div/core/view2/reuse/RebindTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/reuse/RebindTask;->b()V

    sget-object v0, Lzfb;->a:Lzfb;

    iput-object v1, p0, Lcom/yandex/div/core/view2/Div2View;->R:Lcom/yandex/div/core/view2/reuse/RebindTask;

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->discardVisibilityTracking()V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->x()V

    sget-object v0, Lyr8;->a:Lyr8;

    invoke-virtual {v0, p0, p0}, Lyr8;->c(Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/Div2View;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->M()V

    if-eqz p1, :cond_1

    invoke-virtual {v0, p0, p0}, Lyr8;->a(Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/Div2View;)V

    :cond_1
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getViewComponent$div_release()Lcom/yandex/div/core/dagger/Div2ViewComponent;

    move-result-object p1

    invoke-interface {p1}, Lcom/yandex/div/core/dagger/Div2ViewComponent;->a()Lxc3;

    move-result-object p1

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDataTag()Lei2;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDivData()Lcom/yandex/div2/DivData;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lxc3;->b(Lei2;Lcom/yandex/div2/DivData;)Lwc3;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lwc3;->c()V

    :cond_2
    invoke-virtual {p0, v1}, Lcom/yandex/div/core/view2/Div2View;->setDivData$div_release(Lcom/yandex/div2/DivData;)V

    sget-object p1, Lei2;->b:Lei2;

    const-string v0, "INVALID"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/Div2View;->setDataTag$div_release(Lei2;)V

    return-void
.end method

.method public final z(Lcom/yandex/div2/DivData;Lcom/yandex/div2/DivData;Lcom/yandex/div/core/view2/reuse/a;)Z
    .locals 9

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/Div2View;->D(Lcom/yandex/div2/DivData;)Lcom/yandex/div2/DivData$State;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-interface {p3}, Lcom/yandex/div/core/view2/reuse/a;->y()V

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/yandex/div/core/view2/Div2View;->getHistogramReporter()Lcom/yandex/div/histogram/Div2ViewHistogramReporter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->q()V

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/Div2View;->setDivData$div_release(Lcom/yandex/div2/DivData;)V

    iget-object v2, p0, Lcom/yandex/div/core/view2/Div2View;->R:Lcom/yandex/div/core/view2/reuse/RebindTask;

    if-nez v2, :cond_1

    new-instance v2, Lcom/yandex/div/core/view2/reuse/RebindTask;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object v3

    invoke-interface {v3}, Lcom/yandex/div/core/dagger/Div2Component;->F()Lrg2;

    move-result-object v5

    const-string v3, "div2Component.divBinder"

    invoke-static {v5, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getOldExpressionResolver$div_release()Loj3;

    move-result-object v6

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getExpressionResolver()Loj3;

    move-result-object v7

    move-object v3, v2

    move-object v4, p0

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/yandex/div/core/view2/reuse/RebindTask;-><init>(Lcom/yandex/div/core/view2/Div2View;Lrg2;Loj3;Loj3;Lcom/yandex/div/core/view2/reuse/a;)V

    iput-object v2, p0, Lcom/yandex/div/core/view2/Div2View;->R:Lcom/yandex/div/core/view2/reuse/RebindTask;

    :cond_1
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getView()Lcom/yandex/div/core/view2/Div2View;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    const-string v3, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {p3, v3}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/view/ViewGroup;

    iget-object v3, v0, Lcom/yandex/div2/DivData$State;->a:Lcom/yandex/div2/Div;

    invoke-virtual {v3}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v3

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getExpressionResolver()Loj3;

    move-result-object v4

    invoke-static {p3, v3, v4}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->D(Landroid/view/View;Log2;Loj3;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object v3

    invoke-interface {v3}, Lcom/yandex/div/core/dagger/Div2Component;->A()Lsq2;

    move-result-object v3

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDataTag()Lei2;

    move-result-object v4

    iget-wide v5, v0, Lcom/yandex/div2/DivData$State;->b:J

    invoke-virtual {v3, v4, v5, v6, v1}, Lsq2;->c(Lei2;JZ)V

    sget-object v3, Lcom/yandex/div/core/state/DivStatePath;->f:Lcom/yandex/div/core/state/DivStatePath$a;

    invoke-virtual {v3, v0}, Lcom/yandex/div/core/state/DivStatePath$a;->j(Lcom/yandex/div2/DivData$State;)Lcom/yandex/div/core/state/DivStatePath;

    move-result-object v0

    invoke-virtual {v2, p2, p1, p3, v0}, Lcom/yandex/div/core/view2/reuse/RebindTask;->h(Lcom/yandex/div2/DivData;Lcom/yandex/div2/DivData;Landroid/view/ViewGroup;Lcom/yandex/div/core/state/DivStatePath;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-direct {p0}, Lcom/yandex/div/core/view2/Div2View;->getHistogramReporter()Lcom/yandex/div/histogram/Div2ViewHistogramReporter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->p()V

    const/4 p0, 0x1

    return p0
.end method
