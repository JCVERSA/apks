.class public final Lcom/transsion/onlinevideo/tiktok/TiktokFragment;
.super Lcom/transsion/playercommon/fragments/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lyia;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/onlinevideo/tiktok/TiktokFragment$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00d8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u000c\n\u0002\u0010\u000e\n\u0002\u0008(\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0010\t\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0008\u0007*\u0002\u00df\u0001\u0018\u0000 \u00e3\u00012\u00020\u00012\u00020\u0002:\u0002\u00e4\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u0017\u0010\t\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0004J\u0011\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0004J\u000f\u0010\u0015\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0004J\u000f\u0010\u0016\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0004J\u000f\u0010\u0017\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0004J\u001f\u0010\u001b\u001a\u00020\u00052\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0018H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0017\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u001dH\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0017\u0010\"\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\"\u0010\nJ\u0017\u0010$\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008$\u0010\nJ\u001d\u0010&\u001a\u00020\u00052\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0018H\u0002\u00a2\u0006\u0004\u0008&\u0010\u001cJ\u0017\u0010\'\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\'\u0010\nJ!\u0010+\u001a\u00020*2\u0006\u0010(\u001a\u00020\u00072\u0008\u0010)\u001a\u0004\u0018\u00010\u0019H\u0002\u00a2\u0006\u0004\u0008+\u0010,J\u000f\u0010-\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008-\u0010.J\u000f\u0010/\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008/\u0010.J\u0017\u00101\u001a\u00020\u00052\u0006\u00100\u001a\u00020*H\u0002\u00a2\u0006\u0004\u00081\u00102J\u000f\u00103\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u00083\u0010\u0004J\u0017\u00104\u001a\u00020\u00052\u0006\u00100\u001a\u00020*H\u0002\u00a2\u0006\u0004\u00084\u00102J\u000f\u00105\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u00085\u0010\u0004J\u0017\u00106\u001a\u00020\u00052\u0006\u00100\u001a\u00020*H\u0002\u00a2\u0006\u0004\u00086\u00102J\u000f\u00107\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u00087\u0010\u0004J\u000f\u00108\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u00088\u0010\u0004J\u0017\u00109\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u00089\u0010\nJ\u0019\u0010;\u001a\u00020\u00052\u0008\u0008\u0002\u0010:\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008;\u0010\u000eJ\u0017\u0010=\u001a\u00020\u00052\u0006\u0010<\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008=\u0010\nJ\u000f\u0010>\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008>\u0010\u0004J\u000f\u0010?\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008?\u0010\u0004J\u0017\u0010@\u001a\u00020\u00052\u0006\u00100\u001a\u00020*H\u0002\u00a2\u0006\u0004\u0008@\u00102J\u000f\u0010A\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008A\u0010\u0004J\u000f\u0010B\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008B\u0010\u0004J\u000f\u0010C\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008C\u0010\u0004J\u000f\u0010D\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008D\u0010\u0004J\u0017\u0010F\u001a\u00020\u00052\u0006\u0010E\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008F\u0010\nJ\u0017\u0010H\u001a\u00020\u00052\u0006\u0010G\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008H\u0010\nJ\u000f\u0010I\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008I\u0010\u0004J\u000f\u0010J\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008J\u0010\u0004J\u000f\u0010K\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008K\u0010\u0004J\u000f\u0010L\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008L\u0010\u0004J\u0017\u0010N\u001a\u00020\u00052\u0006\u0010M\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008N\u0010\nJ\u000f\u0010O\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008O\u0010.J\u000f\u0010P\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008P\u0010\u0004J\u000f\u0010Q\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008Q\u0010\u0004J\u000f\u0010R\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008R\u0010.J\r\u0010T\u001a\u00020S\u00a2\u0006\u0004\u0008T\u0010UJ\r\u0010V\u001a\u00020\u000b\u00a2\u0006\u0004\u0008V\u0010.J\u0019\u0010Y\u001a\u00020\u00052\u0008\u0010X\u001a\u0004\u0018\u00010WH\u0016\u00a2\u0006\u0004\u0008Y\u0010ZJ-\u0010_\u001a\u0004\u0018\u00010\u00102\u0006\u0010\\\u001a\u00020[2\u0008\u0010^\u001a\u0004\u0018\u00010]2\u0008\u0010X\u001a\u0004\u0018\u00010WH\u0016\u00a2\u0006\u0004\u0008_\u0010`J\u000f\u0010a\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u0008a\u0010bJ!\u0010d\u001a\u00020\u00052\u0006\u0010c\u001a\u00020\u00102\u0008\u0010X\u001a\u0004\u0018\u00010WH\u0016\u00a2\u0006\u0004\u0008d\u0010eJ\u001f\u0010h\u001a\u00020\u00052\u0006\u0010f\u001a\u00020\u00072\u0006\u00100\u001a\u00020gH\u0016\u00a2\u0006\u0004\u0008h\u0010iJ%\u0010j\u001a\u00020\u00052\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00182\u0006\u00100\u001a\u00020gH\u0016\u00a2\u0006\u0004\u0008j\u0010kJ\u0013\u0010l\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0018\u00a2\u0006\u0004\u0008l\u0010mJ\r\u0010n\u001a\u00020\u000b\u00a2\u0006\u0004\u0008n\u0010.J\r\u0010o\u001a\u00020\u0005\u00a2\u0006\u0004\u0008o\u0010\u0004J/\u0010t\u001a\u00020\u00052\u0006\u0010p\u001a\u00020\u00072\u0016\u0010s\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010r0q\"\u0004\u0018\u00010rH\u0016\u00a2\u0006\u0004\u0008t\u0010uJ\u000f\u0010v\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008v\u0010\u0004J\u000f\u0010w\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008w\u0010\u0004J\u000f\u0010x\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008x\u0010\u0004J\u0017\u0010z\u001a\u00020\u00052\u0006\u0010y\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008z\u0010\u000eJ\u0017\u0010|\u001a\u00020\u00052\u0006\u0010{\u001a\u00020\u000bH\u0017\u00a2\u0006\u0004\u0008|\u0010\u000eJ\u000f\u0010}\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008}\u0010\u0004J\u001a\u0010\u0080\u0001\u001a\u00020\u00052\u0008\u0010\u007f\u001a\u0004\u0018\u00010~\u00a2\u0006\u0006\u0008\u0080\u0001\u0010\u0081\u0001J\u000f\u0010\u0082\u0001\u001a\u00020\u0005\u00a2\u0006\u0005\u0008\u0082\u0001\u0010\u0004J\u0011\u0010\u0083\u0001\u001a\u00020\u000bH\u0016\u00a2\u0006\u0005\u0008\u0083\u0001\u0010.R*\u0010\u0089\u0001\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0006\u0008\u0084\u0001\u0010\u0085\u0001\u001a\u0005\u0008\u0086\u0001\u0010\u0012\"\u0006\u0008\u0087\u0001\u0010\u0088\u0001R\u001c\u0010\u008d\u0001\u001a\u0005\u0018\u00010\u008a\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008b\u0001\u0010\u008c\u0001R\u001c\u0010\u0091\u0001\u001a\u0005\u0018\u00010\u008e\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008f\u0001\u0010\u0090\u0001R\u001c\u0010\u0093\u0001\u001a\u0005\u0018\u00010\u008e\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0092\u0001\u0010\u0090\u0001R\u001c\u0010\u0095\u0001\u001a\u0005\u0018\u00010\u008e\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0094\u0001\u0010\u0090\u0001R\u0019\u0010\u0098\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0096\u0001\u0010\u0097\u0001R\u001c\u0010\u009c\u0001\u001a\u0005\u0018\u00010\u0099\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009a\u0001\u0010\u009b\u0001R\u001b\u0010\u009f\u0001\u001a\u0004\u0018\u00010]8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009d\u0001\u0010\u009e\u0001R\u001b\u0010\u00a1\u0001\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a0\u0001\u0010\u0085\u0001R\u001c\u0010\u00a5\u0001\u001a\u0005\u0018\u00010\u00a2\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a3\u0001\u0010\u00a4\u0001R\u001c\u0010\u00a7\u0001\u001a\u0005\u0018\u00010\u00a2\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a6\u0001\u0010\u00a4\u0001R\u001c\u0010\u00a9\u0001\u001a\u0005\u0018\u00010\u00a2\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a8\u0001\u0010\u00a4\u0001R\u0019\u0010\u00ac\u0001\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00aa\u0001\u0010\u00ab\u0001R\u0019\u0010\u00ae\u0001\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ad\u0001\u0010\u00ab\u0001R*\u0010\u007f\u001a\u0004\u0018\u00010~8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00af\u0001\u0010\u00b0\u0001\u001a\u0006\u0008\u00b1\u0001\u0010\u00b2\u0001\"\u0006\u0008\u00b3\u0001\u0010\u0081\u0001R\u0019\u0010\u00b5\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b4\u0001\u0010\u0097\u0001R\u001a\u0010\u00b9\u0001\u001a\u00030\u00b6\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b7\u0001\u0010\u00b8\u0001R\u0019\u0010\u00bb\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ba\u0001\u0010\u0097\u0001R\u0019\u0010\u00be\u0001\u001a\u00020*8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00bc\u0001\u0010\u00bd\u0001R\u0019\u0010\u00c0\u0001\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00bf\u0001\u0010\u00ab\u0001R\u001c\u0010\u00c4\u0001\u001a\u0005\u0018\u00010\u00c1\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c2\u0001\u0010\u00c3\u0001R\u001c\u0010\u00c8\u0001\u001a\u0005\u0018\u00010\u00c5\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c6\u0001\u0010\u00c7\u0001R\u0018\u0010\u00cc\u0001\u001a\u00030\u00c9\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00ca\u0001\u0010\u00cb\u0001R\u0019\u0010\u00cd\u0001\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0097\u0001\u0010\u00ab\u0001R)\u0010\u00d1\u0001\u001a\u0014\u0012\u0004\u0012\u00020*0\u00ce\u0001j\t\u0012\u0004\u0012\u00020*`\u00cf\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00b8\u0001\u0010\u00d0\u0001R\u0017\u0010\u00d4\u0001\u001a\u00020S8\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00d2\u0001\u0010\u00d3\u0001R\u0019\u0010\u00d6\u0001\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d5\u0001\u0010\u00ab\u0001R\u0019\u0010\u00d8\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d7\u0001\u0010\u0097\u0001R\u0019\u0010\u00da\u0001\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d9\u0001\u0010\u00ab\u0001R\u0019\u0010\u00dc\u0001\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00db\u0001\u0010\u00ab\u0001R\u0019\u0010\u00de\u0001\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00dd\u0001\u0010\u00ab\u0001R\u0018\u0010\u00e2\u0001\u001a\u00030\u00df\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00e0\u0001\u0010\u00e1\u0001\u00a8\u0006\u00e5\u0001"
    }
    d2 = {
        "Lcom/transsion/onlinevideo/tiktok/TiktokFragment;",
        "Lcom/transsion/playercommon/fragments/BaseFragment;",
        "Lyia;",
        "<init>",
        "()V",
        "Lzfb;",
        "s1",
        "",
        "navigationBarBottom",
        "v0",
        "(I)V",
        "",
        "loading",
        "L0",
        "(Z)V",
        "J0",
        "Landroid/view/View;",
        "B0",
        "()Landroid/view/View;",
        "f1",
        "C1",
        "u1",
        "Q0",
        "T0",
        "",
        "Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;",
        "list",
        "e1",
        "(Ljava/util/List;)V",
        "",
        "err",
        "d1",
        "(Ljava/lang/Throwable;)V",
        "position",
        "a1",
        "videoGlobalPosition",
        "Z0",
        "removedPositions",
        "q0",
        "z1",
        "globalPosition",
        "article",
        "",
        "y0",
        "(ILcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;)Ljava/lang/String;",
        "P0",
        "()Z",
        "I0",
        "reason",
        "Y0",
        "(Ljava/lang/String;)V",
        "G0",
        "x0",
        "w0",
        "y1",
        "h1",
        "i1",
        "H0",
        "reclaimForeignMute",
        "t0",
        "center",
        "m1",
        "F0",
        "F1",
        "E0",
        "D1",
        "A0",
        "j1",
        "k1",
        "hintType",
        "p1",
        "networkType",
        "z0",
        "l1",
        "r0",
        "n1",
        "s0",
        "state",
        "G1",
        "M0",
        "A1",
        "B1",
        "N0",
        "Lbka;",
        "b1",
        "()Lbka;",
        "c1",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "onLayoutId",
        "()I",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "removedGlobalIndex",
        "Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;",
        "f",
        "(ILcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V",
        "e",
        "(Ljava/util/List;Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V",
        "x1",
        "()Ljava/util/List;",
        "O0",
        "g1",
        "eventId",
        "",
        "",
        "args",
        "didReceivedNotification",
        "(I[Ljava/lang/Object;)V",
        "markPointPageShow",
        "onPause",
        "onDestroy",
        "isVisible",
        "setParentVisible",
        "isVisibleToUser",
        "setUserVisibleHint",
        "onResume",
        "Lcom/transsion/onlinevideo/home/OnlineHomeFragment$e;",
        "mTopBarCallback",
        "r1",
        "(Lcom/transsion/onlinevideo/home/OnlineHomeFragment$e;)V",
        "w1",
        "onBackPressed",
        "l",
        "Landroid/view/View;",
        "getMFragmentView",
        "setMFragmentView",
        "(Landroid/view/View;)V",
        "mFragmentView",
        "Lcom/transsion/utils/NetworkObserver;",
        "m",
        "Lcom/transsion/utils/NetworkObserver;",
        "networkObserver",
        "Ljava/lang/Runnable;",
        "n",
        "Ljava/lang/Runnable;",
        "networkStateDebounceRunnable",
        "o",
        "resumePlaybackRunnable",
        "p",
        "applyNetworkOnVisibleRunnable",
        "q",
        "I",
        "mNetState",
        "Landroidx/viewpager2/widget/ViewPager2;",
        "r",
        "Landroidx/viewpager2/widget/ViewPager2;",
        "mVpVideos",
        "s",
        "Landroid/view/ViewGroup;",
        "mRootContainer",
        "t",
        "mEmptyView",
        "Landroid/widget/LinearLayout;",
        "u",
        "Landroid/widget/LinearLayout;",
        "mLoadingView",
        "v",
        "mNoWifiView",
        "w",
        "mNoContentView",
        "x",
        "Z",
        "mIsLoading",
        "y",
        "mHaveNetWork",
        "z",
        "Lcom/transsion/onlinevideo/home/OnlineHomeFragment$e;",
        "getMTopBarCallback",
        "()Lcom/transsion/onlinevideo/home/OnlineHomeFragment$e;",
        "setMTopBarCallback",
        "A",
        "mHeaderMargin",
        "",
        "B",
        "J",
        "mTrackLastShowTime",
        "C",
        "mChannelId",
        "D",
        "Ljava/lang/String;",
        "mChannelName",
        "E",
        "mTrackVisibleTab",
        "Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;",
        "F",
        "Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;",
        "mAdapter",
        "Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;",
        "G",
        "Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;",
        "mRepository",
        "Lgd1;",
        "H",
        "Lgd1;",
        "mDisposables",
        "mLoadingMore",
        "Ljava/util/HashSet;",
        "Lkotlin/collections/HashSet;",
        "Ljava/util/HashSet;",
        "mClientShowReportedKeys",
        "K",
        "Lbka;",
        "mMuteSession",
        "L",
        "mMuteEnterApplied",
        "M",
        "mMuteLastPagePosition",
        "N",
        "mVolumeObserverRegistered",
        "O",
        "mHostPlaybackSuspended",
        "P",
        "mPendingResumePlayback",
        "com/transsion/onlinevideo/tiktok/TiktokFragment$b",
        "Q",
        "Lcom/transsion/onlinevideo/tiktok/TiktokFragment$b;",
        "mNetworkStatusCallback",
        "R",
        "a",
        "onlinevideo_release"
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
.field public static final R:Lcom/transsion/onlinevideo/tiktok/TiktokFragment$a;


# instance fields
.field public A:I

.field public B:J

.field public C:I

.field public D:Ljava/lang/String;

.field public E:Z

.field public F:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

.field public G:Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;

.field public final H:Lgd1;

.field public volatile I:Z

.field public final J:Ljava/util/HashSet;

.field public final K:Lbka;

.field public L:Z

.field public M:I

.field public N:Z

.field public O:Z

.field public P:Z

.field public final Q:Lcom/transsion/onlinevideo/tiktok/TiktokFragment$b;

.field public l:Landroid/view/View;

.field public m:Lcom/transsion/utils/NetworkObserver;

.field public n:Ljava/lang/Runnable;

.field public o:Ljava/lang/Runnable;

.field public p:Ljava/lang/Runnable;

.field public q:I

.field public r:Landroidx/viewpager2/widget/ViewPager2;

.field public s:Landroid/view/ViewGroup;

.field public t:Landroid/view/View;

.field public u:Landroid/widget/LinearLayout;

.field public v:Landroid/widget/LinearLayout;

.field public w:Landroid/widget/LinearLayout;

.field public volatile x:Z

.field public y:Z

.field public z:Lcom/transsion/onlinevideo/home/OnlineHomeFragment$e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->R:Lcom/transsion/onlinevideo/tiktok/TiktokFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->C:I

    const-string v1, ""

    iput-object v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->D:Ljava/lang/String;

    new-instance v1, Lgd1;

    invoke-direct {v1}, Lgd1;-><init>()V

    iput-object v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->H:Lgd1;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->J:Ljava/util/HashSet;

    new-instance v1, Lbka;

    invoke-direct {v1}, Lbka;-><init>()V

    iput-object v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->K:Lbka;

    iput v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->M:I

    new-instance v0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment$b;

    invoke-direct {v0, p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment$b;-><init>(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;)V

    iput-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->Q:Lcom/transsion/onlinevideo/tiktok/TiktokFragment$b;

    return-void
.end method

.method private final B0()Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->t:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->l:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    sget v2, Lcom/transsion/onlinevideo/R$id;->online_video_empty_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    :try_start_0
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->t:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inflate empty stub error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "visha_TiktokFragment"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget v2, Lcom/transsion/onlinevideo/R$id;->loading_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->t:Landroid/view/View;

    :goto_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->t:Landroid/view/View;

    if-nez v0, :cond_3

    return-object v1

    :cond_3
    sget v1, Lcom/transsion/onlinevideo/R$id;->ll_loading_channel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->u:Landroid/widget/LinearLayout;

    sget v1, Lcom/transsion/onlinevideo/R$id;->ll_no_wifi:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->v:Landroid/widget/LinearLayout;

    sget v1, Lcom/transsion/onlinevideo/R$id;->ll_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->w:Landroid/widget/LinearLayout;

    sget v1, Lcom/transsion/onlinevideo/R$id;->tv_retry:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_4

    new-instance v2, Lsja;

    invoke-direct {v2, p0}, Lsja;-><init>(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    sget v1, Lcom/transsion/onlinevideo/R$id;->tv_content_retry:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_5

    new-instance v2, Ltja;

    invoke-direct {v2, p0}, Ltja;-><init>(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-object v0
.end method

.method public static final C0(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->f1()V

    return-void
.end method

.method public static final D0(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->f1()V

    return-void
.end method

.method public static final E1(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->o:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->A0()V

    return-void
.end method

.method private final G1(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->y:Z

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->l1()V

    iget-boolean p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->y:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->F:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->e0()I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    if-lez p1, :cond_2

    :try_start_0
    sget p0, Lcom/transsion/playercommon/R$string;->no_network:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "toast no_network error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "visha_TiktokFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_2
    invoke-direct {p0, v1}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->L0(Z)V

    goto :goto_5

    :cond_3
    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->t:Landroid/view/View;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->F:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->e0()I

    move-result p1

    goto :goto_4

    :cond_5
    move p1, v1

    :goto_4
    if-lez p1, :cond_6

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->J0()V

    goto :goto_5

    :cond_6
    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->r:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p0, :cond_7

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_5
    return-void
.end method

.method public static final K0(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->t:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->r:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private final L0(Z)V
    .locals 5

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->x:Z

    invoke-direct {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->B0()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->t:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->r:Landroidx/viewpager2/widget/ViewPager2;

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-boolean v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->y:Z

    iget-object v3, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->u:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_4

    if-eqz p1, :cond_3

    move v4, v1

    goto :goto_0

    :cond_3
    move v4, v2

    :goto_0
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v3, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->v:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_6

    if-nez p1, :cond_5

    if-nez v0, :cond_5

    move v4, v1

    goto :goto_1

    :cond_5
    move v4, v2

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->w:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_8

    if-nez p1, :cond_7

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    move v1, v2

    :goto_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    return-void
.end method

.method private final M0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsHide:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final N0()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic P(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->q1(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;I)V

    return-void
.end method

.method public static synthetic Q(Le74;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->V0(Le74;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic R(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->E1(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;)V

    return-void
.end method

.method public static final R0(Le74;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic S(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->t1(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static final S0(Le74;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic T(Le74;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->X0(Le74;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic U(Le74;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->S0(Le74;Ljava/lang/Object;)V

    return-void
.end method

.method public static final U0(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;Ljava/util/List;)Lzfb;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->I:Z

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->e1(Ljava/util/List;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static synthetic V(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->C0(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final V0(Le74;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic W(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->D0(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final W0(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;Ljava/lang/Throwable;)Lzfb;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->I:Z

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->d1(Ljava/lang/Throwable;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static synthetic X(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;Ljava/lang/Throwable;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->W0(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;Ljava/lang/Throwable;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static final X0(Le74;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic Y(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->K0(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;)V

    return-void
.end method

.method public static synthetic Z(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;)Landroidx/viewpager2/widget/ViewPager2;
    .locals 0

    invoke-static {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->v1(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a0(Le74;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->R0(Le74;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b0(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->o1(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;)V

    return-void
.end method

.method public static synthetic c0(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;Ljava/util/List;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->U0(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;Ljava/util/List;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d0(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;)Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->F:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    return-object p0
.end method

.method public static final synthetic e0(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->y:Z

    return p0
.end method

.method public static final synthetic f0(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->H0(I)V

    return-void
.end method

.method public static final synthetic g0(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->P0()Z

    move-result p0

    return p0
.end method

.method public static final synthetic h0(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->Q0()V

    return-void
.end method

.method public static final synthetic i0(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->Z0(I)V

    return-void
.end method

.method public static final synthetic j0(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->a1(I)V

    return-void
.end method

.method public static final synthetic k0(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->d1(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic l0(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->e1(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic m0(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->p1(I)V

    return-void
.end method

.method public static final synthetic n0(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->y:Z

    return-void
.end method

.method public static final synthetic o0(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->q:I

    return-void
.end method

.method public static final o1(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->p:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->s0()V

    return-void
.end method

.method public static final synthetic p0(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->z1(I)V

    return-void
.end method

.method public static final q1(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;I)V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->N0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper;->f(Landroid/content/Context;Ljava/lang/Integer;)I

    move-result p1

    iput p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->q:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->y:Z

    iget-boolean v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsRealVisibleToUser:Z

    if-nez v2, :cond_3

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduleDispatchNetwork skip UI/player: not realVisible, type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", visible="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", parent="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "visha_TiktokFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->z0(I)V

    if-nez p1, :cond_4

    invoke-direct {p0, v1}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->G1(I)V

    goto :goto_3

    :cond_4
    iget-boolean p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->y:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->F:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->e0()I

    move-result p1

    goto :goto_1

    :cond_5
    move p1, v1

    :goto_1
    if-lez p1, :cond_8

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->t:Landroid/view/View;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    move v0, v1

    :goto_2
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->J0()V

    goto :goto_3

    :cond_7
    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->r:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p0, :cond_8

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_3
    return-void
.end method

.method public static final t1(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "insets"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->v0(I)V

    return-object p2
.end method

.method public static synthetic u0(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->t0(Z)V

    return-void
.end method

.method public static final v1(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;)Landroidx/viewpager2/widget/ViewPager2;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->r:Landroidx/viewpager2/widget/ViewPager2;

    return-object p0
.end method


# virtual methods
.method public final A0()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->N0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->F:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    if-eqz v0, :cond_2

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->e0()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->P0()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "dispatch denied"

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->Y0(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->P:Z

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->O:Z

    const-string v0, "visha_TiktokFragment"

    const-string v1, "tryResumePlayback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->F:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->C0()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final A1()V
    .locals 4

    invoke-direct {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->M0()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->N0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->C:I

    const/4 v1, -0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->B:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "visha_TiktokFragment"

    const-string v1, "trackTtChannelShow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->C:I

    iget-object v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->D:Ljava/lang/String;

    invoke-static {v0, v1}, Lc06;->r(ILjava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->B:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->E:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final B1()V
    .locals 6

    iget-wide v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->B:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->C:I

    const/4 v1, -0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->B:J

    sub-long/2addr v0, v4

    const/16 v4, 0x3e8

    int-to-long v4, v4

    div-long/2addr v0, v4

    long-to-int v0, v0

    iput-wide v2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->B:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->E:Z

    if-lez v0, :cond_1

    iget v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->C:I

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->D:Ljava/lang/String;

    invoke-static {v1, p0, v0}, Lc06;->s(ILjava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final C1()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->G:Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->G1(I)V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;->k()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readCache error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "visha_TiktokFragment"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->e1(Ljava/util/List;)V

    sget p0, Lcom/transsion/playercommon/R$string;->no_network:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-direct {p0, v1}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->L0(Z)V

    :goto_2
    return-void
.end method

.method public final D1()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->F:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    const-string v1, "visha_TiktokFragment"

    if-eqz v0, :cond_4

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->e0()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->l:Landroid/view/View;

    if-nez v0, :cond_1

    const-string v0, "no view"

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->Y0(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->P:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tryResumePlayback deferred: no view, pending="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->P0()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v0, "allowed=false"

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->Y0(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->w0()V

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    iget-boolean v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    iget-boolean v3, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsHide:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v4

    iget-boolean p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->P:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tryResumePlayback deferred: allowed=false, visible="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", parent="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", hide="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", resumed="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", pending="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->o:Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_3
    new-instance v1, Lqja;

    invoke-direct {v1, p0}, Lqja;-><init>(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;)V

    iput-object v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->F:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->e0()I

    move-result v0

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryResumePlayback skipped: count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "tryResumePlayback"

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->E0(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->M0()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "empty feed"

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->Y0(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public final E0(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->N0()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->G:Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->F:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->e0()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-gtz v0, :cond_5

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->x:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->M0()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ensureFeedLoadedWhenEmpty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "visha_TiktokFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->y:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->Q0()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->C1()V

    :cond_5
    :goto_1
    return-void
.end method

.method public final F0()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->N:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x48c

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->N:Z

    return-void
.end method

.method public final F1()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->N:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x48c

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->N:Z

    return-void
.end method

.method public final G0()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->P:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "visha_TiktokFragment"

    const-string v1, "flushPendingResumePlayback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->D1()V

    return-void
.end method

.method public final H0(I)V
    .locals 3

    iget v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->M:I

    if-ltz v0, :cond_0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->K:Lbka;

    invoke-virtual {v0}, Lbka;->c()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->u0(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;ZILjava/lang/Object;)V

    :cond_0
    iput p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->M:I

    return-void
.end method

.method public final I0()Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->F:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->e0()I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    if-lez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final J0()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->x:Z

    iget-object v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->t:Landroid/view/View;

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->r:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Luja;

    invoke-direct {v0, p0}, Luja;-><init>(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final O0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->O:Z

    return p0
.end method

.method public final P0()Z
    .locals 1

    invoke-direct {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->N0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsRealVisibleToUser:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final Q0()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->G:Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->F:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    if-eqz v0, :cond_1

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->e0()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->L0(Z)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->G:Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;->g()Lmc7;

    move-result-object v0

    new-instance v1, Lcom/transsion/onlinevideo/tiktok/TiktokFragment$loadFirstPage$d$1;

    invoke-direct {v1, p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment$loadFirstPage$d$1;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lija;

    invoke-direct {v2, v1}, Lija;-><init>(Le74;)V

    new-instance v1, Lcom/transsion/onlinevideo/tiktok/TiktokFragment$loadFirstPage$d$2;

    invoke-direct {v1, p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment$loadFirstPage$d$2;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lnja;

    invoke-direct {v3, v1}, Lnja;-><init>(Le74;)V

    invoke-virtual {v0, v2, v3}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->H:Lgd1;

    invoke-virtual {p0, v0}, Lgd1;->b(Lrc2;)Z

    return-void
.end method

.method public final T0()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->G:Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->I:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->I:Z

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->G:Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;->j()Lmc7;

    move-result-object v0

    new-instance v1, Ljja;

    invoke-direct {v1, p0}, Ljja;-><init>(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;)V

    new-instance v2, Lkja;

    invoke-direct {v2, v1}, Lkja;-><init>(Le74;)V

    new-instance v1, Llja;

    invoke-direct {v1, p0}, Llja;-><init>(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;)V

    new-instance v3, Lmja;

    invoke-direct {v3, v1}, Lmja;-><init>(Le74;)V

    invoke-virtual {v0, v2, v3}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->H:Lgd1;

    invoke-virtual {p0, v0}, Lgd1;->b(Lrc2;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final Y0(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->I0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->P:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pendingResume set: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "visha_TiktokFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->P:Z

    return-void
.end method

.method public final Z0(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->F:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->w0(Landroid/content/Context;I)V

    return-void
.end method

.method public final a1(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->F:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    const/4 p1, 0x3

    if-gt v0, p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->T0()V

    :cond_1
    return-void
.end method

.method public final b1()Lbka;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->K:Lbka;

    return-object p0
.end method

.method public final c1()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->K:Lbka;

    invoke-virtual {p0}, Lbka;->b()Z

    move-result p0

    return p0
.end method

.method public final d1(Ljava/lang/Throwable;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadPage error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "visha_TiktokFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->F:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    if-eqz p1, :cond_1

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->e0()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->J0()V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->L0(Z)V

    :goto_1
    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "args"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->didReceivedNotification(I[Ljava/lang/Object;)V

    const/16 p2, 0x48c

    if-eq p1, p2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->M0()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->L:Z

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->K:Lbka;

    invoke-virtual {p1}, Lbka;->f()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const-string p1, "visha_TiktokFragment"

    const-string p2, "unmuteFromVolume via EVENT_VOLUME_CHANGE"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->u0(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;ZILjava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public e(Ljava/util/List;Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V
    .locals 1

    const-string v0, "removedPositions"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->q0(Ljava/util/List;)V

    return-void
.end method

.method public final e1(Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->N0()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->F:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->F:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->e0()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->F:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->N0(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->P0()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->D1()V

    goto :goto_0

    :cond_2
    const-string p1, "dataLoaded while not allowed"

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->Y0(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->F:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->J(Ljava/util/List;)V

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->J0()V

    return-void

    :cond_4
    :goto_1
    const-string p1, "visha_TiktokFragment"

    const-string v0, "onPageDataLoaded: empty list"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->F:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->e0()I

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->L0(Z)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->J0()V

    :cond_6
    :goto_2
    return-void
.end method

.method public f(ILcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V
    .locals 1

    const-string v0, "reason"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->q0(Ljava/util/List;)V

    return-void
.end method

.method public final f1()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->x:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->q:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->y:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, v2}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->L0(Z)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->Q0()V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v1}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->L0(Z)V

    :goto_1
    return-void
.end method

.method public final g1()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->K:Lbka;

    invoke-virtual {v0}, Lbka;->e()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->u0(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;ZILjava/lang/Object;)V

    return-void
.end method

.method public final h1()V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->M0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->L:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->K:Lbka;

    invoke-virtual {v0}, Lbka;->d()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->L:Z

    iget-object v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->r:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    iput v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->M:I

    const-string v1, "visha_TiktokFragment"

    const-string v2, "muteSession resetOnEnterTt"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->t0(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->F0()V

    return-void
.end method

.method public final i1()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->L:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->M:I

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->F1()V

    return-void
.end method

.method public final j1()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->N0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->O:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->O:Z

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->F:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->g0()V

    :cond_1
    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->F:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->u0()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final k1()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->N0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->O:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->O:Z

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->F:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->g0()V

    :cond_1
    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->F:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->u0()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final l1()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->N0()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->F:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->e0()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->q:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper;->f(Landroid/content/Context;Ljava/lang/Integer;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->z0(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final m1(I)V
    .locals 3

    const/4 v0, -0x1

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    add-int v1, p1, v0

    if-eq v1, p1, :cond_0

    iget-object v2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->F:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->c0(I)Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->b1()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public markPointPageShow()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->markPointPageShow()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->A1()V

    return-void
.end method

.method public final n1()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->N0()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsRealVisibleToUser:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->l:Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->p:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    new-instance v1, Lpja;

    invoke-direct {v1, p0}, Lpja;-><init>(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;)V

    iput-object v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "header_margin"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->A:I

    const-string v0, "channelid"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->C:I

    const-string v0, "channelname"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->D:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/fragments/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->l:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onDestroy()V

    const-string v0, "visha_TiktokFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper;->a()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->n:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->l:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->n:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->o:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->l:Landroid/view/View;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    iput-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->o:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->p:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->l:Landroid/view/View;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    iput-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->p:Ljava/lang/Runnable;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->P:Z

    iput-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->m:Lcom/transsion/utils/NetworkObserver;

    iget-object v2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->H:Lgd1;

    invoke-virtual {v2}, Lgd1;->d()V

    iget-object v2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->J:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->F1()V

    iput-boolean v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->L:Z

    iget-object v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->F:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->U()V

    :cond_3
    iput-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->F:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    return-void
.end method

.method public onLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/onlinevideo/R$layout;->fragment_tiktok:I

    return p0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onPause()V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->M0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->B1()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->L:Z

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->F1()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->w0()V

    const-string v0, "onPause while not channel visible"

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->x0(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->k1()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->w0()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onResume()V

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsRealVisibleToUser:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->w0()V

    const-string v0, "onResume while not realVisible"

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->x0(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->h1()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->r0()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->G0()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->D1()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget p2, Lcom/transsion/onlinevideo/R$id;->root_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->s:Landroid/view/ViewGroup;

    sget p2, Lcom/transsion/onlinevideo/R$id;->vp_tiktok_videos:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    iput-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->r:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->s1()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->u1()V

    new-instance p1, Lcom/transsion/utils/NetworkObserver;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/transsion/utils/NetworkObserver;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    invoke-interface {p2}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iget-object p2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->Q:Lcom/transsion/onlinevideo/tiktok/TiktokFragment$b;

    const-string v0, "visha_TiktokFragment"

    invoke-virtual {p1, v0, p2}, Lcom/transsion/utils/NetworkObserver;->b(Ljava/lang/String;Lvz6;)V

    iput-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->m:Lcom/transsion/utils/NetworkObserver;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v1, 0x2

    invoke-static {p1, p2, v1, p2}, Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper;->g(Landroid/content/Context;Ljava/lang/Integer;ILjava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->q:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->y:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->Q0()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->C1()V

    :goto_1
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->G0()V

    const-string p0, "onViewCreated"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final p1(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->l:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->n:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    new-instance v1, Lvja;

    invoke-direct {v1, p0, p1}, Lvja;-><init>(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;I)V

    iput-object v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->n:Ljava/lang/Runnable;

    const-wide/16 p0, 0x15e

    invoke-virtual {v0, v1, p0, p1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final q0(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public final r0()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->n1()V

    return-void
.end method

.method public final r1(Lcom/transsion/onlinevideo/home/OnlineHomeFragment$e;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->z:Lcom/transsion/onlinevideo/home/OnlineHomeFragment$e;

    return-void
.end method

.method public final s0()V
    .locals 6

    invoke-direct {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->N0()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsRealVisibleToUser:Z

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->q:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper;->f(Landroid/content/Context;Ljava/lang/Integer;)I

    move-result v0

    iput v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->q:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    iput-boolean v3, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->y:Z

    iget-object v3, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->F:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->e0()I

    move-result v3

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyCachedNetworkStateOnVisible type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "visha_TiktokFragment"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_4

    invoke-direct {p0, v2}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->G1(I)V

    return-void

    :cond_4
    iget-object v3, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->F:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->e0()I

    move-result v3

    goto :goto_2

    :cond_5
    move v3, v2

    :goto_2
    if-lez v3, :cond_9

    iget-object v3, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->t:Landroid/view/View;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_3
    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->J0()V

    goto :goto_4

    :cond_7
    iget-object v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->r:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v1, :cond_8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_4
    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->z0(I)V

    goto :goto_6

    :cond_9
    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->t:Landroid/view/View;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    goto :goto_5

    :cond_a
    move v1, v2

    :goto_5
    if-eqz v1, :cond_b

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->x:Z

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->Q0()V

    :cond_b
    :goto_6
    return-void
.end method

.method public final s1()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->s:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Loja;

    invoke-direct {v1, p0}, Loja;-><init>(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;)V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->v0(I)V

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    return-void
.end method

.method public setParentVisible(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setParentVisible(Z)V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->A1()V

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->h1()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->r0()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->G0()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->D1()V

    goto :goto_0

    :cond_0
    const-string p1, "parentVisible without channelVisible"

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->Y0(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->B1()V

    const-string p1, "parentInvisible"

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->y1(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->A1()V

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->h1()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->r0()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->G0()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->D1()V

    goto :goto_0

    :cond_0
    const-string p1, "channelVisible without parentVisible"

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->Y0(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->B1()V

    const-string p1, "channelInvisible"

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->y1(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final t0(Z)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->K:Lbka;

    invoke-virtual {v0}, Lbka;->b()Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->r:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->F:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->c0(I)Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->b1()V

    if-eqz p1, :cond_1

    invoke-virtual {v2, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->S1(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->J2(Z)V

    :cond_2
    :goto_1
    invoke-virtual {p0, v1}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->m1(I)V

    return-void
.end method

.method public final u1()V
    .locals 7

    new-instance v0, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;

    invoke-direct {v0}, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;-><init>()V

    iput-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->G:Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;

    new-instance v0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    new-instance v3, Lrja;

    invoke-direct {v3, p0}, Lrja;-><init>(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;-><init>(Landroidx/fragment/app/Fragment;Lc74;Ldja;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->F:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    new-instance v1, Lcom/transsion/onlinevideo/tiktok/TiktokFragment$c;

    invoke-direct {v1, p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment$c;-><init>(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;)V

    invoke-virtual {v0, v1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->setOnPagePlayListener(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter$c;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->r:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->F:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->r:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOrientation(I)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->r:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_2

    new-instance v2, Lcom/transsion/onlinevideo/tiktok/TiktokFragment$setupViewPager$3;

    invoke-direct {v2, p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment$setupViewPager$3;-><init>(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;)V

    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    :cond_2
    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->r:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    :cond_3
    return-void
.end method

.method public final v0(I)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->s:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->isFoldScreen()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/playercommon/R$dimen;->os_foot_bar_min_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x42700000    # 60.0f

    invoke-static {v1, v3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    :goto_0
    invoke-static {p1, v2}, Lwn8;->d(II)I

    move-result p1

    add-int/2addr v1, p1

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    iget v3, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->A:I

    if-ne p1, v3, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    if-ne p1, v1, :cond_3

    return-void

    :cond_3
    iget p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->A:I

    invoke-virtual {v0, v2, p0, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public final w0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->o:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->l:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->o:Ljava/lang/Runnable;

    return-void
.end method

.method public final w1()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->z:Lcom/transsion/onlinevideo/home/OnlineHomeFragment$e;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$e;->a(Z)V

    :cond_0
    return-void
.end method

.method public final x0(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->P:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pendingResume cleared: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "visha_TiktokFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->P:Z

    return-void
.end method

.method public final x1()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->F:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->O0()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public final y0(ILcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->getDocId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lj1a;->i1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ad@"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public final y1(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->w0()V

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->x0(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->i1()V

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->F:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->g0()V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->j1()V

    return-void
.end method

.method public final z0(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->F:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->e0()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsRealVisibleToUser:Z

    if-nez v0, :cond_2

    const-string p0, "visha_TiktokFragment"

    const-string p1, "dispatchNetworkToCurrentItem skipped: not realVisible"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->r:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->F:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->c0(I)Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->P0()Z

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->H1(IZ)V

    :cond_3
    return-void
.end method

.method public final z1(I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->F:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->d0(I)Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->y0(ILcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->J:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "visha_TiktokFragment"

    if-eqz v1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "client_show skipped: already reported, key="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    sget-object v1, Lela;->b:Lela$a;

    invoke-virtual {v1}, Lela$a;->b()Lela;

    move-result-object v1

    invoke-virtual {v1, v0}, Lela;->v(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->J:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "trackPageImpression error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
