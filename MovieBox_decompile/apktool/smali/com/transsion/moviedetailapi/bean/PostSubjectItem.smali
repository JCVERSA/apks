.class public final Lcom/transsion/moviedetailapi/bean/PostSubjectItem;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/moviedetailapi/bean/PostSubjectItem$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000u\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0003\u0008\u0098\u0001\u0008\u0087\u0008\u0018\u0000 \u00c9\u00012\u00020\u0001:\u0002\u00ca\u0001B\u008b\u0003\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0011\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0011\u0012\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u001f\u0012\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u001f\u0012\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0008\u0002\u0010$\u001a\u00020\u0007\u0012\u0010\u0008\u0002\u0010\'\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010%\u0012\u0008\u0008\u0002\u0010(\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010*\u001a\u0004\u0018\u00010)\u0012\u0008\u0008\u0002\u0010+\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010,\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010-\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010.\u001a\u00020\u0007\u0012\n\u0008\u0002\u00100\u001a\u0004\u0018\u00010/\u00a2\u0006\u0004\u00081\u00102J\u001a\u00105\u001a\u00020\u00072\u0008\u00104\u001a\u0004\u0018\u000103H\u0096\u0002\u00a2\u0006\u0004\u00085\u00106J\u000f\u00107\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u00087\u00108J\u0017\u0010:\u001a\u00020\u00022\u0008\u0008\u0002\u00109\u001a\u00020\u0007\u00a2\u0006\u0004\u0008:\u0010;J\u0019\u0010=\u001a\u0004\u0018\u00010\u00112\u0008\u0008\u0002\u0010<\u001a\u00020\u0007\u00a2\u0006\u0004\u0008=\u0010>J\u0012\u0010?\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008?\u0010@J\u0012\u0010A\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008A\u0010@J\u0012\u0010B\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008B\u0010CJ\u0012\u0010D\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0004\u0008D\u0010EJ\u0012\u0010F\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0004\u0008F\u0010EJ\u0012\u0010G\u001a\u0004\u0018\u00010\nH\u00c6\u0003\u00a2\u0006\u0004\u0008G\u0010HJ\u0012\u0010I\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003\u00a2\u0006\u0004\u0008I\u0010JJ\u0012\u0010K\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008K\u0010@J\u0012\u0010L\u001a\u0004\u0018\u00010\u000fH\u00c6\u0003\u00a2\u0006\u0004\u0008L\u0010MJ\u0012\u0010N\u001a\u0004\u0018\u00010\u0011H\u00c6\u0003\u00a2\u0006\u0004\u0008N\u0010OJ\u0012\u0010P\u001a\u0004\u0018\u00010\u0013H\u00c6\u0003\u00a2\u0006\u0004\u0008P\u0010QJ\u0012\u0010R\u001a\u0004\u0018\u00010\u0011H\u00c6\u0003\u00a2\u0006\u0004\u0008R\u0010OJ\u0012\u0010S\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008S\u0010@J\u0012\u0010T\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008T\u0010@J\u0012\u0010U\u001a\u0004\u0018\u00010\u0018H\u00c6\u0003\u00a2\u0006\u0004\u0008U\u0010VJ\u0012\u0010W\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008W\u0010@J\u0012\u0010X\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008X\u0010@J\u0012\u0010Y\u001a\u0004\u0018\u00010\u0011H\u00c6\u0003\u00a2\u0006\u0004\u0008Y\u0010OJ\u0012\u0010Z\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008Z\u0010@J\u0010\u0010[\u001a\u00020\u0007H\u00c6\u0003\u00a2\u0006\u0004\u0008[\u0010\\J\u0012\u0010]\u001a\u0004\u0018\u00010\u001fH\u00c6\u0003\u00a2\u0006\u0004\u0008]\u0010^J\u0012\u0010_\u001a\u0004\u0018\u00010\u001fH\u00c6\u0003\u00a2\u0006\u0004\u0008_\u0010^J\u0012\u0010`\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008`\u0010@J\u0012\u0010a\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008a\u0010@J\u0010\u0010b\u001a\u00020\u0007H\u00c6\u0003\u00a2\u0006\u0004\u0008b\u0010\\J\u0018\u0010c\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010%H\u00c6\u0003\u00a2\u0006\u0004\u0008c\u0010dJ\u0010\u0010e\u001a\u00020\u0007H\u00c6\u0003\u00a2\u0006\u0004\u0008e\u0010\\J\u0012\u0010f\u001a\u0004\u0018\u00010)H\u00c6\u0003\u00a2\u0006\u0004\u0008f\u0010gJ\u0010\u0010h\u001a\u00020\u0007H\u00c6\u0003\u00a2\u0006\u0004\u0008h\u0010\\J\u0010\u0010i\u001a\u00020\u0007H\u00c6\u0003\u00a2\u0006\u0004\u0008i\u0010\\J\u0010\u0010j\u001a\u00020\u0007H\u00c6\u0003\u00a2\u0006\u0004\u0008j\u0010\\J\u0010\u0010k\u001a\u00020\u0007H\u00c6\u0003\u00a2\u0006\u0004\u0008k\u0010\\J\u0012\u0010l\u001a\u0004\u0018\u00010/H\u00c6\u0003\u00a2\u0006\u0004\u0008l\u0010mJ\u0094\u0003\u0010n\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00112\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00132\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00112\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00182\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00112\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00022\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u00072\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u001f2\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u001f2\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u00022\u0008\u0008\u0002\u0010$\u001a\u00020\u00072\u0010\u0008\u0002\u0010\'\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010%2\u0008\u0008\u0002\u0010(\u001a\u00020\u00072\n\u0008\u0002\u0010*\u001a\u0004\u0018\u00010)2\u0008\u0008\u0002\u0010+\u001a\u00020\u00072\u0008\u0008\u0002\u0010,\u001a\u00020\u00072\u0008\u0008\u0002\u0010-\u001a\u00020\u00072\u0008\u0008\u0002\u0010.\u001a\u00020\u00072\n\u0008\u0002\u00100\u001a\u0004\u0018\u00010/H\u00c6\u0001\u00a2\u0006\u0004\u0008n\u0010oJ\u0010\u0010p\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008p\u0010@R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010q\u001a\u0004\u0008r\u0010@\"\u0004\u0008s\u0010tR$\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0004\u0010q\u001a\u0004\u0008u\u0010@\"\u0004\u0008v\u0010tR$\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010w\u001a\u0004\u0008x\u0010C\"\u0004\u0008y\u0010zR$\u0010\u0008\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010{\u001a\u0004\u0008|\u0010E\"\u0004\u0008}\u0010~R$\u0010\t\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010{\u001a\u0004\u0008\t\u0010E\"\u0004\u0008\u007f\u0010~R(\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0016\n\u0005\u0008\u000b\u0010\u0080\u0001\u001a\u0005\u0008\u0081\u0001\u0010H\"\u0006\u0008\u0082\u0001\u0010\u0083\u0001R(\u0010\r\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0016\n\u0005\u0008\r\u0010\u0084\u0001\u001a\u0005\u0008\u0085\u0001\u0010J\"\u0006\u0008\u0086\u0001\u0010\u0087\u0001R&\u0010\u000e\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0004\u0008\u000e\u0010q\u001a\u0005\u0008\u0088\u0001\u0010@\"\u0005\u0008\u0089\u0001\u0010tR(\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0016\n\u0005\u0008\u0010\u0010\u008a\u0001\u001a\u0005\u0008\u008b\u0001\u0010M\"\u0006\u0008\u008c\u0001\u0010\u008d\u0001R(\u0010\u0012\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0016\n\u0005\u0008\u0012\u0010\u008e\u0001\u001a\u0005\u0008\u008f\u0001\u0010O\"\u0006\u0008\u0090\u0001\u0010\u0091\u0001R(\u0010\u0014\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0016\n\u0005\u0008\u0014\u0010\u0092\u0001\u001a\u0005\u0008\u0093\u0001\u0010Q\"\u0006\u0008\u0094\u0001\u0010\u0095\u0001R\'\u0010\u0015\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0015\u0010\u008e\u0001\u001a\u0005\u0008\u0096\u0001\u0010O\"\u0005\u0008\u007f\u0010\u0091\u0001R&\u0010\u0016\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0004\u0008\u0016\u0010q\u001a\u0005\u0008\u0097\u0001\u0010@\"\u0005\u0008\u0098\u0001\u0010tR&\u0010\u0017\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0004\u0008\u0017\u0010q\u001a\u0005\u0008\u0099\u0001\u0010@\"\u0005\u0008\u009a\u0001\u0010tR(\u0010\u0019\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0016\n\u0005\u0008\u0019\u0010\u009b\u0001\u001a\u0005\u0008\u009c\u0001\u0010V\"\u0006\u0008\u009d\u0001\u0010\u009e\u0001R&\u0010\u001a\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0004\u0008\u001a\u0010q\u001a\u0005\u0008\u009f\u0001\u0010@\"\u0005\u0008\u00a0\u0001\u0010tR&\u0010\u001b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0004\u0008\u001b\u0010q\u001a\u0005\u0008\u00a1\u0001\u0010@\"\u0005\u0008\u00a2\u0001\u0010tR(\u0010\u001c\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0016\n\u0005\u0008\u001c\u0010\u008e\u0001\u001a\u0005\u0008\u00a3\u0001\u0010O\"\u0006\u0008\u00a4\u0001\u0010\u0091\u0001R&\u0010\u001d\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008\u001d\u0010q\u001a\u0005\u0008\u00a5\u0001\u0010@\"\u0005\u0008\u00a6\u0001\u0010tR%\u0010\u001e\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u001e\u0010\u00a7\u0001\u001a\u0004\u0008\u001e\u0010\\\"\u0006\u0008\u00a8\u0001\u0010\u00a9\u0001R(\u0010 \u001a\u0004\u0018\u00010\u001f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0005\u0008 \u0010\u00aa\u0001\u001a\u0005\u0008\u00ab\u0001\u0010^\"\u0006\u0008\u00ac\u0001\u0010\u00ad\u0001R(\u0010!\u001a\u0004\u0018\u00010\u001f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0005\u0008!\u0010\u00aa\u0001\u001a\u0005\u0008\u00ae\u0001\u0010^\"\u0006\u0008\u00af\u0001\u0010\u00ad\u0001R&\u0010\"\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0004\u0008\"\u0010q\u001a\u0005\u0008\u00b0\u0001\u0010@\"\u0005\u0008\u00b1\u0001\u0010tR&\u0010#\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008#\u0010q\u001a\u0005\u0008\u00b2\u0001\u0010@\"\u0005\u0008\u00b3\u0001\u0010tR%\u0010$\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008$\u0010\u00a7\u0001\u001a\u0004\u0008$\u0010\\\"\u0006\u0008\u00b4\u0001\u0010\u00a9\u0001R.\u0010\'\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010%8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0005\u0008\'\u0010\u00b5\u0001\u001a\u0005\u0008\u00b6\u0001\u0010d\"\u0006\u0008\u00b4\u0001\u0010\u00b7\u0001R%\u0010(\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008(\u0010\u00a7\u0001\u001a\u0004\u0008(\u0010\\\"\u0006\u0008\u00b8\u0001\u0010\u00a9\u0001R(\u0010*\u001a\u0004\u0018\u00010)8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0005\u0008*\u0010\u00b9\u0001\u001a\u0005\u0008\u00ba\u0001\u0010g\"\u0006\u0008\u00bb\u0001\u0010\u00bc\u0001R&\u0010+\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0005\u0008+\u0010\u00a7\u0001\u001a\u0005\u0008\u00bd\u0001\u0010\\\"\u0006\u0008\u00be\u0001\u0010\u00a9\u0001R%\u0010,\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008,\u0010\u00a7\u0001\u001a\u0004\u0008,\u0010\\\"\u0006\u0008\u00bf\u0001\u0010\u00a9\u0001R%\u0010-\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008-\u0010\u00a7\u0001\u001a\u0004\u0008-\u0010\\\"\u0006\u0008\u00c0\u0001\u0010\u00a9\u0001R%\u0010.\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008.\u0010\u00a7\u0001\u001a\u0004\u0008.\u0010\\\"\u0006\u0008\u00c1\u0001\u0010\u00a9\u0001R(\u00100\u001a\u0004\u0018\u00010/8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0005\u00080\u0010\u00c2\u0001\u001a\u0005\u0008\u00c3\u0001\u0010m\"\u0006\u0008\u00c4\u0001\u0010\u00c5\u0001R\u0013\u0010\u00c6\u0001\u001a\u00020\u00078F\u00a2\u0006\u0007\u001a\u0005\u0008\u00c6\u0001\u0010\\R\u0015\u0010\u00c8\u0001\u001a\u0004\u0018\u00010\u00028F\u00a2\u0006\u0007\u001a\u0005\u0008\u00c7\u0001\u0010@\u00a8\u0006\u00cb\u0001"
    }
    d2 = {
        "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;",
        "Ljava/io/Serializable;",
        "",
        "content",
        "createdAt",
        "Lcom/transsion/moviedetailapi/bean/Group;",
        "group",
        "",
        "hasLike",
        "isSubjectRate",
        "Lcom/transsion/moviedetailapi/bean/Link;",
        "link",
        "Lcom/transsion/moviedetailapi/bean/Media;",
        "media",
        "postId",
        "Lcom/transsion/moviedetailapi/bean/Stat;",
        "stat",
        "",
        "status",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "subject",
        "subjectRate",
        "title",
        "updatedAt",
        "Lcom/transsion/moviedetailapi/bean/User;",
        "user",
        "ops",
        "itemType",
        "blur",
        "tran_ops",
        "isCache",
        "",
        "lon",
        "lat",
        "poiName",
        "distanceStr",
        "isRoomList",
        "",
        "Lcom/transsion/moviedetailapi/bean/RoomItem;",
        "roomList",
        "isMore",
        "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;",
        "nonAdDelegate",
        "builtIn",
        "isRoomCacheListStart",
        "isRoomCacheListEnd",
        "isRoomCache",
        "Lcom/transsion/moviedetailapi/bean/CommentBean;",
        "hotComment",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Group;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/transsion/moviedetailapi/bean/Link;Lcom/transsion/moviedetailapi/bean/Media;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Stat;Ljava/lang/Integer;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/User;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;ZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;ZZZZLcom/transsion/moviedetailapi/bean/CommentBean;)V",
        "",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "hashCode",
        "()I",
        "isThumbnail",
        "getCoverUrl",
        "(Z)Ljava/lang/String;",
        "isHeight",
        "getCoverHeightWith",
        "(Z)Ljava/lang/Integer;",
        "component1",
        "()Ljava/lang/String;",
        "component2",
        "component3",
        "()Lcom/transsion/moviedetailapi/bean/Group;",
        "component4",
        "()Ljava/lang/Boolean;",
        "component5",
        "component6",
        "()Lcom/transsion/moviedetailapi/bean/Link;",
        "component7",
        "()Lcom/transsion/moviedetailapi/bean/Media;",
        "component8",
        "component9",
        "()Lcom/transsion/moviedetailapi/bean/Stat;",
        "component10",
        "()Ljava/lang/Integer;",
        "component11",
        "()Lcom/transsion/moviedetailapi/bean/Subject;",
        "component12",
        "component13",
        "component14",
        "component15",
        "()Lcom/transsion/moviedetailapi/bean/User;",
        "component16",
        "component17",
        "component18",
        "component19",
        "component20",
        "()Z",
        "component21",
        "()Ljava/lang/Float;",
        "component22",
        "component23",
        "component24",
        "component25",
        "component26",
        "()Ljava/util/List;",
        "component27",
        "component28",
        "()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;",
        "component29",
        "component30",
        "component31",
        "component32",
        "component33",
        "()Lcom/transsion/moviedetailapi/bean/CommentBean;",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Group;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/transsion/moviedetailapi/bean/Link;Lcom/transsion/moviedetailapi/bean/Media;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Stat;Ljava/lang/Integer;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/User;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;ZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;ZZZZLcom/transsion/moviedetailapi/bean/CommentBean;)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;",
        "toString",
        "Ljava/lang/String;",
        "getContent",
        "setContent",
        "(Ljava/lang/String;)V",
        "getCreatedAt",
        "setCreatedAt",
        "Lcom/transsion/moviedetailapi/bean/Group;",
        "getGroup",
        "setGroup",
        "(Lcom/transsion/moviedetailapi/bean/Group;)V",
        "Ljava/lang/Boolean;",
        "getHasLike",
        "setHasLike",
        "(Ljava/lang/Boolean;)V",
        "setSubjectRate",
        "Lcom/transsion/moviedetailapi/bean/Link;",
        "getLink",
        "setLink",
        "(Lcom/transsion/moviedetailapi/bean/Link;)V",
        "Lcom/transsion/moviedetailapi/bean/Media;",
        "getMedia",
        "setMedia",
        "(Lcom/transsion/moviedetailapi/bean/Media;)V",
        "getPostId",
        "setPostId",
        "Lcom/transsion/moviedetailapi/bean/Stat;",
        "getStat",
        "setStat",
        "(Lcom/transsion/moviedetailapi/bean/Stat;)V",
        "Ljava/lang/Integer;",
        "getStatus",
        "setStatus",
        "(Ljava/lang/Integer;)V",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "getSubject",
        "setSubject",
        "(Lcom/transsion/moviedetailapi/bean/Subject;)V",
        "getSubjectRate",
        "getTitle",
        "setTitle",
        "getUpdatedAt",
        "setUpdatedAt",
        "Lcom/transsion/moviedetailapi/bean/User;",
        "getUser",
        "setUser",
        "(Lcom/transsion/moviedetailapi/bean/User;)V",
        "getOps",
        "setOps",
        "getItemType",
        "setItemType",
        "getBlur",
        "setBlur",
        "getTran_ops",
        "setTran_ops",
        "Z",
        "setCache",
        "(Z)V",
        "Ljava/lang/Float;",
        "getLon",
        "setLon",
        "(Ljava/lang/Float;)V",
        "getLat",
        "setLat",
        "getPoiName",
        "setPoiName",
        "getDistanceStr",
        "setDistanceStr",
        "setRoomList",
        "Ljava/util/List;",
        "getRoomList",
        "(Ljava/util/List;)V",
        "setMore",
        "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;",
        "getNonAdDelegate",
        "setNonAdDelegate",
        "(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V",
        "getBuiltIn",
        "setBuiltIn",
        "setRoomCacheListStart",
        "setRoomCacheListEnd",
        "setRoomCache",
        "Lcom/transsion/moviedetailapi/bean/CommentBean;",
        "getHotComment",
        "setHotComment",
        "(Lcom/transsion/moviedetailapi/bean/CommentBean;)V",
        "isVideo",
        "getRec_ops",
        "rec_ops",
        "Companion",
        "a",
        "MovieDetailApi_psRelease"
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
.field public static final Companion:Lcom/transsion/moviedetailapi/bean/PostSubjectItem$a;


