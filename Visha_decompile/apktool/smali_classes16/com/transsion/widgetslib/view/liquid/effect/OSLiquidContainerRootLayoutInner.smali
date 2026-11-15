.class public Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner$AnimatorRunnable;,
        Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner$a;,
        Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00f2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0014\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008+\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u00081\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0016\u0018\u0000 \u00a9\u00022\u00020\u0001:\u0006\u00aa\u0002\u00ab\u0002\u00c2\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\u0011\u0010\u000e\u001a\u0004\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u000cJ\u000f\u0010\u0014\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u000cJ\u000f\u0010\u0016\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0019\u0010\u001a\u001a\u00020\n2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0017\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u0018H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u001f\u0010\u000cJ\u0017\u0010!\u001a\u00020\n2\u0006\u0010 \u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008!\u0010\"J\'\u0010%\u001a\u00020\u00102\u0006\u0010#\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008%\u0010&J\u0011\u0010\'\u001a\u0004\u0018\u00010\u0018H\u0002\u00a2\u0006\u0004\u0008\'\u0010(J\u000f\u0010)\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008)\u0010\u0012J\u0015\u0010,\u001a\u00020\n2\u0006\u0010+\u001a\u00020*\u00a2\u0006\u0004\u0008,\u0010-J\u0015\u0010/\u001a\u00020\n2\u0006\u0010+\u001a\u00020.\u00a2\u0006\u0004\u0008/\u00100J\u001f\u00102\u001a\u00020\n2\u0006\u00101\u001a\u00020\u00102\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u00082\u00103J\u0017\u00104\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u00084\u0010\u001bJ\u0015\u00106\u001a\u00020\n2\u0006\u00105\u001a\u00020\u0015\u00a2\u0006\u0004\u00086\u0010\"J\u0015\u00107\u001a\u00020\n2\u0006\u00105\u001a\u00020\u0015\u00a2\u0006\u0004\u00087\u0010\"J\u0015\u00109\u001a\u00020\n2\u0006\u00108\u001a\u00020\u0015\u00a2\u0006\u0004\u00089\u0010\"J\u0017\u0010<\u001a\u00020\n2\u0006\u0010;\u001a\u00020:H\u0007\u00a2\u0006\u0004\u0008<\u0010=J\u001d\u0010B\u001a\u00020\n2\u0006\u0010?\u001a\u00020>2\u0006\u0010A\u001a\u00020@\u00a2\u0006\u0004\u0008B\u0010CJ\r\u0010D\u001a\u00020\u0006\u00a2\u0006\u0004\u0008D\u0010EJ\u0017\u0010G\u001a\u00020\n2\u0006\u0010F\u001a\u00020\u0006H\u0007\u00a2\u0006\u0004\u0008G\u0010HJ\r\u0010I\u001a\u00020\n\u00a2\u0006\u0004\u0008I\u0010\u000cJ\r\u0010J\u001a\u00020\u0015\u00a2\u0006\u0004\u0008J\u0010\u0017J\u0015\u0010L\u001a\u00020\n2\u0006\u0010K\u001a\u00020\u0006\u00a2\u0006\u0004\u0008L\u0010HJ\u001f\u0010O\u001a\u00020\n2\u0006\u0010M\u001a\u00020@2\u0006\u0010N\u001a\u00020@H\u0007\u00a2\u0006\u0004\u0008O\u0010PJM\u0010W\u001a\u00020\n2\u0006\u0010Q\u001a\u00020\u00062\u0008\u0010R\u001a\u0004\u0018\u00010@2\u0008\u0008\u0002\u0010S\u001a\u00020\u00062\n\u0008\u0002\u0010T\u001a\u0004\u0018\u00010@2\u0008\u0008\u0002\u0010U\u001a\u00020\u00062\n\u0008\u0002\u0010V\u001a\u0004\u0018\u00010@H\u0007\u00a2\u0006\u0004\u0008W\u0010XJ7\u0010^\u001a\u00020\n2\u0006\u0010Y\u001a\u00020\u00102\u0006\u0010Z\u001a\u00020\u00062\u0006\u0010[\u001a\u00020\u00062\u0006\u0010\\\u001a\u00020\u00062\u0006\u0010]\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008^\u0010_J\u0015\u0010a\u001a\u00020\n2\u0006\u0010`\u001a\u00020\u0015\u00a2\u0006\u0004\u0008a\u0010\"J\u0017\u0010c\u001a\u00020\n2\u0008\u0008\u0001\u0010b\u001a\u00020\u0006\u00a2\u0006\u0004\u0008c\u0010HJ\u0015\u0010e\u001a\u00020\n2\u0006\u0010d\u001a\u00020\u0015\u00a2\u0006\u0004\u0008e\u0010\"J\u0015\u0010g\u001a\u00020\n2\u0006\u0010f\u001a\u00020\u0015\u00a2\u0006\u0004\u0008g\u0010\"J\u0015\u0010i\u001a\u00020\n2\u0006\u0010h\u001a\u00020\u0015\u00a2\u0006\u0004\u0008i\u0010\"J\u0015\u0010k\u001a\u00020\n2\u0006\u0010j\u001a\u00020\u0015\u00a2\u0006\u0004\u0008k\u0010\"J\u001b\u0010n\u001a\u00020\n2\u000c\u0010m\u001a\u0008\u0012\u0004\u0012\u00020\n0l\u00a2\u0006\u0004\u0008n\u0010oJ\u0015\u0010q\u001a\u00020\n2\u0006\u0010p\u001a\u00020\u0015\u00a2\u0006\u0004\u0008q\u0010\"J\r\u0010r\u001a\u00020\n\u00a2\u0006\u0004\u0008r\u0010\u000cJ\r\u0010s\u001a\u00020\n\u00a2\u0006\u0004\u0008s\u0010\u000cJ\u0017\u0010v\u001a\u00020\n2\u0006\u0010u\u001a\u00020tH\u0014\u00a2\u0006\u0004\u0008v\u0010wJ\u000f\u0010x\u001a\u00020\nH\u0014\u00a2\u0006\u0004\u0008x\u0010\u000cJ/\u0010|\u001a\u00020\n2\u0006\u0010y\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u00062\u0006\u0010z\u001a\u00020\u00062\u0006\u0010{\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008|\u0010}J\u001a\u0010\u0080\u0001\u001a\u00020\n2\u0006\u0010\u007f\u001a\u00020~H\u0014\u00a2\u0006\u0006\u0008\u0080\u0001\u0010\u0081\u0001J\u001a\u0010\u0083\u0001\u001a\u00020\n2\u0007\u0010\u0082\u0001\u001a\u00020\u0006H\u0016\u00a2\u0006\u0005\u0008\u0083\u0001\u0010HJ\u0017\u0010\u0084\u0001\u001a\u00020\n2\u0006\u0010#\u001a\u00020\u0006\u00a2\u0006\u0005\u0008\u0084\u0001\u0010HJ\u0017\u0010\u0085\u0001\u001a\u00020\n2\u0006\u0010$\u001a\u00020\u0006\u00a2\u0006\u0005\u0008\u0085\u0001\u0010HJ \u0010\u0086\u0001\u001a\u00020\n2\u0006\u0010#\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u0006\u00a2\u0006\u0006\u0008\u0086\u0001\u0010\u0087\u0001J\u0019\u0010\u0089\u0001\u001a\u00020\n2\u0007\u0010\u0088\u0001\u001a\u00020\u0010\u00a2\u0006\u0006\u0008\u0089\u0001\u0010\u008a\u0001J$\u0010\u008d\u0001\u001a\u00020\n2\u0007\u0010\u008b\u0001\u001a\u00020\u00062\u0007\u0010\u008c\u0001\u001a\u00020\u0006H\u0014\u00a2\u0006\u0006\u0008\u008d\u0001\u0010\u0087\u0001J\u001a\u0010\u008f\u0001\u001a\u00020\n2\u0007\u0010\u008e\u0001\u001a\u00020\u0006H\u0007\u00a2\u0006\u0005\u0008\u008f\u0001\u0010HJ\u0018\u0010\u0091\u0001\u001a\u00020\n2\u0007\u0010\u0090\u0001\u001a\u00020\u0006\u00a2\u0006\u0005\u0008\u0091\u0001\u0010HJ\u001b\u0010\u0093\u0001\u001a\u00020\n2\u0007\u0010\u0092\u0001\u001a\u00020\u0010H\u0007\u00a2\u0006\u0006\u0008\u0093\u0001\u0010\u008a\u0001J\u0019\u0010\u0095\u0001\u001a\u00020\n2\u0007\u0010\u0094\u0001\u001a\u00020\u0010\u00a2\u0006\u0006\u0008\u0095\u0001\u0010\u008a\u0001J\u001b\u0010\u0097\u0001\u001a\u00020\n2\u0007\u0010\u0096\u0001\u001a\u00020\u0010H\u0007\u00a2\u0006\u0006\u0008\u0097\u0001\u0010\u008a\u0001J\u0019\u0010\u0099\u0001\u001a\u00020\n2\u0007\u0010\u0098\u0001\u001a\u00020\u0010\u00a2\u0006\u0006\u0008\u0099\u0001\u0010\u008a\u0001J\u001b\u0010\u009a\u0001\u001a\u00020\n2\u0007\u0010\u0092\u0001\u001a\u00020\u0010H\u0007\u00a2\u0006\u0006\u0008\u009a\u0001\u0010\u008a\u0001J\u0012\u0010\u009b\u0001\u001a\u0004\u0018\u00010\u0015\u00a2\u0006\u0006\u0008\u009b\u0001\u0010\u009c\u0001J\u0017\u0010\u009d\u0001\u001a\u00020\n2\u0006\u0010j\u001a\u00020\u0015\u00a2\u0006\u0005\u0008\u009d\u0001\u0010\"J\u001a\u0010\u009f\u0001\u001a\u00020\n2\u0007\u0010\u009e\u0001\u001a\u00020\u0006H\u0007\u00a2\u0006\u0005\u0008\u009f\u0001\u0010HJ\u001a\u0010\u00a1\u0001\u001a\u00020\n2\u0007\u0010\u00a0\u0001\u001a\u00020\u0015H\u0007\u00a2\u0006\u0005\u0008\u00a1\u0001\u0010\"J\u001a\u0010\u00a3\u0001\u001a\u00020\n2\u0007\u0010\u00a2\u0001\u001a\u00020\u0006H\u0007\u00a2\u0006\u0005\u0008\u00a3\u0001\u0010HJ&\u0010\u00a6\u0001\u001a\u00020\n2\t\u0008\u0001\u0010\u00a4\u0001\u001a\u00020\u00062\t\u0008\u0001\u0010\u00a5\u0001\u001a\u00020\u0006\u00a2\u0006\u0006\u0008\u00a6\u0001\u0010\u0087\u0001J+\u0010\u00aa\u0001\u001a\u00020\n2\u0007\u0010\u00a7\u0001\u001a\u00020\u00152\u0007\u0010\u00a8\u0001\u001a\u00020\u00152\u0007\u0010\u00a9\u0001\u001a\u00020\u0015\u00a2\u0006\u0006\u0008\u00aa\u0001\u0010\u00ab\u0001J\u000f\u0010\u00ac\u0001\u001a\u00020\n\u00a2\u0006\u0005\u0008\u00ac\u0001\u0010\u000cJ\u0019\u0010\u00ad\u0001\u001a\u00020:2\u0007\u0010\u0092\u0001\u001a\u00020\u0010\u00a2\u0006\u0006\u0008\u00ad\u0001\u0010\u00ae\u0001J\u0011\u0010\u00af\u0001\u001a\u00020\nH\u0014\u00a2\u0006\u0005\u0008\u00af\u0001\u0010\u000cJ\u001c\u0010\u00b2\u0001\u001a\u00020\u00102\u0008\u0010\u00b1\u0001\u001a\u00030\u00b0\u0001H\u0016\u00a2\u0006\u0006\u0008\u00b2\u0001\u0010\u00b3\u0001J\u0019\u0010\u00b4\u0001\u001a\u00020\n2\u0007\u0010\u0094\u0001\u001a\u00020\u0010\u00a2\u0006\u0006\u0008\u00b4\u0001\u0010\u008a\u0001J\u0011\u0010\u00b6\u0001\u001a\u00030\u00b5\u0001\u00a2\u0006\u0006\u0008\u00b6\u0001\u0010\u00b7\u0001J\u000f\u0010\u00b8\u0001\u001a\u00020\u0010\u00a2\u0006\u0005\u0008\u00b8\u0001\u0010\u0012J\u0019\u0010\u00b9\u0001\u001a\u00020\n2\u0007\u0010\u0094\u0001\u001a\u00020\u0010\u00a2\u0006\u0006\u0008\u00b9\u0001\u0010\u008a\u0001J\u001b\u0010\u00bb\u0001\u001a\u00020\n2\u0007\u0010\u00ba\u0001\u001a\u00020\u0010H\u0007\u00a2\u0006\u0006\u0008\u00bb\u0001\u0010\u008a\u0001J\u0011\u0010\u00bc\u0001\u001a\u00020\nH\u0007\u00a2\u0006\u0005\u0008\u00bc\u0001\u0010\u000cJ\u000f\u0010\u00bd\u0001\u001a\u00020\n\u00a2\u0006\u0005\u0008\u00bd\u0001\u0010\u000cJ\u001a\u0010\u00be\u0001\u001a\u00020\n2\t\u0008\u0001\u0010\u00a2\u0001\u001a\u00020\u0006\u00a2\u0006\u0005\u0008\u00be\u0001\u0010HJ\u0019\u0010\u00c0\u0001\u001a\u00020\n2\u0007\u0010\u00bf\u0001\u001a\u00020\u0010\u00a2\u0006\u0006\u0008\u00c0\u0001\u0010\u008a\u0001R\u0018\u0010\u00c4\u0001\u001a\u00030\u00c1\u00018\u0002X\u0082D\u00a2\u0006\u0008\n\u0006\u0008\u00c2\u0001\u0010\u00c3\u0001R\u0017\u0010\u00c7\u0001\u001a\u00030\u00c5\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u0014\u0010\u00c6\u0001R\u0018\u0010\u00c9\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0011\u0010\u00c8\u0001R\u0018\u0010\u00cb\u0001\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u000e\u0010\u00ca\u0001R\u0018\u0010\u00cc\u0001\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0013\u0010\u00ca\u0001R\u0017\u0010\u00cf\u0001\u001a\u00030\u00cd\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\r\u0010\u00ce\u0001R\u0018\u0010\u00d0\u0001\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u001d\u0010\u00ca\u0001R\u0018\u0010\u00d2\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008)\u0010\u00d1\u0001R\u0018\u0010\u00d3\u0001\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008!\u0010\u00ca\u0001R\u0018\u0010\u00d4\u0001\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u001f\u0010\u00ca\u0001R\u0017\u0010\u00d7\u0001\u001a\u00030\u00d5\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u000b\u0010\u00d6\u0001R\u0018\u0010\u00d9\u0001\u001a\u00030\u00d5\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00d8\u0001\u0010\u00d6\u0001R\u0018\u0010\u00db\u0001\u001a\u00030\u00d5\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00da\u0001\u0010\u00d6\u0001R\u0017\u0010\u00de\u0001\u001a\u00030\u00dc\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008%\u0010\u00dd\u0001R\u001b\u0010\u00e1\u0001\u001a\u0005\u0018\u00010\u00df\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u001a\u0010\u00e0\u0001R\u0019\u0010\u00e2\u0001\u001a\u00030\u00c5\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0016\u0010\u00c6\u0001R\u001a\u0010\u00e6\u0001\u001a\u00030\u00e3\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00e4\u0001\u0010\u00e5\u0001R\u0017\u0010\u00e8\u0001\u001a\u00020\u00068\u0002X\u0082D\u00a2\u0006\u0008\n\u0006\u0008\u00e7\u0001\u0010\u00c8\u0001R\u0019\u0010\u00ea\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00e9\u0001\u0010\u00d1\u0001R!\u0010\u00ed\u0001\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010l8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00eb\u0001\u0010\u00ec\u0001R,\u0010\u00f5\u0001\u001a\u0005\u0018\u00010\u00ee\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00ef\u0001\u0010\u00f0\u0001\u001a\u0006\u0008\u00f1\u0001\u0010\u00f2\u0001\"\u0006\u0008\u00f3\u0001\u0010\u00f4\u0001R\u001b\u0010\u00f6\u0001\u001a\u0005\u0018\u00010\u00ee\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008y\u0010\u00f0\u0001R)\u0010\u00fb\u0001\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0006\u0008\u00f7\u0001\u0010\u00f8\u0001\u001a\u0005\u0008\u00f9\u0001\u0010(\"\u0005\u0008\u00fa\u0001\u0010\u001bR\u0019\u0010\u00fd\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00fc\u0001\u0010\u00d1\u0001R\u0019\u0010\u00ff\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00fe\u0001\u0010\u00d1\u0001R\u0019\u0010\u0081\u0002\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0080\u0002\u0010\u00d1\u0001R\u0017\u0010\u0083\u0002\u001a\u00020\u00068\u0002X\u0082D\u00a2\u0006\u0008\n\u0006\u0008\u0082\u0002\u0010\u00c8\u0001R\u001a\u0010\u0087\u0002\u001a\u00030\u0084\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0085\u0002\u0010\u0086\u0002R\u0019\u0010\u0089\u0002\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0088\u0002\u0010\u00d1\u0001R\u0019\u0010\u008b\u0002\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008a\u0002\u0010\u00ca\u0001R\u0019\u0010\u008c\u0002\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ca\u0001\u0010\u00d1\u0001R\u0019\u0010\u008e\u0002\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008d\u0002\u0010\u00d1\u0001R!\u0010\u0094\u0002\u001a\u00030\u008f\u00028BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u0090\u0002\u0010\u0091\u0002\u001a\u0006\u0008\u0092\u0002\u0010\u0093\u0002R!\u0010\u0098\u0002\u001a\u00030\u0095\u00028BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00c8\u0001\u0010\u0091\u0002\u001a\u0006\u0008\u0096\u0002\u0010\u0097\u0002R!\u0010\u009b\u0002\u001a\u00030\u00b5\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u0099\u0002\u0010\u0091\u0002\u001a\u0006\u0008\u009a\u0002\u0010\u00b7\u0001R+\u0010\u00a1\u0002\u001a\r \u009d\u0002*\u0005\u0018\u00010\u009c\u00020\u009c\u00028BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u009e\u0002\u0010\u0091\u0002\u001a\u0006\u0008\u009f\u0002\u0010\u00a0\u0002R\u0019\u0010\u00a3\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a2\u0002\u0010\u00c8\u0001R!\u0010\u00a8\u0002\u001a\u00030\u00a4\u00028BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00a5\u0002\u0010\u0091\u0002\u001a\u0006\u0008\u00a6\u0002\u0010\u00a7\u0002\u00a8\u0006\u00ac\u0002"
    }
    d2 = {
        "Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Lzfb;",
        "l",
        "()V",
        "g",
        "e",
        "()Ljava/lang/Integer;",
        "",
        "d",
        "()Z",
        "f",
        "c",
        "",
        "q",
        "()F",
        "Landroid/view/View;",
        "forChild",
        "p",
        "(Landroid/view/View;)V",
        "child",
        "h",
        "(Landroid/view/View;)Z",
        "k",
        "shadowSize",
        "j",
        "(F)V",
        "width",
        "height",
        "o",
        "(III)Z",
        "getPressNextView",
        "()Landroid/view/View;",
        "i",
        "Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;",
        "config",
        "setLightTypeConfig",
        "(Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;)V",
        "Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;",
        "setElasticTypeConfig",
        "(Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;)V",
        "addMoreViews",
        "addOsLiquidEffectViews",
        "(ZLandroid/util/AttributeSet;)V",
        "onViewAdded",
        "brightness",
        "setStrokeBrightness",
        "setGapBrightness",
        "degrees",
        "setGapRotationDegrees",
        "",
        "floatArray",
        "setGradientStrokePosition",
        "([F)V",
        "",
        "color",
        "Landroid/graphics/BlendMode;",
        "strokeBlendMode",
        "setGradientStroke",
        "([ILandroid/graphics/BlendMode;)V",
        "getMixLevel",
        "()I",
        "mixLevel",
        "setMixLevel",
        "(I)V",
        "resetCustomLiquidStyle",
        "getRoundRadius",
        "bgColor",
        "setFillBasicColor",
        "basicBlendMode",
        "maskBlendMode",
        "setBgBlendMode",
        "(Landroid/graphics/BlendMode;Landroid/graphics/BlendMode;)V",
        "color1",
        "blendMode1",
        "color2",
        "blendMode2",
        "color3",
        "blendMode3",
        "setCustomMix",
        "(ILandroid/graphics/BlendMode;ILandroid/graphics/BlendMode;ILandroid/graphics/BlendMode;)V",
        "changed",
        "left",
        "top",
        "right",
        "bottom",
        "onLayout",
        "(ZIIII)V",
        "corner",
        "setShadowCorner",
        "shadowColor",
        "setShadowColor",
        "progress",
        "updShadowColor",
        "dy",
        "setShadowDy",
        "elevation",
        "setShadowElevation",
        "alpha",
        "setShadowAlpha",
        "Lkotlin/Function0;",
        "listener",
        "setOnLiquidClickListener",
        "(Lc74;)V",
        "scaleRatio",
        "setScaleRatio",
        "detachPressAnim",
        "attachPressAnim",
        "Landroid/content/res/Configuration;",
        "newConfig",
        "onConfigurationChanged",
        "(Landroid/content/res/Configuration;)V",
        "onAttachedToWindow",
        "w",
        "oldw",
        "oldh",
        "onSizeChanged",
        "(IIII)V",
        "Landroid/graphics/Canvas;",
        "canvas",
        "dispatchDraw",
        "(Landroid/graphics/Canvas;)V",
        "visibility",
        "setVisibility",
        "setActualWidth",
        "setActualHeight",
        "setActualSize",
        "(II)V",
        "showShadow",
        "setShowShadow",
        "(Z)V",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onMeasure",
        "blendColor",
        "setBlendColor",
        "defaultBgColor",
        "setDefaultBgColor",
        "nightMode",
        "setNightMode",
        "enable",
        "enableUnionBlur",
        "showBlenderColor",
        "setShowBlenderColor",
        "showOutline",
        "setShowOutline",
        "setBlurNightMode",
        "getBrandAlpha",
        "()Ljava/lang/Float;",
        "setBrandAlpha",
        "brandColor",
        "setBrandColor",
        "blurRadius",
        "setBlurRadius",
        "level",
        "setDialogMixLevel",
        "nightColor",
        "lightColor",
        "setDialogMiddleBlendColor",
        "alpha1",
        "alpha2",
        "alpha3",
        "setBackDropInnerColorsAlpha",
        "(FFF)V",
        "clearBackDropInnerColorsAlpha",
        "getBackDropDefaultAlphas",
        "(Z)[F",
        "onDetachedFromWindow",
        "Landroid/view/MotionEvent;",
        "event",
        "dispatchTouchEvent",
        "(Landroid/view/MotionEvent;)Z",
        "enableAlpha",
        "Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;",
        "getOsPressView",
        "()Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;",
        "isNightMode",
        "enabledPressView",
        "forceBCEffect",
        "setForceBCEffect",
        "setOnUnionRenderFrameAvailableListener",
        "executeFadeAnimation",
        "applyShadowLevel",
        "useBitmap",
        "setUseBitmapShadow",
        "",
        "b",
        "Ljava/lang/String;",
        "TAG",
        "Landroid/graphics/RectF;",
        "Landroid/graphics/RectF;",
        "mRectF",
        "I",
        "mShadowColor",
        "F",
        "mShadowAlphaProgress",
        "mShadowDy",
        "Landroid/graphics/Path;",
        "Landroid/graphics/Path;",
        "mRoundPath",
        "cornerRadius",
        "Z",
        "mShowShadow",
        "mShadowRadius",
        "mShadowRadiusBC",
        "Landroid/graphics/Paint;",
        "Landroid/graphics/Paint;",
        "shadowPaint",
        "m",
        "bitmapPaint",
        "n",
        "clearPaint",
        "Landroid/graphics/PorterDuffXfermode;",
        "Landroid/graphics/PorterDuffXfermode;",
        "clearPorterDuffXfermode",
        "Landroid/graphics/Bitmap;",
        "Landroid/graphics/Bitmap;",
        "mCachedShadowBitmap",
        "mShadowRect",
        "Lcom/transsion/hubsdk/api/graphics/TranCanvas;",
        "r",
        "Lcom/transsion/hubsdk/api/graphics/TranCanvas;",
        "mTranCanvas",
        "s",
        "maxBitmapSize",
        "t",
        "mUseBitmapShadow",
        "u",
        "Lc74;",
        "onClickListener",
        "Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;",
        "v",
        "Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;",
        "getMLiquidEffectView",
        "()Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;",
        "setMLiquidEffectView",
        "(Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;)V",
        "mLiquidEffectView",
        "mLiquidEffectView2",
        "x",
        "Landroid/view/View;",
        "getMLiquidEffectViewBgTransition",
        "setMLiquidEffectViewBgTransition",
        "mLiquidEffectViewBgTransition",
        "y",
        "mAddMoreViews",
        "z",
        "isDialog",
        "A",
        "mShowTransitionView",
        "B",
        "mBrandShadowColor",
        "Lcom/transsion/hubsdk/api/graphics/TranOutline;",
        "C",
        "Lcom/transsion/hubsdk/api/graphics/TranOutline;",
        "mTranOutline",
        "D",
        "mEnableAlpha",
        "E",
        "mCustomElevation",
        "mPreferShadowDyForElevation",
        "G",
        "mEnableDragAndLight",
        "Lcom/transsion/widgetslib/view/liquid/vfx/light/b;",
        "H",
        "Lyi5;",
        "getMVFXTouchLightHelper",
        "()Lcom/transsion/widgetslib/view/liquid/vfx/light/b;",
        "mVFXTouchLightHelper",
        "Lomb;",
        "getMVFXElasticDragHelper",
        "()Lomb;",
        "mVFXElasticDragHelper",
        "J",
        "getMOsPressSmoothCornerDrawable",
        "mOsPressSmoothCornerDrawable",
        "Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;",
        "kotlin.jvm.PlatformType",
        "K",
        "getMOSSpringPressSealAnimation",
        "()Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;",
        "mOSSpringPressSealAnimation",
        "L",
        "mShadowLevel",
        "Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner$AnimatorRunnable;",
        "M",
        "getMAnimatorRunnable",
        "()Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner$AnimatorRunnable;",
        "mAnimatorRunnable",
        "Companion",
        "AnimatorRunnable",
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
.field public static final CONTENT_ABOVE_LIQUID_Z_OFFSET:F = 1.0f

.field public static final Companion:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner$a;

.field public static final DEFAULT_SHADOW_COLOR:I = -0x1000000

.field public static final LEGACY_DEFAULT_SHADOW_COLOR:I = 0x14000000

.field public static final LIQUID_SCALE_RATIO_BUTTON:F = 1.25f

.field public static final LIQUID_SCALE_RATIO_CONTAINER:F = 1.05f

.field public static final LIQUID_SHADOW_RADIUS_BC:I = 0x8

.field public static final LIQUID_TRANSITION_VIEW_DURATION:J = 0x12cL


# instance fields
.field public A:Z

.field public final B:I

.field public C:Lcom/transsion/hubsdk/api/graphics/TranOutline;

.field public D:Z

.field public E:F

.field public F:Z

.field public G:Z

.field public final H:Lyi5;

.field public final I:Lyi5;

.field public final J:Lyi5;

.field public final K:Lyi5;

.field public L:I

.field public final M:Lyi5;

.field public final b:Ljava/lang/String;

.field public final c:Landroid/graphics/RectF;

.field public d:I

.field public e:F

.field public f:F

.field public final g:Landroid/graphics/Path;

.field public h:F

.field public i:Z

.field public j:F

.field public k:F

.field public final l:Landroid/graphics/Paint;

.field public final m:Landroid/graphics/Paint;

.field public final n:Landroid/graphics/Paint;

.field public final o:Landroid/graphics/PorterDuffXfermode;

.field public p:Landroid/graphics/Bitmap;

.field public q:Landroid/graphics/RectF;

.field public r:Lcom/transsion/hubsdk/api/graphics/TranCanvas;

.field public final s:I

.field public t:Z

.field public u:Lc74;

.field public v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

.field public w:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

.field public x:Landroid/view/View;

.field public y:Z

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->Companion:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner$a;

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

    invoke-direct/range {v1 .. v6}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    const-string p3, "OSLiquidContainerRootLa"

    iput-object p3, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->b:Ljava/lang/String;

    .line 6
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->c:Landroid/graphics/RectF;

    const/high16 p3, 0x14000000

    .line 7
    iput p3, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->d:I

    const/high16 p3, 0x3f800000    # 1.0f

    .line 8
    iput p3, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->e:F

    .line 9
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->g:Landroid/graphics/Path;

    const/high16 v0, 0x42b40000    # 90.0f

    .line 10
    iput v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->h:F

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->i:Z

    .line 12
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->l:Landroid/graphics/Paint;

    .line 13
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 14
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 15
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 16
    iput-object v1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->m:Landroid/graphics/Paint;

    .line 17
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->n:Landroid/graphics/Paint;

    .line 18
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->o:Landroid/graphics/PorterDuffXfermode;

    .line 19
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->q:Landroid/graphics/RectF;

    .line 20
    new-instance v1, Lcom/transsion/hubsdk/api/graphics/TranCanvas;

    invoke-direct {v1}, Lcom/transsion/hubsdk/api/graphics/TranCanvas;-><init>()V

    iput-object v1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->r:Lcom/transsion/hubsdk/api/graphics/TranCanvas;

    const/16 v1, 0x1000

    .line 21
    iput v1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->s:I

    .line 22
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->t:Z

    .line 23
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->A:Z

    const/high16 v1, 0x33000000

    .line 24
    iput v1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->B:I

    .line 25
    new-instance v1, Lcom/transsion/hubsdk/api/graphics/TranOutline;

    invoke-direct {v1}, Lcom/transsion/hubsdk/api/graphics/TranOutline;-><init>()V

    iput-object v1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->C:Lcom/transsion/hubsdk/api/graphics/TranOutline;

    const/high16 v1, -0x40800000    # -1.0f

    .line 26
    iput v1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->E:F

    .line 27
    new-instance v2, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner$mVFXTouchLightHelper$2;

    invoke-direct {v2, p1, p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner$mVFXTouchLightHelper$2;-><init>(Landroid/content/Context;Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;)V

    invoke-static {v2}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->H:Lyi5;

    .line 28
    new-instance v2, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner$mVFXElasticDragHelper$2;

    invoke-direct {v2, p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner$mVFXElasticDragHelper$2;-><init>(Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;)V

    invoke-static {v2}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->I:Lyi5;

    .line 29
    new-instance v2, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner$mOsPressSmoothCornerDrawable$2;

    invoke-direct {v2, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner$mOsPressSmoothCornerDrawable$2;-><init>(Landroid/content/Context;)V

    invoke-static {v2}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->J:Lyi5;

    .line 30
    new-instance v2, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner$mOSSpringPressSealAnimation$2;

    invoke-direct {v2, p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner$mOSSpringPressSealAnimation$2;-><init>(Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;)V

    invoke-static {v2}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->K:Lyi5;

    .line 31
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->f()V

    .line 32
    sget-object v2, Lcom/transsion/widgetslib/R$styleable;->OSLiquidContainer:[I

    const-string v3, "OSLiquidContainer"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 33
    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string v2, "obtainStyledAttributes(s\u2026efStyleAttr, defStyleRes)"

    invoke-static {p1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget v2, Lcom/transsion/widgetslib/R$styleable;->OSLiquidContainer_os_liquid_radius:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/widgetslib/R$dimen;->os_liquid_fob_default_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    .line 35
    iput v2, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->h:F

    .line 36
    sget v2, Lcom/transsion/widgetslib/R$styleable;->OSLiquidContainer_os_liquid_show_shadow:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 37
    iput-boolean v2, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->i:Z

    .line 38
    sget v2, Lcom/transsion/widgetslib/R$styleable;->OSLiquidContainer_os_liquid_shadow_color:I

    iget v4, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->d:I

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 39
    iput v2, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->d:I

    .line 40
    sget v2, Lcom/transsion/widgetslib/R$styleable;->OSLiquidContainer_os_liquid_dailog:I

    iget-boolean v4, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->z:Z

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->z:Z

    .line 41
    sget v2, Lcom/transsion/widgetslib/R$styleable;->OSLiquidContainer_os_liquid_show_transition_view:I

    iget-boolean v4, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->A:Z

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->A:Z

    .line 42
    sget v2, Lcom/transsion/widgetslib/R$styleable;->OSLiquidContainer_os_liquid_shadow_elevation:I

    const/4 v4, -0x1

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->E:F

    .line 43
    sget v2, Lcom/transsion/widgetslib/R$styleable;->OSLiquidContainer_os_liquid_shadow_alpha:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v4, v1, v2

    if-ltz v4, :cond_0

    .line 44
    invoke-static {v1, v2, p3}, Lwn8;->j(FFF)F

    move-result p3

    iput p3, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->e:F

    .line 45
    :cond_0
    sget p3, Lcom/transsion/widgetslib/R$styleable;->OSLiquidContainer_os_liquid_shadow_level:I

    invoke-virtual {p1, p3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->L:I

    .line 46
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 47
    sget-boolean p1, Lolb;->L:Z

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->t:Z

    .line 48
    invoke-virtual {p0, v3, p2}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->addOsLiquidEffectViews(ZLandroid/util/AttributeSet;)V

    .line 49
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 50
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    const/4 p1, 0x0

    .line 51
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 52
    new-instance p1, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner$mAnimatorRunnable$2;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner$mAnimatorRunnable$2;-><init>(Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;)V

    invoke-static {p1}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->M:Lyi5;

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
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->n(Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getCornerRadius$p(Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;)F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->h:F

    return p0
.end method

.method public static final synthetic access$getMShadowRect$p(Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->q:Landroid/graphics/RectF;

    return-object p0
.end method

.method public static synthetic b(Lc74;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->m(Lc74;Landroid/view/View;)V

    return-void
.end method

.method private final getMAnimatorRunnable()Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner$AnimatorRunnable;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->M:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner$AnimatorRunnable;

    return-object p0
.end method

.method private final getMOSSpringPressSealAnimation()Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->K:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    return-object p0
.end method

.method private final getMOsPressSmoothCornerDrawable()Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->J:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    return-object p0
.end method

.method private final getMVFXElasticDragHelper()Lomb;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->I:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lomb;

    return-object p0
.end method

.method private final getMVFXTouchLightHelper()Lcom/transsion/widgetslib/view/liquid/vfx/light/b;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->H:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/b;

    return-object p0
.end method

.method private final getPressNextView()Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static final m(Lc74;Landroid/view/View;)V
    .locals 0

    const-string p1, "$listener"

    invoke-static {p0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lc74;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public static final n(Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;Landroid/view/View;)V
    .locals 4

    const-string v0, "$this_apply"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->getTranView()Lcom/transsion/hubsdk/api/view/TranView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/transsion/hubsdk/api/view/TranView;->getRecordingFrameCount(Landroid/view/View;)J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    iget-object p2, p1, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->b:Ljava/lang/String;

    const-string v0, "setOnUnionRenderFrameAvailableListener: recordingFrameCount == 2"

    invoke-static {p2, v0}, Lbq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->executeFadeAnimation()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->clearOnUnionRenderFrameAvailableListener()V

    :cond_0
    return-void
.end method

.method public static synthetic setCustomMix$default(Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;ILandroid/graphics/BlendMode;ILandroid/graphics/BlendMode;ILandroid/graphics/BlendMode;ILjava/lang/Object;)V
    .locals 9

    if-nez p8, :cond_4

    and-int/lit8 v0, p7, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, p3

    :goto_0
    and-int/lit8 v0, p7, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move-object v6, v2

    goto :goto_1

    :cond_1
    move-object v6, p4

    :goto_1
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_2

    move v7, v1

    goto :goto_2

    :cond_2
    move v7, p5

    :goto_2
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_3

    move-object v8, v2

    goto :goto_3

    :cond_3
    move-object v8, p6

    :goto_3
    move-object v2, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setCustomMix(ILandroid/graphics/BlendMode;ILandroid/graphics/BlendMode;ILandroid/graphics/BlendMode;)V

    return-void

    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: setCustomMix"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final addOsLiquidEffectViews(ZLandroid/util/AttributeSet;)V
    .locals 10

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->y:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "context"

    const/4 v3, -0x1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v4 .. v9}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setElevation(F)V

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->enableShadow(Z)V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->w:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->w:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    :goto_0
    new-instance p1, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v4 .. v9}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget p2, Lcom/transsion/widgetslib/R$id;->os_liquid_auto_fill_id:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setId(I)V

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setElevation(F)V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-eq p1, v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->g()V

    :cond_3
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getMOsPressSmoothCornerDrawable()Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getRoundRadius()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->setCornerRadius(F)V

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getMOsPressSmoothCornerDrawable()Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->c()V

    return-void
.end method

.method public final applyShadowLevel(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
            to = 0x4L
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->t:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lolb;->I(Landroid/content/Context;I)[F

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iput p1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->L:I

    const/4 v1, 0x0

    aget v2, v0, v1

    iput v2, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->E:F

    iput-boolean v1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->F:Z

    const/4 v2, 0x1

    aget v2, v0, v2

    iput v2, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->e:F

    const/4 v2, 0x2

    aget v0, v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->d:I

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->applyShadowLevel(I)V

    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->i:Z

    if-nez p1, :cond_2

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->enableShadow(Z)V

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->p(Landroid/view/View;)V

    return-void
.end method

.method public final attachPressAnim()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->G:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getMOSSpringPressSealAnimation()Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->u(Z)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->t:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->enableShadow(Z)V

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->i:Z

    const/4 v3, 0x0

    if-nez v1, :cond_2

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->enableShadow(Z)V

    invoke-virtual {p0, v3}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->p(Landroid/view/View;)V

    return-void

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->enableShadow(Z)V

    iget v1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->L:I

    const/4 v4, 0x2

    if-lez v1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v4

    :goto_0
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->applyShadowLevel(I)V

    iget v1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->d:I

    const/high16 v5, 0x14000000

    if-eq v1, v5, :cond_4

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->setShadowColor(I)V

    :cond_4
    iget v1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->E:F

    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-ltz v5, :cond_5

    invoke-static {v0, v1, v2, v4, v3}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->setShadowElevation$default(Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;FIILjava/lang/Object;)V

    goto :goto_1

    :cond_5
    iget-boolean v1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->F:Z

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->f:F

    invoke-static {v0, v1, v2, v4, v3}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->setShadowElevation$default(Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;FIILjava/lang/Object;)V

    :cond_6
    :goto_1
    invoke-virtual {p0, v3}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->p(Landroid/view/View;)V

    return-void
.end method

.method public final clearBackDropInnerColorsAlpha()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->clearBackDropInnerColors()V

    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 1

    sget-boolean v0, Lolb;->O:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lolb;->X:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->z:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lolb;->K:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->A:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final detachPressAnim()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->G:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getMOSSpringPressSealAnimation()Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->u(Z)V

    :cond_0
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getMVFXTouchLightHelper()Lcom/transsion/widgetslib/view/liquid/vfx/light/b;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->h:F

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/transsion/widgetslib/view/liquid/vfx/light/b;->b(Landroid/graphics/Canvas;FFF)V

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->t:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-boolean v0, Lolb;->W:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->i:Z

    if-nez v0, :cond_3

    return-void

    :cond_3
    sget-boolean v0, Lolb;->V:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->k:F

    iput v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->j:F

    :cond_4
    iget v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->f:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->j:F

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    float-to-int v3, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->o(III)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->j(F)V

    :cond_5
    iget-object v1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->p:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_7

    neg-float v0, v0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_7
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getMVFXTouchLightHelper()Lcom/transsion/widgetslib/view/liquid/vfx/light/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/view/liquid/vfx/light/b;->c(Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getMVFXElasticDragHelper()Lomb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lomb;->b(Landroid/view/MotionEvent;)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getMOsPressSmoothCornerDrawable()Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->showWithFadeAnimation()V

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->D:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getPressNextView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    :cond_4
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getMOsPressSmoothCornerDrawable()Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->hideWithFadeAnimation()V

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->D:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getPressNextView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_6
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final e()Ljava/lang/Integer;
    .locals 4

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->getDefaultBgColor()I

    move-result v0

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "excludeAlphaColor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lbq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final enableAlpha(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->D:Z

    return-void
.end method

.method public final enableUnionBlur(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->setUseUnionBlur(Z)V

    :goto_0
    return-void
.end method

.method public final enabledPressView(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->G:Z

    if-nez v0, :cond_3

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getMOsPressSmoothCornerDrawable()Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->y:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getMOsPressSmoothCornerDrawable()Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getMOsPressSmoothCornerDrawable()Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :goto_0
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getMOsPressSmoothCornerDrawable()Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getMOsPressSmoothCornerDrawable()Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-eq p1, v0, :cond_3

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getMOsPressSmoothCornerDrawable()Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final executeFadeAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->x:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    new-instance v0, Li57;

    invoke-direct {v0}, Li57;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getMAnimatorRunnable()Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner$AnimatorRunnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final f()V
    .locals 2

    const/high16 v0, 0x14000000

    iput v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->d:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_liquid_shadow_dy:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->f:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_liquid_shadow_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->j:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lolb;->h(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->k:F

    return-void
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->x:Landroid/view/View;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->x:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->x:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-eq v2, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->x:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_0
    new-instance v1, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner$c;

    invoke-direct {v1, p0, v0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner$c;-><init>(Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->e()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3
    return-void
.end method

.method public final getBackDropDefaultAlphas(Z)[F
    .locals 1

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->getBackDropDefaultAlphas(Z)[F

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x3

    new-array p0, p0, [F

    const/4 p1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, p0, p1

    const/4 p1, 0x1

    aput v0, p0, p1

    const/4 p1, 0x2

    aput v0, p0, p1

    :cond_1
    return-object p0
.end method

.method public final getBrandAlpha()Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->getBrandAlpha()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getMLiquidEffectView()Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    return-object p0
.end method

.method public final getMLiquidEffectViewBgTransition()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->x:Landroid/view/View;

    return-object p0
.end method

.method public final getMixLevel()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->getMixLevel()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getOsPressView()Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getMOsPressSmoothCornerDrawable()Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    move-result-object p0

    return-object p0
.end method

.method public final getRoundRadius()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->h:F

    return p0
.end method

.method public final h(Landroid/view/View;)Z
    .locals 1

    instance-of v0, p1, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->x:Landroid/view/View;

    invoke-static {p1, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

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

.method public final i()Z
    .locals 1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {p0, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isNightMode()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final j(F)V
    .locals 8

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->p:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    float-to-int v1, p1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "createBitmap(width, height, config)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->p:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v2, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->l:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->l:Landroid/graphics/Paint;

    iget v3, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->j:F

    iget v4, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->f:F

    iget v5, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->d:I

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v2, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->q:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, p1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-virtual {v2, p1, p1, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    sget-object p1, Lnl5;->a:Lnl5;

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->q:Landroid/graphics/RectF;

    iget v2, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->h:F

    invoke-virtual {p1, v0, v2}, Lnl5;->d(Landroid/graphics/RectF;F)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/transsion/hubsdk/api/graphics/TranPath;->getInstance()Lcom/transsion/hubsdk/api/graphics/TranPath;

    move-result-object v2

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->q:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget v5, v0, Landroid/graphics/RectF;->right:F

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    iget v7, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->h:F

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/hubsdk/api/graphics/TranPath;->getSmoothCapsule(FFFFF)Landroid/graphics/Path;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->l:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->q:Landroid/graphics/RectF;

    iget v2, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->h:F

    iget-object v3, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->l:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->n:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->o:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->q:Landroid/graphics/RectF;

    iget v2, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->h:F

    invoke-virtual {p1, v0, v2}, Lnl5;->d(Landroid/graphics/RectF;F)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/transsion/hubsdk/api/graphics/TranPath;->getInstance()Lcom/transsion/hubsdk/api/graphics/TranPath;

    move-result-object v2

    iget-object p1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->q:Landroid/graphics/RectF;

    iget v3, p1, Landroid/graphics/RectF;->left:F

    iget v4, p1, Landroid/graphics/RectF;->top:F

    iget v5, p1, Landroid/graphics/RectF;->right:F

    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    iget v7, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->h:F

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/hubsdk/api/graphics/TranPath;->getSmoothCapsule(FFFFF)Landroid/graphics/Path;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->n:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->q:Landroid/graphics/RectF;

    iget v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->h:F

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->n:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v0, v0, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final k()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->x:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setOnUnionRenderFrameAvailableListener()V

    return-void
.end method

.method public final l()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getMVFXTouchLightHelper()Lcom/transsion/widgetslib/view/liquid/vfx/light/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/view/liquid/vfx/light/b;->a(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getMVFXTouchLightHelper()Lcom/transsion/widgetslib/view/liquid/vfx/light/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->isNightMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/view/liquid/vfx/light/b;->f(Z)V

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getMVFXElasticDragHelper()Lomb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lomb;->a(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getMVFXTouchLightHelper()Lcom/transsion/widgetslib/view/liquid/vfx/light/b;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/view/liquid/vfx/light/b;->e(II)V

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getMVFXElasticDragHelper()Lomb;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lomb;->d(II)V

    :cond_1
    return-void
.end method

.method public final o(III)Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->p:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    mul-int/lit8 p3, p3, 0x2

    add-int/2addr p1, p3

    iget v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->s:I

    invoke-static {p1, v0}, Lwn8;->g(II)I

    move-result p1

    add-int/2addr p2, p3

    iget p3, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->s:I

    invoke-static {p2, p3}, Lwn8;->g(II)I

    move-result p2

    const/4 p3, 0x0

    if-lez p1, :cond_4

    if-lez p2, :cond_4

    iget v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->s:I

    if-gt p1, v0, :cond_4

    if-le p2, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->p:Landroid/graphics/Bitmap;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_3

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->p:Landroid/graphics/Bitmap;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    if-eq p0, p2, :cond_2

    goto :goto_0

    :cond_2
    move v1, p3

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    return p3
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->l()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->k()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getMVFXTouchLightHelper()Lcom/transsion/widgetslib/view/liquid/vfx/light/b;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->isNightMode()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/widgetslib/view/liquid/vfx/light/b;->f(Z)V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->p:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->p:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getMAnimatorRunnable()Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner$AnimatorRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->x:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->clearOnUnionRenderFrameAvailableListener()V

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getMVFXTouchLightHelper()Lcom/transsion/widgetslib/view/liquid/vfx/light/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/liquid/vfx/light/b;->d()V

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getMVFXElasticDragHelper()Lomb;

    move-result-object p0

    invoke-virtual {p0}, Lomb;->c()V

    :cond_4
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object p2, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->c:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p4

    int-to-float p4, p4

    const/4 p5, 0x0

    invoke-virtual {p2, p5, p5, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->g:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    iget-boolean p2, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->t:Z

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->g:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->c:Landroid/graphics/RectF;

    iget p0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->j:F

    sget-object p3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, p0, p0, p3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->g:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->c:Landroid/graphics/RectF;

    iget p4, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->h:F

    sget-object p5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, p3, p4, p4, p5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->invalidateOutline()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v2, v0, :cond_8

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    if-nez v6, :cond_7

    instance-of v6, v5, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->x:Landroid/view/View;

    invoke-static {v5, v6}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {p0, v5, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v3, v6}, Lwn8;->d(II)I

    move-result v3

    const-string v6, "child"

    invoke-static {v5, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v8, :cond_1

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v6}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v6

    goto :goto_1

    :cond_1
    move v6, v1

    :goto_1
    add-int/2addr v3, v6

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v8, :cond_2

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v6}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v6

    goto :goto_2

    :cond_2
    move v6, v1

    :goto_2
    add-int/2addr v3, v6

    invoke-static {v4, v7}, Lwn8;->d(II)I

    move-result v4

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v8, 0x0

    if-eqz v7, :cond_3

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_3

    :cond_3
    move-object v6, v8

    :goto_3
    if-eqz v6, :cond_4

    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_4

    :cond_4
    move v6, v1

    :goto_4
    add-int/2addr v4, v6

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v6, :cond_5

    move-object v8, v5

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_5
    if-eqz v8, :cond_6

    iget v5, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_5

    :cond_6
    move v5, v1

    :goto_5
    add-int/2addr v4, v5

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v5, -0x80000000

    if-ne v0, v5, :cond_9

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_9
    if-ne v1, v5, :cond_a

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_a
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string v1, "layoutParams"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    if-ne v2, v3, :cond_b

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-eq v2, v3, :cond_e

    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->x:Landroid/view/View;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-ne v1, v2, :cond_c

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-eq v1, v2, :cond_d

    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_d
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :cond_e
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getMVFXElasticDragHelper()Lomb;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lomb;->d(II)V

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getMVFXTouchLightHelper()Lcom/transsion/widgetslib/view/liquid/vfx/light/b;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/view/liquid/vfx/light/b;->e(II)V

    :cond_0
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 1

    const-string v0, "child"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->h(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->p(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final p(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->q()F

    move-result v0

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->h(Landroid/view/View;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationZ(F)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_3

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "child"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->h(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationZ(F)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final q()F
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->i:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result p0

    cmpg-float v0, p0, v1

    if-gtz v0, :cond_1

    return v1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p0, v0

    return p0

    :cond_2
    return v1
.end method

.method public final resetCustomLiquidStyle()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->resetCustomLiquidStyle()V

    :cond_0
    return-void
.end method

.method public final setActualHeight(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->setActualHeight(I)V

    :cond_0
    return-void
.end method

.method public final setActualSize(II)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->setActualSize(II)V

    :cond_0
    return-void
.end method

.method public final setActualWidth(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->setActualWidth(I)V

    :cond_0
    return-void
.end method

.method public final setBackDropInnerColorsAlpha(FFF)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->setBackDropInnerColorsAlpha(FFF)V

    :cond_0
    return-void
.end method

.method public final setBgBlendMode(Landroid/graphics/BlendMode;Landroid/graphics/BlendMode;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    const-string v0, "basicBlendMode"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "maskBlendMode"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->setBgBlendMode(Landroid/graphics/BlendMode;Landroid/graphics/BlendMode;)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setBlendColor(I)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1f
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->setBackdrop(I)V

    :cond_0
    return-void
.end method

.method public final setBlurNightMode(Z)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1f
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " setBlurNightMode = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbq5;->b(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->setBlurNightMode(Z)V

    :cond_0
    return-void
.end method

.method public final setBlurRadius(F)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1f
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " setBlurRadius = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbq5;->b(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->setBlurRadius(F)V

    :cond_0
    return-void
.end method

.method public final setBrandAlpha(F)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->setBrandAlpha(F)V

    :cond_0
    return-void
.end method

.method public final setBrandColor(I)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1f
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " setBrandColor = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbq5;->b(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->setBrandColor(I)V

    :cond_0
    return-void
.end method

.method public final setCustomMix(ILandroid/graphics/BlendMode;ILandroid/graphics/BlendMode;ILandroid/graphics/BlendMode;)V
    .locals 7
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1f
    .end annotation

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->setCustomMix(ILandroid/graphics/BlendMode;ILandroid/graphics/BlendMode;ILandroid/graphics/BlendMode;)V

    :cond_0
    return-void
.end method

.method public final setDefaultBgColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->setDefaultBgColor(I)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->x:Landroid/view/View;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method

.method public final setDialogMiddleBlendColor(II)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->setDialogMiddleBlendColor(II)V

    :cond_0
    return-void
.end method

.method public final setDialogMixLevel(I)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1f
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->setLiquidLevel(I)V

    :cond_0
    return-void
.end method

.method public final setElasticTypeConfig(Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lolb;->P:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->G:Z

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getMVFXElasticDragHelper()Lomb;

    move-result-object p0

    invoke-virtual {p0, p1}, Lomb;->setElasticTypeConfig(Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;)V

    :cond_0
    return-void
.end method

.method public final setFillBasicColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->setFillColor(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setForceBCEffect(Z)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1f
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->setForceBCEffect(Z)V

    :cond_0
    return-void
.end method

.method public final setGapBrightness(F)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->setGapBrightness(F)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setGapRotationDegrees(F)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->setGapRotationDegrees(F)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setGradientStroke([ILandroid/graphics/BlendMode;)V
    .locals 1

    const-string v0, "color"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "strokeBlendMode"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->setGradientStrokeColor([I)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->setStrokeBlendMode(Landroid/graphics/BlendMode;)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setGradientStrokePosition([F)V
    .locals 1

    const-string v0, "floatArray"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->setGradientStrokePosition([F)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setLightTypeConfig(Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lolb;->P:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->G:Z

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getMVFXTouchLightHelper()Lcom/transsion/widgetslib/view/liquid/vfx/light/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/liquid/vfx/light/b;->setLightTypeConfig(Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;)V

    :cond_0
    return-void
.end method

.method public final setMLiquidEffectView(Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    return-void
.end method

.method public final setMLiquidEffectViewBgTransition(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->x:Landroid/view/View;

    return-void
.end method

.method public final setMixLevel(I)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1f
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->setMixLevel(I)V

    :cond_0
    return-void
.end method

.method public final setNightMode(Z)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1f
    .end annotation

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->setNightMode(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setOnLiquidClickListener(Lc74;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc74;",
            ")V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->G:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->u:Lc74;

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getMOSSpringPressSealAnimation()Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    move-result-object p1

    new-instance v0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner$b;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->u:Lc74;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner$b;-><init>(Lc74;)V

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->setOnSpringClickListener(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$h;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lz57;

    invoke-direct {v0, p1}, Lz57;-><init>(Lc74;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public final setOnUnionRenderFrameAvailableListener()V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x18
    .end annotation

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    if-eqz v0, :cond_0

    new-instance v1, Ly57;

    invoke-direct {v1, v0, p0}, Ly57;-><init>(Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->setOnUnionRenderFrameAvailableListener(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public final setScaleRatio(F)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->G:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getMOSSpringPressSealAnimation()Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->setEndValue(F)V

    :cond_0
    return-void
.end method

.method public final setShadowAlpha(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lwn8;->j(FFF)F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->e:F

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->t:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->setShadowAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setShadowColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->d:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->d:I

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->t:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->setShadowColor(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final setShadowCorner(F)V
    .locals 1

    iget v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->h:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->h:F

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->setRadius(F)V

    :cond_1
    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->t:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->invalidateOutline()V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setShadowDy(F)V
    .locals 4

    iput p1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->f:F

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->t:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->F:Z

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, p1, v2, v3, v1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->setShadowElevation$default(Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;FIILjava/lang/Object;)V

    :cond_1
    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->p(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public final setShadowElevation(F)V
    .locals 4

    iput p1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->E:F

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->t:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->F:Z

    iget-object v1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    invoke-static {v1, p1, v0, v3, v2}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->setShadowElevation$default(Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;FIILjava/lang/Object;)V

    :cond_1
    invoke-virtual {p0, v2}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->p(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public final setShowBlenderColor(Z)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1f
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " showBlenderColor = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbq5;->b(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->setShowBlenderColor(Z)V

    :cond_0
    return-void
.end method

.method public final setShowOutline(Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " setShowOutline = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbq5;->b(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->setShowOutline(Z)V

    :cond_0
    return-void
.end method

.method public final setShowShadow(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->i:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->i:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " showShadow = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbq5;->b(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->t:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->c()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->enableShadow(Z)V

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->p(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public final setStrokeBrightness(F)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->setStrokeBrightness(F)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setUseBitmapShadow(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->t:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->t:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->enableShadow(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->p:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->p:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->c()V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final updShadowColor(F)V
    .locals 1

    iput p1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->e:F

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->t:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->v:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->setShadowAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method
