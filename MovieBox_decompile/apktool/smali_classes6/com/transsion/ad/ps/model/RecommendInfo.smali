.class public final Lcom/transsion/ad/ps/model/RecommendInfo;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\\\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008+\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u00012\u00020\u0002B\u00fb\u0002\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\t\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0010\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\t\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b\u0012\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008(\u0010)J\u0007\u0010\u008e\u0001\u001a\u00020\u0004J\u000c\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u000c\u0010\u0090\u0001\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u000c\u0010\u0091\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\n\u0010\u0092\u0001\u001a\u00020\tH\u00c6\u0003J\u000c\u0010\u0093\u0001\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u000c\u0010\u0094\u0001\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u000c\u0010\u0095\u0001\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u000c\u0010\u0096\u0001\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u000c\u0010\u0097\u0001\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\n\u0010\u0098\u0001\u001a\u00020\u0010H\u00c6\u0003J\u000c\u0010\u0099\u0001\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u000c\u0010\u009a\u0001\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\n\u0010\u009b\u0001\u001a\u00020\tH\u00c6\u0003J\u000c\u0010\u009c\u0001\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\n\u0010\u009d\u0001\u001a\u00020\u0010H\u00c6\u0003J\n\u0010\u009e\u0001\u001a\u00020\tH\u00c6\u0003J\n\u0010\u009f\u0001\u001a\u00020\tH\u00c6\u0003J\u000c\u0010\u00a0\u0001\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u000c\u0010\u00a1\u0001\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u0011\u0010\u00a2\u0001\u001a\u0004\u0018\u00010\u001bH\u00c6\u0003\u00a2\u0006\u0002\u0010XJ\u000c\u0010\u00a3\u0001\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u000c\u0010\u00a4\u0001\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u000c\u0010\u00a5\u0001\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u000c\u0010\u00a6\u0001\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u0011\u0010\u00a7\u0001\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u0010eJ\u000c\u0010\u00a8\u0001\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u000c\u0010\u00a9\u0001\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u000c\u0010\u00aa\u0001\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u000c\u0010\u00ab\u0001\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u0011\u0010\u00ac\u0001\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u0010eJ\u0011\u0010\u00ad\u0001\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u0010eJ\u000c\u0010\u00ae\u0001\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u0084\u0003\u0010\u00af\u0001\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0013\u001a\u00020\t2\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0016\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0017\u001a\u00020\t2\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010\u0004H\u00c6\u0001\u00a2\u0006\u0003\u0010\u00b0\u0001J\u0007\u0010\u00b1\u0001\u001a\u00020\tJ\u0016\u0010\u00b2\u0001\u001a\u00020\u001b2\n\u0010\u00b3\u0001\u001a\u0005\u0018\u00010\u00b4\u0001H\u00d6\u0003J\n\u0010\u00b5\u0001\u001a\u00020\tH\u00d6\u0001J\n\u0010\u00b6\u0001\u001a\u00020\u0004H\u00d6\u0001J\u001b\u0010\u00b7\u0001\u001a\u00030\u00b8\u00012\u0008\u0010\u00b9\u0001\u001a\u00030\u00ba\u00012\u0007\u0010\u00bb\u0001\u001a\u00020\tR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010+\"\u0004\u0008/\u0010-R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00088\u0010+\"\u0004\u00089\u0010-R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010+\"\u0004\u0008;\u0010-R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008<\u0010+\"\u0004\u0008=\u0010-R\u001c\u0010\r\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008>\u0010+\"\u0004\u0008?\u0010-R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008@\u0010+\"\u0004\u0008A\u0010-R\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008B\u0010C\"\u0004\u0008D\u0010ER\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008F\u0010+\"\u0004\u0008G\u0010-R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008H\u0010+\"\u0004\u0008I\u0010-R\u001a\u0010\u0013\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008J\u00105\"\u0004\u0008K\u00107R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008L\u0010+\"\u0004\u0008M\u0010-R\u001a\u0010\u0015\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008N\u0010C\"\u0004\u0008O\u0010ER\u001a\u0010\u0016\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u00105\"\u0004\u0008P\u00107R\u001a\u0010\u0017\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Q\u00105\"\u0004\u0008R\u00107R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008S\u0010+\"\u0004\u0008T\u0010-R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008U\u0010+\"\u0004\u0008V\u0010-R\u001e\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010[\u001a\u0004\u0008W\u0010X\"\u0004\u0008Y\u0010ZR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\\\u0010+\"\u0004\u0008]\u0010-R\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008^\u0010+\"\u0004\u0008_\u0010-R\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008`\u0010+\"\u0004\u0008a\u0010-R\u001c\u0010\u001f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008b\u0010+\"\u0004\u0008c\u0010-R\u001e\u0010 \u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010h\u001a\u0004\u0008d\u0010e\"\u0004\u0008f\u0010gR\u001c\u0010!\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008i\u0010+\"\u0004\u0008j\u0010-R\u001c\u0010\"\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008k\u0010+\"\u0004\u0008l\u0010-R\u001c\u0010#\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008m\u0010+\"\u0004\u0008n\u0010-R\u001c\u0010$\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008o\u0010+\"\u0004\u0008p\u0010-R\u001e\u0010%\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010h\u001a\u0004\u0008q\u0010e\"\u0004\u0008r\u0010gR\u001e\u0010&\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010h\u001a\u0004\u0008s\u0010e\"\u0004\u0008t\u0010gR\u001c\u0010\'\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008u\u0010+\"\u0004\u0008v\u0010-R\"\u0010w\u001a\u0004\u0018\u00010xX\u0086\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008y\u0010z\u001a\u0004\u0008{\u0010|\"\u0004\u0008}\u0010~R%\u0010\u007f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0017\n\u0000\u0012\u0005\u0008\u0080\u0001\u0010z\u001a\u0005\u0008\u0081\u0001\u0010+\"\u0005\u0008\u0082\u0001\u0010-R&\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0017\n\u0000\u0012\u0005\u0008\u0084\u0001\u0010z\u001a\u0005\u0008\u0085\u0001\u0010+\"\u0005\u0008\u0086\u0001\u0010-R)\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0088\u0001X\u0086\u000e\u00a2\u0006\u0019\n\u0000\u0012\u0005\u0008\u0089\u0001\u0010z\u001a\u0006\u0008\u008a\u0001\u0010\u008b\u0001\"\u0006\u0008\u008c\u0001\u0010\u008d\u0001\u00a8\u0006\u00bc\u0001"
    }
    d2 = {
        "Lcom/transsion/ad/ps/model/RecommendInfo;",
        "Landroid/os/Parcelable;",
        "Ljava/io/Serializable;",
        "categoryCode",
        "",
        "categoryName",
        "detail",
        "Lcom/transsion/ad/ps/model/ItemDetail;",
        "downloadCount",
        "",
        "iconUrl",
        "itemID",
        "offerDesc",
        "packageName",
        "simpleDescription",
        "size",
        "",
        "star",
        "verifyGoogle",
        "versionCode",
        "versionName",
        "id",
        "isOffer",
        "showType",
        "planName",
        "name",
        "exists",
        "",
        "adSource",
        "buttonText",
        "gpLink",
        "showContent",
        "adType",
        "deepLink",
        "attributionLink",
        "showAttributionLink",
        "gpAttributionLink",
        "showMax",
        "clickMax",
        "showHours",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/ps/model/ItemDetail;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V",
        "getCategoryCode",
        "()Ljava/lang/String;",
        "setCategoryCode",
        "(Ljava/lang/String;)V",
        "getCategoryName",
        "setCategoryName",
        "getDetail",
        "()Lcom/transsion/ad/ps/model/ItemDetail;",
        "setDetail",
        "(Lcom/transsion/ad/ps/model/ItemDetail;)V",
        "getDownloadCount",
        "()I",
        "setDownloadCount",
        "(I)V",
        "getIconUrl",
        "setIconUrl",
        "getItemID",
        "setItemID",
        "getOfferDesc",
        "setOfferDesc",
        "getPackageName",
        "setPackageName",
        "getSimpleDescription",
        "setSimpleDescription",
        "getSize",
        "()J",
        "setSize",
        "(J)V",
        "getStar",
        "setStar",
        "getVerifyGoogle",
        "setVerifyGoogle",
        "getVersionCode",
        "setVersionCode",
        "getVersionName",
        "setVersionName",
        "getId",
        "setId",
        "setOffer",
        "getShowType",
        "setShowType",
        "getPlanName",
        "setPlanName",
        "getName",
        "setName",
        "getExists",
        "()Ljava/lang/Boolean;",
        "setExists",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "getAdSource",
        "setAdSource",
        "getButtonText",
        "setButtonText",
        "getGpLink",
        "setGpLink",
        "getShowContent",
        "setShowContent",
        "getAdType",
        "()Ljava/lang/Integer;",
        "setAdType",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getDeepLink",
        "setDeepLink",
        "getAttributionLink",
        "setAttributionLink",
        "getShowAttributionLink",
        "setShowAttributionLink",
        "getGpAttributionLink",
        "setGpAttributionLink",
        "getShowMax",
        "setShowMax",
        "getClickMax",
        "setClickMax",
        "getShowHours",
        "setShowHours",
        "tAdNativeInfo",
        "Lcom/hisavana/common/bean/TAdNativeInfo;",
        "getTAdNativeInfo$annotations",
        "()V",
        "getTAdNativeInfo",
        "()Lcom/hisavana/common/bean/TAdNativeInfo;",
        "setTAdNativeInfo",
        "(Lcom/hisavana/common/bean/TAdNativeInfo;)V",
        "sceneId",
        "getSceneId$annotations",
        "getSceneId",
        "setSceneId",
        "placementId",
        "getPlacementId$annotations",
        "getPlacementId",
        "setPlacementId",
        "palmStoreDownLoadTaskInfo",
        "Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;",
        "getPalmStoreDownLoadTaskInfo$annotations",
        "getPalmStoreDownLoadTaskInfo",
        "()Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;",
        "setPalmStoreDownLoadTaskInfo",
        "(Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;)V",
        "getAdTypeTxt",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
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
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/ps/model/ItemDetail;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/transsion/ad/ps/model/RecommendInfo;",
        "describeContents",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "dest",
        "Landroid/os/Parcel;",
        "flags",
        "lib_ad_gpRelease"
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
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/ad/ps/model/RecommendInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adSource:Ljava/lang/String;

.field private adType:Ljava/lang/Integer;

.field private attributionLink:Ljava/lang/String;

.field private buttonText:Ljava/lang/String;

.field private categoryCode:Ljava/lang/String;

.field private categoryName:Ljava/lang/String;

.field private clickMax:Ljava/lang/Integer;

.field private deepLink:Ljava/lang/String;

.field private detail:Lcom/transsion/ad/ps/model/ItemDetail;

.field private downloadCount:I

.field private exists:Ljava/lang/Boolean;

.field private gpAttributionLink:Ljava/lang/String;

.field private gpLink:Ljava/lang/String;

.field private iconUrl:Ljava/lang/String;

.field private id:J

.field private isOffer:I

.field private itemID:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private offerDesc:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private transient palmStoreDownLoadTaskInfo:Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;

.field private transient placementId:Ljava/lang/String;

.field private planName:Ljava/lang/String;

.field private transient sceneId:Ljava/lang/String;

.field private showAttributionLink:Ljava/lang/String;

.field private showContent:Ljava/lang/String;

.field private showHours:Ljava/lang/String;

.field private showMax:Ljava/lang/Integer;

.field private showType:I

.field private simpleDescription:Ljava/lang/String;

.field private size:J

.field private star:Ljava/lang/String;

.field private transient tAdNativeInfo:Lcom/hisavana/common/bean/TAdNativeInfo;

.field private verifyGoogle:Ljava/lang/String;

.field private versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/ad/ps/model/RecommendInfo$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/ad/ps/model/RecommendInfo$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/ad/ps/model/RecommendInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 37

    .line 1
    move-object/from16 v0, p0

    const/16 v35, -0x1

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

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

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

    const/16 v34, 0x0

    invoke-direct/range {v0 .. v36}, Lcom/transsion/ad/ps/model/RecommendInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/ps/model/ItemDetail;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/ps/model/ItemDetail;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 3

    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 3
    iput-object v1, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->categoryCode:Ljava/lang/String;

    move-object v1, p2

    .line 4
    iput-object v1, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->categoryName:Ljava/lang/String;

    move-object v1, p3

    .line 5
    iput-object v1, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->detail:Lcom/transsion/ad/ps/model/ItemDetail;

    move v1, p4

    .line 6
    iput v1, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->downloadCount:I

    move-object v1, p5

    .line 7
    iput-object v1, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->iconUrl:Ljava/lang/String;

    move-object v1, p6

    .line 8
    iput-object v1, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->itemID:Ljava/lang/String;

    move-object v1, p7

    .line 9
    iput-object v1, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->offerDesc:Ljava/lang/String;

    move-object v1, p8

    .line 10
    iput-object v1, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->packageName:Ljava/lang/String;

    move-object v1, p9

    .line 11
    iput-object v1, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->simpleDescription:Ljava/lang/String;

    move-wide v1, p10

    .line 12
    iput-wide v1, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->size:J

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->star:Ljava/lang/String;

    move-object/from16 v1, p13

    .line 14
    iput-object v1, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->verifyGoogle:Ljava/lang/String;

    move/from16 v1, p14

    .line 15
    iput v1, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->versionCode:I

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->versionName:Ljava/lang/String;

    move-wide/from16 v1, p16

    .line 17
    iput-wide v1, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->id:J

    move/from16 v1, p18

    .line 18
    iput v1, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->isOffer:I

    move/from16 v1, p19

    .line 19
    iput v1, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->showType:I

    move-object/from16 v1, p20

    .line 20
    iput-object v1, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->planName:Ljava/lang/String;

    move-object/from16 v1, p21

    .line 21
    iput-object v1, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->name:Ljava/lang/String;

    move-object/from16 v1, p22

    .line 22
    iput-object v1, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->exists:Ljava/lang/Boolean;

    move-object/from16 v1, p23

    .line 23
    iput-object v1, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->adSource:Ljava/lang/String;

    move-object/from16 v1, p24

    .line 24
    iput-object v1, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->buttonText:Ljava/lang/String;

    move-object/from16 v1, p25

    .line 25
    iput-object v1, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->gpLink:Ljava/lang/String;

    move-object/from16 v1, p26

    .line 26
    iput-object v1, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->showContent:Ljava/lang/String;

    move-object/from16 v1, p27

    .line 27
    iput-object v1, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->adType:Ljava/lang/Integer;

    move-object/from16 v1, p28

    .line 28
    iput-object v1, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->deepLink:Ljava/lang/String;

    move-object/from16 v1, p29

    .line 29
    iput-object v1, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->attributionLink:Ljava/lang/String;

    move-object/from16 v1, p30

    .line 30
    iput-object v1, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->showAttributionLink:Ljava/lang/String;

    move-object/from16 v1, p31

    .line 31
    iput-object v1, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->gpAttributionLink:Ljava/lang/String;

    move-object/from16 v1, p32

    .line 32
    iput-object v1, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->showMax:Ljava/lang/Integer;

    move-object/from16 v1, p33

    .line 33
    iput-object v1, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->clickMax:Ljava/lang/Integer;

    move-object/from16 v1, p34

    .line 34
    iput-object v1, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->showHours:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/ps/model/ItemDetail;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 35

    move/from16 v0, p35

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
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v7, p5

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v8, p6

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    const/4 v9, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v9, p7

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    const/4 v10, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v10, p8

    :goto_7
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_8

    const/4 v11, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v11, p9

    :goto_8
    and-int/lit16 v12, v0, 0x200

    if-eqz v12, :cond_9

    const-wide/16 v15, 0x0

    goto :goto_9

    :cond_9
    move-wide/from16 v15, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    const/4 v12, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v12, p12

    :goto_a
    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_b

    const/4 v2, 0x0

    goto :goto_b

    :cond_b
    move-object/from16 v2, p13

    :goto_b
    and-int/lit16 v6, v0, 0x1000

    if-eqz v6, :cond_c

    const/4 v6, 0x0

    goto :goto_c

    :cond_c
    move/from16 v6, p14

    :goto_c
    and-int/lit16 v13, v0, 0x2000

    if-eqz v13, :cond_d

    const/4 v13, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v13, p15

    :goto_d
    and-int/lit16 v14, v0, 0x4000

    if-eqz v14, :cond_e

    const-wide/16 v17, 0x0

    goto :goto_e

    :cond_e
    move-wide/from16 v17, p16

    :goto_e
    const v14, 0x8000

    and-int/2addr v14, v0

    if-eqz v14, :cond_f

    const/4 v14, 0x0

    goto :goto_f

    :cond_f
    move/from16 v14, p18

    :goto_f
    const/high16 v19, 0x10000

    and-int v19, v0, v19

    if-eqz v19, :cond_10

    const/16 v19, 0x0

    goto :goto_10

    :cond_10
    move/from16 v19, p19

    :goto_10
    const/high16 v20, 0x20000

    and-int v20, v0, v20

    if-eqz v20, :cond_11

    const/16 v20, 0x0

    goto :goto_11

    :cond_11
    move-object/from16 v20, p20

    :goto_11
    const/high16 v21, 0x40000

    and-int v21, v0, v21

    if-eqz v21, :cond_12

    const/16 v21, 0x0

    goto :goto_12

    :cond_12
    move-object/from16 v21, p21

    :goto_12
    const/high16 v22, 0x80000

    and-int v22, v0, v22

    if-eqz v22, :cond_13

    const/16 v22, 0x0

    goto :goto_13

    :cond_13
    move-object/from16 v22, p22

    :goto_13
    const/high16 v23, 0x100000

    and-int v23, v0, v23

    if-eqz v23, :cond_14

    const/16 v23, 0x0

    goto :goto_14

    :cond_14
    move-object/from16 v23, p23

    :goto_14
    const/high16 v24, 0x200000

    and-int v24, v0, v24

    if-eqz v24, :cond_15

    const/16 v24, 0x0

    goto :goto_15

    :cond_15
    move-object/from16 v24, p24

    :goto_15
    const/high16 v25, 0x400000

    and-int v25, v0, v25

    if-eqz v25, :cond_16

    const/16 v25, 0x0

    goto :goto_16

    :cond_16
    move-object/from16 v25, p25

    :goto_16
    const/high16 v26, 0x800000

    and-int v26, v0, v26

    if-eqz v26, :cond_17

    const/16 v26, 0x0

    goto :goto_17

    :cond_17
    move-object/from16 v26, p26

    :goto_17
    const/high16 v27, 0x1000000

    and-int v27, v0, v27

    if-eqz v27, :cond_18

    const/16 v27, 0x0

    goto :goto_18

    :cond_18
    move-object/from16 v27, p27

    :goto_18
    const/high16 v28, 0x2000000

    and-int v28, v0, v28

    if-eqz v28, :cond_19

    const/16 v28, 0x0

    goto :goto_19

    :cond_19
    move-object/from16 v28, p28

    :goto_19
    const/high16 v29, 0x4000000

    and-int v29, v0, v29

    if-eqz v29, :cond_1a

    const/16 v29, 0x0

    goto :goto_1a

    :cond_1a
    move-object/from16 v29, p29

    :goto_1a
    const/high16 v30, 0x8000000

    and-int v30, v0, v30

    if-eqz v30, :cond_1b

    const/16 v30, 0x0

    goto :goto_1b

    :cond_1b
    move-object/from16 v30, p30

    :goto_1b
    const/high16 v31, 0x10000000

    and-int v31, v0, v31

    if-eqz v31, :cond_1c

    const/16 v31, 0x0

    goto :goto_1c

    :cond_1c
    move-object/from16 v31, p31

    :goto_1c
    const/high16 v32, 0x20000000

    and-int v32, v0, v32

    if-eqz v32, :cond_1d

    const/16 v32, 0x0

    goto :goto_1d

    :cond_1d
    move-object/from16 v32, p32

    :goto_1d
    const/high16 v33, 0x40000000    # 2.0f

    and-int v33, v0, v33

    if-eqz v33, :cond_1e

    const/16 v33, 0x0

    goto :goto_1e

    :cond_1e
    move-object/from16 v33, p33

    :goto_1e
    const/high16 v34, -0x80000000

    and-int v0, v0, v34

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    goto :goto_1f

    :cond_1f
    move-object/from16 v0, p34

    :goto_1f
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move/from16 p5, v5

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-wide/from16 p11, v15

    move-object/from16 p13, v12

    move-object/from16 p14, v2

    move/from16 p15, v6

    move-object/from16 p16, v13

    move-wide/from16 p17, v17

    move/from16 p19, v14

    move/from16 p20, v19

    move-object/from16 p21, v20

    move-object/from16 p22, v21

    move-object/from16 p23, v22

    move-object/from16 p24, v23

    move-object/from16 p25, v24

    move-object/from16 p26, v25

    move-object/from16 p27, v26

    move-object/from16 p28, v27

    move-object/from16 p29, v28

    move-object/from16 p30, v29

    move-object/from16 p31, v30

    move-object/from16 p32, v31

    move-object/from16 p33, v32

    move-object/from16 p34, v33

    move-object/from16 p35, v0

    .line 35
    invoke-direct/range {p1 .. p35}, Lcom/transsion/ad/ps/model/RecommendInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/ps/model/ItemDetail;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/ad/ps/model/RecommendInfo;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/ps/model/ItemDetail;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/ad/ps/model/RecommendInfo;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    move/from16 v1, p35

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->categoryCode:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->categoryName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->detail:Lcom/transsion/ad/ps/model/ItemDetail;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->downloadCount:I

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->iconUrl:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->itemID:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->offerDesc:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->packageName:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->simpleDescription:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-wide v11, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->size:J

    goto :goto_9

    :cond_9
    move-wide/from16 v11, p10

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    iget-object v13, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->star:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v13, p12

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    iget-object v14, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->verifyGoogle:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v14, p13

    :goto_b
    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget v15, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->versionCode:I

    goto :goto_c

    :cond_c
    move/from16 v15, p14

    :goto_c
    move/from16 p14, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->versionName:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p15

    :goto_d
    move-object/from16 p15, v15

    and-int/lit16 v15, v1, 0x4000

    move-object/from16 p13, v14

    if-eqz v15, :cond_e

    iget-wide v14, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->id:J

    goto :goto_e

    :cond_e
    move-wide/from16 v14, p16

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-wide/from16 p16, v14

    if-eqz v16, :cond_f

    iget v14, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->isOffer:I

    goto :goto_f

    :cond_f
    move/from16 v14, p18

    :goto_f
    const/high16 v15, 0x10000

    and-int/2addr v15, v1

    if-eqz v15, :cond_10

    iget v15, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->showType:I

    goto :goto_10

    :cond_10
    move/from16 v15, p19

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move/from16 p19, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->planName:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p20

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p20, v15

    if-eqz v16, :cond_12

    iget-object v15, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->name:Ljava/lang/String;

    goto :goto_12

    :cond_12
    move-object/from16 v15, p21

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move-object/from16 p21, v15

    if-eqz v16, :cond_13

    iget-object v15, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->exists:Ljava/lang/Boolean;

    goto :goto_13

    :cond_13
    move-object/from16 v15, p22

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move-object/from16 p22, v15

    if-eqz v16, :cond_14

    iget-object v15, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->adSource:Ljava/lang/String;

    goto :goto_14

    :cond_14
    move-object/from16 v15, p23

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move-object/from16 p23, v15

    if-eqz v16, :cond_15

    iget-object v15, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->buttonText:Ljava/lang/String;

    goto :goto_15

    :cond_15
    move-object/from16 v15, p24

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, v1, v16

    move-object/from16 p24, v15

    if-eqz v16, :cond_16

    iget-object v15, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->gpLink:Ljava/lang/String;

    goto :goto_16

    :cond_16
    move-object/from16 v15, p25

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, v1, v16

    move-object/from16 p25, v15

    if-eqz v16, :cond_17

    iget-object v15, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->showContent:Ljava/lang/String;

    goto :goto_17

    :cond_17
    move-object/from16 v15, p26

    :goto_17
    const/high16 v16, 0x1000000

    and-int v16, v1, v16

    move-object/from16 p26, v15

    if-eqz v16, :cond_18

    iget-object v15, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->adType:Ljava/lang/Integer;

    goto :goto_18

    :cond_18
    move-object/from16 v15, p27

    :goto_18
    const/high16 v16, 0x2000000

    and-int v16, v1, v16

    move-object/from16 p27, v15

    if-eqz v16, :cond_19

    iget-object v15, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->deepLink:Ljava/lang/String;

    goto :goto_19

    :cond_19
    move-object/from16 v15, p28

    :goto_19
    const/high16 v16, 0x4000000

    and-int v16, v1, v16

    move-object/from16 p28, v15

    if-eqz v16, :cond_1a

    iget-object v15, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->attributionLink:Ljava/lang/String;

    goto :goto_1a

    :cond_1a
    move-object/from16 v15, p29

    :goto_1a
    const/high16 v16, 0x8000000

    and-int v16, v1, v16

    move-object/from16 p29, v15

    if-eqz v16, :cond_1b

    iget-object v15, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->showAttributionLink:Ljava/lang/String;

    goto :goto_1b

    :cond_1b
    move-object/from16 v15, p30

    :goto_1b
    const/high16 v16, 0x10000000

    and-int v16, v1, v16

    move-object/from16 p30, v15

    if-eqz v16, :cond_1c

    iget-object v15, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->gpAttributionLink:Ljava/lang/String;

    goto :goto_1c

    :cond_1c
    move-object/from16 v15, p31

    :goto_1c
    const/high16 v16, 0x20000000

    and-int v16, v1, v16

    move-object/from16 p31, v15

    if-eqz v16, :cond_1d

    iget-object v15, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->showMax:Ljava/lang/Integer;

    goto :goto_1d

    :cond_1d
    move-object/from16 v15, p32

    :goto_1d
    const/high16 v16, 0x40000000    # 2.0f

    and-int v16, v1, v16

    move-object/from16 p32, v15

    if-eqz v16, :cond_1e

    iget-object v15, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->clickMax:Ljava/lang/Integer;

    goto :goto_1e

    :cond_1e
    move-object/from16 v15, p33

    :goto_1e
    const/high16 v16, -0x80000000

    and-int v1, v1, v16

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->showHours:Ljava/lang/String;

    goto :goto_1f

    :cond_1f
    move-object/from16 v1, p34

    :goto_1f
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-wide/from16 p10, v11

    move-object/from16 p12, v13

    move/from16 p18, v14

    move-object/from16 p33, v15

    move-object/from16 p34, v1

    invoke-virtual/range {p0 .. p34}, Lcom/transsion/ad/ps/model/RecommendInfo;->copy(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/ps/model/ItemDetail;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/transsion/ad/ps/model/RecommendInfo;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getPalmStoreDownLoadTaskInfo$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getPlacementId$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getSceneId$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getTAdNativeInfo$annotations()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->categoryCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component10()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->size:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->star:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->verifyGoogle:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component13()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->versionCode:I

    .line 2
    .line 3
    return v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->versionName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component15()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->id:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component16()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->isOffer:I

    .line 2
    .line 3
    return v0
.end method

.method public final component17()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->showType:I

    .line 2
    .line 3
    return v0
.end method

.method public final component18()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->planName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component19()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->categoryName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component20()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->exists:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component21()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->adSource:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component22()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->buttonText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component23()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->gpLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component24()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->showContent:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component25()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->adType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component26()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->deepLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component27()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->attributionLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component28()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->showAttributionLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component29()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->gpAttributionLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Lcom/transsion/ad/ps/model/ItemDetail;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->detail:Lcom/transsion/ad/ps/model/ItemDetail;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component30()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->showMax:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component31()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->clickMax:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component32()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->showHours:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->downloadCount:I

    .line 2
    .line 3
    return v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->iconUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->itemID:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->offerDesc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->simpleDescription:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/ps/model/ItemDetail;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/transsion/ad/ps/model/RecommendInfo;
    .locals 36

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    move-object/from16 v3, p3

    .line 6
    .line 7
    move/from16 v4, p4

    .line 8
    .line 9
    move-object/from16 v5, p5

    .line 10
    .line 11
    move-object/from16 v6, p6

    .line 12
    .line 13
    move-object/from16 v7, p7

    .line 14
    .line 15
    move-object/from16 v8, p8

    .line 16
    .line 17
    move-object/from16 v9, p9

    .line 18
    .line 19
    move-wide/from16 v10, p10

    .line 20
    .line 21
    move-object/from16 v12, p12

    .line 22
    .line 23
    move-object/from16 v13, p13

    .line 24
    .line 25
    move/from16 v14, p14

    .line 26
    .line 27
    move-object/from16 v15, p15

    .line 28
    .line 29
    move-wide/from16 v16, p16

    .line 30
    .line 31
    move/from16 v18, p18

    .line 32
    .line 33
    move/from16 v19, p19

    .line 34
    .line 35
    move-object/from16 v20, p20

    .line 36
    .line 37
    move-object/from16 v21, p21

    .line 38
    .line 39
    move-object/from16 v22, p22

    .line 40
    .line 41
    move-object/from16 v23, p23

    .line 42
    .line 43
    move-object/from16 v24, p24

    .line 44
    .line 45
    move-object/from16 v25, p25

    .line 46
    .line 47
    move-object/from16 v26, p26

    .line 48
    .line 49
    move-object/from16 v27, p27

    .line 50
    .line 51
    move-object/from16 v28, p28

    .line 52
    .line 53
    move-object/from16 v29, p29

    .line 54
    .line 55
    move-object/from16 v30, p30

    .line 56
    .line 57
    move-object/from16 v31, p31

    .line 58
    .line 59
    move-object/from16 v32, p32

    .line 60
    .line 61
    move-object/from16 v33, p33

    .line 62
    .line 63
    move-object/from16 v34, p34

    .line 64
    .line 65
    new-instance v35, Lcom/transsion/ad/ps/model/RecommendInfo;

    .line 66
    .line 67
    move-object/from16 v0, v35

    .line 68
    .line 69
    invoke-direct/range {v0 .. v34}, Lcom/transsion/ad/ps/model/RecommendInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/ps/model/ItemDetail;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-object v35
.end method

.method public final describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
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
    instance-of v1, p1, Lcom/transsion/ad/ps/model/RecommendInfo;

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
    check-cast p1, Lcom/transsion/ad/ps/model/RecommendInfo;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->categoryCode:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/transsion/ad/ps/model/RecommendInfo;->categoryCode:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->categoryName:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/transsion/ad/ps/model/RecommendInfo;->categoryName:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->detail:Lcom/transsion/ad/ps/model/ItemDetail;

    .line 36
    .line 37
    iget-object v3, p1, Lcom/transsion/ad/ps/model/RecommendInfo;->detail:Lcom/transsion/ad/ps/model/ItemDetail;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget v1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->downloadCount:I

    .line 47
    .line 48
    iget v3, p1, Lcom/transsion/ad/ps/model/RecommendInfo;->downloadCount:I

    .line 49
    .line 50
    if-eq v1, v3, :cond_5

    .line 51
    .line 52
    return v2

    .line 53
    :cond_5
    iget-object v1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->iconUrl:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v3, p1, Lcom/transsion/ad/ps/model/RecommendInfo;->iconUrl:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_6

    .line 62
    .line 63
    return v2

    .line 64
    :cond_6
    iget-object v1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->itemID:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v3, p1, Lcom/transsion/ad/ps/model/RecommendInfo;->itemID:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_7

    .line 73
    .line 74
    return v2

    .line 75
    :cond_7
    iget-object v1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->offerDesc:Ljava/lang/String;

    .line 76
    .line 77
    iget-object v3, p1, Lcom/transsion/ad/ps/model/RecommendInfo;->offerDesc:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_8

    .line 84
    .line 85
    return v2

    .line 86
    :cond_8
    iget-object v1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->packageName:Ljava/lang/String;

    .line 87
    .line 88
    iget-object v3, p1, Lcom/transsion/ad/ps/model/RecommendInfo;->packageName:Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-nez v1, :cond_9

    .line 95
    .line 96
    return v2

    .line 97
    :cond_9
    iget-object v1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->simpleDescription:Ljava/lang/String;

    .line 98
    .line 99
    iget-object v3, p1, Lcom/transsion/ad/ps/model/RecommendInfo;->simpleDescription:Ljava/lang/String;

    .line 100
    .line 101
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-nez v1, :cond_a

    .line 106
    .line 107
    return v2

    .line 108
    :cond_a
    iget-wide v3, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->size:J

    .line 109
    .line 110
    iget-wide v5, p1, Lcom/transsion/ad/ps/model/RecommendInfo;->size:J

    .line 111
    .line 112
    cmp-long v1, v3, v5

    .line 113
    .line 114
    if-eqz v1, :cond_b

    .line 115
    .line 116
    return v2

    .line 117
    :cond_b
    iget-object v1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->star:Ljava/lang/String;

    .line 118
    .line 119
    iget-object v3, p1, Lcom/transsion/ad/ps/model/RecommendInfo;->star:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->verifyGoogle:Ljava/lang/String;

    .line 129
    .line 130
    iget-object v3, p1, Lcom/transsion/ad/ps/model/RecommendInfo;->verifyGoogle:Ljava/lang/String;

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
    iget v1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->versionCode:I

    .line 140
    .line 141
    iget v3, p1, Lcom/transsion/ad/ps/model/RecommendInfo;->versionCode:I

    .line 142
    .line 143
    if-eq v1, v3, :cond_e

    .line 144
    .line 145
    return v2

    .line 146
    :cond_e
    iget-object v1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->versionName:Ljava/lang/String;

    .line 147
    .line 148
    iget-object v3, p1, Lcom/transsion/ad/ps/model/RecommendInfo;->versionName:Ljava/lang/String;

    .line 149
    .line 150
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-nez v1, :cond_f

    .line 155
    .line 156
    return v2

    .line 157
    :cond_f
    iget-wide v3, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->id:J

    .line 158
    .line 159
    iget-wide v5, p1, Lcom/transsion/ad/ps/model/RecommendInfo;->id:J

    .line 160
    .line 161
    cmp-long v1, v3, v5

    .line 162
    .line 163
    if-eqz v1, :cond_10

    .line 164
    .line 165
    return v2

    .line 166
    :cond_10
    iget v1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->isOffer:I

    .line 167
    .line 168
    iget v3, p1, Lcom/transsion/ad/ps/model/RecommendInfo;->isOffer:I

    .line 169
    .line 170
    if-eq v1, v3, :cond_11

    .line 171
    .line 172
    return v2

    .line 173
    :cond_11
    iget v1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->showType:I

    .line 174
    .line 175
    iget v3, p1, Lcom/transsion/ad/ps/model/RecommendInfo;->showType:I

    .line 176
    .line 177
    if-eq v1, v3, :cond_12

    .line 178
    .line 179
    return v2

    .line 180
    :cond_12
    iget-object v1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->planName:Ljava/lang/String;

    .line 181
    .line 182
    iget-object v3, p1, Lcom/transsion/ad/ps/model/RecommendInfo;->planName:Ljava/lang/String;

    .line 183
    .line 184
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-nez v1, :cond_13

    .line 189
    .line 190
    return v2

    .line 191
    :cond_13
    iget-object v1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->name:Ljava/lang/String;

    .line 192
    .line 193
    iget-object v3, p1, Lcom/transsion/ad/ps/model/RecommendInfo;->name:Ljava/lang/String;

    .line 194
    .line 195
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-nez v1, :cond_14

    .line 200
    .line 201
    return v2

    .line 202
    :cond_14
    iget-object v1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->exists:Ljava/lang/Boolean;

    .line 203
    .line 204
    iget-object v3, p1, Lcom/transsion/ad/ps/model/RecommendInfo;->exists:Ljava/lang/Boolean;

    .line 205
    .line 206
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    if-nez v1, :cond_15

    .line 211
    .line 212
    return v2

    .line 213
    :cond_15
    iget-object v1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->adSource:Ljava/lang/String;

    .line 214
    .line 215
    iget-object v3, p1, Lcom/transsion/ad/ps/model/RecommendInfo;->adSource:Ljava/lang/String;

    .line 216
    .line 217
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    if-nez v1, :cond_16

    .line 222
    .line 223
    return v2

    .line 224
    :cond_16
    iget-object v1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->buttonText:Ljava/lang/String;

    .line 225
    .line 226
    iget-object v3, p1, Lcom/transsion/ad/ps/model/RecommendInfo;->buttonText:Ljava/lang/String;

    .line 227
    .line 228
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    if-nez v1, :cond_17

    .line 233
    .line 234
    return v2

    .line 235
    :cond_17
    iget-object v1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->gpLink:Ljava/lang/String;

    .line 236
    .line 237
    iget-object v3, p1, Lcom/transsion/ad/ps/model/RecommendInfo;->gpLink:Ljava/lang/String;

    .line 238
    .line 239
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    if-nez v1, :cond_18

    .line 244
    .line 245
    return v2

    .line 246
    :cond_18
    iget-object v1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->showContent:Ljava/lang/String;

    .line 247
    .line 248
    iget-object v3, p1, Lcom/transsion/ad/ps/model/RecommendInfo;->showContent:Ljava/lang/String;

    .line 249
    .line 250
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    if-nez v1, :cond_19

    .line 255
    .line 256
    return v2

    .line 257
    :cond_19
    iget-object v1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->adType:Ljava/lang/Integer;

    .line 258
    .line 259
    iget-object v3, p1, Lcom/transsion/ad/ps/model/RecommendInfo;->adType:Ljava/lang/Integer;

    .line 260
    .line 261
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    if-nez v1, :cond_1a

    .line 266
    .line 267
    return v2

    .line 268
    :cond_1a
    iget-object v1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->deepLink:Ljava/lang/String;

    .line 269
    .line 270
    iget-object v3, p1, Lcom/transsion/ad/ps/model/RecommendInfo;->deepLink:Ljava/lang/String;

    .line 271
    .line 272
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    if-nez v1, :cond_1b

    .line 277
    .line 278
    return v2

    .line 279
    :cond_1b
    iget-object v1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->attributionLink:Ljava/lang/String;

    .line 280
    .line 281
    iget-object v3, p1, Lcom/transsion/ad/ps/model/RecommendInfo;->attributionLink:Ljava/lang/String;

    .line 282
    .line 283
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    if-nez v1, :cond_1c

    .line 288
    .line 289
    return v2

    .line 290
    :cond_1c
    iget-object v1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->showAttributionLink:Ljava/lang/String;

    .line 291
    .line 292
    iget-object v3, p1, Lcom/transsion/ad/ps/model/RecommendInfo;->showAttributionLink:Ljava/lang/String;

    .line 293
    .line 294
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v1

    .line 298
    if-nez v1, :cond_1d

    .line 299
    .line 300
    return v2

    .line 301
    :cond_1d
    iget-object v1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->gpAttributionLink:Ljava/lang/String;

    .line 302
    .line 303
    iget-object v3, p1, Lcom/transsion/ad/ps/model/RecommendInfo;->gpAttributionLink:Ljava/lang/String;

    .line 304
    .line 305
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    if-nez v1, :cond_1e

    .line 310
    .line 311
    return v2

    .line 312
    :cond_1e
    iget-object v1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->showMax:Ljava/lang/Integer;

    .line 313
    .line 314
    iget-object v3, p1, Lcom/transsion/ad/ps/model/RecommendInfo;->showMax:Ljava/lang/Integer;

    .line 315
    .line 316
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    if-nez v1, :cond_1f

    .line 321
    .line 322
    return v2

    .line 323
    :cond_1f
    iget-object v1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->clickMax:Ljava/lang/Integer;

    .line 324
    .line 325
    iget-object v3, p1, Lcom/transsion/ad/ps/model/RecommendInfo;->clickMax:Ljava/lang/Integer;

    .line 326
    .line 327
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    move-result v1

    .line 331
    if-nez v1, :cond_20

    .line 332
    .line 333
    return v2

    .line 334
    :cond_20
    iget-object v1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->showHours:Ljava/lang/String;

    .line 335
    .line 336
    iget-object p1, p1, Lcom/transsion/ad/ps/model/RecommendInfo;->showHours:Ljava/lang/String;

    .line 337
    .line 338
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    move-result p1

    .line 342
    if-nez p1, :cond_21

    .line 343
    .line 344
    return v2

    .line 345
    :cond_21
    return v0
.end method

.method public final getAdSource()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->adSource:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAdType()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->adType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAdTypeTxt()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->adType:Ljava/lang/Integer;

    .line 2
    .line 3
    sget-object v1, Lcom/transsion/ad/ps/model/PSAdTypeEnum;->PS_AD_TYPE_USER_ACQUISITION_0:Lcom/transsion/ad/ps/model/PSAdTypeEnum;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/transsion/ad/ps/model/PSAdTypeEnum;->getValue()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-ne v2, v1, :cond_1

    .line 17
    .line 18
    const-string v0, "\u62c9\u65b0"

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_1
    :goto_0
    sget-object v1, Lcom/transsion/ad/ps/model/PSAdTypeEnum;->PS_AD_TYPE_USER_RETENTION_1:Lcom/transsion/ad/ps/model/PSAdTypeEnum;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/transsion/ad/ps/model/PSAdTypeEnum;->getValue()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-ne v0, v1, :cond_3

    .line 35
    .line 36
    const-string v0, "\u62c9\u6d3b"

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_3
    :goto_1
    const-string v0, "\u672a\u77e5\u7c7b\u578b"

    .line 40
    .line 41
    :goto_2
    return-object v0
.end method

.method public final getAttributionLink()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->attributionLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getButtonText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->buttonText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCategoryCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->categoryCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCategoryName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->categoryName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getClickMax()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->clickMax:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDeepLink()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->deepLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDetail()Lcom/transsion/ad/ps/model/ItemDetail;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->detail:Lcom/transsion/ad/ps/model/ItemDetail;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDownloadCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->downloadCount:I

    .line 2
    .line 3
    return v0
.end method

.method public final getExists()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->exists:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getGpAttributionLink()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->gpAttributionLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getGpLink()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->gpLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getIconUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->iconUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->id:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getItemID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->itemID:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOfferDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->offerDesc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPalmStoreDownLoadTaskInfo()Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->palmStoreDownLoadTaskInfo:Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPlacementId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->placementId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPlanName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->planName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSceneId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->sceneId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShowAttributionLink()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->showAttributionLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShowContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->showContent:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShowHours()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->showHours:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShowMax()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->showMax:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShowType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->showType:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSimpleDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->simpleDescription:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->size:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getStar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->star:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTAdNativeInfo()Lcom/hisavana/common/bean/TAdNativeInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->tAdNativeInfo:Lcom/hisavana/common/bean/TAdNativeInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getVerifyGoogle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->verifyGoogle:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getVersionCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->versionCode:I

    .line 2
    .line 3
    return v0
.end method

.method public final getVersionName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->versionName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->categoryCode:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->categoryName:Ljava/lang/String;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    move v2, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    :goto_1
    add-int/2addr v0, v2

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->detail:Lcom/transsion/ad/ps/model/ItemDetail;

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    move v2, v1

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    invoke-virtual {v2}, Lcom/transsion/ad/ps/model/ItemDetail;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    :goto_2
    add-int/2addr v0, v2

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    iget v2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->downloadCount:I

    .line 41
    .line 42
    add-int/2addr v0, v2

    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget-object v2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->iconUrl:Ljava/lang/String;

    .line 46
    .line 47
    if-nez v2, :cond_3

    .line 48
    .line 49
    move v2, v1

    .line 50
    goto :goto_3

    .line 51
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    :goto_3
    add-int/2addr v0, v2

    .line 56
    mul-int/lit8 v0, v0, 0x1f

    .line 57
    .line 58
    iget-object v2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->itemID:Ljava/lang/String;

    .line 59
    .line 60
    if-nez v2, :cond_4

    .line 61
    .line 62
    move v2, v1

    .line 63
    goto :goto_4

    .line 64
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    :goto_4
    add-int/2addr v0, v2

    .line 69
    mul-int/lit8 v0, v0, 0x1f

    .line 70
    .line 71
    iget-object v2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->offerDesc:Ljava/lang/String;

    .line 72
    .line 73
    if-nez v2, :cond_5

    .line 74
    .line 75
    move v2, v1

    .line 76
    goto :goto_5

    .line 77
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    :goto_5
    add-int/2addr v0, v2

    .line 82
    mul-int/lit8 v0, v0, 0x1f

    .line 83
    .line 84
    iget-object v2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->packageName:Ljava/lang/String;

    .line 85
    .line 86
    if-nez v2, :cond_6

    .line 87
    .line 88
    move v2, v1

    .line 89
    goto :goto_6

    .line 90
    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    :goto_6
    add-int/2addr v0, v2

    .line 95
    mul-int/lit8 v0, v0, 0x1f

    .line 96
    .line 97
    iget-object v2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->simpleDescription:Ljava/lang/String;

    .line 98
    .line 99
    if-nez v2, :cond_7

    .line 100
    .line 101
    move v2, v1

    .line 102
    goto :goto_7

    .line 103
    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    :goto_7
    add-int/2addr v0, v2

    .line 108
    mul-int/lit8 v0, v0, 0x1f

    .line 109
    .line 110
    iget-wide v2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->size:J

    .line 111
    .line 112
    invoke-static {v2, v3}, Landroidx/collection/s;->a(J)I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    add-int/2addr v0, v2

    .line 117
    mul-int/lit8 v0, v0, 0x1f

    .line 118
    .line 119
    iget-object v2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->star:Ljava/lang/String;

    .line 120
    .line 121
    if-nez v2, :cond_8

    .line 122
    .line 123
    move v2, v1

    .line 124
    goto :goto_8

    .line 125
    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    :goto_8
    add-int/2addr v0, v2

    .line 130
    mul-int/lit8 v0, v0, 0x1f

    .line 131
    .line 132
    iget-object v2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->verifyGoogle:Ljava/lang/String;

    .line 133
    .line 134
    if-nez v2, :cond_9

    .line 135
    .line 136
    move v2, v1

    .line 137
    goto :goto_9

    .line 138
    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    :goto_9
    add-int/2addr v0, v2

    .line 143
    mul-int/lit8 v0, v0, 0x1f

    .line 144
    .line 145
    iget v2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->versionCode:I

    .line 146
    .line 147
    add-int/2addr v0, v2

    .line 148
    mul-int/lit8 v0, v0, 0x1f

    .line 149
    .line 150
    iget-object v2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->versionName:Ljava/lang/String;

    .line 151
    .line 152
    if-nez v2, :cond_a

    .line 153
    .line 154
    move v2, v1

    .line 155
    goto :goto_a

    .line 156
    :cond_a
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    :goto_a
    add-int/2addr v0, v2

    .line 161
    mul-int/lit8 v0, v0, 0x1f

    .line 162
    .line 163
    iget-wide v2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->id:J

    .line 164
    .line 165
    invoke-static {v2, v3}, Landroidx/collection/s;->a(J)I

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    add-int/2addr v0, v2

    .line 170
    mul-int/lit8 v0, v0, 0x1f

    .line 171
    .line 172
    iget v2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->isOffer:I

    .line 173
    .line 174
    add-int/2addr v0, v2

    .line 175
    mul-int/lit8 v0, v0, 0x1f

    .line 176
    .line 177
    iget v2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->showType:I

    .line 178
    .line 179
    add-int/2addr v0, v2

    .line 180
    mul-int/lit8 v0, v0, 0x1f

    .line 181
    .line 182
    iget-object v2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->planName:Ljava/lang/String;

    .line 183
    .line 184
    if-nez v2, :cond_b

    .line 185
    .line 186
    move v2, v1

    .line 187
    goto :goto_b

    .line 188
    :cond_b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    :goto_b
    add-int/2addr v0, v2

    .line 193
    mul-int/lit8 v0, v0, 0x1f

    .line 194
    .line 195
    iget-object v2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->name:Ljava/lang/String;

    .line 196
    .line 197
    if-nez v2, :cond_c

    .line 198
    .line 199
    move v2, v1

    .line 200
    goto :goto_c

    .line 201
    :cond_c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    :goto_c
    add-int/2addr v0, v2

    .line 206
    mul-int/lit8 v0, v0, 0x1f

    .line 207
    .line 208
    iget-object v2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->exists:Ljava/lang/Boolean;

    .line 209
    .line 210
    if-nez v2, :cond_d

    .line 211
    .line 212
    move v2, v1

    .line 213
    goto :goto_d

    .line 214
    :cond_d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    :goto_d
    add-int/2addr v0, v2

    .line 219
    mul-int/lit8 v0, v0, 0x1f

    .line 220
    .line 221
    iget-object v2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->adSource:Ljava/lang/String;

    .line 222
    .line 223
    if-nez v2, :cond_e

    .line 224
    .line 225
    move v2, v1

    .line 226
    goto :goto_e

    .line 227
    :cond_e
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    :goto_e
    add-int/2addr v0, v2

    .line 232
    mul-int/lit8 v0, v0, 0x1f

    .line 233
    .line 234
    iget-object v2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->buttonText:Ljava/lang/String;

    .line 235
    .line 236
    if-nez v2, :cond_f

    .line 237
    .line 238
    move v2, v1

    .line 239
    goto :goto_f

    .line 240
    :cond_f
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    :goto_f
    add-int/2addr v0, v2

    .line 245
    mul-int/lit8 v0, v0, 0x1f

    .line 246
    .line 247
    iget-object v2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->gpLink:Ljava/lang/String;

    .line 248
    .line 249
    if-nez v2, :cond_10

    .line 250
    .line 251
    move v2, v1

    .line 252
    goto :goto_10

    .line 253
    :cond_10
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    :goto_10
    add-int/2addr v0, v2

    .line 258
    mul-int/lit8 v0, v0, 0x1f

    .line 259
    .line 260
    iget-object v2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->showContent:Ljava/lang/String;

    .line 261
    .line 262
    if-nez v2, :cond_11

    .line 263
    .line 264
    move v2, v1

    .line 265
    goto :goto_11

    .line 266
    :cond_11
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    :goto_11
    add-int/2addr v0, v2

    .line 271
    mul-int/lit8 v0, v0, 0x1f

    .line 272
    .line 273
    iget-object v2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->adType:Ljava/lang/Integer;

    .line 274
    .line 275
    if-nez v2, :cond_12

    .line 276
    .line 277
    move v2, v1

    .line 278
    goto :goto_12

    .line 279
    :cond_12
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 280
    .line 281
    .line 282
    move-result v2

    .line 283
    :goto_12
    add-int/2addr v0, v2

    .line 284
    mul-int/lit8 v0, v0, 0x1f

    .line 285
    .line 286
    iget-object v2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->deepLink:Ljava/lang/String;

    .line 287
    .line 288
    if-nez v2, :cond_13

    .line 289
    .line 290
    move v2, v1

    .line 291
    goto :goto_13

    .line 292
    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 293
    .line 294
    .line 295
    move-result v2

    .line 296
    :goto_13
    add-int/2addr v0, v2

    .line 297
    mul-int/lit8 v0, v0, 0x1f

    .line 298
    .line 299
    iget-object v2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->attributionLink:Ljava/lang/String;

    .line 300
    .line 301
    if-nez v2, :cond_14

    .line 302
    .line 303
    move v2, v1

    .line 304
    goto :goto_14

    .line 305
    :cond_14
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 306
    .line 307
    .line 308
    move-result v2

    .line 309
    :goto_14
    add-int/2addr v0, v2

    .line 310
    mul-int/lit8 v0, v0, 0x1f

    .line 311
    .line 312
    iget-object v2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->showAttributionLink:Ljava/lang/String;

    .line 313
    .line 314
    if-nez v2, :cond_15

    .line 315
    .line 316
    move v2, v1

    .line 317
    goto :goto_15

    .line 318
    :cond_15
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 319
    .line 320
    .line 321
    move-result v2

    .line 322
    :goto_15
    add-int/2addr v0, v2

    .line 323
    mul-int/lit8 v0, v0, 0x1f

    .line 324
    .line 325
    iget-object v2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->gpAttributionLink:Ljava/lang/String;

    .line 326
    .line 327
    if-nez v2, :cond_16

    .line 328
    .line 329
    move v2, v1

    .line 330
    goto :goto_16

    .line 331
    :cond_16
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 332
    .line 333
    .line 334
    move-result v2

    .line 335
    :goto_16
    add-int/2addr v0, v2

    .line 336
    mul-int/lit8 v0, v0, 0x1f

    .line 337
    .line 338
    iget-object v2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->showMax:Ljava/lang/Integer;

    .line 339
    .line 340
    if-nez v2, :cond_17

    .line 341
    .line 342
    move v2, v1

    .line 343
    goto :goto_17

    .line 344
    :cond_17
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 345
    .line 346
    .line 347
    move-result v2

    .line 348
    :goto_17
    add-int/2addr v0, v2

    .line 349
    mul-int/lit8 v0, v0, 0x1f

    .line 350
    .line 351
    iget-object v2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->clickMax:Ljava/lang/Integer;

    .line 352
    .line 353
    if-nez v2, :cond_18

    .line 354
    .line 355
    move v2, v1

    .line 356
    goto :goto_18

    .line 357
    :cond_18
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 358
    .line 359
    .line 360
    move-result v2

    .line 361
    :goto_18
    add-int/2addr v0, v2

    .line 362
    mul-int/lit8 v0, v0, 0x1f

    .line 363
    .line 364
    iget-object v2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->showHours:Ljava/lang/String;

    .line 365
    .line 366
    if-nez v2, :cond_19

    .line 367
    .line 368
    goto :goto_19

    .line 369
    :cond_19
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 370
    .line 371
    .line 372
    move-result v1

    .line 373
    :goto_19
    add-int/2addr v0, v1

    .line 374
    return v0
.end method

.method public final isOffer()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->isOffer:I

    .line 2
    .line 3
    return v0
.end method

.method public final setAdSource(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->adSource:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setAdType(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->adType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setAttributionLink(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->attributionLink:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setButtonText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->buttonText:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setCategoryCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->categoryCode:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setCategoryName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->categoryName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setClickMax(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->clickMax:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setDeepLink(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->deepLink:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDetail(Lcom/transsion/ad/ps/model/ItemDetail;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->detail:Lcom/transsion/ad/ps/model/ItemDetail;

    .line 2
    .line 3
    return-void
.end method

.method public final setDownloadCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->downloadCount:I

    .line 2
    .line 3
    return-void
.end method

.method public final setExists(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->exists:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setGpAttributionLink(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->gpAttributionLink:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setGpLink(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->gpLink:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setIconUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->iconUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->id:J

    .line 2
    .line 3
    return-void
.end method

.method public final setItemID(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->itemID:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setOffer(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->isOffer:I

    .line 2
    .line 3
    return-void
.end method

.method public final setOfferDesc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->offerDesc:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPalmStoreDownLoadTaskInfo(Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->palmStoreDownLoadTaskInfo:Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;

    .line 2
    .line 3
    return-void
.end method

.method public final setPlacementId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->placementId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPlanName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->planName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSceneId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->sceneId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setShowAttributionLink(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->showAttributionLink:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setShowContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->showContent:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setShowHours(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->showHours:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setShowMax(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->showMax:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setShowType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->showType:I

    .line 2
    .line 3
    return-void
.end method

.method public final setSimpleDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->simpleDescription:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->size:J

    .line 2
    .line 3
    return-void
.end method

.method public final setStar(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->star:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setTAdNativeInfo(Lcom/hisavana/common/bean/TAdNativeInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->tAdNativeInfo:Lcom/hisavana/common/bean/TAdNativeInfo;

    .line 2
    .line 3
    return-void
.end method

.method public final setVerifyGoogle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->verifyGoogle:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setVersionCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->versionCode:I

    .line 2
    .line 3
    return-void
.end method

.method public final setVersionName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->versionName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->categoryCode:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->categoryName:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->detail:Lcom/transsion/ad/ps/model/ItemDetail;

    .line 8
    .line 9
    iget v4, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->downloadCount:I

    .line 10
    .line 11
    iget-object v5, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->iconUrl:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->itemID:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v7, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->offerDesc:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v8, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->packageName:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v9, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->simpleDescription:Ljava/lang/String;

    .line 20
    .line 21
    iget-wide v10, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->size:J

    .line 22
    .line 23
    iget-object v12, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->star:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v13, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->verifyGoogle:Ljava/lang/String;

    .line 26
    .line 27
    iget v14, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->versionCode:I

    .line 28
    .line 29
    iget-object v15, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->versionName:Ljava/lang/String;

    .line 30
    .line 31
    move/from16 v16, v14

    .line 32
    .line 33
    move-object/from16 v17, v15

    .line 34
    .line 35
    iget-wide v14, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->id:J

    .line 36
    .line 37
    move-wide/from16 v18, v14

    .line 38
    .line 39
    iget v14, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->isOffer:I

    .line 40
    .line 41
    iget v15, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->showType:I

    .line 42
    .line 43
    move/from16 v20, v15

    .line 44
    .line 45
    iget-object v15, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->planName:Ljava/lang/String;

    .line 46
    .line 47
    move-object/from16 v21, v15

    .line 48
    .line 49
    iget-object v15, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->name:Ljava/lang/String;

    .line 50
    .line 51
    move-object/from16 v22, v15

    .line 52
    .line 53
    iget-object v15, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->exists:Ljava/lang/Boolean;

    .line 54
    .line 55
    move-object/from16 v23, v15

    .line 56
    .line 57
    iget-object v15, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->adSource:Ljava/lang/String;

    .line 58
    .line 59
    move-object/from16 v24, v15

    .line 60
    .line 61
    iget-object v15, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->buttonText:Ljava/lang/String;

    .line 62
    .line 63
    move-object/from16 v25, v15

    .line 64
    .line 65
    iget-object v15, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->gpLink:Ljava/lang/String;

    .line 66
    .line 67
    move-object/from16 v26, v15

    .line 68
    .line 69
    iget-object v15, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->showContent:Ljava/lang/String;

    .line 70
    .line 71
    move-object/from16 v27, v15

    .line 72
    .line 73
    iget-object v15, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->adType:Ljava/lang/Integer;

    .line 74
    .line 75
    move-object/from16 v28, v15

    .line 76
    .line 77
    iget-object v15, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->deepLink:Ljava/lang/String;

    .line 78
    .line 79
    move-object/from16 v29, v15

    .line 80
    .line 81
    iget-object v15, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->attributionLink:Ljava/lang/String;

    .line 82
    .line 83
    move-object/from16 v30, v15

    .line 84
    .line 85
    iget-object v15, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->showAttributionLink:Ljava/lang/String;

    .line 86
    .line 87
    move-object/from16 v31, v15

    .line 88
    .line 89
    iget-object v15, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->gpAttributionLink:Ljava/lang/String;

    .line 90
    .line 91
    move-object/from16 v32, v15

    .line 92
    .line 93
    iget-object v15, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->showMax:Ljava/lang/Integer;

    .line 94
    .line 95
    move-object/from16 v33, v15

    .line 96
    .line 97
    iget-object v15, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->clickMax:Ljava/lang/Integer;

    .line 98
    .line 99
    move-object/from16 v34, v15

    .line 100
    .line 101
    iget-object v15, v0, Lcom/transsion/ad/ps/model/RecommendInfo;->showHours:Ljava/lang/String;

    .line 102
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    move-object/from16 v35, v15

    .line 109
    .line 110
    const-string v15, "RecommendInfo(categoryCode="

    .line 111
    .line 112
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v1, ", categoryName="

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v1, ", detail="

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v1, ", downloadCount="

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v1, ", iconUrl="

    .line 143
    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v1, ", itemID="

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v1, ", offerDesc="

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v1, ", packageName="

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const-string v1, ", simpleDescription="

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string v1, ", size="

    .line 183
    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const-string v1, ", star="

    .line 191
    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string v1, ", verifyGoogle="

    .line 199
    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v1, ", versionCode="

    .line 207
    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    move/from16 v1, v16

    .line 212
    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string v1, ", versionName="

    .line 217
    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    move-object/from16 v1, v17

    .line 222
    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v1, ", id="

    .line 227
    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    move-wide/from16 v1, v18

    .line 232
    .line 233
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    const-string v1, ", isOffer="

    .line 237
    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const-string v1, ", showType="

    .line 245
    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    move/from16 v1, v20

    .line 250
    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    const-string v1, ", planName="

    .line 255
    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    move-object/from16 v1, v21

    .line 260
    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    const-string v1, ", name="

    .line 265
    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    move-object/from16 v1, v22

    .line 270
    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    const-string v1, ", exists="

    .line 275
    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    move-object/from16 v1, v23

    .line 280
    .line 281
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    const-string v1, ", adSource="

    .line 285
    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    move-object/from16 v1, v24

    .line 290
    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    const-string v1, ", buttonText="

    .line 295
    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    move-object/from16 v1, v25

    .line 300
    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    const-string v1, ", gpLink="

    .line 305
    .line 306
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    move-object/from16 v1, v26

    .line 310
    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    const-string v1, ", showContent="

    .line 315
    .line 316
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    move-object/from16 v1, v27

    .line 320
    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    const-string v1, ", adType="

    .line 325
    .line 326
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    move-object/from16 v1, v28

    .line 330
    .line 331
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    const-string v1, ", deepLink="

    .line 335
    .line 336
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    move-object/from16 v1, v29

    .line 340
    .line 341
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    const-string v1, ", attributionLink="

    .line 345
    .line 346
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    move-object/from16 v1, v30

    .line 350
    .line 351
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    const-string v1, ", showAttributionLink="

    .line 355
    .line 356
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    move-object/from16 v1, v31

    .line 360
    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    const-string v1, ", gpAttributionLink="

    .line 365
    .line 366
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    move-object/from16 v1, v32

    .line 370
    .line 371
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    const-string v1, ", showMax="

    .line 375
    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    move-object/from16 v1, v33

    .line 380
    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    const-string v1, ", clickMax="

    .line 385
    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    move-object/from16 v1, v34

    .line 390
    .line 391
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    const-string v1, ", showHours="

    .line 395
    .line 396
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    move-object/from16 v1, v35

    .line 400
    .line 401
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    const-string v1, ")"

    .line 405
    .line 406
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 1
    const-string v0, "dest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->categoryCode:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->categoryName:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->detail:Lcom/transsion/ad/ps/model/ItemDetail;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1, p2}, Lcom/transsion/ad/ps/model/ItemDetail;->writeToParcel(Landroid/os/Parcel;I)V

    .line 30
    .line 31
    .line 32
    :goto_0
    iget p2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->downloadCount:I

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    .line 36
    .line 37
    iget-object p2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->iconUrl:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object p2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->itemID:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object p2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->offerDesc:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object p2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->packageName:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object p2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->simpleDescription:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-wide v3, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->size:J

    .line 63
    .line 64
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 65
    .line 66
    .line 67
    iget-object p2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->star:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object p2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->verifyGoogle:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget p2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->versionCode:I

    .line 78
    .line 79
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    .line 81
    .line 82
    iget-object p2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->versionName:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-wide v3, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->id:J

    .line 88
    .line 89
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 90
    .line 91
    .line 92
    iget p2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->isOffer:I

    .line 93
    .line 94
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    .line 96
    .line 97
    iget p2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->showType:I

    .line 98
    .line 99
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    .line 101
    .line 102
    iget-object p2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->planName:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object p2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->name:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object p2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->exists:Ljava/lang/Boolean;

    .line 113
    .line 114
    if-nez p2, :cond_1

    .line 115
    .line 116
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    .line 129
    .line 130
    :goto_1
    iget-object p2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->adSource:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget-object p2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->buttonText:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget-object p2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->gpLink:Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iget-object p2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->showContent:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget-object p2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->adType:Ljava/lang/Integer;

    .line 151
    .line 152
    if-nez p2, :cond_2

    .line 153
    .line 154
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 162
    .line 163
    .line 164
    move-result p2

    .line 165
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    .line 167
    .line 168
    :goto_2
    iget-object p2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->deepLink:Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    iget-object p2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->attributionLink:Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    iget-object p2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->showAttributionLink:Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    iget-object p2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->gpAttributionLink:Ljava/lang/String;

    .line 184
    .line 185
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    iget-object p2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->showMax:Ljava/lang/Integer;

    .line 189
    .line 190
    if-nez p2, :cond_3

    .line 191
    .line 192
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 200
    .line 201
    .line 202
    move-result p2

    .line 203
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    .line 205
    .line 206
    :goto_3
    iget-object p2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->clickMax:Ljava/lang/Integer;

    .line 207
    .line 208
    if-nez p2, :cond_4

    .line 209
    .line 210
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    .line 212
    .line 213
    goto :goto_4

    .line 214
    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 218
    .line 219
    .line 220
    move-result p2

    .line 221
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    .line 223
    .line 224
    :goto_4
    iget-object p2, p0, Lcom/transsion/ad/ps/model/RecommendInfo;->showHours:Ljava/lang/String;

    .line 225
    .line 226
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    return-void
.end method