# instance fields
.field private blur:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "blur"
    .end annotation
.end field

.field private builtIn:Z

.field private content:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content"
    .end annotation
.end field

.field private createdAt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "createdAt"
    .end annotation
.end field

.field private transient distanceStr:Ljava/lang/String;

.field private group:Lcom/transsion/moviedetailapi/bean/Group;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "group"
    .end annotation
.end field

.field private hasLike:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hasLike"
    .end annotation
.end field

.field private hotComment:Lcom/transsion/moviedetailapi/bean/CommentBean;

.field private isCache:Z

.field private transient isMore:Z

.field private isRoomCache:Z

.field private isRoomCacheListEnd:Z

.field private isRoomCacheListStart:Z

.field private transient isRoomList:Z

.field private isSubjectRate:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isSubjectRate"
    .end annotation
.end field

.field private itemType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "itemType"
    .end annotation
.end field

.field private lat:Ljava/lang/Float;

.field private link:Lcom/transsion/moviedetailapi/bean/Link;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "link"
    .end annotation
.end field

.field private lon:Ljava/lang/Float;

.field private media:Lcom/transsion/moviedetailapi/bean/Media;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "media"
    .end annotation
.end field

.field private transient nonAdDelegate:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

.field private ops:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ops"
    .end annotation
.end field

