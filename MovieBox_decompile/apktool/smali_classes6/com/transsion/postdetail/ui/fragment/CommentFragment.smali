.class public final Lcom/transsion/postdetail/ui/fragment/CommentFragment;
.super Lcom/transsion/baseui/fragment/BaseFragment;
.source "source.java"

# interfaces
.implements Lcom/transsion/postdetail/comment/i0;
.implements Lcom/transsion/postdetail/comment/g0;
.implements Lio/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/ui/fragment/CommentFragment$a;,
        Lcom/transsion/postdetail/ui/fragment/CommentFragment$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/BaseFragment<",
        "Lwn/h;",
        ">;",
        "Lcom/transsion/postdetail/comment/i0;",
        "Lcom/transsion/postdetail/comment/g0;",
        "Lio/a;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\r\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u001e\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010#\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00eb\u00012\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u00042\u00020\u0005:\u0002x{B\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0007J\u000f\u0010\n\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0007J\u000f\u0010\u000b\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0007J\u000f\u0010\u000c\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u0007J\u000f\u0010\r\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0007J\u000f\u0010\u000e\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u0007J\u000f\u0010\u000f\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0007J\u0019\u0010\u0012\u001a\u00020\u00082\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0007J\u000f\u0010\u0015\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0007J\u0019\u0010\u0018\u001a\u00020\u00082\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u0007J#\u0010\u001c\u001a\u00020\u00082\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0019\u0010\u001e\u001a\u00020\u00082\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u0019J\u000f\u0010\u001f\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u001f\u0010\u0007J\u0019\u0010!\u001a\u00020\u00082\u0008\u0010 \u001a\u0004\u0018\u00010\u0010H\u0002\u00a2\u0006\u0004\u0008!\u0010\u0013J\'\u0010&\u001a\u00020\u00082\u0016\u0010%\u001a\u0012\u0012\u0004\u0012\u00020#0\"j\u0008\u0012\u0004\u0012\u00020#`$H\u0002\u00a2\u0006\u0004\u0008&\u0010\'J\u000f\u0010)\u001a\u00020(H\u0002\u00a2\u0006\u0004\u0008)\u0010*J\u000f\u0010+\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008+\u0010\u0007J#\u0010-\u001a\u00020\u00082\u0006\u0010,\u001a\u00020\u00102\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u0010H\u0002\u00a2\u0006\u0004\u0008-\u0010.J\u0017\u00101\u001a\u00020\u00082\u0006\u00100\u001a\u00020/H\u0002\u00a2\u0006\u0004\u00081\u00102JO\u00109\u001a\u00020\u00082\u0006\u00103\u001a\u00020\u001026\u00108\u001a2\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u00085\u0012\u0008\u00086\u0012\u0004\u0008\u0008(\u0017\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u00085\u0012\u0008\u00086\u0012\u0004\u0008\u0008(7\u0012\u0004\u0012\u00020\u000804H\u0002\u00a2\u0006\u0004\u00089\u0010:J\u0019\u0010=\u001a\u00020\u00082\u0008\u0010<\u001a\u0004\u0018\u00010;H\u0016\u00a2\u0006\u0004\u0008=\u0010>J\u0017\u0010A\u001a\u00020\u00022\u0006\u0010@\u001a\u00020?H\u0016\u00a2\u0006\u0004\u0008A\u0010BJ!\u0010E\u001a\u00020\u00082\u0006\u0010D\u001a\u00020C2\u0008\u0010<\u001a\u0004\u0018\u00010;H\u0016\u00a2\u0006\u0004\u0008E\u0010FJ\u0019\u0010G\u001a\u00020\u00082\u0008\u0010D\u001a\u0004\u0018\u00010CH\u0016\u00a2\u0006\u0004\u0008G\u0010HJ\u000f\u0010I\u001a\u00020(H\u0016\u00a2\u0006\u0004\u0008I\u0010*J\u0017\u0010L\u001a\u00020\u00082\u0006\u0010K\u001a\u00020JH\u0016\u00a2\u0006\u0004\u0008L\u0010MJ%\u0010O\u001a\u00020\u00082\u0014\u00108\u001a\u0010\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020\u0008\u0018\u00010NH\u0016\u00a2\u0006\u0004\u0008O\u0010PJ\u000f\u0010Q\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008Q\u0010\u0007J\u0017\u0010S\u001a\u00020(2\u0008\u0010R\u001a\u0004\u0018\u00010#\u00a2\u0006\u0004\u0008S\u0010TJ\u000f\u0010U\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008U\u0010\u0007J\u000f\u0010V\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008V\u0010\u0007J\u0017\u0010W\u001a\u00020\u00082\u0008\u0010 \u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0004\u0008W\u0010\u0013J#\u0010[\u001a\u00020\u00082\u0008\u0010Y\u001a\u0004\u0018\u00010X2\u0008\u0010Z\u001a\u0004\u0018\u00010#H\u0016\u00a2\u0006\u0004\u0008[\u0010\\J\u000f\u0010]\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008]\u0010\u0007J1\u0010c\u001a\u00020\u00082\u0008\u0010I\u001a\u0004\u0018\u00010^2\u0006\u0010`\u001a\u00020_2\u0006\u0010a\u001a\u00020_2\u0006\u0010b\u001a\u00020_H\u0016\u00a2\u0006\u0004\u0008c\u0010dJ\u0019\u0010e\u001a\u00020\u00082\u0008\u0010R\u001a\u0004\u0018\u00010#H\u0016\u00a2\u0006\u0004\u0008e\u0010fJ\u0019\u0010g\u001a\u00020\u00082\u0008\u0010R\u001a\u0004\u0018\u00010#H\u0016\u00a2\u0006\u0004\u0008g\u0010fJI\u0010i\u001a\u00020\u00082:\u00108\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\u0010\u00a2\u0006\u000c\u00085\u0012\u0008\u00086\u0012\u0004\u0008\u0008( \u0012\u0015\u0012\u0013\u0018\u00010(\u00a2\u0006\u000c\u00085\u0012\u0008\u00086\u0012\u0004\u0008\u0008(h\u0012\u0004\u0012\u00020\u000804\u00a2\u0006\u0004\u0008i\u0010jJ\u0019\u0010k\u001a\u00020\u00082\u0008\u0010R\u001a\u0004\u0018\u00010#H\u0016\u00a2\u0006\u0004\u0008k\u0010fJ\u0019\u0010l\u001a\u00020\u00082\u0008\u0010R\u001a\u0004\u0018\u00010#H\u0016\u00a2\u0006\u0004\u0008l\u0010fJ\u001f\u0010o\u001a\u00020\u00082\u0006\u0010n\u001a\u00020m2\u0006\u0010b\u001a\u00020_H\u0016\u00a2\u0006\u0004\u0008o\u0010pJ\u0017\u0010q\u001a\u00020\u00082\u0008\u0010R\u001a\u0004\u0018\u00010#\u00a2\u0006\u0004\u0008q\u0010fJ\u000f\u0010r\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008r\u0010\u0007J\u0017\u0010t\u001a\u00020\u00082\u0006\u0010s\u001a\u00020(H\u0016\u00a2\u0006\u0004\u0008t\u0010uJ\u000f\u0010v\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008v\u0010\u0007R\u0018\u0010z\u001a\u0004\u0018\u00010w8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008x\u0010yR\u0016\u0010}\u001a\u00020(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008{\u0010|R\u001a\u0010\u0081\u0001\u001a\u0004\u0018\u00010~8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u007f\u0010\u0080\u0001R,\u0010\u0089\u0001\u001a\u0005\u0018\u00010\u0082\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0083\u0001\u0010\u0084\u0001\u001a\u0006\u0008\u0085\u0001\u0010\u0086\u0001\"\u0006\u0008\u0087\u0001\u0010\u0088\u0001R\u001c\u0010\u008d\u0001\u001a\u0005\u0018\u00010\u008a\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008b\u0001\u0010\u008c\u0001R\u001b\u0010\u0090\u0001\u001a\u0005\u0018\u00010\u008e\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008o\u0010\u008f\u0001R\u001b\u0010\u0093\u0001\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0091\u0001\u0010\u0092\u0001R\u001c\u0010\u0097\u0001\u001a\u0005\u0018\u00010\u0094\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0095\u0001\u0010\u0096\u0001R&\u0010\u0099\u0001\u001a\u0010\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020\u0008\u0018\u00010N8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008O\u0010\u0098\u0001R\u001b\u0010\u009c\u0001\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009a\u0001\u0010\u009b\u0001R\u0019\u0010\u009e\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009d\u0001\u0010\u009b\u0001R\u0019\u0010\u00a1\u0001\u001a\u00020_8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009f\u0001\u0010\u00a0\u0001R\u0019\u0010\u00a3\u0001\u001a\u00020_8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a2\u0001\u0010\u00a0\u0001R\u0019\u0010\u00a6\u0001\u001a\u00020J8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a4\u0001\u0010\u00a5\u0001R\u0018\u0010\u00a8\u0001\u001a\u00020(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00a7\u0001\u0010|R\u0018\u0010\u00aa\u0001\u001a\u00020(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00a9\u0001\u0010|R\u0018\u0010\u00ac\u0001\u001a\u00020(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00ab\u0001\u0010|R\u001a\u0010Z\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ad\u0001\u0010\u00ae\u0001R\u0017\u0010\u00af\u0001\u001a\u00020(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008I\u0010|R\u0019\u0010\u00b1\u0001\u001a\u00020_8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b0\u0001\u0010\u00a0\u0001R\u0018\u0010\u00b2\u0001\u001a\u00020J8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008G\u0010\u00a5\u0001R#\u0010\u00b8\u0001\u001a\u0005\u0018\u00010\u00b3\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00b4\u0001\u0010\u00b5\u0001\u001a\u0006\u0008\u00b6\u0001\u0010\u00b7\u0001R*\u0010\u00bd\u0001\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0006\u0008\u00b9\u0001\u0010\u009b\u0001\u001a\u0006\u0008\u00ba\u0001\u0010\u00bb\u0001\"\u0005\u0008\u00bc\u0001\u0010\u0013R,\u0010\u00c5\u0001\u001a\u0005\u0018\u00010\u00be\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00bf\u0001\u0010\u00c0\u0001\u001a\u0006\u0008\u00c1\u0001\u0010\u00c2\u0001\"\u0006\u0008\u00c3\u0001\u0010\u00c4\u0001R\u001c\u0010\u00c9\u0001\u001a\u0005\u0018\u00010\u00c6\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c7\u0001\u0010\u00c8\u0001R\u001e\u0010\u00cd\u0001\u001a\t\u0012\u0004\u0012\u00020\u00100\u00ca\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00cb\u0001\u0010\u00cc\u0001R\u0019\u0010 \u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008g\u0010\u009b\u0001R\u001b\u0010\u00cf\u0001\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ce\u0001\u0010\u009b\u0001R\u001b\u0010\u00d1\u0001\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d0\u0001\u0010\u009b\u0001R\u001b\u0010\u00d3\u0001\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d2\u0001\u0010\u009b\u0001R\u001b\u0010\u00d5\u0001\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d4\u0001\u0010\u009b\u0001R\u001a\u0010\u00d6\u0001\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008]\u0010\u009b\u0001R\u001b\u0010\u00d8\u0001\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d7\u0001\u0010\u009b\u0001R\u001a\u0010\u00d9\u0001\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008k\u0010\u009b\u0001R#\u0010\u00dd\u0001\u001a\u000c\u0012\u0005\u0012\u00030\u00db\u0001\u0018\u00010\u00da\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a0\u0001\u0010\u00dc\u0001R\u0018\u0010\u00de\u0001\u001a\u00020(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00a5\u0001\u0010|R\u001b\u0010\u00e1\u0001\u001a\u0004\u0018\u00010X8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00df\u0001\u0010\u00e0\u0001R\u0019\u0010\u00e3\u0001\u001a\u00020J8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00e2\u0001\u0010\u00a5\u0001R3\u0010\u00e6\u0001\u001a\u001c\u0012\u0006\u0012\u0004\u0018\u00010\u0010\u0012\u0006\u0012\u0004\u0018\u00010(\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0018\u0001048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00e4\u0001\u0010\u00e5\u0001R\u001c\u0010\u00ea\u0001\u001a\u0005\u0018\u00010\u00e7\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00e8\u0001\u0010\u00e9\u0001\u00a8\u0006\u00ec\u0001"
    }
    d2 = {
        "Lcom/transsion/postdetail/ui/fragment/CommentFragment;",
        "Lcom/transsion/baseui/fragment/BaseFragment;",
        "Lwn/h;",
        "Lcom/transsion/postdetail/comment/i0;",
        "Lcom/transsion/postdetail/comment/g0;",
        "Lio/a;",
        "<init>",
        "()V",
        "",
        "initAdapter",
        "initExposureHelper",
        "I0",
        "initViewModel",
        "j1",
        "loadData",
        "W0",
        "",
        "txt",
        "S0",
        "(Ljava/lang/String;)V",
        "showEmpty",
        "f1",
        "Lcom/transsion/postdetail/bean/CommentListBean;",
        "data",
        "B0",
        "(Lcom/transsion/postdetail/bean/CommentListBean;)V",
        "F0",
        "postId",
        "a1",
        "(Ljava/lang/String;Lcom/transsion/postdetail/bean/CommentListBean;)V",
        "k1",
        "R0",
        "commentId",
        "i1",
        "Ljava/util/ArrayList;",
        "Lcom/transsion/moviedetailapi/bean/CommentBean;",
        "Lkotlin/collections/ArrayList;",
        "list",
        "D0",
        "(Ljava/util/ArrayList;)V",
        "",
        "checkLogin",
        "()Z",
        "h1",
        "moduleName",
        "X0",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "Ljo/b;",
        "operationMenu",
        "C0",
        "(Ljo/b;)V",
        "path",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "bucket",
        "callback",
        "l1",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "G0",
        "(Landroid/view/LayoutInflater;)Lwn/h;",
        "Landroid/view/View;",
        "view",
        "initView",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "u",
        "(Landroid/view/View;)V",
        "s",
        "",
        "commentCount",
        "updateCommentCount",
        "(J)V",
        "Lkotlin/Function1;",
        "i",
        "(Lkotlin/jvm/functions/Function1;)V",
        "lazyLoadData",
        "item",
        "d1",
        "(Lcom/transsion/moviedetailapi/bean/CommentBean;)Z",
        "startLoading",
        "hideLoading",
        "E0",
        "Landroid/text/Editable;",
        "text",
        "replyItem",
        "T",
        "(Landroid/text/Editable;Lcom/transsion/moviedetailapi/bean/CommentBean;)V",
        "F",
        "",
        "",
        "start",
        "before",
        "count",
        "onTextChanged",
        "(Ljava/lang/CharSequence;III)V",
        "R",
        "(Lcom/transsion/moviedetailapi/bean/CommentBean;)V",
        "A",
        "likeStatu",
        "Z0",
        "(Lkotlin/jvm/functions/Function2;)V",
        "H",
        "Q",
        "Lun/a;",
        "info",
        "f",
        "(Lun/a;I)V",
        "c1",
        "onPause",
        "hidden",
        "onHiddenChanged",
        "(Z)V",
        "onDestroyView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "a",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "mCommentList",
        "b",
        "Z",
        "mNeedUpdate",
        "Lcom/transsion/postdetail/comment/n;",
        "c",
        "Lcom/transsion/postdetail/comment/n;",
        "mCommentExpandAdapter",
        "Lcom/transsion/postdetail/comment/m;",
        "d",
        "Lcom/transsion/postdetail/comment/m;",
        "getMCommentEditInputViewHelper",
        "()Lcom/transsion/postdetail/comment/m;",
        "setMCommentEditInputViewHelper",
        "(Lcom/transsion/postdetail/comment/m;)V",
        "mCommentEditInputViewHelper",
        "Lcom/transsion/postdetail/util/l;",
        "e",
        "Lcom/transsion/postdetail/util/l;",
        "mSoftKeyBoardListener",
        "Lcom/transsion/postdetail/comment/g;",
        "Lcom/transsion/postdetail/comment/g;",
        "mCommentEditInputDialog",
        "g",
        "Lcom/transsion/postdetail/bean/CommentListBean;",
        "mMsgData",
        "Lcom/transsion/postdetail/viewmodel/CommentViewModel;",
        "h",
        "Lcom/transsion/postdetail/viewmodel/CommentViewModel;",
        "mCommentViewModel",
        "Lkotlin/jvm/functions/Function1;",
        "loadResultCallback",
        "j",
        "Ljava/lang/String;",
        "topicId",
        "k",
        "topicType",
        "l",
        "I",
        "page",
        "m",
        "mPerPage",
        "n",
        "J",
        "mCommentCount",
        "o",
        "mShowDownload",
        "p",
        "mFromDetail",
        "q",
        "isNeedCloseInput",
        "r",
        "Lcom/transsion/moviedetailapi/bean/CommentBean;",
        "replyLoading",
        "t",
        "showCommentCount",
        "lastCreatedTime",
        "Lqx/a;",
        "v",
        "Lkotlin/Lazy;",
        "getLoginApi",
        "()Lqx/a;",
        "loginApi",
        "w",
        "getImagePath",
        "()Ljava/lang/String;",
        "setImagePath",
        "imagePath",
        "Lcom/transsion/postdetail/ui/fragment/CommentFragment$b;",
        "x",
        "Lcom/transsion/postdetail/ui/fragment/CommentFragment$b;",
        "getOnCommentCountChangedListener",
        "()Lcom/transsion/postdetail/ui/fragment/CommentFragment$b;",
        "b1",
        "(Lcom/transsion/postdetail/ui/fragment/CommentFragment$b;)V",
        "onCommentCountChangedListener",
        "Lbj/b;",
        "y",
        "Lbj/b;",
        "exposureHelper",
        "",
        "z",
        "Ljava/util/Set;",
        "exposedCommentIds",
        "B",
        "pageFrom",
        "C",
        "trackId",
        "D",
        "previousTrackId",
        "E",
        "previousPageVideoId",
        "ugcVideoId",
        "G",
        "pageName",
        "collectionId",
        "Landroidx/activity/result/b;",
        "Landroid/content/Intent;",
        "Landroidx/activity/result/b;",
        "loginLaunch",
        "isNeedShowLoginActivity",
        "K",
        "Landroid/text/Editable;",
        "mText",
        "L",
        "mPostClickTime",
        "M",
        "Lkotlin/jvm/functions/Function2;",
        "mCommentCallback",
        "Lcom/transsion/postdetail/comment/CommentDeleteDialogFragment;",
        "N",
        "Lcom/transsion/postdetail/comment/CommentDeleteDialogFragment;",
        "mCommentDeleteDialog",
        "O",
        "PostDetail_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final O:Lcom/transsion/postdetail/ui/fragment/CommentFragment$a;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Landroidx/activity/result/b;

.field private J:Z

.field private K:Landroid/text/Editable;

.field private L:J

.field private M:Lkotlin/jvm/functions/Function2;

.field private N:Lcom/transsion/postdetail/comment/CommentDeleteDialogFragment;

.field private a:Landroidx/recyclerview/widget/RecyclerView;

.field private b:Z

.field private c:Lcom/transsion/postdetail/comment/n;

.field private d:Lcom/transsion/postdetail/comment/m;

.field private e:Lcom/transsion/postdetail/util/l;

.field private f:Lcom/transsion/postdetail/comment/g;

.field private g:Lcom/transsion/postdetail/bean/CommentListBean;

.field private h:Lcom/transsion/postdetail/viewmodel/CommentViewModel;

.field private i:Lkotlin/jvm/functions/Function1;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:I

.field private n:J

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Lcom/transsion/moviedetailapi/bean/CommentBean;

.field private s:Z

.field private t:I

.field private u:J

.field private final v:Lkotlin/Lazy;

.field private w:Ljava/lang/String;

.field private x:Lcom/transsion/postdetail/ui/fragment/CommentFragment$b;

.field private y:Lbj/b;

.field private final z:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->O:Lcom/transsion/postdetail/ui/fragment/CommentFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/fragment/BaseFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/transsion/postdetailapi/CommentTopicType;->POST:Lcom/transsion/postdetailapi/CommentTopicType;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/transsion/postdetailapi/CommentTopicType;->getValue()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->k:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->l:I

    .line 14
    .line 15
    const/16 v1, 0xa

    .line 16
    .line 17
    iput v1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->m:I

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->o:Z

    .line 20
    .line 21
    new-instance v0, Lcom/transsion/postdetail/ui/fragment/a;

    .line 22
    .line 23
    invoke-direct {v0}, Lcom/transsion/postdetail/ui/fragment/a;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->v:Lkotlin/Lazy;

    .line 31
    .line 32
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->z:Ljava/util/Set;

    .line 38
    .line 39
    return-void
.end method

.method public static final synthetic A0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->X0(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final B0(Lcom/transsion/postdetail/bean/CommentListBean;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->g:Lcom/transsion/postdetail/bean/CommentListBean;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->k1(Lcom/transsion/postdetail/bean/CommentListBean;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/transsion/postdetail/bean/CommentListBean;->getPager()Lcom/transsion/postdetail/bean/Pager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/transsion/postdetail/bean/Pager;->getPerPage()Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/16 v0, 0xa

    .line 26
    .line 27
    :goto_0
    iput v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->m:I

    .line 28
    .line 29
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->c:Lcom/transsion/postdetail/comment/n;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Lt6/f;->r()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2}, Lt6/f;->s()V

    .line 49
    .line 50
    .line 51
    :cond_1
    if-eqz p1, :cond_2

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/transsion/postdetail/bean/CommentListBean;->getPager()Lcom/transsion/postdetail/bean/Pager;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/transsion/postdetail/bean/Pager;->getHasMore()Ljava/lang/Boolean;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 64
    .line 65
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    move v2, v1

    .line 71
    :goto_1
    if-eqz v2, :cond_3

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0, v1}, Lt6/f;->t(Z)V

    .line 78
    .line 79
    .line 80
    :cond_3
    const/4 v0, 0x1

    .line 81
    if-eqz p1, :cond_5

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/transsion/postdetail/bean/CommentListBean;->getCommentList()Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    if-eqz p1, :cond_5

    .line 88
    .line 89
    check-cast p1, Ljava/lang/Iterable;

    .line 90
    .line 91
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_5

    .line 100
    .line 101
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    check-cast v2, Lcom/transsion/moviedetailapi/bean/CommentBean;

    .line 106
    .line 107
    iget v3, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->t:I

    .line 108
    .line 109
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getSubCommentCnt()I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    add-int/2addr v4, v0

    .line 114
    add-int/2addr v3, v4

    .line 115
    iput v3, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->t:I

    .line 116
    .line 117
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getCreatedAt()Ljava/lang/Long;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    if-eqz v2, :cond_4

    .line 122
    .line 123
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 124
    .line 125
    .line 126
    move-result-wide v2

    .line 127
    goto :goto_3

    .line 128
    :cond_4
    const-wide/16 v2, 0x0

    .line 129
    .line 130
    :goto_3
    iput-wide v2, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->u:J

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_5
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->c:Lcom/transsion/postdetail/comment/n;

    .line 134
    .line 135
    if-eqz p1, :cond_6

    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    if-nez p1, :cond_6

    .line 142
    .line 143
    move v1, v0

    .line 144
    :cond_6
    if-eqz v1, :cond_7

    .line 145
    .line 146
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->showEmpty()V

    .line 147
    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_7
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->F0()V

    .line 151
    .line 152
    .line 153
    :goto_4
    return-void
.end method

.method private final C0(Ljo/b;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljo/b;->h()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/transsion/publish/api/PhotoEntity;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/transsion/publish/api/PhotoEntity;->getLocalPath()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iput-object v1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->w:Ljava/lang/String;

    .line 26
    .line 27
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lcom/transsion/publish/api/PhotoEntity;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->f:Lcom/transsion/postdetail/comment/g;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/transsion/postdetail/comment/g;->h()Lcom/transsion/postdetail/comment/m;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/comment/m;->w(Lcom/transsion/publish/api/PhotoEntity;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void
.end method

.method private final D0(Ljava/util/ArrayList;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->g:Lcom/transsion/postdetail/bean/CommentListBean;

    .line 4
    .line 5
    if-eqz v1, :cond_17

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/transsion/postdetail/bean/CommentListBean;->getCommentList()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    check-cast v1, Ljava/util/Collection;

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x1

    .line 22
    if-ne v1, v2, :cond_0

    .line 23
    .line 24
    goto/16 :goto_b

    .line 25
    .line 26
    :cond_0
    if-eqz p1, :cond_17

    .line 27
    .line 28
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    goto/16 :goto_b

    .line 35
    .line 36
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const/4 v2, 0x0

    .line 41
    move v3, v2

    .line 42
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_17

    .line 47
    .line 48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    add-int/lit8 v5, v3, 0x1

    .line 53
    .line 54
    if-gez v3, :cond_2

    .line 55
    .line 56
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 57
    .line 58
    .line 59
    :cond_2
    check-cast v4, Lcom/transsion/moviedetailapi/bean/CommentBean;

    .line 60
    .line 61
    iget-object v3, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->g:Lcom/transsion/postdetail/bean/CommentListBean;

    .line 62
    .line 63
    const/4 v6, -0x1

    .line 64
    const/4 v7, 0x0

    .line 65
    if-eqz v3, :cond_9

    .line 66
    .line 67
    invoke-virtual {v3}, Lcom/transsion/postdetail/bean/CommentListBean;->getCommentList()Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    if-eqz v3, :cond_9

    .line 72
    .line 73
    check-cast v3, Ljava/lang/Iterable;

    .line 74
    .line 75
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    move v10, v2

    .line 80
    move v8, v6

    .line 81
    move v9, v8

    .line 82
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v11

    .line 86
    if-eqz v11, :cond_a

    .line 87
    .line 88
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v11

    .line 92
    add-int/lit8 v12, v10, 0x1

    .line 93
    .line 94
    if-gez v10, :cond_3

    .line 95
    .line 96
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 97
    .line 98
    .line 99
    :cond_3
    check-cast v11, Lcom/transsion/moviedetailapi/bean/CommentBean;

    .line 100
    .line 101
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getCommentId()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v13

    .line 105
    invoke-virtual {v11}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getCommentId()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v14

    .line 109
    invoke-static {v14, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 110
    .line 111
    .line 112
    move-result v14

    .line 113
    if-eqz v14, :cond_4

    .line 114
    .line 115
    move v8, v10

    .line 116
    goto :goto_4

    .line 117
    :cond_4
    invoke-virtual {v11}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getSubComments()Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object v11

    .line 121
    if-eqz v11, :cond_8

    .line 122
    .line 123
    check-cast v11, Ljava/lang/Iterable;

    .line 124
    .line 125
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 126
    .line 127
    .line 128
    move-result-object v11

    .line 129
    move v14, v2

    .line 130
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v15

    .line 134
    if-eqz v15, :cond_8

    .line 135
    .line 136
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v15

    .line 140
    add-int/lit8 v16, v14, 0x1

    .line 141
    .line 142
    if-gez v14, :cond_5

    .line 143
    .line 144
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 145
    .line 146
    .line 147
    :cond_5
    check-cast v15, Lcom/transsion/moviedetailapi/bean/CommentBean;

    .line 148
    .line 149
    if-eqz v15, :cond_6

    .line 150
    .line 151
    invoke-virtual {v15}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getCommentId()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v15

    .line 155
    goto :goto_3

    .line 156
    :cond_6
    move-object v15, v7

    .line 157
    :goto_3
    invoke-static {v13, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 158
    .line 159
    .line 160
    move-result v15

    .line 161
    if-eqz v15, :cond_7

    .line 162
    .line 163
    move v8, v10

    .line 164
    move v9, v14

    .line 165
    :cond_7
    move/from16 v14, v16

    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_8
    :goto_4
    move v10, v12

    .line 169
    goto :goto_1

    .line 170
    :cond_9
    move v8, v6

    .line 171
    move v9, v8

    .line 172
    :cond_a
    if-ne v8, v6, :cond_b

    .line 173
    .line 174
    if-eq v9, v6, :cond_16

    .line 175
    .line 176
    :cond_b
    if-eq v8, v6, :cond_10

    .line 177
    .line 178
    if-ne v9, v6, :cond_10

    .line 179
    .line 180
    iget-object v3, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->g:Lcom/transsion/postdetail/bean/CommentListBean;

    .line 181
    .line 182
    if-eqz v3, :cond_c

    .line 183
    .line 184
    invoke-virtual {v3}, Lcom/transsion/postdetail/bean/CommentListBean;->getCommentList()Ljava/util/List;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    if-eqz v3, :cond_c

    .line 189
    .line 190
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    goto :goto_5

    .line 199
    :cond_c
    move-object v3, v7

    .line 200
    :goto_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    if-lt v3, v8, :cond_f

    .line 208
    .line 209
    iget-object v3, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->g:Lcom/transsion/postdetail/bean/CommentListBean;

    .line 210
    .line 211
    if-eqz v3, :cond_d

    .line 212
    .line 213
    invoke-virtual {v3}, Lcom/transsion/postdetail/bean/CommentListBean;->getCommentList()Ljava/util/List;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    if-eqz v3, :cond_d

    .line 218
    .line 219
    invoke-interface {v3, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    check-cast v3, Lcom/transsion/moviedetailapi/bean/CommentBean;

    .line 224
    .line 225
    goto :goto_6

    .line 226
    :cond_d
    move-object v3, v7

    .line 227
    :goto_6
    sget-object v8, Lwf/a;->a:Lwf/a$a;

    .line 228
    .line 229
    if-eqz v3, :cond_e

    .line 230
    .line 231
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getContent()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v7

    .line 235
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .line 239
    .line 240
    const-string v4, "remove parentsMsg:"

    .line 241
    .line 242
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v10

    .line 252
    const/4 v12, 0x4

    .line 253
    const/4 v13, 0x0

    .line 254
    const-string v9, "deleteComment list:"

    .line 255
    .line 256
    const/4 v11, 0x0

    .line 257
    invoke-static/range {v8 .. v13}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    goto/16 :goto_a

    .line 261
    .line 262
    :cond_f
    sget-object v14, Lwf/a;->a:Lwf/a$a;

    .line 263
    .line 264
    const/16 v18, 0x4

    .line 265
    .line 266
    const/16 v19, 0x0

    .line 267
    .line 268
    const-string v15, "deleteComment list:"

    .line 269
    .line 270
    const-string v16, "remove parentsMsg: index "

    .line 271
    .line 272
    const/16 v17, 0x0

    .line 273
    .line 274
    invoke-static/range {v14 .. v19}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    goto/16 :goto_a

    .line 278
    .line 279
    :cond_10
    iget-object v3, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->g:Lcom/transsion/postdetail/bean/CommentListBean;

    .line 280
    .line 281
    if-eqz v3, :cond_11

    .line 282
    .line 283
    invoke-virtual {v3}, Lcom/transsion/postdetail/bean/CommentListBean;->getCommentList()Ljava/util/List;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    if-eqz v3, :cond_11

    .line 288
    .line 289
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 290
    .line 291
    .line 292
    move-result v3

    .line 293
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    goto :goto_7

    .line 298
    :cond_11
    move-object v3, v7

    .line 299
    :goto_7
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 303
    .line 304
    .line 305
    move-result v3

    .line 306
    if-lt v3, v8, :cond_15

    .line 307
    .line 308
    iget-object v3, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->g:Lcom/transsion/postdetail/bean/CommentListBean;

    .line 309
    .line 310
    if-eqz v3, :cond_12

    .line 311
    .line 312
    invoke-virtual {v3}, Lcom/transsion/postdetail/bean/CommentListBean;->getCommentList()Ljava/util/List;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    if-eqz v3, :cond_12

    .line 317
    .line 318
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v3

    .line 322
    check-cast v3, Lcom/transsion/moviedetailapi/bean/CommentBean;

    .line 323
    .line 324
    goto :goto_8

    .line 325
    :cond_12
    move-object v3, v7

    .line 326
    :goto_8
    if-eqz v3, :cond_13

    .line 327
    .line 328
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getSubComments()Ljava/util/List;

    .line 329
    .line 330
    .line 331
    move-result-object v3

    .line 332
    if-eqz v3, :cond_13

    .line 333
    .line 334
    invoke-interface {v3, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v3

    .line 338
    check-cast v3, Lcom/transsion/moviedetailapi/bean/CommentBean;

    .line 339
    .line 340
    goto :goto_9

    .line 341
    :cond_13
    move-object v3, v7

    .line 342
    :goto_9
    sget-object v8, Lwf/a;->a:Lwf/a$a;

    .line 343
    .line 344
    if-eqz v3, :cond_14

    .line 345
    .line 346
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getContent()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v7

    .line 350
    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 351
    .line 352
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    .line 354
    .line 355
    const-string v4, "remove childMsg:"

    .line 356
    .line 357
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v10

    .line 367
    const/4 v12, 0x4

    .line 368
    const/4 v13, 0x0

    .line 369
    const-string v9, "deleteComment list:"

    .line 370
    .line 371
    const/4 v11, 0x0

    .line 372
    invoke-static/range {v8 .. v13}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 373
    .line 374
    .line 375
    goto :goto_a

    .line 376
    :cond_15
    sget-object v14, Lwf/a;->a:Lwf/a$a;

    .line 377
    .line 378
    const/16 v18, 0x4

    .line 379
    .line 380
    const/16 v19, 0x0

    .line 381
    .line 382
    const-string v15, "deleteComment list:"

    .line 383
    .line 384
    const-string v16, "remove childMsg: index "

    .line 385
    .line 386
    const/16 v17, 0x0

    .line 387
    .line 388
    invoke-static/range {v14 .. v19}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 389
    .line 390
    .line 391
    :cond_16
    :goto_a
    move v3, v5

    .line 392
    goto/16 :goto_0

    .line 393
    .line 394
    :cond_17
    :goto_b
    return-void
.end method

.method private final F0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lwn/h;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lwn/h;->d:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private static final H0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->R0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final I0()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment$d;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment$d;-><init>(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/transsion/baseui/fragment/BaseFragment;->setNetListener(Lyg/m;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final J0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 7

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 v0, -0x1

    .line 11
    if-ne p1, v0, :cond_1

    .line 12
    .line 13
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 14
    .line 15
    const/4 v5, 0x4

    .line 16
    const/4 v6, 0x0

    .line 17
    const-string v2, "loginStatus"

    .line 18
    .line 19
    const-string v3, "\u767b\u5f55\u6210\u529f"

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    sget-object p1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->getLoginApi()Lqx/a;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    invoke-interface {p0}, Lqx/a;->b()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 p0, 0x0

    .line 39
    :goto_0
    invoke-virtual {p1, p0}, Lcom/tn/lib/widget/toast/core/h;->l(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 44
    .line 45
    const/4 v4, 0x4

    .line 46
    const/4 v5, 0x0

    .line 47
    const-string v1, "loginStatus"

    .line 48
    .line 49
    const-string v2, "\u767b\u5f55\u5931\u8d25\u6216\u8005\u53d6\u6d88"

    .line 50
    .line 51
    const/4 v3, 0x0

    .line 52
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :goto_1
    return-void
.end method

.method private static final K0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Lun/b;)Lkotlin/Unit;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->hideLoading()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->g:Lcom/transsion/postdetail/bean/CommentListBean;

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->k1(Lcom/transsion/postdetail/bean/CommentListBean;)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->g:Lcom/transsion/postdetail/bean/CommentListBean;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    invoke-direct {p0, v0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->k1(Lcom/transsion/postdetail/bean/CommentListBean;)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_1
    const/4 v1, 0x0

    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    invoke-virtual {p1}, Lun/b;->b()Lcom/transsion/postdetail/bean/CommentListBean;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/transsion/postdetail/bean/CommentListBean;->getPager()Lcom/transsion/postdetail/bean/Pager;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    move-object v2, v1

    .line 39
    :goto_0
    invoke-virtual {v0, v2}, Lcom/transsion/postdetail/bean/CommentListBean;->setPager(Lcom/transsion/postdetail/bean/Pager;)V

    .line 40
    .line 41
    .line 42
    :cond_3
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->g:Lcom/transsion/postdetail/bean/CommentListBean;

    .line 43
    .line 44
    if-eqz v0, :cond_7

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/transsion/postdetail/bean/CommentListBean;->getCommentList()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_7

    .line 51
    .line 52
    check-cast v0, Ljava/lang/Iterable;

    .line 53
    .line 54
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_7

    .line 63
    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Lcom/transsion/moviedetailapi/bean/CommentBean;

    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getCommentId()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {p1}, Lun/b;->a()Lun/a;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-virtual {v4}, Lun/a;->a()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_4

    .line 87
    .line 88
    invoke-virtual {p1}, Lun/b;->b()Lcom/transsion/postdetail/bean/CommentListBean;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    if-eqz p1, :cond_7

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/transsion/postdetail/bean/CommentListBean;->getCommentList()Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    if-eqz p1, :cond_7

    .line 99
    .line 100
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getSubComments()Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    if-eqz v0, :cond_5

    .line 105
    .line 106
    check-cast v0, Ljava/util/Collection;

    .line 107
    .line 108
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    :cond_5
    if-eqz v1, :cond_6

    .line 113
    .line 114
    check-cast p1, Ljava/util/Collection;

    .line 115
    .line 116
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 117
    .line 118
    .line 119
    :cond_6
    invoke-virtual {v2, v1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->setSubComments(Ljava/util/List;)V

    .line 120
    .line 121
    .line 122
    :cond_7
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->g:Lcom/transsion/postdetail/bean/CommentListBean;

    .line 123
    .line 124
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->k1(Lcom/transsion/postdetail/bean/CommentListBean;)V

    .line 125
    .line 126
    .line 127
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 128
    .line 129
    return-object p0
.end method

.method private static final L0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Lcom/transsion/moviedetailapi/bean/CommentBean;)Lkotlin/Unit;
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->s:Z

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->f:Lcom/transsion/postdetail/comment/g;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/transsion/postdetail/comment/g;->f()V

    .line 10
    .line 11
    .line 12
    :cond_0
    if-nez p1, :cond_1

    .line 13
    .line 14
    sget-object p0, Lfh/b;->a:Lfh/b$a;

    .line 15
    .line 16
    sget p1, Lcom/transsion/postdetail/R$string;->comment_failed:I

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lfh/b$a;->d(I)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_1
    sget-object v2, Lfh/b;->a:Lfh/b$a;

    .line 25
    .line 26
    sget v3, Lcom/transsion/postdetail/R$string;->comment_success:I

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Lfh/b$a;->d(I)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->f:Lcom/transsion/postdetail/comment/g;

    .line 32
    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/transsion/postdetail/comment/g;->h()Lcom/transsion/postdetail/comment/m;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/transsion/postdetail/comment/m;->h()Landroid/text/Editable;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    invoke-interface {v2}, Landroid/text/Editable;->clear()V

    .line 48
    .line 49
    .line 50
    :cond_2
    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->f:Lcom/transsion/postdetail/comment/g;

    .line 51
    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/transsion/postdetail/comment/g;->h()Lcom/transsion/postdetail/comment/m;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/transsion/postdetail/comment/m;->u()V

    .line 61
    .line 62
    .line 63
    :cond_3
    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->f:Lcom/transsion/postdetail/comment/g;

    .line 64
    .line 65
    if-eqz v2, :cond_4

    .line 66
    .line 67
    invoke-virtual {v2}, Landroidx/appcompat/app/w;->dismiss()V

    .line 68
    .line 69
    .line 70
    :cond_4
    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->r:Lcom/transsion/moviedetailapi/bean/CommentBean;

    .line 71
    .line 72
    const-wide/16 v3, 0x1

    .line 73
    .line 74
    if-nez v2, :cond_9

    .line 75
    .line 76
    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->g:Lcom/transsion/postdetail/bean/CommentListBean;

    .line 77
    .line 78
    if-nez v2, :cond_5

    .line 79
    .line 80
    new-instance v2, Lcom/transsion/postdetail/bean/CommentListBean;

    .line 81
    .line 82
    new-array v3, v0, [Lcom/transsion/moviedetailapi/bean/CommentBean;

    .line 83
    .line 84
    aput-object p1, v3, v1

    .line 85
    .line 86
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    new-instance v9, Lcom/transsion/postdetail/bean/Pager;

    .line 91
    .line 92
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 93
    .line 94
    const/16 v3, 0xa

    .line 95
    .line 96
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    const-string v5, "2"

    .line 105
    .line 106
    const-string v6, "1"

    .line 107
    .line 108
    move-object v3, v9

    .line 109
    invoke-direct/range {v3 .. v8}, Lcom/transsion/postdetail/bean/Pager;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 110
    .line 111
    .line 112
    invoke-direct {v2, v1, v9}, Lcom/transsion/postdetail/bean/CommentListBean;-><init>(Ljava/util/List;Lcom/transsion/postdetail/bean/Pager;)V

    .line 113
    .line 114
    .line 115
    iput-object v2, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->g:Lcom/transsion/postdetail/bean/CommentListBean;

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_5
    if-eqz v2, :cond_8

    .line 119
    .line 120
    if-eqz v2, :cond_6

    .line 121
    .line 122
    invoke-virtual {v2}, Lcom/transsion/postdetail/bean/CommentListBean;->getCommentList()Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    if-nez v5, :cond_7

    .line 127
    .line 128
    :cond_6
    new-instance v5, Ljava/util/ArrayList;

    .line 129
    .line 130
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .line 132
    .line 133
    :cond_7
    invoke-interface {v5, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2, v5}, Lcom/transsion/postdetail/bean/CommentListBean;->setCommentList(Ljava/util/List;)V

    .line 137
    .line 138
    .line 139
    :cond_8
    iget-wide v1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->n:J

    .line 140
    .line 141
    add-long/2addr v1, v3

    .line 142
    iput-wide v1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->n:J

    .line 143
    .line 144
    :goto_0
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->j1()V

    .line 145
    .line 146
    .line 147
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->g:Lcom/transsion/postdetail/bean/CommentListBean;

    .line 148
    .line 149
    invoke-direct {p0, v1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->k1(Lcom/transsion/postdetail/bean/CommentListBean;)V

    .line 150
    .line 151
    .line 152
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 153
    .line 154
    if-eqz v1, :cond_e

    .line 155
    .line 156
    new-instance v2, Lcom/transsion/postdetail/ui/fragment/c;

    .line 157
    .line 158
    invoke-direct {v2, p0}, Lcom/transsion/postdetail/ui/fragment/c;-><init>(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 162
    .line 163
    .line 164
    goto/16 :goto_2

    .line 165
    .line 166
    :cond_9
    iget-wide v5, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->n:J

    .line 167
    .line 168
    add-long/2addr v5, v3

    .line 169
    iput-wide v5, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->n:J

    .line 170
    .line 171
    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->g:Lcom/transsion/postdetail/bean/CommentListBean;

    .line 172
    .line 173
    if-eqz v2, :cond_e

    .line 174
    .line 175
    invoke-virtual {v2}, Lcom/transsion/postdetail/bean/CommentListBean;->getCommentList()Ljava/util/List;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    if-eqz v2, :cond_e

    .line 180
    .line 181
    check-cast v2, Ljava/lang/Iterable;

    .line 182
    .line 183
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    if-eqz v3, :cond_e

    .line 192
    .line 193
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    check-cast v3, Lcom/transsion/moviedetailapi/bean/CommentBean;

    .line 198
    .line 199
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getCommentId()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getRootCommentId()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v4

    .line 211
    if-eqz v4, :cond_a

    .line 212
    .line 213
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getSubComments()Ljava/util/List;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    if-eqz v2, :cond_b

    .line 218
    .line 219
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    :cond_b
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getSubCommentCnt()I

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    add-int/2addr v2, v0

    .line 227
    invoke-virtual {v3, v2}, Lcom/transsion/moviedetailapi/bean/CommentBean;->setSubCommentCnt(I)V

    .line 228
    .line 229
    .line 230
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->j1()V

    .line 231
    .line 232
    .line 233
    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->g:Lcom/transsion/postdetail/bean/CommentListBean;

    .line 234
    .line 235
    invoke-direct {p0, v2}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->k1(Lcom/transsion/postdetail/bean/CommentListBean;)V

    .line 236
    .line 237
    .line 238
    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->c:Lcom/transsion/postdetail/comment/n;

    .line 239
    .line 240
    if-eqz v2, :cond_e

    .line 241
    .line 242
    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    if-eqz v2, :cond_e

    .line 247
    .line 248
    check-cast v2, Ljava/lang/Iterable;

    .line 249
    .line 250
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 255
    .line 256
    .line 257
    move-result v3

    .line 258
    if-eqz v3, :cond_e

    .line 259
    .line 260
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    add-int/lit8 v4, v1, 0x1

    .line 265
    .line 266
    if-gez v1, :cond_c

    .line 267
    .line 268
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 269
    .line 270
    .line 271
    :cond_c
    check-cast v3, Lp6/a;

    .line 272
    .line 273
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    if-eqz v3, :cond_d

    .line 278
    .line 279
    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 280
    .line 281
    if-eqz v2, :cond_e

    .line 282
    .line 283
    new-instance v3, Lcom/transsion/postdetail/ui/fragment/d;

    .line 284
    .line 285
    invoke-direct {v3, p0, v1}, Lcom/transsion/postdetail/ui/fragment/d;-><init>(Lcom/transsion/postdetail/ui/fragment/CommentFragment;I)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 289
    .line 290
    .line 291
    goto :goto_2

    .line 292
    :cond_d
    move v1, v4

    .line 293
    goto :goto_1

    .line 294
    :cond_e
    :goto_2
    sget-object v1, Lgx/b;->a:Lgx/b$a;

    .line 295
    .line 296
    invoke-virtual {v1}, Lgx/b$a;->a()Lgx/b;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getCommentId()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    if-nez p1, :cond_f

    .line 305
    .line 306
    const-string p1, ""

    .line 307
    .line 308
    :cond_f
    iget-wide v2, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->n:J

    .line 309
    .line 310
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->j:Ljava/lang/String;

    .line 315
    .line 316
    invoke-virtual {v1, v0, p1, v2, p0}, Lgx/b;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 320
    .line 321
    return-object p0
.end method

.method private static final M0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$m;->scrollToPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    :catch_0
    :cond_0
    return-void
.end method

.method private static final N0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;I)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$m;->scrollToPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    :catch_0
    :cond_0
    return-void
.end method

.method private static final O0(Lcom/transsion/postdetail/bean/CommentLikeBean;)Lkotlin/Unit;
    .locals 0

    .line 1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final P0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Lcom/tn/lib/net/bean/BaseDto;)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/String;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->E0(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method private static final Q0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Lcom/transsion/postdetail/bean/CommentListBean;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->hideLoading()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_3

    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->c:Lcom/transsion/postdetail/comment/n;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_3

    .line 17
    .line 18
    :cond_0
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 19
    .line 20
    invoke-virtual {v0}, Lyg/l;->e()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_3

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->f1()V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->c:Lcom/transsion/postdetail/comment/n;

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    invoke-virtual {p1}, Lt6/f;->s()V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->i:Lkotlin/jvm/functions/Function1;

    .line 43
    .line 44
    if-eqz p0, :cond_2

    .line 45
    .line 46
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 47
    .line 48
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 52
    .line 53
    return-object p0

    .line 54
    :cond_3
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->j:Ljava/lang/String;

    .line 55
    .line 56
    invoke-direct {p0, v0, p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->a1(Ljava/lang/String;Lcom/transsion/postdetail/bean/CommentListBean;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->B0(Lcom/transsion/postdetail/bean/CommentListBean;)V

    .line 60
    .line 61
    .line 62
    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->i:Lkotlin/jvm/functions/Function1;

    .line 63
    .line 64
    if-eqz p0, :cond_4

    .line 65
    .line 66
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 67
    .line 68
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 72
    .line 73
    return-object p0
.end method

.method private final R0()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->h:Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->j:Ljava/lang/String;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const-string v1, ""

    .line 10
    .line 11
    :cond_0
    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->k:Ljava/lang/String;

    .line 12
    .line 13
    iget v3, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->l:I

    .line 14
    .line 15
    add-int/lit8 v3, v3, 0x1

    .line 16
    .line 17
    iput v3, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->l:I

    .line 18
    .line 19
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    iget v5, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->m:I

    .line 24
    .line 25
    const-string v6, ""

    .line 26
    .line 27
    const-string v3, "0"

    .line 28
    .line 29
    invoke-virtual/range {v0 .. v6}, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method private final S0(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method private static final T0()Lqx/a;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-class v1, Lqx/a;

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lqx/a;

    .line 11
    .line 12
    return-object v0
.end method

.method private static final U0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Ljo/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljo/b;->e()Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->C0(Ljo/b;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method

.method private static final V0(Lcom/transsion/postdetail/bean/CommentBody;Lcom/transsion/postdetail/ui/fragment/CommentFragment;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "bucket"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-lez v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/transsion/postdetail/bean/CommentBody;->getImageList()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/postdetail/bean/CommentBody;->getImageList()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {p0, p3}, Lcom/transsion/postdetail/bean/CommentBody;->setBucket(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object p2, p1, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->h:Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    .line 39
    .line 40
    if-eqz p2, :cond_2

    .line 41
    .line 42
    iget-object p1, p1, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->k:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p2, p1, p0}, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->s(Ljava/lang/String;Lcom/transsion/postdetail/bean/CommentBody;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 48
    .line 49
    return-object p0
.end method

.method private final W0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->e:Lcom/transsion/postdetail/util/l;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/transsion/postdetail/util/l;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/transsion/postdetail/util/l;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->e:Lcom/transsion/postdetail/util/l;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->e:Lcom/transsion/postdetail/util/l;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    new-instance v2, Lcom/transsion/postdetail/ui/fragment/CommentFragment$e;

    .line 21
    .line 22
    invoke-direct {v2, p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment$e;-><init>(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/transsion/postdetail/util/l;->d(Landroid/app/Activity;Lcom/transsion/postdetail/util/l$a;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method private final X0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "module_name"

    .line 7
    .line 8
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->j:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, ""

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    move-object p1, v1

    .line 18
    :cond_0
    const-string v2, "post_id"

    .line 19
    .line 20
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    if-nez p2, :cond_1

    .line 24
    .line 25
    move-object p2, v1

    .line 26
    :cond_1
    const-string p1, "comment_id"

    .line 27
    .line 28
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->B:Ljava/lang/String;

    .line 32
    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->B:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    const-string p2, "page_from"

    .line 48
    .line 49
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->C:Ljava/lang/String;

    .line 53
    .line 54
    if-eqz p1, :cond_4

    .line 55
    .line 56
    const-string p2, "track_id"

    .line 57
    .line 58
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    :cond_4
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->D:Ljava/lang/String;

    .line 62
    .line 63
    if-eqz p1, :cond_5

    .line 64
    .line 65
    const-string p2, "parent_track_id"

    .line 66
    .line 67
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    :cond_5
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->E:Ljava/lang/String;

    .line 71
    .line 72
    if-eqz p1, :cond_6

    .line 73
    .line 74
    const-string p2, "parent_content_id"

    .line 75
    .line 76
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    :cond_6
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->F:Ljava/lang/String;

    .line 80
    .line 81
    if-eqz p1, :cond_7

    .line 82
    .line 83
    const-string p2, "content_id"

    .line 84
    .line 85
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    :cond_7
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->G:Ljava/lang/String;

    .line 89
    .line 90
    if-nez p1, :cond_9

    .line 91
    .line 92
    iget-boolean p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->p:Z

    .line 93
    .line 94
    if-eqz p1, :cond_8

    .line 95
    .line 96
    const-string p1, "post_detail"

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_8
    const-string p1, "postdetail_video"

    .line 100
    .line 101
    :cond_9
    :goto_1
    sget-object p2, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    .line 102
    .line 103
    invoke-virtual {p2, p1, v0}, Lcom/transsion/baselib/helper/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method static synthetic Y0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const-string p2, ""

    .line 6
    .line 7
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->X0(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static synthetic a0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Lcom/transsion/postdetail/bean/CommentListBean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->Q0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Lcom/transsion/postdetail/bean/CommentListBean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final a1(Ljava/lang/String;Lcom/transsion/postdetail/bean/CommentListBean;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->g:Lcom/transsion/postdetail/bean/CommentListBean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->j:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->g:Lcom/transsion/postdetail/bean/CommentListBean;

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    if-eqz p2, :cond_4

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/transsion/postdetail/bean/CommentListBean;->getCommentList()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_4

    .line 17
    .line 18
    check-cast p1, Ljava/lang/Iterable;

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_4

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    check-cast p2, Lcom/transsion/moviedetailapi/bean/CommentBean;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->c:Lcom/transsion/postdetail/comment/n;

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/transsion/postdetail/comment/n;->G1()Ljava/util/HashMap;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    if-eqz p2, :cond_2

    .line 47
    .line 48
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getCommentId()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    const/4 v1, 0x0

    .line 54
    :goto_1
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    const/4 v1, 0x1

    .line 59
    if-ne v0, v1, :cond_3

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->g:Lcom/transsion/postdetail/bean/CommentListBean;

    .line 63
    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/transsion/postdetail/bean/CommentListBean;->getCommentList()Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    if-eqz v0, :cond_1

    .line 71
    .line 72
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_4
    :goto_2
    return-void
.end method

.method public static synthetic b0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->N0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->g1(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final checkLogin()Z
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->getLoginApi()Lqx/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    invoke-interface {v0}, Lqx/a;->a()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_3

    .line 13
    .line 14
    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->I:Landroidx/activity/result/b;

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    iput-boolean v1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->J:Z

    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_3

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_3

    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->I:Landroidx/activity/result/b;

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const-string v3, "requireContext(...)"

    .line 48
    .line 49
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {v0, v2}, Lqx/a;->p(Landroid/content/Context;)Landroid/content/Intent;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sget v2, Lcom/transsion/postdetail/R$string;->comment_login_title:I

    .line 57
    .line 58
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    const-string v3, "title_name"

    .line 63
    .line 64
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v0}, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    const/4 v0, 0x0

    .line 71
    return v0

    .line 72
    :cond_3
    :goto_0
    return v1
.end method

.method public static synthetic d0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->J0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Landroidx/activity/result/ActivityResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->M0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final e1(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Landroid/content/DialogInterface;)V
    .locals 6

    .line 1
    instance-of v0, p1, Lcom/transsion/postdetail/comment/g;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p1, Lcom/transsion/postdetail/comment/g;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/transsion/postdetail/comment/g;->h()Lcom/transsion/postdetail/comment/m;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/transsion/postdetail/comment/m;->h()Landroid/text/Editable;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->K:Landroid/text/Editable;

    .line 20
    .line 21
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 22
    .line 23
    new-instance p0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v1, "text="

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const/4 v4, 0x4

    .line 41
    const/4 v5, 0x0

    .line 42
    const-string v1, "CommentFragment"

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void
.end method

.method public static synthetic f0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Lun/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->K0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Lun/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final f1()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_3

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sget v1, Lcom/transsion/postdetail/R$layout;->post_detail_no_comment:I

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v1, 0x0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    sget v2, Lcom/transsion/postdetail/R$id;->tv_status:I

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Landroid/widget/TextView;

    .line 45
    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    sget v3, Lcom/transsion/postdetail/R$string;->base_net_err:I

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 51
    .line 52
    .line 53
    const/high16 v3, 0x41400000    # 12.0f

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    :cond_1
    if-eqz v0, :cond_2

    .line 62
    .line 63
    sget v2, Lcom/transsion/postdetail/R$id;->tv_retry:I

    .line 64
    .line 65
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Landroid/widget/TextView;

    .line 70
    .line 71
    if-eqz v2, :cond_2

    .line 72
    .line 73
    sget v3, Lcom/transsion/postdetail/R$string;->comment_retry:I

    .line 74
    .line 75
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    .line 80
    .line 81
    new-instance v1, Lcom/transsion/postdetail/ui/fragment/h;

    .line 82
    .line 83
    invoke-direct {v1, p0}, Lcom/transsion/postdetail/ui/fragment/h;-><init>(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    .line 88
    .line 89
    :cond_2
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->c:Lcom/transsion/postdetail/comment/n;

    .line 90
    .line 91
    if-eqz v1, :cond_3

    .line 92
    .line 93
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->Y0(Landroid/view/View;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic g0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Lcom/transsion/moviedetailapi/bean/CommentBean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->L0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Lcom/transsion/moviedetailapi/bean/CommentBean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final g1(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Landroid/view/View;)V
    .locals 2

    .line 1
    sget-object p1, Lyg/l;->a:Lyg/l;

    .line 2
    .line 3
    invoke-virtual {p1}, Lyg/l;->e()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    sget-object p0, Lfh/b;->a:Lfh/b$a;

    .line 10
    .line 11
    sget p1, Lcom/transsion/postdetail/R$string;->base_net_err:I

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lfh/b$a;->d(I)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->loadData()V

    .line 18
    .line 19
    .line 20
    const-string p1, "retry"

    .line 21
    .line 22
    const/4 v0, 0x2

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-static {p0, p1, v1, v0, v1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->Y0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method

.method private final getLoginApi()Lqx/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->v:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lqx/a;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic h0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Ljo/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->U0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Ljo/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final h1()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x12c

    .line 2
    .line 3
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/f0;->b(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic i0(Lcom/transsion/postdetail/bean/CommentBody;Lcom/transsion/postdetail/ui/fragment/CommentFragment;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->V0(Lcom/transsion/postdetail/bean/CommentBody;Lcom/transsion/postdetail/ui/fragment/CommentFragment;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final i1(Ljava/lang/String;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    new-instance v2, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v3, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->c:Lcom/transsion/postdetail/comment/n;

    .line 11
    .line 12
    if-eqz v3, :cond_2

    .line 13
    .line 14
    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    if-eqz v3, :cond_2

    .line 19
    .line 20
    check-cast v3, Ljava/lang/Iterable;

    .line 21
    .line 22
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-eqz v4, :cond_2

    .line 31
    .line 32
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Lp6/a;

    .line 37
    .line 38
    instance-of v5, v4, Lcom/transsion/moviedetailapi/bean/CommentBean;

    .line 39
    .line 40
    if-eqz v5, :cond_0

    .line 41
    .line 42
    move-object v5, v4

    .line 43
    check-cast v5, Lcom/transsion/moviedetailapi/bean/CommentBean;

    .line 44
    .line 45
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getCommentId()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-eqz v6, :cond_1

    .line 54
    .line 55
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getRootCommentId()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-static {v5, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-eqz v5, :cond_0

    .line 67
    .line 68
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    const-string v3, "toString(...)"

    .line 79
    .line 80
    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const/4 v10, 0x4

    .line 84
    const/4 v11, 0x0

    .line 85
    const-string v7, "deleteComment list:"

    .line 86
    .line 87
    const/4 v9, 0x0

    .line 88
    invoke-static/range {v6 .. v11}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-nez v3, :cond_d

    .line 96
    .line 97
    const/4 v3, 0x1

    .line 98
    iput-boolean v3, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->b:Z

    .line 99
    .line 100
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-eqz v4, :cond_4

    .line 109
    .line 110
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    check-cast v4, Lcom/transsion/moviedetailapi/bean/CommentBean;

    .line 115
    .line 116
    iget-object v5, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->c:Lcom/transsion/postdetail/comment/n;

    .line 117
    .line 118
    if-eqz v5, :cond_3

    .line 119
    .line 120
    invoke-virtual {v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    if-eqz v5, :cond_3

    .line 125
    .line 126
    invoke-interface {v5, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_4
    iget-object v3, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->c:Lcom/transsion/postdetail/comment/n;

    .line 131
    .line 132
    const/4 v4, 0x0

    .line 133
    if-eqz v3, :cond_5

    .line 134
    .line 135
    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    goto :goto_2

    .line 140
    :cond_5
    move-object v3, v4

    .line 141
    :goto_2
    const-wide/16 v5, 0x0

    .line 142
    .line 143
    if-eqz v3, :cond_a

    .line 144
    .line 145
    iget-object v3, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->c:Lcom/transsion/postdetail/comment/n;

    .line 146
    .line 147
    if-eqz v3, :cond_6

    .line 148
    .line 149
    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    :cond_6
    check-cast v4, Ljava/util/Collection;

    .line 154
    .line 155
    if-eqz v4, :cond_a

    .line 156
    .line 157
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    if-eqz v3, :cond_7

    .line 162
    .line 163
    goto :goto_5

    .line 164
    :cond_7
    iget-object v3, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->c:Lcom/transsion/postdetail/comment/n;

    .line 165
    .line 166
    if-eqz v3, :cond_b

    .line 167
    .line 168
    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    if-eqz v3, :cond_b

    .line 173
    .line 174
    check-cast v3, Ljava/lang/Iterable;

    .line 175
    .line 176
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    :cond_8
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    if-eqz v4, :cond_b

    .line 185
    .line 186
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    check-cast v4, Lp6/a;

    .line 191
    .line 192
    instance-of v7, v4, Lcom/transsion/moviedetailapi/bean/CommentBean;

    .line 193
    .line 194
    if-eqz v7, :cond_8

    .line 195
    .line 196
    check-cast v4, Lcom/transsion/moviedetailapi/bean/CommentBean;

    .line 197
    .line 198
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getCreatedAt()Ljava/lang/Long;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    if-eqz v4, :cond_9

    .line 203
    .line 204
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 205
    .line 206
    .line 207
    move-result-wide v7

    .line 208
    goto :goto_4

    .line 209
    :cond_9
    move-wide v7, v5

    .line 210
    :goto_4
    iput-wide v7, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->u:J

    .line 211
    .line 212
    sget-object v9, Lwf/a;->a:Lwf/a$a;

    .line 213
    .line 214
    new-instance v4, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .line 218
    .line 219
    const-string v10, "mCommentExpandAdapter createdTime:"

    .line 220
    .line 221
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v11

    .line 231
    const/4 v13, 0x4

    .line 232
    const/4 v14, 0x0

    .line 233
    const-string v10, "deleteComment list:"

    .line 234
    .line 235
    const/4 v12, 0x0

    .line 236
    invoke-static/range {v9 .. v14}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    goto :goto_3

    .line 240
    :cond_a
    :goto_5
    iput-wide v5, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->u:J

    .line 241
    .line 242
    sget-object v15, Lwf/a;->a:Lwf/a$a;

    .line 243
    .line 244
    const/16 v19, 0x4

    .line 245
    .line 246
    const/16 v20, 0x0

    .line 247
    .line 248
    const-string v16, "deleteComment list:"

    .line 249
    .line 250
    const-string v17, "mCommentExpandAdapter null"

    .line 251
    .line 252
    const/16 v18, 0x0

    .line 253
    .line 254
    invoke-static/range {v15 .. v20}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    :cond_b
    iget-object v3, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->c:Lcom/transsion/postdetail/comment/n;

    .line 258
    .line 259
    if-eqz v3, :cond_c

    .line 260
    .line 261
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 262
    .line 263
    .line 264
    :cond_c
    iget-wide v3, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->n:J

    .line 265
    .line 266
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 267
    .line 268
    .line 269
    move-result v5

    .line 270
    int-to-long v5, v5

    .line 271
    sub-long/2addr v3, v5

    .line 272
    iput-wide v3, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->n:J

    .line 273
    .line 274
    invoke-direct/range {p0 .. p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->j1()V

    .line 275
    .line 276
    .line 277
    invoke-direct {v0, v2}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->D0(Ljava/util/ArrayList;)V

    .line 278
    .line 279
    .line 280
    :cond_d
    sget-object v2, Lgx/b;->a:Lgx/b$a;

    .line 281
    .line 282
    invoke-virtual {v2}, Lgx/b$a;->a()Lgx/b;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    if-nez v1, :cond_e

    .line 287
    .line 288
    const-string v1, ""

    .line 289
    .line 290
    :cond_e
    iget-wide v3, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->n:J

    .line 291
    .line 292
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    iget-object v4, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->j:Ljava/lang/String;

    .line 297
    .line 298
    const/4 v5, 0x2

    .line 299
    invoke-virtual {v2, v5, v1, v3, v4}, Lgx/b;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    return-void
.end method

.method private final initAdapter()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->c:Lcom/transsion/postdetail/comment/n;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v1, Lcom/transsion/postdetail/comment/n;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/transsion/postdetail/comment/n;-><init>(Lcom/transsion/postdetail/comment/g0;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-virtual {v2, v3}, Lt6/f;->z(Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v3}, Lt6/f;->y(Z)V

    .line 26
    .line 27
    .line 28
    new-instance v3, Lcom/transsion/postdetail/ui/fragment/i;

    .line 29
    .line 30
    invoke-direct {v3, p0}, Lcom/transsion/postdetail/ui/fragment/i;-><init>(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v3}, Lt6/f;->D(Lr6/f;)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->c:Lcom/transsion/postdetail/comment/n;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 43
    .line 44
    invoke-direct {v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->c:Lcom/transsion/postdetail/comment/n;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    new-instance v1, Lcom/transsion/postdetail/comment/u;

    .line 64
    .line 65
    invoke-direct {v1}, Lcom/transsion/postdetail/comment/u;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 69
    .line 70
    .line 71
    :cond_3
    return-void
.end method

.method private final initExposureHelper()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->y:Lbj/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->G:Ljava/lang/String;

    .line 7
    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->p:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const-string v0, "post_detail"

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const-string v0, "postdetail_video"

    .line 18
    .line 19
    :cond_2
    :goto_0
    new-instance v7, Lbj/b;

    .line 20
    .line 21
    new-instance v3, Lcom/transsion/postdetail/ui/fragment/CommentFragment$c;

    .line 22
    .line 23
    invoke-direct {v3, p0, v0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment$c;-><init>(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 v5, 0x4

    .line 27
    const/4 v6, 0x0

    .line 28
    const v2, 0x3f19999a    # 0.6f

    .line 29
    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    move-object v1, v7

    .line 33
    invoke-direct/range {v1 .. v6}, Lbj/b;-><init>(FLbj/a;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x2

    .line 37
    invoke-virtual {v7, v0}, Lbj/b;->n(I)V

    .line 38
    .line 39
    .line 40
    iput-object v7, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->y:Lbj/b;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 50
    .line 51
    .line 52
    :cond_3
    return-void
.end method

.method private final initViewModel()V
    .locals 5

    .line 1
    new-instance v0, Landroidx/lifecycle/v0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    .line 4
    .line 5
    .line 6
    const-class v1, Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->k()Landroidx/lifecycle/b0;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    new-instance v3, Lcom/transsion/postdetail/ui/fragment/k;

    .line 23
    .line 24
    invoke-direct {v3, p0}, Lcom/transsion/postdetail/ui/fragment/k;-><init>(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)V

    .line 25
    .line 26
    .line 27
    new-instance v4, Lcom/transsion/postdetail/ui/fragment/o;

    .line 28
    .line 29
    invoke-direct {v4, v3}, Lcom/transsion/postdetail/ui/fragment/o;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->l()Landroidx/lifecycle/b0;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    new-instance v3, Lcom/transsion/postdetail/ui/fragment/l;

    .line 44
    .line 45
    invoke-direct {v3, p0}, Lcom/transsion/postdetail/ui/fragment/l;-><init>(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)V

    .line 46
    .line 47
    .line 48
    new-instance v4, Lcom/transsion/postdetail/ui/fragment/o;

    .line 49
    .line 50
    invoke-direct {v4, v3}, Lcom/transsion/postdetail/ui/fragment/o;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->n()Landroidx/lifecycle/b0;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    new-instance v3, Lcom/transsion/postdetail/ui/fragment/m;

    .line 65
    .line 66
    invoke-direct {v3, p0}, Lcom/transsion/postdetail/ui/fragment/m;-><init>(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)V

    .line 67
    .line 68
    .line 69
    new-instance v4, Lcom/transsion/postdetail/ui/fragment/o;

    .line 70
    .line 71
    invoke-direct {v4, v3}, Lcom/transsion/postdetail/ui/fragment/o;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->m()Landroidx/lifecycle/b0;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    new-instance v3, Lcom/transsion/postdetail/ui/fragment/n;

    .line 86
    .line 87
    invoke-direct {v3}, Lcom/transsion/postdetail/ui/fragment/n;-><init>()V

    .line 88
    .line 89
    .line 90
    new-instance v4, Lcom/transsion/postdetail/ui/fragment/o;

    .line 91
    .line 92
    invoke-direct {v4, v3}, Lcom/transsion/postdetail/ui/fragment/o;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->j()Landroidx/lifecycle/b0;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    new-instance v3, Lcom/transsion/postdetail/ui/fragment/b;

    .line 107
    .line 108
    invoke-direct {v3, p0}, Lcom/transsion/postdetail/ui/fragment/b;-><init>(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)V

    .line 109
    .line 110
    .line 111
    new-instance v4, Lcom/transsion/postdetail/ui/fragment/o;

    .line 112
    .line 113
    invoke-direct {v4, v3}, Lcom/transsion/postdetail/ui/fragment/o;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 117
    .line 118
    .line 119
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->h:Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    .line 120
    .line 121
    return-void
.end method

.method public static synthetic j0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->H0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final j1()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    check-cast v2, Lwn/h;

    .line 8
    .line 9
    if-eqz v2, :cond_1

    .line 10
    .line 11
    iget-object v2, v2, Lwn/h;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    iget-boolean v3, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->p:Z

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    const/16 v3, 0x8

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v3, v1

    .line 23
    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lwn/h;

    .line 31
    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    iget-object v2, v2, Lwn/h;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 39
    .line 40
    sget v3, Lcom/transsion/postdetail/R$string;->comments:I

    .line 41
    .line 42
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const-string v4, "getString(...)"

    .line 47
    .line 48
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-wide v4, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->n:J

    .line 52
    .line 53
    invoke-static {v4, v5}, Lcom/transsion/baseui/util/j;->a(J)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    new-array v5, v0, [Ljava/lang/Object;

    .line 58
    .line 59
    aput-object v4, v5, v1

    .line 60
    .line 61
    invoke-static {v5, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v1, "format(...)"

    .line 70
    .line 71
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->x:Lcom/transsion/postdetail/ui/fragment/CommentFragment$b;

    .line 78
    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    iget-wide v1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->n:J

    .line 82
    .line 83
    invoke-interface {v0, v1, v2}, Lcom/transsion/postdetail/ui/fragment/CommentFragment$b;->a(J)V

    .line 84
    .line 85
    .line 86
    :cond_3
    return-void
.end method

.method public static synthetic k0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->e1(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Landroid/content/DialogInterface;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final k1(Lcom/transsion/postdetail/bean/CommentListBean;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->initAdapter()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->c:Lcom/transsion/postdetail/comment/n;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/comment/n;->K1(Lcom/transsion/postdetail/bean/CommentListBean;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public static synthetic l0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Lcom/tn/lib/net/bean/BaseDto;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->P0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Lcom/tn/lib/net/bean/BaseDto;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final l1(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 3

    .line 1
    sget-object v0, Luu/c;->a:Luu/c;

    .line 2
    .line 3
    sget-object v1, Lcom/transsion/upload/bean/UploadFileType;->OBJECT_NAME_IMAGE:Lcom/transsion/upload/bean/UploadFileType;

    .line 4
    .line 5
    new-instance v2, Lcom/transsion/postdetail/ui/fragment/CommentFragment$g;

    .line 6
    .line 7
    invoke-direct {v2, p2}, Lcom/transsion/postdetail/ui/fragment/CommentFragment$g;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 8
    .line 9
    .line 10
    const/4 p2, 0x1

    .line 11
    invoke-virtual {v0, p1, v1, p2, v2}, Luu/c;->f(Ljava/lang/String;Lcom/transsion/upload/bean/UploadFileType;ZLuu/a;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final loadData()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->g:Lcom/transsion/postdetail/bean/CommentListBean;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->c:Lcom/transsion/postdetail/comment/n;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    :cond_0
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 18
    .line 19
    invoke-virtual {v0}, Lyg/l;->e()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->f1()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->startLoading()V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->h:Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    .line 33
    .line 34
    if-eqz v1, :cond_4

    .line 35
    .line 36
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->j:Ljava/lang/String;

    .line 37
    .line 38
    const-string v2, ""

    .line 39
    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    move-object v0, v2

    .line 43
    :cond_2
    iget-object v3, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->k:Ljava/lang/String;

    .line 44
    .line 45
    iget v4, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->l:I

    .line 46
    .line 47
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    iget v6, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->m:I

    .line 52
    .line 53
    iget-object v4, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->A:Ljava/lang/String;

    .line 54
    .line 55
    if-nez v4, :cond_3

    .line 56
    .line 57
    move-object v7, v2

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    move-object v7, v4

    .line 60
    :goto_0
    const-string v4, "0"

    .line 61
    .line 62
    move-object v2, v0

    .line 63
    invoke-virtual/range {v1 .. v7}, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_4
    return-void
.end method

.method public static synthetic m0()Lqx/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->T0()Lqx/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic n0(Lcom/transsion/postdetail/bean/CommentLikeBean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->O0(Lcom/transsion/postdetail/bean/CommentLikeBean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic o0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->H:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic p0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->z:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic q0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)Lcom/transsion/postdetail/comment/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->f:Lcom/transsion/postdetail/comment/g;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic r0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)Lcom/transsion/postdetail/comment/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->c:Lcom/transsion/postdetail/comment/n;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic s0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->B:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private final showEmpty()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/tn/lib/view/DefaultView;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "requireContext(...)"

    .line 27
    .line 28
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1}, Lcom/tn/lib/view/DefaultView;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    sget-object v1, Lcom/tn/lib/view/DefaultView$DefaultViewStyle;->STYLE_IMAGE_DES:Lcom/tn/lib/view/DefaultView$DefaultViewStyle;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/tn/lib/view/DefaultView;->setStyle(Lcom/tn/lib/view/DefaultView$DefaultViewStyle;)V

    .line 37
    .line 38
    .line 39
    sget v1, Lcom/transsion/postdetail/R$string;->comment_empty:I

    .line 40
    .line 41
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const-string v2, "getString(...)"

    .line 46
    .line 47
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/tn/lib/view/DefaultView;->setDescText(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    sget v1, Lcom/transsion/postdetail/R$drawable;->icon_comment_empty:I

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/tn/lib/view/DefaultView;->setDefaultImage(I)V

    .line 56
    .line 57
    .line 58
    const/high16 v1, 0x437a0000    # 250.0f

    .line 59
    .line 60
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->c:Lcom/transsion/postdetail/comment/n;

    .line 68
    .line 69
    if-eqz v1, :cond_1

    .line 70
    .line 71
    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->Y0(Landroid/view/View;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    :goto_0
    return-void
.end method

.method public static final synthetic t0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->E:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic u0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->D:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic v0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic w0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->C:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic x0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->F:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic y0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->q:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic z0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->loadData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public A(Lcom/transsion/moviedetailapi/bean/CommentBean;)V
    .locals 4

    .line 1
    const-string v0, "\u70b9\u8d5e"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->S0(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_4

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getCommentId()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_4

    .line 13
    .line 14
    new-instance v0, Lcom/transsion/postdetail/bean/CommentLikeBody;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getCommentId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getLikeStatu()Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 25
    .line 26
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    xor-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-direct {v0, v1, v2}, Lcom/transsion/postdetail/bean/CommentLikeBody;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->h:Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    .line 40
    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->q(Lcom/transsion/postdetail/bean/CommentLikeBody;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->isHot()Ljava/lang/Boolean;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getLikeStatu()Ljava/lang/Boolean;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    const-string v0, "like_hot_comment"

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const-string v0, "dislike_hot_comment"

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getLikeStatu()Ljava/lang/Boolean;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    const-string v0, "like_comment"

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    const-string v0, "dislike_comment"

    .line 86
    .line 87
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getCommentId()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-direct {p0, v0, v1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->X0(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->M:Lkotlin/jvm/functions/Function2;

    .line 95
    .line 96
    if-eqz v0, :cond_4

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getCommentId()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getLikeStatu()Ljava/lang/Boolean;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-interface {v0, v1, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Lkotlin/Unit;

    .line 111
    .line 112
    :cond_4
    return-void
.end method

.method public final E0(Ljava/lang/String;)V
    .locals 6

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->i1(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 13
    .line 14
    const/4 v4, 0x4

    .line 15
    const/4 v5, 0x0

    .line 16
    const-string v1, "deleteComment"

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    :goto_0
    return-void
.end method

.method public F()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-object v0, Lcom/transsion/publish/ui/SelectImageActivity;->q:Lcom/transsion/publish/ui/SelectImageActivity$a;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "requireContext(...)"

    .line 27
    .line 28
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    const/4 v3, 0x0

    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/transsion/publish/ui/SelectImageActivity$a;->a(Landroid/content/Context;IILjava/util/List;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    return-void
.end method

.method public G0(Landroid/view/LayoutInflater;)Lwn/h;
    .locals 1

    .line 1
    const-string v0, "inflater"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lwn/h;->c(Landroid/view/LayoutInflater;)Lwn/h;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "inflate(...)"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-object p1
.end method

.method public H(Lcom/transsion/moviedetailapi/bean/CommentBean;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->d:Lcom/transsion/postdetail/comment/m;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/transsion/postdetail/comment/m;->i()Lcom/transsion/moviedetailapi/bean/CommentBean;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v1

    .line 12
    :goto_0
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getCommentId()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move-object v0, v1

    .line 20
    :goto_1
    if-eqz p1, :cond_2

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getCommentId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move-object v2, v1

    .line 28
    :goto_2
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_4

    .line 33
    .line 34
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->d:Lcom/transsion/postdetail/comment/m;

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/transsion/postdetail/comment/m;->t()V

    .line 39
    .line 40
    .line 41
    :cond_3
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->d:Lcom/transsion/postdetail/comment/m;

    .line 42
    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/comment/m;->v(Lcom/transsion/moviedetailapi/bean/CommentBean;)V

    .line 46
    .line 47
    .line 48
    :cond_4
    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->d1(Lcom/transsion/moviedetailapi/bean/CommentBean;)Z

    .line 49
    .line 50
    .line 51
    const-string p1, "reply"

    .line 52
    .line 53
    const/4 v0, 0x2

    .line 54
    invoke-static {p0, p1, v1, v0, v1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->Y0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public Q(Lcom/transsion/moviedetailapi/bean/CommentBean;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->c1(Lcom/transsion/moviedetailapi/bean/CommentBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public R(Lcom/transsion/moviedetailapi/bean/CommentBean;)V
    .locals 4

    .line 1
    const-string v0, "\u8df3\u8f6c\u4e2a\u4eba\u9875\u9762"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->S0(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getUid()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const-string v2, "/profile/user_profile"

    .line 17
    .line 18
    invoke-static {v2}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v3, "userId"

    .line 23
    .line 24
    invoke-virtual {v2, v3, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {p1, v2, v1, v0, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    const-string p1, "avatar_comment"

    .line 36
    .line 37
    invoke-static {p0, p1, v1, v0, v1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->Y0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public T(Landroid/text/Editable;Lcom/transsion/moviedetailapi/bean/CommentBean;)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget-boolean v2, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->s:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    sget-object v1, Lfh/b;->a:Lfh/b$a;

    .line 10
    .line 11
    sget v2, Lcom/transsion/postdetail/R$string;->loding:I

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Lfh/b$a;->d(I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    if-nez v1, :cond_1

    .line 18
    .line 19
    const-string v2, "main"

    .line 20
    .line 21
    :goto_0
    move-object v8, v2

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/CommentBean;->isSubComment()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    const-string v2, "reply_reply"

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const-string v2, "main_reply"

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :goto_1
    sget-object v3, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    .line 36
    .line 37
    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->j:Ljava/lang/String;

    .line 38
    .line 39
    const-string v14, ""

    .line 40
    .line 41
    if-nez v2, :cond_3

    .line 42
    .line 43
    move-object v4, v14

    .line 44
    goto :goto_2

    .line 45
    :cond_3
    move-object v4, v2

    .line 46
    :goto_2
    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->G:Ljava/lang/String;

    .line 47
    .line 48
    if-nez v2, :cond_4

    .line 49
    .line 50
    iget-boolean v2, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->p:Z

    .line 51
    .line 52
    if-eqz v2, :cond_5

    .line 53
    .line 54
    const-string v2, "post_detail"

    .line 55
    .line 56
    :cond_4
    :goto_3
    move-object v6, v2

    .line 57
    goto :goto_4

    .line 58
    :cond_5
    const-string v2, "postdetail_video"

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :goto_4
    iget-object v7, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->B:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v9, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->C:Ljava/lang/String;

    .line 64
    .line 65
    iget-object v10, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->D:Ljava/lang/String;

    .line 66
    .line 67
    iget-object v11, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->E:Ljava/lang/String;

    .line 68
    .line 69
    iget-object v12, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->F:Ljava/lang/String;

    .line 70
    .line 71
    iget-object v13, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->H:Ljava/lang/String;

    .line 72
    .line 73
    const-string v5, "comment_post"

    .line 74
    .line 75
    invoke-virtual/range {v3 .. v13}, Lcom/transsion/postdetail/helper/a;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iput-object v1, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->r:Lcom/transsion/moviedetailapi/bean/CommentBean;

    .line 79
    .line 80
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 81
    .line 82
    .line 83
    move-result-wide v2

    .line 84
    iput-wide v2, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->L:J

    .line 85
    .line 86
    const-string v2, "\u53d1\u8868\u8bc4\u8bba"

    .line 87
    .line 88
    invoke-direct {v0, v2}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->S0(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->f:Lcom/transsion/postdetail/comment/g;

    .line 92
    .line 93
    const/4 v3, 0x0

    .line 94
    if-eqz v2, :cond_6

    .line 95
    .line 96
    invoke-virtual {v2}, Lcom/transsion/postdetail/comment/g;->h()Lcom/transsion/postdetail/comment/m;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    if-eqz v2, :cond_6

    .line 101
    .line 102
    invoke-virtual {v2}, Lcom/transsion/postdetail/comment/m;->j()Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    goto :goto_5

    .line 107
    :cond_6
    move-object v2, v3

    .line 108
    :goto_5
    if-eqz p1, :cond_7

    .line 109
    .line 110
    invoke-static/range {p1 .. p1}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    :cond_7
    const/4 v4, 0x1

    .line 115
    if-eqz v3, :cond_8

    .line 116
    .line 117
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    if-nez v5, :cond_9

    .line 122
    .line 123
    :cond_8
    if-eqz v2, :cond_9

    .line 124
    .line 125
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    if-ne v5, v4, :cond_9

    .line 130
    .line 131
    sget-object v1, Lfh/b;->a:Lfh/b$a;

    .line 132
    .line 133
    sget v2, Lcom/transsion/postdetail/R$string;->comment_empty_tips:I

    .line 134
    .line 135
    invoke-virtual {v1, v2}, Lfh/b$a;->d(I)V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :cond_9
    sget-object v5, Lyg/l;->a:Lyg/l;

    .line 140
    .line 141
    invoke-virtual {v5}, Lyg/l;->e()Z

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    if-nez v5, :cond_a

    .line 146
    .line 147
    sget-object v1, Lfh/b;->a:Lfh/b$a;

    .line 148
    .line 149
    sget v2, Lcom/transsion/postdetail/R$string;->check_error:I

    .line 150
    .line 151
    invoke-virtual {v1, v2}, Lfh/b$a;->d(I)V

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->checkLogin()Z

    .line 156
    .line 157
    .line 158
    move-result v5

    .line 159
    if-nez v5, :cond_b

    .line 160
    .line 161
    return-void

    .line 162
    :cond_b
    const-string v5, "0"

    .line 163
    .line 164
    if-nez v1, :cond_c

    .line 165
    .line 166
    :goto_6
    move-object/from16 v17, v5

    .line 167
    .line 168
    goto :goto_8

    .line 169
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getRootCommentId()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    if-eqz v6, :cond_e

    .line 178
    .line 179
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getCommentId()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    if-nez v6, :cond_d

    .line 184
    .line 185
    goto :goto_6

    .line 186
    :cond_d
    :goto_7
    move-object/from16 v17, v6

    .line 187
    .line 188
    goto :goto_8

    .line 189
    :cond_e
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getRootCommentId()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    goto :goto_7

    .line 194
    :goto_8
    if-nez v1, :cond_f

    .line 195
    .line 196
    :goto_9
    move-object/from16 v18, v5

    .line 197
    .line 198
    goto :goto_a

    .line 199
    :cond_f
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getRootCommentId()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v6

    .line 203
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v6

    .line 207
    if-eqz v6, :cond_10

    .line 208
    .line 209
    goto :goto_9

    .line 210
    :cond_10
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getCommentId()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v6

    .line 214
    if-nez v6, :cond_11

    .line 215
    .line 216
    goto :goto_9

    .line 217
    :cond_11
    move-object/from16 v18, v6

    .line 218
    .line 219
    :goto_a
    new-instance v6, Lcom/transsion/postdetail/bean/CommentBody;

    .line 220
    .line 221
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v16

    .line 225
    if-eqz v1, :cond_13

    .line 226
    .line 227
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getUid()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    if-nez v1, :cond_12

    .line 232
    .line 233
    goto :goto_b

    .line 234
    :cond_12
    move-object/from16 v19, v1

    .line 235
    .line 236
    goto :goto_c

    .line 237
    :cond_13
    :goto_b
    move-object/from16 v19, v5

    .line 238
    .line 239
    :goto_c
    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->j:Ljava/lang/String;

    .line 240
    .line 241
    new-instance v21, Ljava/util/ArrayList;

    .line 242
    .line 243
    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .line 245
    .line 246
    const-string v22, ""

    .line 247
    .line 248
    const-string v23, "POST"

    .line 249
    .line 250
    move-object v15, v6

    .line 251
    move-object/from16 v20, v1

    .line 252
    .line 253
    invoke-direct/range {v15 .. v23}, Lcom/transsion/postdetail/bean/CommentBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    iput-boolean v4, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->s:Z

    .line 257
    .line 258
    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->f:Lcom/transsion/postdetail/comment/g;

    .line 259
    .line 260
    if-eqz v1, :cond_14

    .line 261
    .line 262
    invoke-virtual {v1}, Lcom/transsion/postdetail/comment/g;->l()V

    .line 263
    .line 264
    .line 265
    :cond_14
    move-object v1, v2

    .line 266
    check-cast v1, Ljava/util/Collection;

    .line 267
    .line 268
    if-eqz v1, :cond_17

    .line 269
    .line 270
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 271
    .line 272
    .line 273
    move-result v1

    .line 274
    if-eqz v1, :cond_15

    .line 275
    .line 276
    goto :goto_e

    .line 277
    :cond_15
    const/4 v1, 0x0

    .line 278
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    check-cast v1, Lcom/transsion/publish/api/PhotoEntity;

    .line 283
    .line 284
    invoke-virtual {v1}, Lcom/transsion/publish/api/PhotoEntity;->getLocalPath()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    if-nez v1, :cond_16

    .line 289
    .line 290
    goto :goto_d

    .line 291
    :cond_16
    move-object v14, v1

    .line 292
    :goto_d
    new-instance v1, Lcom/transsion/postdetail/ui/fragment/e;

    .line 293
    .line 294
    invoke-direct {v1, v6, v0}, Lcom/transsion/postdetail/ui/fragment/e;-><init>(Lcom/transsion/postdetail/bean/CommentBody;Lcom/transsion/postdetail/ui/fragment/CommentFragment;)V

    .line 295
    .line 296
    .line 297
    invoke-direct {v0, v14, v1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->l1(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    .line 298
    .line 299
    .line 300
    goto :goto_f

    .line 301
    :cond_17
    :goto_e
    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->h:Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    .line 302
    .line 303
    if-eqz v1, :cond_18

    .line 304
    .line 305
    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->k:Ljava/lang/String;

    .line 306
    .line 307
    invoke-virtual {v1, v2, v6}, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->s(Ljava/lang/String;Lcom/transsion/postdetail/bean/CommentBody;)V

    .line 308
    .line 309
    .line 310
    :cond_18
    :goto_f
    return-void
.end method

.method public final Z0(Lkotlin/jvm/functions/Function2;)V
    .locals 1

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->M:Lkotlin/jvm/functions/Function2;

    .line 7
    .line 8
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/comment/i0$a;->a(Lcom/transsion/postdetail/comment/i0;Landroid/text/Editable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final b1(Lcom/transsion/postdetail/ui/fragment/CommentFragment$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->x:Lcom/transsion/postdetail/ui/fragment/CommentFragment$b;

    .line 2
    .line 3
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/postdetail/comment/i0$a;->b(Lcom/transsion/postdetail/comment/i0;Ljava/lang/CharSequence;III)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final c1(Lcom/transsion/moviedetailapi/bean/CommentBean;)V
    .locals 6

    .line 1
    const-string v0, "commentDelete"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getContent()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    sget-object v3, Lcom/transsion/postdetail/comment/CommentDeleteDialogFragment;->o:Lcom/transsion/postdetail/comment/CommentDeleteDialogFragment$a;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getCommentId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    iget-object v5, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->k:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v3, v4, v5, v1}, Lcom/transsion/postdetail/comment/CommentDeleteDialogFragment$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/postdetail/comment/CommentDeleteDialogFragment;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move-object v1, v2

    .line 27
    :goto_0
    iput-object v1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->N:Lcom/transsion/postdetail/comment/CommentDeleteDialogFragment;

    .line 28
    .line 29
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_6

    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_6

    .line 40
    .line 41
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->g0()Z

    .line 42
    .line 43
    .line 44
    iget-object v3, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->N:Lcom/transsion/postdetail/comment/CommentDeleteDialogFragment;

    .line 45
    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    const/4 v4, 0x1

    .line 53
    if-ne v3, v4, :cond_2

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :catch_0
    move-exception p1

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    if-eqz v3, :cond_3

    .line 63
    .line 64
    :goto_1
    return-void

    .line 65
    :cond_3
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getUid()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->getLoginApi()Lqx/a;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    if-eqz v3, :cond_4

    .line 74
    .line 75
    invoke-interface {v3}, Lqx/a;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    if-eqz v3, :cond_4

    .line 80
    .line 81
    invoke-virtual {v3}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    :cond_4
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->N:Lcom/transsion/postdetail/comment/CommentDeleteDialogFragment;

    .line 90
    .line 91
    if-eqz v2, :cond_5

    .line 92
    .line 93
    new-instance v3, Lcom/transsion/postdetail/ui/fragment/CommentFragment$f;

    .line 94
    .line 95
    invoke-direct {v3, p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment$f;-><init>(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, v3}, Lcom/transsion/postdetail/comment/CommentDeleteDialogFragment;->o0(Lcom/transsion/postdetail/comment/CommentDeleteDialogFragment$b;)V

    .line 99
    .line 100
    .line 101
    :cond_5
    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->N:Lcom/transsion/postdetail/comment/CommentDeleteDialogFragment;

    .line 102
    .line 103
    if-eqz v2, :cond_6

    .line 104
    .line 105
    invoke-virtual {v2, v1, v0, p1}, Lcom/transsion/postdetail/comment/CommentDeleteDialogFragment;->q0(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Z)V

    .line 106
    .line 107
    .line 108
    :cond_6
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->h1()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .line 110
    .line 111
    goto :goto_3

    .line 112
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 113
    .line 114
    .line 115
    :goto_3
    return-void
.end method

.method public final d1(Lcom/transsion/moviedetailapi/bean/CommentBean;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_6

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->f:Lcom/transsion/postdetail/comment/g;

    .line 21
    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    new-instance v0, Lcom/transsion/postdetail/comment/g$a;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "requireContext(...)"

    .line 31
    .line 32
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v1}, Lcom/transsion/postdetail/comment/g$a;-><init>(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    const/16 v1, 0x12c

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/transsion/postdetail/comment/g$a;->d(I)Lcom/transsion/postdetail/comment/g$a;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0, p0}, Lcom/transsion/postdetail/comment/g$a;->c(Lcom/transsion/postdetail/comment/i0;)Lcom/transsion/postdetail/comment/g$a;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->d:Lcom/transsion/postdetail/comment/m;

    .line 49
    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/transsion/postdetail/comment/m;->h()Landroid/text/Editable;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const/4 v1, 0x0

    .line 58
    :goto_0
    invoke-virtual {v0, v1}, Lcom/transsion/postdetail/comment/g$a;->b(Landroid/text/Editable;)Lcom/transsion/postdetail/comment/g$a;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/comment/g$a;->e(Lcom/transsion/moviedetailapi/bean/CommentBean;)Lcom/transsion/postdetail/comment/g$a;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/transsion/postdetail/comment/g$a;->a()Lcom/transsion/postdetail/comment/g;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->f:Lcom/transsion/postdetail/comment/g;

    .line 71
    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    new-instance v1, Lcom/transsion/postdetail/ui/fragment/j;

    .line 75
    .line 76
    invoke-direct {v1, p0}, Lcom/transsion/postdetail/ui/fragment/j;-><init>(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->f:Lcom/transsion/postdetail/comment/g;

    .line 83
    .line 84
    if-eqz v0, :cond_5

    .line 85
    .line 86
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_5

    .line 91
    .line 92
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->f:Lcom/transsion/postdetail/comment/g;

    .line 93
    .line 94
    if-eqz v0, :cond_3

    .line 95
    .line 96
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->K:Landroid/text/Editable;

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Lcom/transsion/postdetail/comment/g;->j(Landroid/text/Editable;)V

    .line 99
    .line 100
    .line 101
    :cond_3
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->f:Lcom/transsion/postdetail/comment/g;

    .line 102
    .line 103
    if-eqz v0, :cond_4

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/transsion/postdetail/comment/g;->g()Lvn/a;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    if-eqz v0, :cond_4

    .line 110
    .line 111
    invoke-virtual {v0, p1}, Lvn/a;->i(Lcom/transsion/moviedetailapi/bean/CommentBean;)V

    .line 112
    .line 113
    .line 114
    :cond_4
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->f:Lcom/transsion/postdetail/comment/g;

    .line 115
    .line 116
    if-eqz p1, :cond_5

    .line 117
    .line 118
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 119
    .line 120
    .line 121
    :cond_5
    const/4 p1, 0x1

    .line 122
    return p1

    .line 123
    :cond_6
    :goto_1
    const/4 p1, 0x0

    .line 124
    return p1
.end method

.method public f(Lun/a;I)V
    .locals 3

    .line 1
    const-string p2, "info"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "\u52a0\u8f7d\u66f4\u591a"

    .line 7
    .line 8
    invoke-direct {p0, p2}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->S0(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->h:Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->k:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p1}, Lun/a;->c()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget v2, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->m:I

    .line 26
    .line 27
    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->p(Lun/a;Ljava/lang/String;Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lf4/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->G0(Landroid/view/LayoutInflater;)Lwn/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public hideLoading()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lwn/h;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lwn/h;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lwn/h;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, v0, Lwn/h;->d:Landroid/widget/LinearLayout;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public i(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->i:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    const-string p2, "view"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget p2, Lcom/transsion/postdetail/R$id;->comment_list:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->initAdapter()V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->W0()V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->initExposureHelper()V

    .line 23
    .line 24
    .line 25
    const-string p1, "onViewCreated"

    .line 26
    .line 27
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->S0(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->initViewModel()V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->j1()V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->I0()V

    .line 37
    .line 38
    .line 39
    new-instance p1, Lf/j;

    .line 40
    .line 41
    invoke-direct {p1}, Lf/j;-><init>()V

    .line 42
    .line 43
    .line 44
    new-instance p2, Lcom/transsion/postdetail/ui/fragment/g;

    .line 45
    .line 46
    invoke-direct {p2, p0}, Lcom/transsion/postdetail/ui/fragment/g;-><init>(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Lf/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->I:Landroidx/activity/result/b;

    .line 54
    .line 55
    return-void
.end method

.method public lazyLoadData()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->g:Lcom/transsion/postdetail/bean/CommentListBean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->loadData()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-direct {p0, v0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->B0(Lcom/transsion/postdetail/bean/CommentListBean;)V

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lcom/transsion/baseui/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    const-string v0, "POST_ID"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->j:Ljava/lang/String;

    .line 17
    .line 18
    const-string v0, "TOPIC_TYPE"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    sget-object v0, Lcom/transsion/postdetailapi/CommentTopicType;->POST:Lcom/transsion/postdetailapi/CommentTopicType;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/transsion/postdetailapi/CommentTopicType;->getValue()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :cond_0
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->k:Ljava/lang/String;

    .line 33
    .line 34
    const-string v0, "comment_count"

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    iput-wide v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->n:J

    .line 41
    .line 42
    const-string v0, "show_download"

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iput-boolean v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->o:Z

    .line 50
    .line 51
    const-string v0, "from_detail"

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iput-boolean v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->p:Z

    .line 59
    .line 60
    const-string v0, "comment_id"

    .line 61
    .line 62
    const-string v1, ""

    .line 63
    .line 64
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->A:Ljava/lang/String;

    .line 69
    .line 70
    const-string v0, "page_from"

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->B:Ljava/lang/String;

    .line 77
    .line 78
    const-string v0, "TRACK_ID"

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->C:Ljava/lang/String;

    .line 85
    .line 86
    const-string v0, "PREVIOUS_TRACK_ID"

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->D:Ljava/lang/String;

    .line 93
    .line 94
    const-string v0, "PREVIOUS_PAGE_VIDEO_ID"

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->E:Ljava/lang/String;

    .line 101
    .line 102
    const-string v0, "UGC_VIDEO_ID"

    .line 103
    .line 104
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->F:Ljava/lang/String;

    .line 109
    .line 110
    const-string v0, "PAGE_NAME"

    .line 111
    .line 112
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->G:Ljava/lang/String;

    .line 117
    .line 118
    const-string v0, "COLLECTION_ID"

    .line 119
    .line 120
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->H:Ljava/lang/String;

    .line 125
    .line 126
    :cond_1
    new-instance v6, Lcom/transsion/postdetail/ui/fragment/f;

    .line 127
    .line 128
    invoke-direct {v6, p0}, Lcom/transsion/postdetail/ui/fragment/f;-><init>(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)V

    .line 129
    .line 130
    .line 131
    sget-object p1, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 132
    .line 133
    const-class v0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 134
    .line 135
    invoke-virtual {p1, v0}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    move-object v0, p1

    .line 140
    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 141
    .line 142
    const-class p1, Ljo/b;

    .line 143
    .line 144
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    const-string p1, "getName(...)"

    .line 149
    .line 150
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 154
    .line 155
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {p1}, Lkotlinx/coroutines/a2;->p()Lkotlinx/coroutines/a2;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    const/4 v5, 0x0

    .line 164
    move-object v1, p0

    .line 165
    invoke-virtual/range {v0 .. v6}, Lcom/transsnet/flow/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    .line 166
    .line 167
    .line 168
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->y:Lbj/b;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->y:Lbj/b;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->z:Ljava/util/Set;

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->y:Lbj/b;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Lbj/b;->f()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->y:Lbj/b;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lbj/b;->f()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    const-string p1, "onTextChanged"

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->S0(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public s()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->d1(Lcom/transsion/moviedetailapi/bean/CommentBean;)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    return v0
.end method

.method public startLoading()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lwn/h;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lwn/h;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lwn/h;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, v0, Lwn/h;->d:Landroid/widget/LinearLayout;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public u(Landroid/view/View;)V
    .locals 9

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->d:Lcom/transsion/postdetail/comment/m;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/transsion/postdetail/comment/m;

    .line 8
    .line 9
    new-instance v8, Lcom/transsion/postdetail/comment/SocialStatus;

    .line 10
    .line 11
    iget-boolean v5, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->o:Z

    .line 12
    .line 13
    const/4 v6, 0x7

    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    move-object v1, v8

    .line 19
    invoke-direct/range {v1 .. v7}, Lcom/transsion/postdetail/comment/SocialStatus;-><init>(ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 20
    .line 21
    .line 22
    const/16 v6, 0xa

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    const/4 v5, 0x0

    .line 26
    move-object v1, v0

    .line 27
    move-object v2, p1

    .line 28
    move-object v4, v8

    .line 29
    invoke-direct/range {v1 .. v7}, Lcom/transsion/postdetail/comment/m;-><init>(Landroid/view/View;Landroid/app/Dialog;Lcom/transsion/postdetail/comment/SocialStatus;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->d:Lcom/transsion/postdetail/comment/m;

    .line 33
    .line 34
    new-instance p1, Lvn/a;

    .line 35
    .line 36
    invoke-direct {p1}, Lvn/a;-><init>()V

    .line 37
    .line 38
    .line 39
    const/16 v0, 0x12c

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lvn/a;->h(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p0}, Lvn/a;->f(Lcom/transsion/postdetail/comment/i0;)V

    .line 45
    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p1, v0}, Lvn/a;->g(Landroid/text/Editable;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->d:Lcom/transsion/postdetail/comment/m;

    .line 52
    .line 53
    if-eqz v0, :cond_0

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/comment/m;->k(Lvn/a;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void
.end method

.method public updateCommentCount(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->n:J

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->j1()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
