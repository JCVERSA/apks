.class public final Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0003\u0008\u0094\u0001\u0008\u0087\u0008\u0018\u0000 \u00a9\u00012\u00020\u0001:\u0002\u00aa\u0001B\u009d\u0003\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\n\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\n\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0017\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010 \u001a\u00020\u0017\u0012\u0008\u0008\u0002\u0010!\u001a\u00020\u0017\u0012\u0008\u0008\u0002\u0010\"\u001a\u00020\u0017\u0012\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010(\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008*\u0010+J\r\u0010,\u001a\u00020\u0000\u00a2\u0006\u0004\u0008,\u0010-J\r\u0010.\u001a\u00020\u0017\u00a2\u0006\u0004\u0008.\u0010/J\u0010\u00100\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u00080\u00101J\u0010\u00102\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u00082\u00101J\u0010\u00103\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u00083\u00104J\u0012\u00105\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u00085\u00101J\u0012\u00106\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u00086\u00101J\u0012\u00107\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u00087\u00101J\u0010\u00108\u001a\u00020\nH\u00c6\u0003\u00a2\u0006\u0004\u00088\u00109J\u0012\u0010:\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008:\u00101J\u0012\u0010;\u001a\u0004\u0018\u00010\nH\u00c6\u0003\u00a2\u0006\u0004\u0008;\u0010<J\u0012\u0010=\u001a\u0004\u0018\u00010\nH\u00c6\u0003\u00a2\u0006\u0004\u0008=\u0010<J\u0012\u0010>\u001a\u0004\u0018\u00010\nH\u00c6\u0003\u00a2\u0006\u0004\u0008>\u0010<J\u0012\u0010?\u001a\u0004\u0018\u00010\nH\u00c6\u0003\u00a2\u0006\u0004\u0008?\u0010<J\u0010\u0010@\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008@\u00104J\u0012\u0010A\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008A\u00101J\u0012\u0010B\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008B\u0010CJ\u0012\u0010D\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008D\u0010CJ\u0012\u0010E\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008E\u00101J\u0012\u0010F\u001a\u0004\u0018\u00010\nH\u00c6\u0003\u00a2\u0006\u0004\u0008F\u0010<J\u0010\u0010G\u001a\u00020\u0017H\u00c6\u0003\u00a2\u0006\u0004\u0008G\u0010/J\u0010\u0010H\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008H\u00101J\u0012\u0010I\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008I\u00101J\u0012\u0010J\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008J\u00101J\u0012\u0010K\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008K\u00101J\u0010\u0010L\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008L\u00104J\u0012\u0010M\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008M\u0010CJ\u0012\u0010N\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008N\u0010CJ\u0010\u0010O\u001a\u00020\u0017H\u00c6\u0003\u00a2\u0006\u0004\u0008O\u0010/J\u0010\u0010P\u001a\u00020\u0017H\u00c6\u0003\u00a2\u0006\u0004\u0008P\u0010/J\u0010\u0010Q\u001a\u00020\u0017H\u00c6\u0003\u00a2\u0006\u0004\u0008Q\u0010/J\u0012\u0010R\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008R\u00101J\u0012\u0010S\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008S\u00101J\u0012\u0010T\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008T\u00101J\u0012\u0010U\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008U\u00101J\u0012\u0010V\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008V\u00101J\u0012\u0010W\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008W\u00101J\u0012\u0010X\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008X\u00101J\u00aa\u0003\u0010Y\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00022\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\n2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00052\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\n2\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00022\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00022\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u00052\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010 \u001a\u00020\u00172\u0008\u0008\u0002\u0010!\u001a\u00020\u00172\u0008\u0008\u0002\u0010\"\u001a\u00020\u00172\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010(\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010\u0002H\u00c6\u0001\u00a2\u0006\u0004\u0008Y\u0010ZJ\u0010\u0010[\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008[\u00101J\u0010\u0010\\\u001a\u00020\nH\u00d6\u0001\u00a2\u0006\u0004\u0008\\\u00109J\u001a\u0010^\u001a\u00020\u00172\u0008\u0010]\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008^\u0010_R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010`\u001a\u0004\u0008a\u00101R\"\u0010\u0004\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0004\u0010`\u001a\u0004\u0008b\u00101\"\u0004\u0008c\u0010dR\"\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010e\u001a\u0004\u0008f\u00104\"\u0004\u0008g\u0010hR\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010`\u001a\u0004\u0008i\u00101R\u0019\u0010\u0008\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010`\u001a\u0004\u0008j\u00101R\u0019\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010`\u001a\u0004\u0008k\u00101R\u0017\u0010\u000b\u001a\u00020\n8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010l\u001a\u0004\u0008m\u00109R\u0019\u0010\u000c\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010`\u001a\u0004\u0008n\u00101R\u0019\u0010\r\u001a\u0004\u0018\u00010\n8\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010o\u001a\u0004\u0008p\u0010<R\u0019\u0010\u000e\u001a\u0004\u0018\u00010\n8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010o\u001a\u0004\u0008q\u0010<R\u0019\u0010\u000f\u001a\u0004\u0018\u00010\n8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010o\u001a\u0004\u0008r\u0010<R\u0019\u0010\u0010\u001a\u0004\u0018\u00010\n8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010o\u001a\u0004\u0008s\u0010<R\"\u0010\u0011\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010e\u001a\u0004\u0008t\u00104\"\u0004\u0008u\u0010hR$\u0010\u0012\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010`\u001a\u0004\u0008v\u00101\"\u0004\u0008w\u0010dR$\u0010\u0013\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010x\u001a\u0004\u0008y\u0010C\"\u0004\u0008z\u0010{R$\u0010\u0014\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010x\u001a\u0004\u0008|\u0010C\"\u0004\u0008}\u0010{R$\u0010\u0015\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010`\u001a\u0004\u0008~\u00101\"\u0004\u0008\u007f\u0010dR\'\u0010\u0016\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0004\u0008\u0016\u0010o\u001a\u0005\u0008\u0080\u0001\u0010<\"\u0006\u0008\u0081\u0001\u0010\u0082\u0001R&\u0010\u0018\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0005\u0008\u0018\u0010\u0083\u0001\u001a\u0005\u0008\u0084\u0001\u0010/\"\u0006\u0008\u0085\u0001\u0010\u0086\u0001R$\u0010\u0019\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008\u0019\u0010`\u001a\u0005\u0008\u0087\u0001\u00101\"\u0005\u0008\u0088\u0001\u0010dR&\u0010\u001a\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008\u001a\u0010`\u001a\u0005\u0008\u0089\u0001\u00101\"\u0005\u0008\u008a\u0001\u0010dR&\u0010\u001b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008\u001b\u0010`\u001a\u0005\u0008\u008b\u0001\u00101\"\u0005\u0008\u008c\u0001\u0010dR&\u0010\u001c\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008\u001c\u0010`\u001a\u0005\u0008\u008d\u0001\u00101\"\u0005\u0008\u008e\u0001\u0010dR$\u0010\u001d\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008\u001d\u0010e\u001a\u0005\u0008\u008f\u0001\u00104\"\u0005\u0008\u0090\u0001\u0010hR&\u0010\u001e\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008\u001e\u0010x\u001a\u0005\u0008\u0091\u0001\u0010C\"\u0005\u0008\u0092\u0001\u0010{R&\u0010\u001f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008\u001f\u0010x\u001a\u0005\u0008\u0093\u0001\u0010C\"\u0005\u0008\u0094\u0001\u0010{R&\u0010 \u001a\u00020\u00178\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0005\u0008 \u0010\u0083\u0001\u001a\u0005\u0008\u0095\u0001\u0010/\"\u0006\u0008\u0096\u0001\u0010\u0086\u0001R&\u0010!\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0005\u0008!\u0010\u0083\u0001\u001a\u0005\u0008\u0097\u0001\u0010/\"\u0006\u0008\u0098\u0001\u0010\u0086\u0001R&\u0010\"\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0005\u0008\"\u0010\u0083\u0001\u001a\u0005\u0008\u0099\u0001\u0010/\"\u0006\u0008\u009a\u0001\u0010\u0086\u0001R&\u0010#\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008#\u0010`\u001a\u0005\u0008\u009b\u0001\u00101\"\u0005\u0008\u009c\u0001\u0010dR&\u0010$\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008$\u0010`\u001a\u0005\u0008\u009d\u0001\u00101\"\u0005\u0008\u009e\u0001\u0010dR&\u0010%\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008%\u0010`\u001a\u0005\u0008\u009f\u0001\u00101\"\u0005\u0008\u00a0\u0001\u0010dR&\u0010&\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008&\u0010`\u001a\u0005\u0008\u00a1\u0001\u00101\"\u0005\u0008\u00a2\u0001\u0010dR&\u0010\'\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008\'\u0010`\u001a\u0005\u0008\u00a3\u0001\u00101\"\u0005\u0008\u00a4\u0001\u0010dR&\u0010(\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008(\u0010`\u001a\u0005\u0008\u00a5\u0001\u00101\"\u0005\u0008\u00a6\u0001\u0010dR&\u0010)\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008)\u0010`\u001a\u0005\u0008\u00a7\u0001\u00101\"\u0005\u0008\u00a8\u0001\u0010d\u00a8\u0006\u00ab\u0001"
    }
    d2 = {
        "Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;",
        "",
        "",
        "collectionId",
        "ugcVideoId",
        "",
        "progress",
        "title",
        "coverUrl",
        "thumbnail",
        "",
        "position",
        "type",
        "cateLev1Id",
        "cateLev2Id",
        "cateLev3Id",
        "cateLev4Id",
        "timeStamp",
        "subtitleSelectId",
        "totalDuration",
        "subjectDurationSeconds",
        "averageHueLight",
        "subjectType",
        "",
        "hasDelete",
        "playMode",
        "downloadUrl",
        "downloadResid",
        "downloadFilePath",
        "downloadSize",
        "lastAdStartTimeStamp",
        "lastAdEndTimeStamp",
        "rewardPlayed",
        "rewardUnlock",
        "rewardFree",
        "ops",
        "uid",
        "userName",
        "userAvatar",
        "description",
        "videoStyle",
        "kidId",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "toBusinessBean",
        "()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;",
        "isSingleVideo",
        "()Z",
        "component1",
        "()Ljava/lang/String;",
        "component2",
        "component3",
        "()J",
        "component4",
        "component5",
        "component6",
        "component7",
        "()I",
        "component8",
        "component9",
        "()Ljava/lang/Integer;",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "()Ljava/lang/Long;",
        "component16",
        "component17",
        "component18",
        "component19",
        "component20",
        "component21",
        "component22",
        "component23",
        "component24",
        "component25",
        "component26",
        "component27",
        "component28",
        "component29",
        "component30",
        "component31",
        "component32",
        "component33",
        "component34",
        "component35",
        "component36",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;",
        "toString",
        "hashCode",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/lang/String;",
        "getCollectionId",
        "getUgcVideoId",
        "setUgcVideoId",
        "(Ljava/lang/String;)V",
        "J",
        "getProgress",
        "setProgress",
        "(J)V",
        "getTitle",
        "getCoverUrl",
        "getThumbnail",
        "I",
        "getPosition",
        "getType",
        "Ljava/lang/Integer;",
        "getCateLev1Id",
        "getCateLev2Id",
        "getCateLev3Id",
        "getCateLev4Id",
        "getTimeStamp",
        "setTimeStamp",
        "getSubtitleSelectId",
        "setSubtitleSelectId",
        "Ljava/lang/Long;",
        "getTotalDuration",
        "setTotalDuration",
        "(Ljava/lang/Long;)V",
        "getSubjectDurationSeconds",
        "setSubjectDurationSeconds",
        "getAverageHueLight",
        "setAverageHueLight",
        "getSubjectType",
        "setSubjectType",
        "(Ljava/lang/Integer;)V",
        "Z",
        "getHasDelete",
        "setHasDelete",
        "(Z)V",
        "getPlayMode",
        "setPlayMode",
        "getDownloadUrl",
        "setDownloadUrl",
        "getDownloadResid",
        "setDownloadResid",
        "getDownloadFilePath",
        "setDownloadFilePath",
        "getDownloadSize",
        "setDownloadSize",
        "getLastAdStartTimeStamp",
        "setLastAdStartTimeStamp",
        "getLastAdEndTimeStamp",
        "setLastAdEndTimeStamp",
        "getRewardPlayed",
        "setRewardPlayed",
        "getRewardUnlock",
        "setRewardUnlock",
        "getRewardFree",
        "setRewardFree",
        "getOps",
        "setOps",
        "getUid",
        "setUid",
        "getUserName",
        "setUserName",
        "getUserAvatar",
        "setUserAvatar",
        "getDescription",
        "setDescription",
        "getVideoStyle",
        "setVideoStyle",
        "getKidId",
        "setKidId",
        "Companion",
        "a",
        "BaseLib_psRelease"
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
.field public static final Companion:Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean$a;

.field public static final SINGLE_VIDEO_PREFIX:Ljava/lang/String; = "SINGLE_"


# instance fields
.field private averageHueLight:Ljava/lang/String;

.field private final cateLev1Id:Ljava/lang/Integer;

.field private final cateLev2Id:Ljava/lang/Integer;

.field private final cateLev3Id:Ljava/lang/Integer;

.field private final cateLev4Id:Ljava/lang/Integer;

.field private final collectionId:Ljava/lang/String;

.field private final coverUrl:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private downloadFilePath:Ljava/lang/String;

.field private downloadResid:Ljava/lang/String;

.field private downloadSize:J

.field private downloadUrl:Ljava/lang/String;

.field private hasDelete:Z

.field private kidId:Ljava/lang/String;

.field private lastAdEndTimeStamp:Ljava/lang/Long;

.field private lastAdStartTimeStamp:Ljava/lang/Long;

.field private ops:Ljava/lang/String;

.field private playMode:Ljava/lang/String;

.field private final position:I

.field private progress:J

.field private rewardFree:Z

.field private rewardPlayed:Z

.field private rewardUnlock:Z

.field private subjectDurationSeconds:Ljava/lang/Long;

.field private subjectType:Ljava/lang/Integer;

.field private subtitleSelectId:Ljava/lang/String;

.field private final thumbnail:Ljava/lang/String;

.field private timeStamp:J

.field private final title:Ljava/lang/String;

.field private totalDuration:Ljava/lang/Long;

.field private final type:Ljava/lang/String;

.field private ugcVideoId:Ljava/lang/String;

.field private uid:Ljava/lang/String;

.field private userAvatar:Ljava/lang/String;

.field private userName:Ljava/lang/String;

.field private videoStyle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->Companion:Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p22

    const-string v4, "collectionId"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "ugcVideoId"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "playMode"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->collectionId:Ljava/lang/String;

    .line 3
    iput-object v2, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->ugcVideoId:Ljava/lang/String;

    move-wide v1, p3

    .line 4
    iput-wide v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->progress:J

    move-object v1, p5

    .line 5
    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->title:Ljava/lang/String;

    move-object v1, p6

    .line 6
    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->coverUrl:Ljava/lang/String;

    move-object v1, p7

    .line 7
    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->thumbnail:Ljava/lang/String;

    move v1, p8

    .line 8
    iput v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->position:I

    move-object v1, p9

    .line 9
    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->type:Ljava/lang/String;

    move-object v1, p10

    .line 10
    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev1Id:Ljava/lang/Integer;

    move-object/from16 v1, p11

    .line 11
    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev2Id:Ljava/lang/Integer;

    move-object/from16 v1, p12

    .line 12
    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev3Id:Ljava/lang/Integer;

    move-object/from16 v1, p13

    .line 13
    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev4Id:Ljava/lang/Integer;

    move-wide/from16 v1, p14

    .line 14
    iput-wide v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->timeStamp:J

    move-object/from16 v1, p16

    .line 15
    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subtitleSelectId:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 16
    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->totalDuration:Ljava/lang/Long;

    move-object/from16 v1, p18

    .line 17
    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subjectDurationSeconds:Ljava/lang/Long;

    move-object/from16 v1, p19

    .line 18
    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->averageHueLight:Ljava/lang/String;

    move-object/from16 v1, p20

    .line 19
    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subjectType:Ljava/lang/Integer;

    move/from16 v1, p21

    .line 20
    iput-boolean v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->hasDelete:Z

    .line 21
    iput-object v3, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->playMode:Ljava/lang/String;

    move-object/from16 v1, p23

    .line 22
    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadUrl:Ljava/lang/String;

    move-object/from16 v1, p24

    .line 23
    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadResid:Ljava/lang/String;

    move-object/from16 v1, p25

    .line 24
    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadFilePath:Ljava/lang/String;

    move-wide/from16 v1, p26

    .line 25
    iput-wide v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadSize:J

    move-object/from16 v1, p28

    .line 26
    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->lastAdStartTimeStamp:Ljava/lang/Long;

    move-object/from16 v1, p29

    .line 27
    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->lastAdEndTimeStamp:Ljava/lang/Long;

    move/from16 v1, p30

    .line 28
    iput-boolean v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardPlayed:Z

    move/from16 v1, p31

    .line 29
    iput-boolean v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardUnlock:Z

    move/from16 v1, p32

    .line 30
    iput-boolean v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardFree:Z

    move-object/from16 v1, p33

    .line 31
    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->ops:Ljava/lang/String;

    move-object/from16 v1, p34

    .line 32
    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->uid:Ljava/lang/String;

    move-object/from16 v1, p35

    .line 33
    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->userName:Ljava/lang/String;

    move-object/from16 v1, p36

    .line 34
    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->userAvatar:Ljava/lang/String;

    move-object/from16 v1, p37

    .line 35
    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->description:Ljava/lang/String;

    move-object/from16 v1, p38

    .line 36
    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->videoStyle:Ljava/lang/String;

    move-object/from16 v1, p39

    .line 37
    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->kidId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 37

    move/from16 v0, p40

    and-int/lit8 v1, v0, 0x4

    const-wide/16 v2, 0x0

    .line 38
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    if-eqz v1, :cond_0

    move-wide v5, v2

    goto :goto_0

    :cond_0
    move-wide/from16 v5, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v1, p5

    :goto_1
    and-int/lit8 v8, v0, 0x10

    if-eqz v8, :cond_2

    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v8, p6

    :goto_2
    and-int/lit8 v9, v0, 0x20

    if-eqz v9, :cond_3

    const/4 v9, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v9, p7

    :goto_3
    and-int/lit8 v10, v0, 0x40

    const/4 v11, 0x0

    if-eqz v10, :cond_4

    move v10, v11

    goto :goto_4

    :cond_4
    move/from16 v10, p8

    :goto_4
    and-int/lit16 v12, v0, 0x80

    if-eqz v12, :cond_5

    const/4 v12, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v12, p9

    :goto_5
    and-int/lit16 v13, v0, 0x100

    if-eqz v13, :cond_6

    const/4 v13, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v13, p10

    :goto_6
    and-int/lit16 v14, v0, 0x200

    if-eqz v14, :cond_7

    const/4 v14, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v14, p11

    :goto_7
    and-int/lit16 v15, v0, 0x400

    if-eqz v15, :cond_8

    const/4 v15, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v15, p12

    :goto_8
    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v2, p13

    :goto_9
    and-int/lit16 v3, v0, 0x1000

    if-eqz v3, :cond_a

    const-wide/16 v18, 0x0

    goto :goto_a

    :cond_a
    move-wide/from16 v18, p14

    :goto_a
    and-int/lit16 v3, v0, 0x2000

    if-eqz v3, :cond_b

    const/4 v3, 0x0

    goto :goto_b

    :cond_b
    move-object/from16 v3, p16

    :goto_b
    and-int/lit16 v7, v0, 0x4000

    if-eqz v7, :cond_c

    move-object v7, v4

    goto :goto_c

    :cond_c
    move-object/from16 v7, p17

    :goto_c
    const v20, 0x8000

    and-int v20, v0, v20

    if-eqz v20, :cond_d

    goto :goto_d

    :cond_d
    move-object/from16 v4, p18

    :goto_d
    const/high16 v20, 0x10000

    and-int v20, v0, v20

    if-eqz v20, :cond_e

    const/16 v20, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v20, p19

    :goto_e
    const/high16 v21, 0x20000

    and-int v21, v0, v21

    if-eqz v21, :cond_f

    const/16 v21, 0x1

    .line 39
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    goto :goto_f

    :cond_f
    move-object/from16 v21, p20

    :goto_f
    const/high16 v22, 0x40000

    and-int v22, v0, v22

    if-eqz v22, :cond_10

    move/from16 v22, v11

    goto :goto_10

    :cond_10
    move/from16 v22, p21

    :goto_10
    const/high16 v23, 0x80000

    and-int v23, v0, v23

    if-eqz v23, :cond_11

    .line 40
    sget-object v23, Lcom/transsion/baselib/utils/PlayMode;->STREAM:Lcom/transsion/baselib/utils/PlayMode;

    invoke-virtual/range {v23 .. v23}, Lcom/transsion/baselib/utils/PlayMode;->getValue()Ljava/lang/String;

    move-result-object v23

    goto :goto_11

    :cond_11
    move-object/from16 v23, p22

    :goto_11
    const/high16 v24, 0x100000

    and-int v24, v0, v24

    if-eqz v24, :cond_12

    const/16 v24, 0x0

    goto :goto_12

    :cond_12
    move-object/from16 v24, p23

    :goto_12
    const/high16 v25, 0x200000

    and-int v25, v0, v25

    if-eqz v25, :cond_13

    const/16 v25, 0x0

    goto :goto_13

    :cond_13
    move-object/from16 v25, p24

    :goto_13
    const/high16 v26, 0x400000

    and-int v26, v0, v26

    if-eqz v26, :cond_14

    const/16 v26, 0x0

    goto :goto_14

    :cond_14
    move-object/from16 v26, p25

    :goto_14
    const/high16 v27, 0x800000

    and-int v27, v0, v27

    if-eqz v27, :cond_15

    const-wide/16 v16, 0x0

    goto :goto_15

    :cond_15
    move-wide/from16 v16, p26

    :goto_15
    const/high16 v27, 0x1000000

    and-int v27, v0, v27

    if-eqz v27, :cond_16

    const/16 v27, 0x0

    goto :goto_16

    :cond_16
    move-object/from16 v27, p28

    :goto_16
    const/high16 v28, 0x2000000

    and-int v28, v0, v28

    if-eqz v28, :cond_17

    const/16 v28, 0x0

    goto :goto_17

    :cond_17
    move-object/from16 v28, p29

    :goto_17
    const/high16 v29, 0x4000000

    and-int v29, v0, v29

    if-eqz v29, :cond_18

    move/from16 v29, v11

    goto :goto_18

    :cond_18
    move/from16 v29, p30

    :goto_18
    const/high16 v30, 0x8000000

    and-int v30, v0, v30

    if-eqz v30, :cond_19

    move/from16 v30, v11

    goto :goto_19

    :cond_19
    move/from16 v30, p31

    :goto_19
    const/high16 v31, 0x10000000

    and-int v31, v0, v31

    if-eqz v31, :cond_1a

    goto :goto_1a

    :cond_1a
    move/from16 v11, p32

    :goto_1a
    const/high16 v31, 0x20000000

    and-int v31, v0, v31

    if-eqz v31, :cond_1b

    const/16 v31, 0x0

    goto :goto_1b

    :cond_1b
    move-object/from16 v31, p33

    :goto_1b
    const/high16 v32, 0x40000000    # 2.0f

    and-int v32, v0, v32

    if-eqz v32, :cond_1c

    const/16 v32, 0x0

    goto :goto_1c

    :cond_1c
    move-object/from16 v32, p34

    :goto_1c
    const/high16 v33, -0x80000000

    and-int v0, v0, v33

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    goto :goto_1d

    :cond_1d
    move-object/from16 v0, p35

    :goto_1d
    and-int/lit8 v33, p41, 0x1

    if-eqz v33, :cond_1e

    const/16 v33, 0x0

    goto :goto_1e

    :cond_1e
    move-object/from16 v33, p36

    :goto_1e
    and-int/lit8 v34, p41, 0x2

    if-eqz v34, :cond_1f

    const/16 v34, 0x0

    goto :goto_1f

    :cond_1f
    move-object/from16 v34, p37

    :goto_1f
    and-int/lit8 v35, p41, 0x4

    if-eqz v35, :cond_20

    const/16 v35, 0x0

    goto :goto_20

    :cond_20
    move-object/from16 v35, p38

    :goto_20
    and-int/lit8 v36, p41, 0x8

    if-eqz v36, :cond_21

    const/16 v36, 0x0

    goto :goto_21

    :cond_21
    move-object/from16 v36, p39

    :goto_21
    move-object/from16 p3, p0

    move-object/from16 p4, p1

    move-object/from16 p5, p2

    move-wide/from16 p6, v5

    move-object/from16 p8, v1

    move-object/from16 p9, v8

    move-object/from16 p10, v9

    move/from16 p11, v10

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p16, v2

    move-wide/from16 p17, v18

    move-object/from16 p19, v3

    move-object/from16 p20, v7

    move-object/from16 p21, v4

    move-object/from16 p22, v20

    move-object/from16 p23, v21

    move/from16 p24, v22

    move-object/from16 p25, v23

    move-object/from16 p26, v24

    move-object/from16 p27, v25

    move-object/from16 p28, v26

    move-wide/from16 p29, v16

    move-object/from16 p31, v27

    move-object/from16 p32, v28

    move/from16 p33, v29

    move/from16 p34, v30

    move/from16 p35, v11

    move-object/from16 p36, v31

    move-object/from16 p37, v32

    move-object/from16 p38, v0

    move-object/from16 p39, v33

    move-object/from16 p40, v34

    move-object/from16 p41, v35

    move-object/from16 p42, v36

    .line 41
    invoke-direct/range {p3 .. p42}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    move/from16 v1, p40

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->collectionId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->ugcVideoId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-wide v4, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->progress:J

    goto :goto_2

    :cond_2
    move-wide/from16 v4, p3

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->title:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->coverUrl:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->thumbnail:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget v9, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->position:I

    goto :goto_6

    :cond_6
    move/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->type:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget-object v11, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev1Id:Ljava/lang/Integer;

    goto :goto_8

    :cond_8
    move-object/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget-object v12, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev2Id:Ljava/lang/Integer;

    goto :goto_9

    :cond_9
    move-object/from16 v12, p11

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    iget-object v13, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev3Id:Ljava/lang/Integer;

    goto :goto_a

    :cond_a
    move-object/from16 v13, p12

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    iget-object v14, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev4Id:Ljava/lang/Integer;

    goto :goto_b

    :cond_b
    move-object/from16 v14, p13

    :goto_b
    and-int/lit16 v15, v1, 0x1000

    move-object/from16 p13, v14

    if-eqz v15, :cond_c

    iget-wide v14, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->timeStamp:J

    goto :goto_c

    :cond_c
    move-wide/from16 v14, p14

    :goto_c
    move-wide/from16 p14, v14

    and-int/lit16 v14, v1, 0x2000

    if-eqz v14, :cond_d

    iget-object v14, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subtitleSelectId:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v14, p16

    :goto_d
    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->totalDuration:Ljava/lang/Long;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p17

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p17, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subjectDurationSeconds:Ljava/lang/Long;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p18

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p18, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->averageHueLight:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p19

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p19, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subjectType:Ljava/lang/Integer;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p20

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p20, v15

    if-eqz v16, :cond_12

    iget-boolean v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->hasDelete:Z

    goto :goto_12

    :cond_12
    move/from16 v15, p21

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move/from16 p21, v15

    if-eqz v16, :cond_13

    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->playMode:Ljava/lang/String;

    goto :goto_13

    :cond_13
    move-object/from16 v15, p22

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move-object/from16 p22, v15

    if-eqz v16, :cond_14

    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadUrl:Ljava/lang/String;

    goto :goto_14

    :cond_14
    move-object/from16 v15, p23

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move-object/from16 p23, v15

    if-eqz v16, :cond_15

    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadResid:Ljava/lang/String;

    goto :goto_15

    :cond_15
    move-object/from16 v15, p24

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, v1, v16

    move-object/from16 p24, v15

    if-eqz v16, :cond_16

    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadFilePath:Ljava/lang/String;

    goto :goto_16

    :cond_16
    move-object/from16 v15, p25

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, v1, v16

    move-object/from16 p16, v14

    move-object/from16 p25, v15

    if-eqz v16, :cond_17

    iget-wide v14, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadSize:J

    goto :goto_17

    :cond_17
    move-wide/from16 v14, p26

    :goto_17
    const/high16 v16, 0x1000000

    and-int v16, v1, v16

    move-wide/from16 p26, v14

    if-eqz v16, :cond_18

    iget-object v14, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->lastAdStartTimeStamp:Ljava/lang/Long;

    goto :goto_18

    :cond_18
    move-object/from16 v14, p28

    :goto_18
    const/high16 v15, 0x2000000

    and-int/2addr v15, v1

    if-eqz v15, :cond_19

    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->lastAdEndTimeStamp:Ljava/lang/Long;

    goto :goto_19

    :cond_19
    move-object/from16 v15, p29

    :goto_19
    const/high16 v16, 0x4000000

    and-int v16, v1, v16

    move-object/from16 p29, v15

    if-eqz v16, :cond_1a

    iget-boolean v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardPlayed:Z

    goto :goto_1a

    :cond_1a
    move/from16 v15, p30

    :goto_1a
    const/high16 v16, 0x8000000

    and-int v16, v1, v16

    move/from16 p30, v15

    if-eqz v16, :cond_1b

    iget-boolean v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardUnlock:Z

    goto :goto_1b

    :cond_1b
    move/from16 v15, p31

    :goto_1b
    const/high16 v16, 0x10000000

    and-int v16, v1, v16

    move/from16 p31, v15

    if-eqz v16, :cond_1c

    iget-boolean v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardFree:Z

    goto :goto_1c

    :cond_1c
    move/from16 v15, p32

    :goto_1c
    const/high16 v16, 0x20000000

    and-int v16, v1, v16

    move/from16 p32, v15

    if-eqz v16, :cond_1d

    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->ops:Ljava/lang/String;

    goto :goto_1d

    :cond_1d
    move-object/from16 v15, p33

    :goto_1d
    const/high16 v16, 0x40000000    # 2.0f

    and-int v16, v1, v16

    move-object/from16 p33, v15

    if-eqz v16, :cond_1e

    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->uid:Ljava/lang/String;

    goto :goto_1e

    :cond_1e
    move-object/from16 v15, p34

    :goto_1e
    const/high16 v16, -0x80000000

    and-int v1, v1, v16

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->userName:Ljava/lang/String;

    goto :goto_1f

    :cond_1f
    move-object/from16 v1, p35

    :goto_1f
    and-int/lit8 v16, p41, 0x1

    move-object/from16 p35, v1

    if-eqz v16, :cond_20

    iget-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->userAvatar:Ljava/lang/String;

    goto :goto_20

    :cond_20
    move-object/from16 v1, p36

    :goto_20
    and-int/lit8 v16, p41, 0x2

    move-object/from16 p36, v1

    if-eqz v16, :cond_21

    iget-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->description:Ljava/lang/String;

    goto :goto_21

    :cond_21
    move-object/from16 v1, p37

    :goto_21
    and-int/lit8 v16, p41, 0x4

    move-object/from16 p37, v1

    if-eqz v16, :cond_22

    iget-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->videoStyle:Ljava/lang/String;

    goto :goto_22

    :cond_22
    move-object/from16 v1, p38

    :goto_22
    and-int/lit8 v16, p41, 0x8

    move-object/from16 p38, v1

    if-eqz v16, :cond_23

    iget-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->kidId:Ljava/lang/String;

    goto :goto_23

    :cond_23
    move-object/from16 v1, p39

    :goto_23
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-wide/from16 p3, v4

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p28, v14

    move-object/from16 p34, v15

    move-object/from16 p39, v1

    invoke-virtual/range {p0 .. p39}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->copy(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->collectionId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component10()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev2Id:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component11()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev3Id:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component12()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev4Id:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component13()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->timeStamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subtitleSelectId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component15()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->totalDuration:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component16()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subjectDurationSeconds:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component17()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->averageHueLight:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component18()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subjectType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component19()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->hasDelete:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->ugcVideoId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component20()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->playMode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component21()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component22()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadResid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component23()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadFilePath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component24()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component25()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->lastAdStartTimeStamp:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component26()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->lastAdEndTimeStamp:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component27()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardPlayed:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component28()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardUnlock:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component29()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardFree:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component3()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->progress:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component30()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->ops:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component31()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->uid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component32()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->userName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component33()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->userAvatar:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component34()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->description:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component35()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->videoStyle:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component36()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->kidId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->coverUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->thumbnail:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component7()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->position:I

    .line 2
    .line 3
    return v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component9()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev1Id:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;
    .locals 42

    .line 1
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-wide/from16 v14, p14

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-wide/from16 v26, p26

    move-object/from16 v28, p28

    move-object/from16 v29, p29

    move/from16 v30, p30

    move/from16 v31, p31

    move/from16 v32, p32

    move-object/from16 v33, p33

    move-object/from16 v34, p34

    move-object/from16 v35, p35

    move-object/from16 v36, p36

    move-object/from16 v37, p37

    move-object/from16 v38, p38

    move-object/from16 v39, p39

    const-string v0, "collectionId"

    move-object/from16 v40, v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ugcVideoId"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playMode"

    move-object/from16 v1, p22

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v41, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-direct/range {v0 .. v39}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v41
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->collectionId:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->collectionId:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->ugcVideoId:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->ugcVideoId:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-wide v3, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->progress:J

    .line 36
    .line 37
    iget-wide v5, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->progress:J

    .line 38
    .line 39
    cmp-long v1, v3, v5

    .line 40
    .line 41
    if-eqz v1, :cond_4

    .line 42
    .line 43
    return v2

    .line 44
    :cond_4
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->title:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->title:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_5

    .line 53
    .line 54
    return v2

    .line 55
    :cond_5
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->coverUrl:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->coverUrl:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_6

    .line 64
    .line 65
    return v2

    .line 66
    :cond_6
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->thumbnail:Ljava/lang/String;

    .line 67
    .line 68
    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->thumbnail:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-nez v1, :cond_7

    .line 75
    .line 76
    return v2

    .line 77
    :cond_7
    iget v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->position:I

    .line 78
    .line 79
    iget v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->position:I

    .line 80
    .line 81
    if-eq v1, v3, :cond_8

    .line 82
    .line 83
    return v2

    .line 84
    :cond_8
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->type:Ljava/lang/String;

    .line 85
    .line 86
    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->type:Ljava/lang/String;

    .line 87
    .line 88
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-nez v1, :cond_9

    .line 93
    .line 94
    return v2

    .line 95
    :cond_9
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev1Id:Ljava/lang/Integer;

    .line 96
    .line 97
    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev1Id:Ljava/lang/Integer;

    .line 98
    .line 99
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-nez v1, :cond_a

    .line 104
    .line 105
    return v2

    .line 106
    :cond_a
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev2Id:Ljava/lang/Integer;

    .line 107
    .line 108
    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev2Id:Ljava/lang/Integer;

    .line 109
    .line 110
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-nez v1, :cond_b

    .line 115
    .line 116
    return v2

    .line 117
    :cond_b
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev3Id:Ljava/lang/Integer;

    .line 118
    .line 119
    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev3Id:Ljava/lang/Integer;

    .line 120
    .line 121
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-nez v1, :cond_c

    .line 126
    .line 127
    return v2

    .line 128
    :cond_c
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev4Id:Ljava/lang/Integer;

    .line 129
    .line 130
    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev4Id:Ljava/lang/Integer;

    .line 131
    .line 132
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-nez v1, :cond_d

    .line 137
    .line 138
    return v2

    .line 139
    :cond_d
    iget-wide v3, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->timeStamp:J

    .line 140
    .line 141
    iget-wide v5, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->timeStamp:J

    .line 142
    .line 143
    cmp-long v1, v3, v5

    .line 144
    .line 145
    if-eqz v1, :cond_e

    .line 146
    .line 147
    return v2

    .line 148
    :cond_e
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subtitleSelectId:Ljava/lang/String;

    .line 149
    .line 150
    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subtitleSelectId:Ljava/lang/String;

    .line 151
    .line 152
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-nez v1, :cond_f

    .line 157
    .line 158
    return v2

    .line 159
    :cond_f
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->totalDuration:Ljava/lang/Long;

    .line 160
    .line 161
    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->totalDuration:Ljava/lang/Long;

    .line 162
    .line 163
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-nez v1, :cond_10

    .line 168
    .line 169
    return v2

    .line 170
    :cond_10
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subjectDurationSeconds:Ljava/lang/Long;

    .line 171
    .line 172
    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subjectDurationSeconds:Ljava/lang/Long;

    .line 173
    .line 174
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-nez v1, :cond_11

    .line 179
    .line 180
    return v2

    .line 181
    :cond_11
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->averageHueLight:Ljava/lang/String;

    .line 182
    .line 183
    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->averageHueLight:Ljava/lang/String;

    .line 184
    .line 185
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    if-nez v1, :cond_12

    .line 190
    .line 191
    return v2

    .line 192
    :cond_12
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subjectType:Ljava/lang/Integer;

    .line 193
    .line 194
    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subjectType:Ljava/lang/Integer;

    .line 195
    .line 196
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    if-nez v1, :cond_13

    .line 201
    .line 202
    return v2

    .line 203
    :cond_13
    iget-boolean v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->hasDelete:Z

    .line 204
    .line 205
    iget-boolean v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->hasDelete:Z

    .line 206
    .line 207
    if-eq v1, v3, :cond_14

    .line 208
    .line 209
    return v2

    .line 210
    :cond_14
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->playMode:Ljava/lang/String;

    .line 211
    .line 212
    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->playMode:Ljava/lang/String;

    .line 213
    .line 214
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    if-nez v1, :cond_15

    .line 219
    .line 220
    return v2

    .line 221
    :cond_15
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadUrl:Ljava/lang/String;

    .line 222
    .line 223
    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadUrl:Ljava/lang/String;

    .line 224
    .line 225
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    if-nez v1, :cond_16

    .line 230
    .line 231
    return v2

    .line 232
    :cond_16
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadResid:Ljava/lang/String;

    .line 233
    .line 234
    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadResid:Ljava/lang/String;

    .line 235
    .line 236
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    if-nez v1, :cond_17

    .line 241
    .line 242
    return v2

    .line 243
    :cond_17
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadFilePath:Ljava/lang/String;

    .line 244
    .line 245
    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadFilePath:Ljava/lang/String;

    .line 246
    .line 247
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    if-nez v1, :cond_18

    .line 252
    .line 253
    return v2

    .line 254
    :cond_18
    iget-wide v3, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadSize:J

    .line 255
    .line 256
    iget-wide v5, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadSize:J

    .line 257
    .line 258
    cmp-long v1, v3, v5

    .line 259
    .line 260
    if-eqz v1, :cond_19

    .line 261
    .line 262
    return v2

    .line 263
    :cond_19
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->lastAdStartTimeStamp:Ljava/lang/Long;

    .line 264
    .line 265
    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->lastAdStartTimeStamp:Ljava/lang/Long;

    .line 266
    .line 267
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v1

    .line 271
    if-nez v1, :cond_1a

    .line 272
    .line 273
    return v2

    .line 274
    :cond_1a
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->lastAdEndTimeStamp:Ljava/lang/Long;

    .line 275
    .line 276
    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->lastAdEndTimeStamp:Ljava/lang/Long;

    .line 277
    .line 278
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    if-nez v1, :cond_1b

    .line 283
    .line 284
    return v2

    .line 285
    :cond_1b
    iget-boolean v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardPlayed:Z

    .line 286
    .line 287
    iget-boolean v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardPlayed:Z

    .line 288
    .line 289
    if-eq v1, v3, :cond_1c

    .line 290
    .line 291
    return v2

    .line 292
    :cond_1c
    iget-boolean v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardUnlock:Z

    .line 293
    .line 294
    iget-boolean v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardUnlock:Z

    .line 295
    .line 296
    if-eq v1, v3, :cond_1d

    .line 297
    .line 298
    return v2

    .line 299
    :cond_1d
    iget-boolean v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardFree:Z

    .line 300
    .line 301
    iget-boolean v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardFree:Z

    .line 302
    .line 303
    if-eq v1, v3, :cond_1e

    .line 304
    .line 305
    return v2

    .line 306
    :cond_1e
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->ops:Ljava/lang/String;

    .line 307
    .line 308
    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->ops:Ljava/lang/String;

    .line 309
    .line 310
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    if-nez v1, :cond_1f

    .line 315
    .line 316
    return v2

    .line 317
    :cond_1f
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->uid:Ljava/lang/String;

    .line 318
    .line 319
    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->uid:Ljava/lang/String;

    .line 320
    .line 321
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result v1

    .line 325
    if-nez v1, :cond_20

    .line 326
    .line 327
    return v2

    .line 328
    :cond_20
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->userName:Ljava/lang/String;

    .line 329
    .line 330
    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->userName:Ljava/lang/String;

    .line 331
    .line 332
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    move-result v1

    .line 336
    if-nez v1, :cond_21

    .line 337
    .line 338
    return v2

    .line 339
    :cond_21
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->userAvatar:Ljava/lang/String;

    .line 340
    .line 341
    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->userAvatar:Ljava/lang/String;

    .line 342
    .line 343
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    move-result v1

    .line 347
    if-nez v1, :cond_22

    .line 348
    .line 349
    return v2

    .line 350
    :cond_22
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->description:Ljava/lang/String;

    .line 351
    .line 352
    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->description:Ljava/lang/String;

    .line 353
    .line 354
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result v1

    .line 358
    if-nez v1, :cond_23

    .line 359
    .line 360
    return v2

    .line 361
    :cond_23
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->videoStyle:Ljava/lang/String;

    .line 362
    .line 363
    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->videoStyle:Ljava/lang/String;

    .line 364
    .line 365
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 366
    .line 367
    .line 368
    move-result v1

    .line 369
    if-nez v1, :cond_24

    .line 370
    .line 371
    return v2

    .line 372
    :cond_24
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->kidId:Ljava/lang/String;

    .line 373
    .line 374
    iget-object p1, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->kidId:Ljava/lang/String;

    .line 375
    .line 376
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    move-result p1

    .line 380
    if-nez p1, :cond_25

    .line 381
    .line 382
    return v2

    .line 383
    :cond_25
    return v0
.end method

.method public final getAverageHueLight()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->averageHueLight:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCateLev1Id()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev1Id:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCateLev2Id()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev2Id:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCateLev3Id()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev3Id:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCateLev4Id()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev4Id:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCollectionId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->collectionId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCoverUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->coverUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->description:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDownloadFilePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadFilePath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDownloadResid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadResid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDownloadSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHasDelete()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->hasDelete:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getKidId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->kidId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLastAdEndTimeStamp()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->lastAdEndTimeStamp:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLastAdStartTimeStamp()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->lastAdStartTimeStamp:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOps()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->ops:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPlayMode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->playMode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->position:I

    .line 2
    .line 3
    return v0
.end method

.method public final getProgress()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->progress:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getRewardFree()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardFree:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getRewardPlayed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardPlayed:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getRewardUnlock()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardUnlock:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getSubjectDurationSeconds()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subjectDurationSeconds:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSubjectType()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subjectType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSubtitleSelectId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subtitleSelectId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getThumbnail()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->thumbnail:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTimeStamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->timeStamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTotalDuration()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->totalDuration:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUgcVideoId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->ugcVideoId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->uid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUserAvatar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->userAvatar:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUserName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->userName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getVideoStyle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->videoStyle:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->collectionId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->ugcVideoId:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-wide v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->progress:J

    .line 19
    .line 20
    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->title:Ljava/lang/String;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    move v1, v2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    :goto_0
    add-int/2addr v0, v1

    .line 39
    mul-int/lit8 v0, v0, 0x1f

    .line 40
    .line 41
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->coverUrl:Ljava/lang/String;

    .line 42
    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    move v1, v2

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    :goto_1
    add-int/2addr v0, v1

    .line 52
    mul-int/lit8 v0, v0, 0x1f

    .line 53
    .line 54
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->thumbnail:Ljava/lang/String;

    .line 55
    .line 56
    if-nez v1, :cond_2

    .line 57
    .line 58
    move v1, v2

    .line 59
    goto :goto_2

    .line 60
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    :goto_2
    add-int/2addr v0, v1

    .line 65
    mul-int/lit8 v0, v0, 0x1f

    .line 66
    .line 67
    iget v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->position:I

    .line 68
    .line 69
    add-int/2addr v0, v1

    .line 70
    mul-int/lit8 v0, v0, 0x1f

    .line 71
    .line 72
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->type:Ljava/lang/String;

    .line 73
    .line 74
    if-nez v1, :cond_3

    .line 75
    .line 76
    move v1, v2

    .line 77
    goto :goto_3

    .line 78
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    :goto_3
    add-int/2addr v0, v1

    .line 83
    mul-int/lit8 v0, v0, 0x1f

    .line 84
    .line 85
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev1Id:Ljava/lang/Integer;

    .line 86
    .line 87
    if-nez v1, :cond_4

    .line 88
    .line 89
    move v1, v2

    .line 90
    goto :goto_4

    .line 91
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    :goto_4
    add-int/2addr v0, v1

    .line 96
    mul-int/lit8 v0, v0, 0x1f

    .line 97
    .line 98
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev2Id:Ljava/lang/Integer;

    .line 99
    .line 100
    if-nez v1, :cond_5

    .line 101
    .line 102
    move v1, v2

    .line 103
    goto :goto_5

    .line 104
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    :goto_5
    add-int/2addr v0, v1

    .line 109
    mul-int/lit8 v0, v0, 0x1f

    .line 110
    .line 111
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev3Id:Ljava/lang/Integer;

    .line 112
    .line 113
    if-nez v1, :cond_6

    .line 114
    .line 115
    move v1, v2

    .line 116
    goto :goto_6

    .line 117
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    :goto_6
    add-int/2addr v0, v1

    .line 122
    mul-int/lit8 v0, v0, 0x1f

    .line 123
    .line 124
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev4Id:Ljava/lang/Integer;

    .line 125
    .line 126
    if-nez v1, :cond_7

    .line 127
    .line 128
    move v1, v2

    .line 129
    goto :goto_7

    .line 130
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    :goto_7
    add-int/2addr v0, v1

    .line 135
    mul-int/lit8 v0, v0, 0x1f

    .line 136
    .line 137
    iget-wide v3, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->timeStamp:J

    .line 138
    .line 139
    invoke-static {v3, v4}, Landroidx/collection/s;->a(J)I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    add-int/2addr v0, v1

    .line 144
    mul-int/lit8 v0, v0, 0x1f

    .line 145
    .line 146
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subtitleSelectId:Ljava/lang/String;

    .line 147
    .line 148
    if-nez v1, :cond_8

    .line 149
    .line 150
    move v1, v2

    .line 151
    goto :goto_8

    .line 152
    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    :goto_8
    add-int/2addr v0, v1

    .line 157
    mul-int/lit8 v0, v0, 0x1f

    .line 158
    .line 159
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->totalDuration:Ljava/lang/Long;

    .line 160
    .line 161
    if-nez v1, :cond_9

    .line 162
    .line 163
    move v1, v2

    .line 164
    goto :goto_9

    .line 165
    :cond_9
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    :goto_9
    add-int/2addr v0, v1

    .line 170
    mul-int/lit8 v0, v0, 0x1f

    .line 171
    .line 172
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subjectDurationSeconds:Ljava/lang/Long;

    .line 173
    .line 174
    if-nez v1, :cond_a

    .line 175
    .line 176
    move v1, v2

    .line 177
    goto :goto_a

    .line 178
    :cond_a
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    :goto_a
    add-int/2addr v0, v1

    .line 183
    mul-int/lit8 v0, v0, 0x1f

    .line 184
    .line 185
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->averageHueLight:Ljava/lang/String;

    .line 186
    .line 187
    if-nez v1, :cond_b

    .line 188
    .line 189
    move v1, v2

    .line 190
    goto :goto_b

    .line 191
    :cond_b
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    :goto_b
    add-int/2addr v0, v1

    .line 196
    mul-int/lit8 v0, v0, 0x1f

    .line 197
    .line 198
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subjectType:Ljava/lang/Integer;

    .line 199
    .line 200
    if-nez v1, :cond_c

    .line 201
    .line 202
    move v1, v2

    .line 203
    goto :goto_c

    .line 204
    :cond_c
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    :goto_c
    add-int/2addr v0, v1

    .line 209
    mul-int/lit8 v0, v0, 0x1f

    .line 210
    .line 211
    iget-boolean v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->hasDelete:Z

    .line 212
    .line 213
    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    add-int/2addr v0, v1

    .line 218
    mul-int/lit8 v0, v0, 0x1f

    .line 219
    .line 220
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->playMode:Ljava/lang/String;

    .line 221
    .line 222
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    add-int/2addr v0, v1

    .line 227
    mul-int/lit8 v0, v0, 0x1f

    .line 228
    .line 229
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadUrl:Ljava/lang/String;

    .line 230
    .line 231
    if-nez v1, :cond_d

    .line 232
    .line 233
    move v1, v2

    .line 234
    goto :goto_d

    .line 235
    :cond_d
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    :goto_d
    add-int/2addr v0, v1

    .line 240
    mul-int/lit8 v0, v0, 0x1f

    .line 241
    .line 242
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadResid:Ljava/lang/String;

    .line 243
    .line 244
    if-nez v1, :cond_e

    .line 245
    .line 246
    move v1, v2

    .line 247
    goto :goto_e

    .line 248
    :cond_e
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    :goto_e
    add-int/2addr v0, v1

    .line 253
    mul-int/lit8 v0, v0, 0x1f

    .line 254
    .line 255
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadFilePath:Ljava/lang/String;

    .line 256
    .line 257
    if-nez v1, :cond_f

    .line 258
    .line 259
    move v1, v2

    .line 260
    goto :goto_f

    .line 261
    :cond_f
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    :goto_f
    add-int/2addr v0, v1

    .line 266
    mul-int/lit8 v0, v0, 0x1f

    .line 267
    .line 268
    iget-wide v3, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadSize:J

    .line 269
    .line 270
    invoke-static {v3, v4}, Landroidx/collection/s;->a(J)I

    .line 271
    .line 272
    .line 273
    move-result v1

    .line 274
    add-int/2addr v0, v1

    .line 275
    mul-int/lit8 v0, v0, 0x1f

    .line 276
    .line 277
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->lastAdStartTimeStamp:Ljava/lang/Long;

    .line 278
    .line 279
    if-nez v1, :cond_10

    .line 280
    .line 281
    move v1, v2

    .line 282
    goto :goto_10

    .line 283
    :cond_10
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    :goto_10
    add-int/2addr v0, v1

    .line 288
    mul-int/lit8 v0, v0, 0x1f

    .line 289
    .line 290
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->lastAdEndTimeStamp:Ljava/lang/Long;

    .line 291
    .line 292
    if-nez v1, :cond_11

    .line 293
    .line 294
    move v1, v2

    .line 295
    goto :goto_11

    .line 296
    :cond_11
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    :goto_11
    add-int/2addr v0, v1

    .line 301
    mul-int/lit8 v0, v0, 0x1f

    .line 302
    .line 303
    iget-boolean v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardPlayed:Z

    .line 304
    .line 305
    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    add-int/2addr v0, v1

    .line 310
    mul-int/lit8 v0, v0, 0x1f

    .line 311
    .line 312
    iget-boolean v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardUnlock:Z

    .line 313
    .line 314
    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    add-int/2addr v0, v1

    .line 319
    mul-int/lit8 v0, v0, 0x1f

    .line 320
    .line 321
    iget-boolean v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardFree:Z

    .line 322
    .line 323
    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    .line 324
    .line 325
    .line 326
    move-result v1

    .line 327
    add-int/2addr v0, v1

    .line 328
    mul-int/lit8 v0, v0, 0x1f

    .line 329
    .line 330
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->ops:Ljava/lang/String;

    .line 331
    .line 332
    if-nez v1, :cond_12

    .line 333
    .line 334
    move v1, v2

    .line 335
    goto :goto_12

    .line 336
    :cond_12
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 337
    .line 338
    .line 339
    move-result v1

    .line 340
    :goto_12
    add-int/2addr v0, v1

    .line 341
    mul-int/lit8 v0, v0, 0x1f

    .line 342
    .line 343
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->uid:Ljava/lang/String;

    .line 344
    .line 345
    if-nez v1, :cond_13

    .line 346
    .line 347
    move v1, v2

    .line 348
    goto :goto_13

    .line 349
    :cond_13
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 350
    .line 351
    .line 352
    move-result v1

    .line 353
    :goto_13
    add-int/2addr v0, v1

    .line 354
    mul-int/lit8 v0, v0, 0x1f

    .line 355
    .line 356
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->userName:Ljava/lang/String;

    .line 357
    .line 358
    if-nez v1, :cond_14

    .line 359
    .line 360
    move v1, v2

    .line 361
    goto :goto_14

    .line 362
    :cond_14
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 363
    .line 364
    .line 365
    move-result v1

    .line 366
    :goto_14
    add-int/2addr v0, v1

    .line 367
    mul-int/lit8 v0, v0, 0x1f

    .line 368
    .line 369
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->userAvatar:Ljava/lang/String;

    .line 370
    .line 371
    if-nez v1, :cond_15

    .line 372
    .line 373
    move v1, v2

    .line 374
    goto :goto_15

    .line 375
    :cond_15
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 376
    .line 377
    .line 378
    move-result v1

    .line 379
    :goto_15
    add-int/2addr v0, v1

    .line 380
    mul-int/lit8 v0, v0, 0x1f

    .line 381
    .line 382
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->description:Ljava/lang/String;

    .line 383
    .line 384
    if-nez v1, :cond_16

    .line 385
    .line 386
    move v1, v2

    .line 387
    goto :goto_16

    .line 388
    :cond_16
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 389
    .line 390
    .line 391
    move-result v1

    .line 392
    :goto_16
    add-int/2addr v0, v1

    .line 393
    mul-int/lit8 v0, v0, 0x1f

    .line 394
    .line 395
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->videoStyle:Ljava/lang/String;

    .line 396
    .line 397
    if-nez v1, :cond_17

    .line 398
    .line 399
    move v1, v2

    .line 400
    goto :goto_17

    .line 401
    :cond_17
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 402
    .line 403
    .line 404
    move-result v1

    .line 405
    :goto_17
    add-int/2addr v0, v1

    .line 406
    mul-int/lit8 v0, v0, 0x1f

    .line 407
    .line 408
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->kidId:Ljava/lang/String;

    .line 409
    .line 410
    if-nez v1, :cond_18

    .line 411
    .line 412
    goto :goto_18

    .line 413
    :cond_18
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 414
    .line 415
    .line 416
    move-result v2

    .line 417
    :goto_18
    add-int/2addr v0, v2

    .line 418
    return v0
.end method

.method public final isSingleVideo()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->collectionId:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "SINGLE_"

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-static {v0, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public final setAverageHueLight(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->averageHueLight:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->description:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDownloadFilePath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadFilePath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDownloadResid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadResid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDownloadSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadSize:J

    .line 2
    .line 3
    return-void
.end method

.method public final setDownloadUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setHasDelete(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->hasDelete:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setKidId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->kidId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setLastAdEndTimeStamp(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->lastAdEndTimeStamp:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setLastAdStartTimeStamp(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->lastAdStartTimeStamp:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setOps(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->ops:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPlayMode(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->playMode:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setProgress(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->progress:J

    .line 2
    .line 3
    return-void
.end method

.method public final setRewardFree(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardFree:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setRewardPlayed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardPlayed:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setRewardUnlock(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardUnlock:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setSubjectDurationSeconds(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subjectDurationSeconds:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setSubjectType(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subjectType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setSubtitleSelectId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subtitleSelectId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setTimeStamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->timeStamp:J

    .line 2
    .line 3
    return-void
.end method

.method public final setTotalDuration(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->totalDuration:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setUgcVideoId(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->ugcVideoId:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setUid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->uid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setUserAvatar(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->userAvatar:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setUserName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->userName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setVideoStyle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->videoStyle:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final toBusinessBean()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;
    .locals 44

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->collectionId:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x0

    .line 7
    const-string v4, "SINGLE_"

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    invoke-static {v0, v4, v5, v2, v3}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string v0, ""

    .line 17
    .line 18
    :goto_0
    move-object/from16 v43, v0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget-object v0, v1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->collectionId:Ljava/lang/String;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :goto_1
    const/16 v41, 0xf

    .line 25
    .line 26
    const/16 v42, 0x0

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    const-wide/16 v3, 0x0

    .line 30
    .line 31
    const/4 v5, 0x0

    .line 32
    const/4 v6, 0x0

    .line 33
    const/4 v7, 0x0

    .line 34
    const/4 v8, 0x0

    .line 35
    const/4 v9, 0x0

    .line 36
    const/4 v10, 0x0

    .line 37
    const/4 v11, 0x0

    .line 38
    const/4 v12, 0x0

    .line 39
    const/4 v13, 0x0

    .line 40
    const-wide/16 v14, 0x0

    .line 41
    .line 42
    const/16 v16, 0x0

    .line 43
    .line 44
    const/16 v17, 0x0

    .line 45
    .line 46
    const/16 v18, 0x0

    .line 47
    .line 48
    const/16 v19, 0x0

    .line 49
    .line 50
    const/16 v20, 0x0

    .line 51
    .line 52
    const/16 v21, 0x0

    .line 53
    .line 54
    const/16 v22, 0x0

    .line 55
    .line 56
    const/16 v23, 0x0

    .line 57
    .line 58
    const/16 v24, 0x0

    .line 59
    .line 60
    const/16 v25, 0x0

    .line 61
    .line 62
    const-wide/16 v26, 0x0

    .line 63
    .line 64
    const/16 v28, 0x0

    .line 65
    .line 66
    const/16 v29, 0x0

    .line 67
    .line 68
    const/16 v30, 0x0

    .line 69
    .line 70
    const/16 v31, 0x0

    .line 71
    .line 72
    const/16 v32, 0x0

    .line 73
    .line 74
    const/16 v33, 0x0

    .line 75
    .line 76
    const/16 v34, 0x0

    .line 77
    .line 78
    const/16 v35, 0x0

    .line 79
    .line 80
    const/16 v36, 0x0

    .line 81
    .line 82
    const/16 v37, 0x0

    .line 83
    .line 84
    const/16 v38, 0x0

    .line 85
    .line 86
    const/16 v39, 0x0

    .line 87
    .line 88
    const/16 v40, -0x2

    .line 89
    .line 90
    move-object/from16 v0, p0

    .line 91
    .line 92
    move-object/from16 v1, v43

    .line 93
    .line 94
    invoke-static/range {v0 .. v42}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->copy$default(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 41

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->collectionId:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->ugcVideoId:Ljava/lang/String;

    .line 6
    .line 7
    iget-wide v3, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->progress:J

    .line 8
    .line 9
    iget-object v5, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->title:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v6, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->coverUrl:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v7, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->thumbnail:Ljava/lang/String;

    .line 14
    .line 15
    iget v8, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->position:I

    .line 16
    .line 17
    iget-object v9, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->type:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v10, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev1Id:Ljava/lang/Integer;

    .line 20
    .line 21
    iget-object v11, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev2Id:Ljava/lang/Integer;

    .line 22
    .line 23
    iget-object v12, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev3Id:Ljava/lang/Integer;

    .line 24
    .line 25
    iget-object v13, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev4Id:Ljava/lang/Integer;

    .line 26
    .line 27
    iget-wide v14, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->timeStamp:J

    .line 28
    .line 29
    move-wide/from16 v16, v14

    .line 30
    .line 31
    iget-object v14, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subtitleSelectId:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->totalDuration:Ljava/lang/Long;

    .line 34
    .line 35
    move-object/from16 v18, v15

    .line 36
    .line 37
    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subjectDurationSeconds:Ljava/lang/Long;

    .line 38
    .line 39
    move-object/from16 v19, v15

    .line 40
    .line 41
    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->averageHueLight:Ljava/lang/String;

    .line 42
    .line 43
    move-object/from16 v20, v15

    .line 44
    .line 45
    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subjectType:Ljava/lang/Integer;

    .line 46
    .line 47
    move-object/from16 v21, v15

    .line 48
    .line 49
    iget-boolean v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->hasDelete:Z

    .line 50
    .line 51
    move/from16 v22, v15

    .line 52
    .line 53
    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->playMode:Ljava/lang/String;

    .line 54
    .line 55
    move-object/from16 v23, v15

    .line 56
    .line 57
    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadUrl:Ljava/lang/String;

    .line 58
    .line 59
    move-object/from16 v24, v15

    .line 60
    .line 61
    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadResid:Ljava/lang/String;

    .line 62
    .line 63
    move-object/from16 v25, v15

    .line 64
    .line 65
    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadFilePath:Ljava/lang/String;

    .line 66
    .line 67
    move-object/from16 v26, v14

    .line 68
    .line 69
    move-object/from16 v27, v15

    .line 70
    .line 71
    iget-wide v14, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadSize:J

    .line 72
    .line 73
    move-wide/from16 v28, v14

    .line 74
    .line 75
    iget-object v14, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->lastAdStartTimeStamp:Ljava/lang/Long;

    .line 76
    .line 77
    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->lastAdEndTimeStamp:Ljava/lang/Long;

    .line 78
    .line 79
    move-object/from16 v30, v15

    .line 80
    .line 81
    iget-boolean v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardPlayed:Z

    .line 82
    .line 83
    move/from16 v31, v15

    .line 84
    .line 85
    iget-boolean v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardUnlock:Z

    .line 86
    .line 87
    move/from16 v32, v15

    .line 88
    .line 89
    iget-boolean v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardFree:Z

    .line 90
    .line 91
    move/from16 v33, v15

    .line 92
    .line 93
    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->ops:Ljava/lang/String;

    .line 94
    .line 95
    move-object/from16 v34, v15

    .line 96
    .line 97
    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->uid:Ljava/lang/String;

    .line 98
    .line 99
    move-object/from16 v35, v15

    .line 100
    .line 101
    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->userName:Ljava/lang/String;

    .line 102
    .line 103
    move-object/from16 v36, v15

    .line 104
    .line 105
    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->userAvatar:Ljava/lang/String;

    .line 106
    .line 107
    move-object/from16 v37, v15

    .line 108
    .line 109
    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->description:Ljava/lang/String;

    .line 110
    .line 111
    move-object/from16 v38, v15

    .line 112
    .line 113
    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->videoStyle:Ljava/lang/String;

    .line 114
    .line 115
    move-object/from16 v39, v15

    .line 116
    .line 117
    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->kidId:Ljava/lang/String;

    .line 118
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    move-object/from16 v40, v15

    .line 125
    .line 126
    const-string v15, "UGCVideoDetailPlayBean(collectionId="

    .line 127
    .line 128
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v1, ", ugcVideoId="

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v1, ", progress="

    .line 143
    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v1, ", title="

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v1, ", coverUrl="

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v1, ", thumbnail="

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const-string v1, ", position="

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string v1, ", type="

    .line 183
    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const-string v1, ", cateLev1Id="

    .line 191
    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string v1, ", cateLev2Id="

    .line 199
    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v1, ", cateLev3Id="

    .line 207
    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    const-string v1, ", cateLev4Id="

    .line 215
    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const-string v1, ", timeStamp="

    .line 223
    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    move-wide/from16 v1, v16

    .line 228
    .line 229
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    const-string v1, ", subtitleSelectId="

    .line 233
    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    move-object/from16 v1, v26

    .line 238
    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string v1, ", totalDuration="

    .line 243
    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    move-object/from16 v1, v18

    .line 248
    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    const-string v1, ", subjectDurationSeconds="

    .line 253
    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    move-object/from16 v1, v19

    .line 258
    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    const-string v1, ", averageHueLight="

    .line 263
    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    move-object/from16 v1, v20

    .line 268
    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    const-string v1, ", subjectType="

    .line 273
    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    move-object/from16 v1, v21

    .line 278
    .line 279
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    const-string v1, ", hasDelete="

    .line 283
    .line 284
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    move/from16 v1, v22

    .line 288
    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    const-string v1, ", playMode="

    .line 293
    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    move-object/from16 v1, v23

    .line 298
    .line 299
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    const-string v1, ", downloadUrl="

    .line 303
    .line 304
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    move-object/from16 v1, v24

    .line 308
    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    const-string v1, ", downloadResid="

    .line 313
    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    move-object/from16 v1, v25

    .line 318
    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    const-string v1, ", downloadFilePath="

    .line 323
    .line 324
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    move-object/from16 v1, v27

    .line 328
    .line 329
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    const-string v1, ", downloadSize="

    .line 333
    .line 334
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    move-wide/from16 v1, v28

    .line 338
    .line 339
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    const-string v1, ", lastAdStartTimeStamp="

    .line 343
    .line 344
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    const-string v1, ", lastAdEndTimeStamp="

    .line 351
    .line 352
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    move-object/from16 v1, v30

    .line 356
    .line 357
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    const-string v1, ", rewardPlayed="

    .line 361
    .line 362
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    move/from16 v1, v31

    .line 366
    .line 367
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    const-string v1, ", rewardUnlock="

    .line 371
    .line 372
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    move/from16 v1, v32

    .line 376
    .line 377
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    const-string v1, ", rewardFree="

    .line 381
    .line 382
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    move/from16 v1, v33

    .line 386
    .line 387
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    const-string v1, ", ops="

    .line 391
    .line 392
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    move-object/from16 v1, v34

    .line 396
    .line 397
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    const-string v1, ", uid="

    .line 401
    .line 402
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    move-object/from16 v1, v35

    .line 406
    .line 407
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    const-string v1, ", userName="

    .line 411
    .line 412
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    move-object/from16 v1, v36

    .line 416
    .line 417
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    const-string v1, ", userAvatar="

    .line 421
    .line 422
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    move-object/from16 v1, v37

    .line 426
    .line 427
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    const-string v1, ", description="

    .line 431
    .line 432
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    move-object/from16 v1, v38

    .line 436
    .line 437
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    const-string v1, ", videoStyle="

    .line 441
    .line 442
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    move-object/from16 v1, v39

    .line 446
    .line 447
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    const-string v1, ", kidId="

    .line 451
    .line 452
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    move-object/from16 v1, v40

    .line 456
    .line 457
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    const-string v1, ")"

    .line 461
    .line 462
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    return-object v0
.end method