.field private poiName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "poiName"
    .end annotation
.end field

.field private postId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "postId"
    .end annotation
.end field

.field private transient roomList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/RoomItem;",
            ">;"
        }
    .end annotation
.end field

.field private stat:Lcom/transsion/moviedetailapi/bean/Stat;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stat"
    .end annotation
.end field

.field private status:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field private subject:Lcom/transsion/moviedetailapi/bean/Subject;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subject"
    .end annotation
.end field

.field private subjectRate:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subjectRate"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field private tran_ops:Ljava/lang/String;

.field private updatedAt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "updatedAt"
    .end annotation
.end field

.field private user:Lcom/transsion/moviedetailapi/bean/User;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->Companion:Lcom/transsion/moviedetailapi/bean/PostSubjectItem$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 37

    .line 1
    move-object/from16 v0, p0

    const/16 v35, 0x1

    const/16 v36, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, -0x1

    invoke-direct/range {v0 .. v36}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Group;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/transsion/moviedetailapi/bean/Link;Lcom/transsion/moviedetailapi/bean/Media;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Stat;Ljava/lang/Integer;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/User;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;ZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;ZZZZLcom/transsion/moviedetailapi/bean/CommentBean;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Group;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/transsion/moviedetailapi/bean/Link;Lcom/transsion/moviedetailapi/bean/Media;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Stat;Ljava/lang/Integer;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/User;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;ZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;ZZZZLcom/transsion/moviedetailapi/bean/CommentBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/transsion/moviedetailapi/bean/Group;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lcom/transsion/moviedetailapi/bean/Link;",
            "Lcom/transsion/moviedetailapi/bean/Media;",
            "Ljava/lang/String;",
            "Lcom/transsion/moviedetailapi/bean/Stat;",
            "Ljava/lang/Integer;",
            "Lcom/transsion/moviedetailapi/bean/Subject;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/transsion/moviedetailapi/bean/User;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/RoomItem;",
            ">;Z",
            "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;",
            "ZZZZ",
            "Lcom/transsion/moviedetailapi/bean/CommentBean;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 3
    iput-object v1, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->content:Ljava/lang/String;

    move-object v1, p2

    .line 4
    iput-object v1, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->createdAt:Ljava/lang/String;

    move-object v1, p3

    .line 5
    iput-object v1, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->group:Lcom/transsion/moviedetailapi/bean/Group;

    move-object v1, p4

    .line 6
    iput-object v1, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->hasLike:Ljava/lang/Boolean;

    move-object v1, p5

    .line 7
    iput-object v1, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isSubjectRate:Ljava/lang/Boolean;

    move-object v1, p6

    .line 8
    iput-object v1, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->link:Lcom/transsion/moviedetailapi/bean/Link;

    move-object v1, p7

    .line 9
    iput-object v1, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->media:Lcom/transsion/moviedetailapi/bean/Media;

    move-object v1, p8

    .line 10
    iput-object v1, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->postId:Ljava/lang/String;

    move-object v1, p9

    .line 11
    iput-object v1, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->stat:Lcom/transsion/moviedetailapi/bean/Stat;

    move-object v1, p10

    .line 12
    iput-object v1, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->status:Ljava/lang/Integer;

    move-object v1, p11

    .line 13
    iput-object v1, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->subject:Lcom/transsion/moviedetailapi/bean/Subject;

    move-object v1, p12

    .line 14
    iput-object v1, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->subjectRate:Ljava/lang/Integer;

    move-object v1, p13

    .line 15
    iput-object v1, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->title:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 16
    iput-object v1, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->updatedAt:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 17
    iput-object v1, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->user:Lcom/transsion/moviedetailapi/bean/User;

    move-object/from16 v1, p16

    .line 18
    iput-object v1, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->ops:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 19
    iput-object v1, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->itemType:Ljava/lang/String;

    move-object/from16 v1, p18

    .line 20
    iput-object v1, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->blur:Ljava/lang/Integer;

    move-object/from16 v1, p19

    .line 21
    iput-object v1, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->tran_ops:Ljava/lang/String;

    move/from16 v1, p20

    .line 22
    iput-boolean v1, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isCache:Z

    move-object/from16 v1, p21

    .line 23
    iput-object v1, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->lon:Ljava/lang/Float;

    move-object/from16 v1, p22

    .line 24
    iput-object v1, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->lat:Ljava/lang/Float;

    move-object/from16 v1, p23

    .line 25
    iput-object v1, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->poiName:Ljava/lang/String;

    move-object/from16 v1, p24

    .line 26
    iput-object v1, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->distanceStr:Ljava/lang/String;

    move/from16 v1, p25

    .line 27
    iput-boolean v1, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomList:Z

    move-object/from16 v1, p26

    .line 28
    iput-object v1, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->roomList:Ljava/util/List;

    move/from16 v1, p27

    .line 29
    iput-boolean v1, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isMore:Z

    move-object/from16 v1, p28

    .line 30
    iput-object v1, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->nonAdDelegate:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    move/from16 v1, p29

    .line 31
    iput-boolean v1, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->builtIn:Z

    move/from16 v1, p30

    .line 32
    iput-boolean v1, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomCacheListStart:Z

    move/from16 v1, p31

    .line 33
    iput-boolean v1, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomCacheListEnd:Z

    move/from16 v1, p32

    .line 34
    iput-boolean v1, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomCache:Z

    move-object/from16 v1, p33

    .line 35
    iput-object v1, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->hotComment:Lcom/transsion/moviedetailapi/bean/CommentBean;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Group;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/transsion/moviedetailapi/bean/Link;Lcom/transsion/moviedetailapi/bean/Media;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Stat;Ljava/lang/Integer;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/User;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;ZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;ZZZZLcom/transsion/moviedetailapi/bean/CommentBean;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 34

    move/from16 v0, p34

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    const/4 v8, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    const/4 v9, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    const/4 v10, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    const/4 v11, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    const/4 v12, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    const/4 v13, 0x0

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    const/4 v14, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_d

    const/4 v15, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_f

    const/16 v16, 0x0

    goto :goto_f

    :cond_f
    move-object/from16 v16, p16

    :goto_f
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_10

    const/16 v17, 0x0

    goto :goto_10

    :cond_10
    move-object/from16 v17, p17

    :goto_10
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_11

    const/16 v18, 0x0

    goto :goto_11

    :cond_11
    move-object/from16 v18, p18

    :goto_11
    const/high16 v19, 0x40000

    and-int v19, v0, v19

    if-eqz v19, :cond_12

    const/16 v19, 0x0

    goto :goto_12

    :cond_12
    move-object/from16 v19, p19

    :goto_12
    const/high16 v20, 0x80000

    and-int v20, v0, v20

    const/16 v21, 0x0

    if-eqz v20, :cond_13

    move/from16 v20, v21

    goto :goto_13

    :cond_13
    move/from16 v20, p20

    :goto_13
    const/high16 v22, 0x100000

    and-int v22, v0, v22

    if-eqz v22, :cond_14

    const/16 v22, 0x0

    goto :goto_14

    :cond_14
    move-object/from16 v22, p21

    :goto_14
    const/high16 v23, 0x200000

    and-int v23, v0, v23

    if-eqz v23, :cond_15

    const/16 v23, 0x0

    goto :goto_15

    :cond_15
    move-object/from16 v23, p22

    :goto_15
    const/high16 v24, 0x400000

    and-int v24, v0, v24

    if-eqz v24, :cond_16

    const/16 v24, 0x0

    goto :goto_16

    :cond_16
    move-object/from16 v24, p23

    :goto_16
    const/high16 v25, 0x800000

    and-int v25, v0, v25

    if-eqz v25, :cond_17

    const/16 v25, 0x0

    goto :goto_17

    :cond_17
    move-object/from16 v25, p24

    :goto_17
    const/high16 v26, 0x1000000

    and-int v26, v0, v26

    if-eqz v26, :cond_18

    move/from16 v26, v21

    goto :goto_18

    :cond_18
    move/from16 v26, p25

    :goto_18
    const/high16 v27, 0x2000000

    and-int v27, v0, v27

    if-eqz v27, :cond_19

    const/16 v27, 0x0

    goto :goto_19

    :cond_19
    move-object/from16 v27, p26

    :goto_19
    const/high16 v28, 0x4000000

    and-int v28, v0, v28

    if-eqz v28, :cond_1a

    move/from16 v28, v21

    goto :goto_1a

    :cond_1a
    move/from16 v28, p27

    :goto_1a
    const/high16 v29, 0x8000000

    and-int v29, v0, v29

    if-eqz v29, :cond_1b

    const/16 v29, 0x0

    goto :goto_1b

    :cond_1b
    move-object/from16 v29, p28

    :goto_1b
    const/high16 v30, 0x10000000

    and-int v30, v0, v30

    if-eqz v30, :cond_1c

    move/from16 v30, v21

    goto :goto_1c

    :cond_1c
    move/from16 v30, p29

    :goto_1c
    const/high16 v31, 0x20000000

    and-int v31, v0, v31

    if-eqz v31, :cond_1d

    move/from16 v31, v21

    goto :goto_1d

    :cond_1d
    move/from16 v31, p30

    :goto_1d
    const/high16 v32, 0x40000000    # 2.0f

    and-int v32, v0, v32

    if-eqz v32, :cond_1e

    move/from16 v32, v21

    goto :goto_1e

    :cond_1e
    move/from16 v32, p31

    :goto_1e
    const/high16 v33, -0x80000000

    and-int v0, v0, v33

    if-eqz v0, :cond_1f

    goto :goto_1f

    :cond_1f
    move/from16 v21, p32

    :goto_1f
    and-int/lit8 v0, p35, 0x1

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    goto :goto_20

    :cond_20
    move-object/from16 v0, p33

    :goto_20
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p16, v2

    move-object/from16 p17, v16

    move-object/from16 p18, v17

    move-object/from16 p19, v18

    move-object/from16 p20, v19

    move/from16 p21, v20

    move-object/from16 p22, v22

    move-object/from16 p23, v23

    move-object/from16 p24, v24

    move-object/from16 p25, v25

    move/from16 p26, v26

    move-object/from16 p27, v27

    move/from16 p28, v28

    move-object/from16 p29, v29

    move/from16 p30, v30

    move/from16 p31, v31

    move/from16 p32, v32

    move/from16 p33, v21

    move-object/from16 p34, v0

    .line 36
    invoke-direct/range {p1 .. p34}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Group;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/transsion/moviedetailapi/bean/Link;Lcom/transsion/moviedetailapi/bean/Media;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Stat;Ljava/lang/Integer;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/User;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;ZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;ZZZZLcom/transsion/moviedetailapi/bean/CommentBean;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Group;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/transsion/moviedetailapi/bean/Link;Lcom/transsion/moviedetailapi/bean/Media;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Stat;Ljava/lang/Integer;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/User;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;ZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;ZZZZLcom/transsion/moviedetailapi/bean/CommentBean;IILjava/lang/Object;)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    move/from16 v1, p34

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->content:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->createdAt:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->group:Lcom/transsion/moviedetailapi/bean/Group;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->hasLike:Ljava/lang/Boolean;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isSubjectRate:Ljava/lang/Boolean;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->link:Lcom/transsion/moviedetailapi/bean/Link;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->media:Lcom/transsion/moviedetailapi/bean/Media;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->postId:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->stat:Lcom/transsion/moviedetailapi/bean/Stat;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->status:Ljava/lang/Integer;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->subject:Lcom/transsion/moviedetailapi/bean/Subject;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->subjectRate:Ljava/lang/Integer;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->title:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->updatedAt:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->user:Lcom/transsion/moviedetailapi/bean/User;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p15, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->ops:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p16, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->itemType:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p17, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->blur:Ljava/lang/Integer;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p18, v15

    if-eqz v16, :cond_12

    iget-object v15, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->tran_ops:Ljava/lang/String;

    goto :goto_12

    :cond_12
    move-object/from16 v15, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move-object/from16 p19, v15

    if-eqz v16, :cond_13

    iget-boolean v15, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isCache:Z

    goto :goto_13

    :cond_13
    move/from16 v15, p20

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move/from16 p20, v15

    if-eqz v16, :cond_14

    iget-object v15, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->lon:Ljava/lang/Float;

    goto :goto_14

    :cond_14
    move-object/from16 v15, p21

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move-object/from16 p21, v15

    if-eqz v16, :cond_15

    iget-object v15, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->lat:Ljava/lang/Float;

    goto :goto_15

    :cond_15
    move-object/from16 v15, p22

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, v1, v16

    move-object/from16 p22, v15

    if-eqz v16, :cond_16

    iget-object v15, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->poiName:Ljava/lang/String;

    goto :goto_16

    :cond_16
    move-object/from16 v15, p23

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, v1, v16

    move-object/from16 p23, v15

    if-eqz v16, :cond_17

    iget-object v15, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->distanceStr:Ljava/lang/String;

    goto :goto_17

    :cond_17
    move-object/from16 v15, p24

    :goto_17
    const/high16 v16, 0x1000000

    and-int v16, v1, v16

    move-object/from16 p24, v15

    if-eqz v16, :cond_18

    iget-boolean v15, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomList:Z

    goto :goto_18

    :cond_18
    move/from16 v15, p25

    :goto_18
    const/high16 v16, 0x2000000

    and-int v16, v1, v16

    move/from16 p25, v15

    if-eqz v16, :cond_19

    iget-object v15, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->roomList:Ljava/util/List;

    goto :goto_19

    :cond_19
    move-object/from16 v15, p26

    :goto_19
    const/high16 v16, 0x4000000

    and-int v16, v1, v16

    move-object/from16 p26, v15

    if-eqz v16, :cond_1a

    iget-boolean v15, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isMore:Z

    goto :goto_1a

    :cond_1a
    move/from16 v15, p27

    :goto_1a
    const/high16 v16, 0x8000000

    and-int v16, v1, v16

    move/from16 p27, v15

    if-eqz v16, :cond_1b

    iget-object v15, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->nonAdDelegate:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    goto :goto_1b

    :cond_1b
    move-object/from16 v15, p28

    :goto_1b
    const/high16 v16, 0x10000000

    and-int v16, v1, v16

    move-object/from16 p28, v15

    if-eqz v16, :cond_1c

    iget-boolean v15, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->builtIn:Z

    goto :goto_1c

    :cond_1c
    move/from16 v15, p29

    :goto_1c
    const/high16 v16, 0x20000000

    and-int v16, v1, v16

    move/from16 p29, v15

    if-eqz v16, :cond_1d

    iget-boolean v15, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomCacheListStart:Z

    goto :goto_1d

    :cond_1d
    move/from16 v15, p30

    :goto_1d
    const/high16 v16, 0x40000000    # 2.0f

    and-int v16, v1, v16

    move/from16 p30, v15

    if-eqz v16, :cond_1e

    iget-boolean v15, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomCacheListEnd:Z

    goto :goto_1e

    :cond_1e
    move/from16 v15, p31

    :goto_1e
    const/high16 v16, -0x80000000

    and-int v1, v1, v16

    if-eqz v1, :cond_1f

    iget-boolean v1, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomCache:Z

    goto :goto_1f

    :cond_1f
    move/from16 v1, p32

    :goto_1f
    and-int/lit8 v16, p35, 0x1

    move/from16 p32, v1

    if-eqz v16, :cond_20

    iget-object v1, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->hotComment:Lcom/transsion/moviedetailapi/bean/CommentBean;

    goto :goto_20

    :cond_20
    move-object/from16 v1, p33

    :goto_20
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move/from16 p31, v15

    move-object/from16 p33, v1

    invoke-virtual/range {p0 .. p33}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->copy(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Group;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/transsion/moviedetailapi/bean/Link;Lcom/transsion/moviedetailapi/bean/Media;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Stat;Ljava/lang/Integer;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/User;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;ZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;ZZZZLcom/transsion/moviedetailapi/bean/CommentBean;)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getCoverHeightWith$default(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;ZILjava/lang/Object;)Ljava/lang/Integer;
    .locals 0

    .line 1
    const/4 p3, 0x1

    .line 2
    and-int/2addr p2, p3

    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    move p1, p3

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getCoverHeightWith(Z)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static synthetic getCoverUrl$default(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;ZILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getCoverUrl(Z)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->content:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component10()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->status:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component11()Lcom/transsion/moviedetailapi/bean/Subject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->subject:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component12()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->subjectRate:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component13()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->updatedAt:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component15()Lcom/transsion/moviedetailapi/bean/User;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->user:Lcom/transsion/moviedetailapi/bean/User;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component16()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->ops:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component17()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->itemType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component18()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->blur:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component19()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->tran_ops:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->createdAt:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component20()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isCache:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component21()Ljava/lang/Float;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->lon:Ljava/lang/Float;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component22()Ljava/lang/Float;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->lat:Ljava/lang/Float;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component23()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->poiName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component24()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->distanceStr:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component25()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomList:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component26()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/RoomItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->roomList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component27()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isMore:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component28()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->nonAdDelegate:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component29()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->builtIn:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component3()Lcom/transsion/moviedetailapi/bean/Group;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->group:Lcom/transsion/moviedetailapi/bean/Group;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component30()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomCacheListStart:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component31()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomCacheListEnd:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component32()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomCache:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component33()Lcom/transsion/moviedetailapi/bean/CommentBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->hotComment:Lcom/transsion/moviedetailapi/bean/CommentBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->hasLike:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isSubjectRate:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component6()Lcom/transsion/moviedetailapi/bean/Link;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->link:Lcom/transsion/moviedetailapi/bean/Link;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component7()Lcom/transsion/moviedetailapi/bean/Media;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->media:Lcom/transsion/moviedetailapi/bean/Media;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->postId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component9()Lcom/transsion/moviedetailapi/bean/Stat;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->stat:Lcom/transsion/moviedetailapi/bean/Stat;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Group;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/transsion/moviedetailapi/bean/Link;Lcom/transsion/moviedetailapi/bean/Media;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Stat;Ljava/lang/Integer;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/User;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;ZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;ZZZZLcom/transsion/moviedetailapi/bean/CommentBean;)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/transsion/moviedetailapi/bean/Group;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lcom/transsion/moviedetailapi/bean/Link;",
            "Lcom/transsion/moviedetailapi/bean/Media;",
            "Ljava/lang/String;",
            "Lcom/transsion/moviedetailapi/bean/Stat;",
            "Ljava/lang/Integer;",
            "Lcom/transsion/moviedetailapi/bean/Subject;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/transsion/moviedetailapi/bean/User;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/RoomItem;",
            ">;Z",
            "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;",
            "ZZZZ",
            "Lcom/transsion/moviedetailapi/bean/CommentBean;",
            ")",
            "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move/from16 v25, p25

    move-object/from16 v26, p26

    move/from16 v27, p27

    move-object/from16 v28, p28

    move/from16 v29, p29

    move/from16 v30, p30

    move/from16 v31, p31

    move/from16 v32, p32

    move-object/from16 v33, p33

    new-instance v34, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    move-object/from16 v0, v34

    invoke-direct/range {v0 .. v33}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Group;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/transsion/moviedetailapi/bean/Link;Lcom/transsion/moviedetailapi/bean/Media;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Stat;Ljava/lang/Integer;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/User;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;ZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;ZZZZLcom/transsion/moviedetailapi/bean/CommentBean;)V

    return-object v34
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    move-object v2, v1

    .line 14
    :goto_0
    const-class v3, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 15
    .line 16
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x0

    .line 21
    if-nez v2, :cond_2

    .line 22
    .line 23
    return v3

    .line 24
    :cond_2
    const-string v2, "null cannot be cast to non-null type com.transsion.moviedetailapi.bean.PostSubjectItem"

    .line 25
    .line 26
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    check-cast p1, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->postId:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v4, p1, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->postId:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_3

    .line 40
    .line 41
    return v3

    .line 42
    :cond_3
    iget-object v2, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->subject:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 43
    .line 44
    if-eqz v2, :cond_4

    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    goto :goto_1

    .line 51
    :cond_4
    move-object v2, v1

    .line 52
    :goto_1
    iget-object v4, p1, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->subject:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 53
    .line 54
    if-eqz v4, :cond_5

    .line 55
    .line 56
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    goto :goto_2

    .line 61
    :cond_5
    move-object v4, v1

    .line 62
    :goto_2
    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-nez v2, :cond_6

    .line 67
    .line 68
    return v3

    .line 69
    :cond_6
    iget-object v2, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->group:Lcom/transsion/moviedetailapi/bean/Group;

    .line 70
    .line 71
    if-eqz v2, :cond_7

    .line 72
    .line 73
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Group;->getGroupId()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    goto :goto_3

    .line 78
    :cond_7
    move-object v2, v1

    .line 79
    :goto_3
    iget-object p1, p1, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->group:Lcom/transsion/moviedetailapi/bean/Group;

    .line 80
    .line 81
    if-eqz p1, :cond_8

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Group;->getGroupId()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    :cond_8
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-nez p1, :cond_9

    .line 92
    .line 93
    return v3

    .line 94
    :cond_9
    return v0
.end method

.method public final getBlur()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->blur:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBuiltIn()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->builtIn:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->content:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCoverHeightWith(Z)Ljava/lang/Integer;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->media:Lcom/transsion/moviedetailapi/bean/Media;

    .line 7
    .line 8
    if-eqz v2, :cond_d

    .line 9
    .line 10
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Media;->getMediaType()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    const-string v4, "IMAGE"

    .line 15
    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    move-object v3, v4

    .line 19
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    const v6, 0x3bba3b6

    .line 24
    .line 25
    .line 26
    if-eq v5, v6, :cond_4

    .line 27
    .line 28
    const v6, 0x428b13b

    .line 29
    .line 30
    .line 31
    if-eq v5, v6, :cond_2

    .line 32
    .line 33
    const v0, 0x4de1c5b

    .line 34
    .line 35
    .line 36
    if-eq v5, v0, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const-string v0, "VIDEO"

    .line 40
    .line 41
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_6

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-nez v3, :cond_3

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Media;->getImage()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    if-eqz v2, :cond_5

    .line 60
    .line 61
    move-object v3, v2

    .line 62
    check-cast v3, Ljava/util/Collection;

    .line 63
    .line 64
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-nez v3, :cond_5

    .line 69
    .line 70
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Lcom/transsion/moviedetailapi/bean/Image;

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Image;->getHeight()Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Lcom/transsion/moviedetailapi/bean/Image;

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Image;->getWidth()Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    goto :goto_5

    .line 91
    :cond_4
    const-string v0, "AUDIO"

    .line 92
    .line 93
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_6

    .line 98
    .line 99
    :cond_5
    :goto_0
    move-object v0, v1

    .line 100
    goto :goto_5

    .line 101
    :cond_6
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Media;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const/4 v1, 0x0

    .line 106
    if-eqz v0, :cond_7

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Cover;->getHeight()Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    goto :goto_1

    .line 113
    :cond_7
    move-object v0, v1

    .line 114
    :goto_1
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Media;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    if-eqz v2, :cond_8

    .line 119
    .line 120
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Cover;->getWidth()Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    goto :goto_2

    .line 125
    :cond_8
    move-object v2, v1

    .line 126
    :goto_2
    if-eqz v0, :cond_a

    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-nez v3, :cond_9

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_9
    move-object v1, v0

    .line 136
    move-object v0, v2

    .line 137
    goto :goto_5

    .line 138
    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->subject:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 139
    .line 140
    if-eqz v0, :cond_b

    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    if-eqz v0, :cond_b

    .line 147
    .line 148
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Cover;->getHeight()Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    goto :goto_4

    .line 153
    :cond_b
    move-object v0, v1

    .line 154
    :goto_4
    iget-object v2, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->subject:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 155
    .line 156
    if-eqz v2, :cond_c

    .line 157
    .line 158
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    if-eqz v2, :cond_c

    .line 163
    .line 164
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Cover;->getWidth()Ljava/lang/Integer;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    :cond_c
    move-object v7, v1

    .line 169
    move-object v1, v0

    .line 170
    move-object v0, v7

    .line 171
    :goto_5
    move-object v7, v1

    .line 172
    move-object v1, v0

    .line 173
    move-object v0, v7

    .line 174
    goto :goto_6

    .line 175
    :cond_d
    move-object v0, v1

    .line 176
    :goto_6
    if-eqz p1, :cond_e

    .line 177
    .line 178
    move-object v1, v0

    .line 179
    :cond_e
    return-object v1
.end method

.method public final getCoverUrl(Z)Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->media:Lcom/transsion/moviedetailapi/bean/Media;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-eqz v0, :cond_d

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Media;->getMediaType()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "IMAGE"

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    move-object v2, v3

    .line 16
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    const v5, 0x3bba3b6

    .line 21
    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    if-eq v4, v5, :cond_6

    .line 25
    .line 26
    const v5, 0x428b13b

    .line 27
    .line 28
    .line 29
    if-eq v4, v5, :cond_2

    .line 30
    .line 31
    const v3, 0x4de1c5b

    .line 32
    .line 33
    .line 34
    if-eq v4, v3, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const-string v3, "VIDEO"

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_7

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-nez v2, :cond_3

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Media;->getImage()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-eqz v0, :cond_d

    .line 58
    .line 59
    move-object v2, v0

    .line 60
    check-cast v2, Ljava/util/Collection;

    .line 61
    .line 62
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-nez v2, :cond_d

    .line 67
    .line 68
    const/4 v2, 0x0

    .line 69
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Lcom/transsion/moviedetailapi/bean/Image;

    .line 74
    .line 75
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Image;->getFormat()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    const-string v4, "gif"

    .line 80
    .line 81
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_5

    .line 86
    .line 87
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Lcom/transsion/moviedetailapi/bean/Image;

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Image;->getGifBean()Lcom/transsion/moviedetailapi/bean/GifBean;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-eqz v0, :cond_4

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/GifBean;->getFirstFrameUrl()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    :cond_4
    move-object v0, v1

    .line 104
    goto/16 :goto_5

    .line 105
    .line 106
    :cond_5
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    check-cast v3, Lcom/transsion/moviedetailapi/bean/Image;

    .line 111
    .line 112
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Image;->getUrl()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Lcom/transsion/moviedetailapi/bean/Image;

    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Image;->getThumbnail()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    goto :goto_5

    .line 127
    :cond_6
    const-string v3, "AUDIO"

    .line 128
    .line 129
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    if-nez v2, :cond_7

    .line 134
    .line 135
    :goto_0
    goto :goto_4

    .line 136
    :cond_7
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Media;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    if-eqz v2, :cond_8

    .line 141
    .line 142
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    goto :goto_1

    .line 147
    :cond_8
    move-object v2, v6

    .line 148
    :goto_1
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Media;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    if-eqz v0, :cond_9

    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    goto :goto_2

    .line 159
    :cond_9
    move-object v0, v6

    .line 160
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    if-eqz v3, :cond_c

    .line 165
    .line 166
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->subject:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 167
    .line 168
    if-eqz v0, :cond_a

    .line 169
    .line 170
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    if-eqz v0, :cond_a

    .line 175
    .line 176
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    goto :goto_3

    .line 181
    :cond_a
    move-object v0, v6

    .line 182
    :goto_3
    iget-object v2, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->subject:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 183
    .line 184
    if-eqz v2, :cond_b

    .line 185
    .line 186
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    if-eqz v2, :cond_b

    .line 191
    .line 192
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    :cond_b
    move-object v7, v6

    .line 197
    move-object v6, v0

    .line 198
    move-object v0, v7

    .line 199
    goto :goto_5

    .line 200
    :cond_c
    move-object v6, v2

    .line 201
    goto :goto_5

    .line 202
    :cond_d
    :goto_4
    move-object v0, v1

    .line 203
    move-object v6, v0

    .line 204
    :goto_5
    if-eqz p1, :cond_f

    .line 205
    .line 206
    if-nez v0, :cond_e

    .line 207
    .line 208
    goto :goto_6

    .line 209
    :cond_e
    move-object v1, v0

    .line 210
    goto :goto_6

    .line 211
    :cond_f
    if-nez v6, :cond_10

    .line 212
    .line 213
    goto :goto_6

    .line 214
    :cond_10
    move-object v1, v6

    .line 215
    :goto_6
    return-object v1
.end method

.method public final getCreatedAt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->createdAt:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDistanceStr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->distanceStr:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getGroup()Lcom/transsion/moviedetailapi/bean/Group;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->group:Lcom/transsion/moviedetailapi/bean/Group;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHasLike()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->hasLike:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHotComment()Lcom/transsion/moviedetailapi/bean/CommentBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->hotComment:Lcom/transsion/moviedetailapi/bean/CommentBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getItemType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->itemType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLat()Ljava/lang/Float;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->lat:Ljava/lang/Float;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLink()Lcom/transsion/moviedetailapi/bean/Link;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->link:Lcom/transsion/moviedetailapi/bean/Link;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLon()Ljava/lang/Float;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->lon:Ljava/lang/Float;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMedia()Lcom/transsion/moviedetailapi/bean/Media;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->media:Lcom/transsion/moviedetailapi/bean/Media;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNonAdDelegate()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->nonAdDelegate:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOps()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->ops:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPoiName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->poiName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPostId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->postId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRec_ops()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->ops:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->tran_ops:Ljava/lang/String;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->ops:Ljava/lang/String;

    .line 13
    .line 14
    :goto_0
    return-object v0
.end method

.method public final getRoomList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/RoomItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->roomList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStat()Lcom/transsion/moviedetailapi/bean/Stat;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->stat:Lcom/transsion/moviedetailapi/bean/Stat;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStatus()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->status:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSubject()Lcom/transsion/moviedetailapi/bean/Subject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->subject:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSubjectRate()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->subjectRate:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTran_ops()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->tran_ops:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUpdatedAt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->updatedAt:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUser()Lcom/transsion/moviedetailapi/bean/User;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->user:Lcom/transsion/moviedetailapi/bean/User;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->postId:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public final isCache()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isCache:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isMore()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isMore:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isRoomCache()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomCache:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isRoomCacheListEnd()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomCacheListEnd:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isRoomCacheListStart()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomCacheListStart:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isRoomList()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomList:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isSubjectRate()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isSubjectRate:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isVideo()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->media:Lcom/transsion/moviedetailapi/bean/Media;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Media;->getMediaType()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    sget-object v1, Lcom/transsion/moviedetailapi/bean/MediaType;->VIDEO:Lcom/transsion/moviedetailapi/bean/MediaType;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/MediaType;->getValue()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    return v0
.end method

.method public final setBlur(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->blur:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setBuiltIn(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->builtIn:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setCache(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isCache:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->content:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setCreatedAt(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->createdAt:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDistanceStr(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->distanceStr:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setGroup(Lcom/transsion/moviedetailapi/bean/Group;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->group:Lcom/transsion/moviedetailapi/bean/Group;

    .line 2
    .line 3
    return-void
.end method

.method public final setHasLike(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->hasLike:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setHotComment(Lcom/transsion/moviedetailapi/bean/CommentBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->hotComment:Lcom/transsion/moviedetailapi/bean/CommentBean;

    .line 2
    .line 3
    return-void
.end method

.method public final setItemType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->itemType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setLat(Ljava/lang/Float;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->lat:Ljava/lang/Float;

    .line 2
    .line 3
    return-void
.end method

.method public final setLink(Lcom/transsion/moviedetailapi/bean/Link;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->link:Lcom/transsion/moviedetailapi/bean/Link;

    .line 2
    .line 3
    return-void
.end method

.method public final setLon(Ljava/lang/Float;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->lon:Ljava/lang/Float;

    .line 2
    .line 3
    return-void
.end method

.method public final setMedia(Lcom/transsion/moviedetailapi/bean/Media;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->media:Lcom/transsion/moviedetailapi/bean/Media;

    .line 2
    .line 3
    return-void
.end method

.method public final setMore(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isMore:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setNonAdDelegate(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->nonAdDelegate:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 2
    .line 3
    return-void
.end method

.method public final setOps(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->ops:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPoiName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->poiName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPostId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->postId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setRoomCache(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomCache:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setRoomCacheListEnd(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomCacheListEnd:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setRoomCacheListStart(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomCacheListStart:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setRoomList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/RoomItem;",
            ">;)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->roomList:Ljava/util/List;

    return-void
.end method

.method public final setRoomList(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomList:Z

    return-void
.end method

.method public final setStat(Lcom/transsion/moviedetailapi/bean/Stat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->stat:Lcom/transsion/moviedetailapi/bean/Stat;

    .line 2
    .line 3
    return-void
.end method

.method public final setStatus(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->status:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setSubject(Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->subject:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 2
    .line 3
    return-void
.end method

.method public final setSubjectRate(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isSubjectRate:Ljava/lang/Boolean;

    return-void
.end method

.method public final setSubjectRate(Ljava/lang/Integer;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->subjectRate:Ljava/lang/Integer;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setTran_ops(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->tran_ops:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setUpdatedAt(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->updatedAt:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setUser(Lcom/transsion/moviedetailapi/bean/User;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->user:Lcom/transsion/moviedetailapi/bean/User;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->content:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->createdAt:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->group:Lcom/transsion/moviedetailapi/bean/Group;

    .line 8
    .line 9
    iget-object v4, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->hasLike:Ljava/lang/Boolean;

    .line 10
    .line 11
    iget-object v5, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isSubjectRate:Ljava/lang/Boolean;

    .line 12
    .line 13
    iget-object v6, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->link:Lcom/transsion/moviedetailapi/bean/Link;

    .line 14
    .line 15
    iget-object v7, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->media:Lcom/transsion/moviedetailapi/bean/Media;

    .line 16
    .line 17
    iget-object v8, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->postId:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v9, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->stat:Lcom/transsion/moviedetailapi/bean/Stat;

    .line 20
    .line 21
    iget-object v10, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->status:Ljava/lang/Integer;

    .line 22
    .line 23
    iget-object v11, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->subject:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 24
    .line 25
    iget-object v12, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->subjectRate:Ljava/lang/Integer;

    .line 26
    .line 27
    iget-object v13, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->title:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v14, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->updatedAt:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v15, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->user:Lcom/transsion/moviedetailapi/bean/User;

    .line 32
    .line 33
    move-object/from16 v16, v15

    .line 34
    .line 35
    iget-object v15, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->ops:Ljava/lang/String;

    .line 36
    .line 37
    move-object/from16 v17, v15

    .line 38
    .line 39
    iget-object v15, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->itemType:Ljava/lang/String;

    .line 40
    .line 41
    move-object/from16 v18, v15

    .line 42
    .line 43
    iget-object v15, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->blur:Ljava/lang/Integer;

    .line 44
    .line 45
    move-object/from16 v19, v15

    .line 46
    .line 47
    iget-object v15, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->tran_ops:Ljava/lang/String;

    .line 48
    .line 49
    move-object/from16 v20, v15

    .line 50
    .line 51
    iget-boolean v15, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isCache:Z

    .line 52
    .line 53
    move/from16 v21, v15

    .line 54
    .line 55
    iget-object v15, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->lon:Ljava/lang/Float;

    .line 56
    .line 57
    move-object/from16 v22, v15

    .line 58
    .line 59
    iget-object v15, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->lat:Ljava/lang/Float;

    .line 60
    .line 61
    move-object/from16 v23, v15

    .line 62
    .line 63
    iget-object v15, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->poiName:Ljava/lang/String;

    .line 64
    .line 65
    move-object/from16 v24, v15

    .line 66
    .line 67
    iget-object v15, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->distanceStr:Ljava/lang/String;

    .line 68
    .line 69
    move-object/from16 v25, v15

    .line 70
    .line 71
    iget-boolean v15, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomList:Z

    .line 72
    .line 73
    move/from16 v26, v15

    .line 74
    .line 75
    iget-object v15, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->roomList:Ljava/util/List;

    .line 76
    .line 77
    move-object/from16 v27, v15

    .line 78
    .line 79
    iget-boolean v15, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isMore:Z

    .line 80
    .line 81
    move/from16 v28, v15

    .line 82
    .line 83
    iget-object v15, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->nonAdDelegate:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 84
    .line 85
    move-object/from16 v29, v15

    .line 86
    .line 87
    iget-boolean v15, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->builtIn:Z

    .line 88
    .line 89
    move/from16 v30, v15

    .line 90
    .line 91
    iget-boolean v15, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomCacheListStart:Z

    .line 92
    .line 93
    move/from16 v31, v15

    .line 94
    .line 95
    iget-boolean v15, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomCacheListEnd:Z

    .line 96
    .line 97
    move/from16 v32, v15

    .line 98
    .line 99
    iget-boolean v15, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomCache:Z

    .line 100
    .line 101
    move/from16 v33, v15

    .line 102
    .line 103
    iget-object v15, v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->hotComment:Lcom/transsion/moviedetailapi/bean/CommentBean;

    .line 104
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    move-object/from16 v34, v15

    .line 111
    .line 112
    const-string v15, "PostSubjectItem(content="

    .line 113
    .line 114
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v1, ", createdAt="

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v1, ", group="

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v1, ", hasLike="

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v1, ", isSubjectRate="

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v1, ", link="

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v1, ", media="

    .line 161
    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v1, ", postId="

    .line 169
    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v1, ", stat="

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v1, ", status="

    .line 185
    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string v1, ", subject="

    .line 193
    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string v1, ", subjectRate="

    .line 201
    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string v1, ", title="

    .line 209
    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string v1, ", updatedAt="

    .line 217
    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    const-string v1, ", user="

    .line 225
    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    move-object/from16 v1, v16

    .line 230
    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    const-string v1, ", ops="

    .line 235
    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    move-object/from16 v1, v17

    .line 240
    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const-string v1, ", itemType="

    .line 245
    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    move-object/from16 v1, v18

    .line 250
    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    const-string v1, ", blur="

    .line 255
    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    move-object/from16 v1, v19

    .line 260
    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    const-string v1, ", tran_ops="

    .line 265
    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    move-object/from16 v1, v20

    .line 270
    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    const-string v1, ", isCache="

    .line 275
    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    move/from16 v1, v21

    .line 280
    .line 281
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    const-string v1, ", lon="

    .line 285
    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    move-object/from16 v1, v22

    .line 290
    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    const-string v1, ", lat="

    .line 295
    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    move-object/from16 v1, v23

    .line 300
    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    const-string v1, ", poiName="

    .line 305
    .line 306
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    move-object/from16 v1, v24

    .line 310
    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    const-string v1, ", distanceStr="

    .line 315
    .line 316
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    move-object/from16 v1, v25

    .line 320
    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    const-string v1, ", isRoomList="

    .line 325
    .line 326
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    move/from16 v1, v26

    .line 330
    .line 331
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    const-string v1, ", roomList="

    .line 335
    .line 336
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    move-object/from16 v1, v27

    .line 340
    .line 341
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    const-string v1, ", isMore="

    .line 345
    .line 346
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    move/from16 v1, v28

    .line 350
    .line 351
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    const-string v1, ", nonAdDelegate="

    .line 355
    .line 356
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    move-object/from16 v1, v29

    .line 360
    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    const-string v1, ", builtIn="

    .line 365
    .line 366
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    move/from16 v1, v30

    .line 370
    .line 371
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    const-string v1, ", isRoomCacheListStart="

    .line 375
    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    move/from16 v1, v31

    .line 380
    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    const-string v1, ", isRoomCacheListEnd="

    .line 385
    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    move/from16 v1, v32

    .line 390
    .line 391
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    const-string v1, ", isRoomCache="

    .line 395
    .line 396
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    move/from16 v1, v33

    .line 400
    .line 401
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    const-string v1, ", hotComment="

    .line 405
    .line 406
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    move-object/from16 v1, v34

    .line 410
    .line 411
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    const-string v1, ")"

    .line 415
    .line 416
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    return-object v0
.end method
