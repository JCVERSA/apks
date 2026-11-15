.class public final Lcom/transsion/push/bean/TPushData;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0003\u0008\u0080\u0001\n\u0002\u0010\u000b\n\u0002\u00080\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u00d9\u0003\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010 \u001a\u00020\u0005\u0012\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010&\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\'\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010(\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010*\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010+\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010,\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010-\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008.\u0010/J\u0008\u0010\u0087\u0001\u001a\u00030\u0088\u0001J\u0008\u0010\u0089\u0001\u001a\u00030\u0088\u0001J\n\u0010\u008a\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u008b\u0001\u001a\u00020\u0005H\u00c6\u0003J\u000c\u0010\u008c\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u008d\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\n\u0010\u008e\u0001\u001a\u00020\u0005H\u00c6\u0003J\n\u0010\u008f\u0001\u001a\u00020\u0005H\u00c6\u0003J\n\u0010\u0090\u0001\u001a\u00020\u0005H\u00c6\u0003J\n\u0010\u0091\u0001\u001a\u00020\u0005H\u00c6\u0003J\u000c\u0010\u0092\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u0093\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u0094\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\n\u0010\u0095\u0001\u001a\u00020\u0005H\u00c6\u0003J\n\u0010\u0096\u0001\u001a\u00020\u0005H\u00c6\u0003J\u000c\u0010\u0097\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u0098\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u0099\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u009a\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u009b\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u009c\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u009d\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u009e\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\n\u0010\u009f\u0001\u001a\u00020\u0005H\u00c6\u0003J\u000c\u0010\u00a0\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u00a1\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u00a2\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\n\u0010\u00a3\u0001\u001a\u00020\u0005H\u00c6\u0003J\u000c\u0010\u00a4\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\n\u0010\u00a5\u0001\u001a\u00020\u0005H\u00c6\u0003J\u000c\u0010\u00a6\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u00a7\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u00a8\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u00a9\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u00aa\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\n\u0010\u00ab\u0001\u001a\u00020\u0005H\u00c6\u0003J\n\u0010\u00ac\u0001\u001a\u00020\u0003H\u00c6\u0003J\u000c\u0010\u00ad\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u00ae\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u00af\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u00b0\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u00b1\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u00b2\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u00dc\u0003\u0010\u00b3\u0001\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u00052\u0008\u0008\u0002\u0010\n\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00052\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00052\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00052\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u00052\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010 \u001a\u00020\u00052\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010&\u001a\u00020\u00052\u0008\u0008\u0002\u0010\'\u001a\u00020\u00032\n\u0008\u0002\u0010(\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010*\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010+\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010,\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010-\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001J\u0016\u0010\u00b4\u0001\u001a\u00030\u0088\u00012\t\u0010\u00b5\u0001\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\n\u0010\u00b6\u0001\u001a\u00020\u0005H\u00d6\u0001J\n\u0010\u00b7\u0001\u001a\u00020\u0007H\u00d6\u0001R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103R\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107R \u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00088\u00109\"\u0004\u0008:\u0010;R \u0010\u0008\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008<\u00109\"\u0004\u0008=\u0010;R\u001e\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008>\u00105\"\u0004\u0008?\u00107R\u001e\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008@\u00105\"\u0004\u0008A\u00107R\u001e\u0010\u000b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008B\u00105\"\u0004\u0008C\u00107R\u001e\u0010\u000c\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008D\u00105\"\u0004\u0008E\u00107R \u0010\r\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008F\u00109\"\u0004\u0008G\u0010;R \u0010\u000e\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008H\u00109\"\u0004\u0008I\u0010;R \u0010\u000f\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008J\u00109\"\u0004\u0008K\u0010;R\u001e\u0010\u0010\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008L\u00105\"\u0004\u0008M\u00107R\u001e\u0010\u0011\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008N\u00105\"\u0004\u0008O\u00107R \u0010\u0012\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008P\u00109\"\u0004\u0008Q\u0010;R \u0010\u0013\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008R\u00109\"\u0004\u0008S\u0010;R \u0010\u0014\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008T\u00109\"\u0004\u0008U\u0010;R \u0010\u0015\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008V\u00109\"\u0004\u0008W\u0010;R \u0010\u0016\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008X\u00109\"\u0004\u0008Y\u0010;R \u0010\u0017\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Z\u00109\"\u0004\u0008[\u0010;R \u0010\u0018\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\\\u00109\"\u0004\u0008]\u0010;R \u0010\u0019\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008^\u00109\"\u0004\u0008_\u0010;R\u001e\u0010\u001a\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008`\u00105\"\u0004\u0008a\u00107R \u0010\u001b\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008b\u00109\"\u0004\u0008c\u0010;R \u0010\u001c\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008d\u00109\"\u0004\u0008e\u0010;R \u0010\u001d\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008f\u00109\"\u0004\u0008g\u0010;R\u001e\u0010\u001e\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008h\u00105\"\u0004\u0008i\u00107R \u0010\u001f\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008j\u00109\"\u0004\u0008k\u0010;R\u001e\u0010 \u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008l\u00105\"\u0004\u0008m\u00107R \u0010!\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008n\u00109\"\u0004\u0008o\u0010;R \u0010\"\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008p\u00109\"\u0004\u0008q\u0010;R \u0010#\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008r\u00109\"\u0004\u0008s\u0010;R \u0010$\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008t\u00109\"\u0004\u0008u\u0010;R \u0010%\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008v\u00109\"\u0004\u0008w\u0010;R\u001e\u0010&\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u00105\"\u0004\u0008x\u00107R\u001e\u0010\'\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008y\u00101\"\u0004\u0008z\u00103R \u0010(\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008{\u00109\"\u0004\u0008|\u0010;R \u0010)\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008}\u00109\"\u0004\u0008~\u0010;R!\u0010*\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000f\n\u0000\u001a\u0004\u0008\u007f\u00109\"\u0005\u0008\u0080\u0001\u0010;R\"\u0010+\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0081\u0001\u00109\"\u0005\u0008\u0082\u0001\u0010;R\"\u0010,\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0083\u0001\u00109\"\u0005\u0008\u0084\u0001\u0010;R\"\u0010-\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0085\u0001\u00109\"\u0005\u0008\u0086\u0001\u0010;\u00a8\u0006\u00b8\u0001"
    }
    d2 = {
        "Lcom/transsion/push/bean/TPushData;",
        "",
        "messageId",
        "",
        "type",
        "",
        "styleType",
        "",
        "pkgId",
        "priority",
        "sdkShow",
        "msgTtl",
        "ignoreExpire",
        "packageName",
        "rpkg",
        "timeStamp",
        "notiType",
        "notiExType",
        "notiTitle",
        "notiDes",
        "notiImg",
        "notiIcon",
        "notiBtn",
        "notiImgEx",
        "notiTitleEx",
        "notiTxtEx",
        "notiOpenType",
        "notiOpenContent",
        "transData",
        "notiSmallIcon",
        "displayPolicy",
        "appName",
        "layoutStyleId",
        "channelId",
        "channelName",
        "iconColor",
        "impUrlList",
        "clickUrlList",
        "isHeadsUp",
        "retraceMsgId",
        "groupId",
        "groupMaxCount",
        "notiExtensionBtn",
        "notiOptionalIcon",
        "notiBtnTxtColor",
        "notiBtnBgColor",
        "<init>",
        "(JILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getMessageId",
        "()J",
        "setMessageId",
        "(J)V",
        "getType",
        "()I",
        "setType",
        "(I)V",
        "getStyleType",
        "()Ljava/lang/String;",
        "setStyleType",
        "(Ljava/lang/String;)V",
        "getPkgId",
        "setPkgId",
        "getPriority",
        "setPriority",
        "getSdkShow",
        "setSdkShow",
        "getMsgTtl",
        "setMsgTtl",
        "getIgnoreExpire",
        "setIgnoreExpire",
        "getPackageName",
        "setPackageName",
        "getRpkg",
        "setRpkg",
        "getTimeStamp",
        "setTimeStamp",
        "getNotiType",
        "setNotiType",
        "getNotiExType",
        "setNotiExType",
        "getNotiTitle",
        "setNotiTitle",
        "getNotiDes",
        "setNotiDes",
        "getNotiImg",
        "setNotiImg",
        "getNotiIcon",
        "setNotiIcon",
        "getNotiBtn",
        "setNotiBtn",
        "getNotiImgEx",
        "setNotiImgEx",
        "getNotiTitleEx",
        "setNotiTitleEx",
        "getNotiTxtEx",
        "setNotiTxtEx",
        "getNotiOpenType",
        "setNotiOpenType",
        "getNotiOpenContent",
        "setNotiOpenContent",
        "getTransData",
        "setTransData",
        "getNotiSmallIcon",
        "setNotiSmallIcon",
        "getDisplayPolicy",
        "setDisplayPolicy",
        "getAppName",
        "setAppName",
        "getLayoutStyleId",
        "setLayoutStyleId",
        "getChannelId",
        "setChannelId",
        "getChannelName",
        "setChannelName",
        "getIconColor",
        "setIconColor",
        "getImpUrlList",
        "setImpUrlList",
        "getClickUrlList",
        "setClickUrlList",
        "setHeadsUp",
        "getRetraceMsgId",
        "setRetraceMsgId",
        "getGroupId",
        "setGroupId",
        "getGroupMaxCount",
        "setGroupMaxCount",
        "getNotiExtensionBtn",
        "setNotiExtensionBtn",
        "getNotiOptionalIcon",
        "setNotiOptionalIcon",
        "getNotiBtnTxtColor",
        "setNotiBtnTxtColor",
        "getNotiBtnBgColor",
        "setNotiBtnBgColor",
        "isNotifyType",
        "",
        "isVerticalType",
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
        "component33",
        "component34",
        "component35",
        "component36",
        "component37",
        "component38",
        "component39",
        "component40",
        "component41",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "push_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private appName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "app_name"
    .end annotation
.end field

.field private channelId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noti_channel_id"
    .end annotation
.end field

.field private channelName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noti_channel_name"
    .end annotation
.end field

.field private clickUrlList:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noti_click_urls"
    .end annotation
.end field

.field private displayPolicy:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "display_policy"
    .end annotation
.end field

.field private groupId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noti_group_id"
    .end annotation
.end field

.field private groupMaxCount:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noti_group_max_count"
    .end annotation
.end field

.field private iconColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noti_small_icon_color"
    .end annotation
.end field

.field private ignoreExpire:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noti_ignore_expire"
    .end annotation
.end field

.field private impUrlList:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noti_imp_urls"
    .end annotation
.end field

.field private isHeadsUp:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noti_is_headsup"
    .end annotation
.end field

.field private layoutStyleId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noti_layout_id"
    .end annotation
.end field

.field private messageId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tcm_msg_id"
    .end annotation
.end field

.field private msgTtl:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tcm_msg_ttl"
    .end annotation
.end field

.field private notiBtn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noti_btn"
    .end annotation
.end field

.field private notiBtnBgColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noti_btn_background_color"
    .end annotation
.end field

.field private notiBtnTxtColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noti_btn_word_color"
    .end annotation
.end field

.field private notiDes:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noti_desc"
    .end annotation
.end field

.field private notiExType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noti_ex_type"
    .end annotation
.end field

.field private notiExtensionBtn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noti_btn_ex"
    .end annotation
.end field

.field private notiIcon:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noti_icon"
    .end annotation
.end field

.field private notiImg:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noti_img"
    .end annotation
.end field

.field private notiImgEx:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noti_img_ex"
    .end annotation
.end field

.field private notiOpenContent:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noti_open_content"
    .end annotation
.end field

.field private notiOpenType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noti_open_type"
    .end annotation
.end field

.field private notiOptionalIcon:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noti_optional_icon"
    .end annotation
.end field

.field private notiSmallIcon:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noti_small_icon"
    .end annotation
.end field

.field private notiTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noti_title"
    .end annotation
.end field

.field private notiTitleEx:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noti_title_ex"
    .end annotation
.end field

.field private notiTxtEx:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noti_txt_ex"
    .end annotation
.end field

.field private notiType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noti_type"
    .end annotation
.end field

.field private packageName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tcm_msg_pkgname"
    .end annotation
.end field

.field private pkgId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tcm_msg_pkg"
    .end annotation
.end field

.field private priority:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tcm_msg_priority"
    .end annotation
.end field

.field private retraceMsgId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tcm_target_msg_id"
    .end annotation
.end field

.field private rpkg:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tcm_msg_rpkg"
    .end annotation
.end field

.field private sdkShow:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tcm_msg_sdkshow"
    .end annotation
.end field

.field private styleType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "style_type"
    .end annotation
.end field

.field private timeStamp:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tcm_msg_timestamp"
    .end annotation
.end field

.field private transData:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "trans_data"
    .end annotation
.end field

.field private type:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tcm_msg_type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 47

    .line 1
    move-object/from16 v0, p0

    const/16 v45, 0x1ff

    const/16 v46, 0x0

    const-wide/16 v1, 0x0

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

    const/16 v34, 0x0

    const/16 v35, 0x0

    const-wide/16 v36, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, -0x1

    invoke-direct/range {v0 .. v46}, Lcom/transsion/push/bean/TPushData;-><init>(JILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 3
    iput-wide v1, v0, Lcom/transsion/push/bean/TPushData;->messageId:J

    move v1, p3

    .line 4
    iput v1, v0, Lcom/transsion/push/bean/TPushData;->type:I

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcom/transsion/push/bean/TPushData;->styleType:Ljava/lang/String;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcom/transsion/push/bean/TPushData;->pkgId:Ljava/lang/String;

    move v1, p6

    .line 7
    iput v1, v0, Lcom/transsion/push/bean/TPushData;->priority:I

    move v1, p7

    .line 8
    iput v1, v0, Lcom/transsion/push/bean/TPushData;->sdkShow:I

    move v1, p8

    .line 9
    iput v1, v0, Lcom/transsion/push/bean/TPushData;->msgTtl:I

    move v1, p9

    .line 10
    iput v1, v0, Lcom/transsion/push/bean/TPushData;->ignoreExpire:I

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcom/transsion/push/bean/TPushData;->packageName:Ljava/lang/String;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcom/transsion/push/bean/TPushData;->rpkg:Ljava/lang/String;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcom/transsion/push/bean/TPushData;->timeStamp:Ljava/lang/String;

    move/from16 v1, p13

    .line 14
    iput v1, v0, Lcom/transsion/push/bean/TPushData;->notiType:I

    move/from16 v1, p14

    .line 15
    iput v1, v0, Lcom/transsion/push/bean/TPushData;->notiExType:I

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/transsion/push/bean/TPushData;->notiTitle:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcom/transsion/push/bean/TPushData;->notiDes:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Lcom/transsion/push/bean/TPushData;->notiImg:Ljava/lang/String;

    move-object/from16 v1, p18

    .line 19
    iput-object v1, v0, Lcom/transsion/push/bean/TPushData;->notiIcon:Ljava/lang/String;

    move-object/from16 v1, p19

    .line 20
    iput-object v1, v0, Lcom/transsion/push/bean/TPushData;->notiBtn:Ljava/lang/String;

    move-object/from16 v1, p20

    .line 21
    iput-object v1, v0, Lcom/transsion/push/bean/TPushData;->notiImgEx:Ljava/lang/String;

    move-object/from16 v1, p21

    .line 22
    iput-object v1, v0, Lcom/transsion/push/bean/TPushData;->notiTitleEx:Ljava/lang/String;

    move-object/from16 v1, p22

    .line 23
    iput-object v1, v0, Lcom/transsion/push/bean/TPushData;->notiTxtEx:Ljava/lang/String;

    move/from16 v1, p23

    .line 24
    iput v1, v0, Lcom/transsion/push/bean/TPushData;->notiOpenType:I

    move-object/from16 v1, p24

    .line 25
    iput-object v1, v0, Lcom/transsion/push/bean/TPushData;->notiOpenContent:Ljava/lang/String;

    move-object/from16 v1, p25

    .line 26
    iput-object v1, v0, Lcom/transsion/push/bean/TPushData;->transData:Ljava/lang/String;

    move-object/from16 v1, p26

    .line 27
    iput-object v1, v0, Lcom/transsion/push/bean/TPushData;->notiSmallIcon:Ljava/lang/String;

    move/from16 v1, p27

    .line 28
    iput v1, v0, Lcom/transsion/push/bean/TPushData;->displayPolicy:I

    move-object/from16 v1, p28

    .line 29
    iput-object v1, v0, Lcom/transsion/push/bean/TPushData;->appName:Ljava/lang/String;

    move/from16 v1, p29

    .line 30
    iput v1, v0, Lcom/transsion/push/bean/TPushData;->layoutStyleId:I

    move-object/from16 v1, p30

    .line 31
    iput-object v1, v0, Lcom/transsion/push/bean/TPushData;->channelId:Ljava/lang/String;

    move-object/from16 v1, p31

    .line 32
    iput-object v1, v0, Lcom/transsion/push/bean/TPushData;->channelName:Ljava/lang/String;

    move-object/from16 v1, p32

    .line 33
    iput-object v1, v0, Lcom/transsion/push/bean/TPushData;->iconColor:Ljava/lang/String;

    move-object/from16 v1, p33

    .line 34
    iput-object v1, v0, Lcom/transsion/push/bean/TPushData;->impUrlList:Ljava/lang/String;

    move-object/from16 v1, p34

    .line 35
    iput-object v1, v0, Lcom/transsion/push/bean/TPushData;->clickUrlList:Ljava/lang/String;

    move/from16 v1, p35

    .line 36
    iput v1, v0, Lcom/transsion/push/bean/TPushData;->isHeadsUp:I

    move-wide/from16 v1, p36

    .line 37
    iput-wide v1, v0, Lcom/transsion/push/bean/TPushData;->retraceMsgId:J

    move-object/from16 v1, p38

    .line 38
    iput-object v1, v0, Lcom/transsion/push/bean/TPushData;->groupId:Ljava/lang/String;

    move-object/from16 v1, p39

    .line 39
    iput-object v1, v0, Lcom/transsion/push/bean/TPushData;->groupMaxCount:Ljava/lang/String;

    move-object/from16 v1, p40

    .line 40
    iput-object v1, v0, Lcom/transsion/push/bean/TPushData;->notiExtensionBtn:Ljava/lang/String;

    move-object/from16 v1, p41

    .line 41
    iput-object v1, v0, Lcom/transsion/push/bean/TPushData;->notiOptionalIcon:Ljava/lang/String;

    move-object/from16 v1, p42

    .line 42
    iput-object v1, v0, Lcom/transsion/push/bean/TPushData;->notiBtnTxtColor:Ljava/lang/String;

    move-object/from16 v1, p43

    .line 43
    iput-object v1, v0, Lcom/transsion/push/bean/TPushData;->notiBtnBgColor:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(JILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 41

    move/from16 v0, p44

    move/from16 v1, p45

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_0

    const-wide/16 v5, 0x0

    goto :goto_0

    :cond_0
    move-wide/from16 v5, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    move/from16 v2, p3

    :goto_1
    and-int/lit8 v8, v0, 0x4

    if-eqz v8, :cond_2

    .line 44
    const-string v8, "101"

    goto :goto_2

    :cond_2
    move-object/from16 v8, p4

    :goto_2
    and-int/lit8 v9, v0, 0x8

    if-eqz v9, :cond_3

    const/4 v9, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v9, p5

    :goto_3
    and-int/lit8 v11, v0, 0x10

    if-eqz v11, :cond_4

    const/4 v11, 0x0

    goto :goto_4

    :cond_4
    move/from16 v11, p6

    :goto_4
    and-int/lit8 v12, v0, 0x20

    if-eqz v12, :cond_5

    const/4 v12, 0x0

    goto :goto_5

    :cond_5
    move/from16 v12, p7

    :goto_5
    and-int/lit8 v13, v0, 0x40

    if-eqz v13, :cond_6

    const/4 v13, 0x0

    goto :goto_6

    :cond_6
    move/from16 v13, p8

    :goto_6
    and-int/lit16 v14, v0, 0x80

    if-eqz v14, :cond_7

    const/4 v14, 0x0

    goto :goto_7

    :cond_7
    move/from16 v14, p9

    :goto_7
    and-int/lit16 v15, v0, 0x100

    if-eqz v15, :cond_8

    const/4 v15, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v15, p10

    :goto_8
    and-int/lit16 v3, v0, 0x200

    if-eqz v3, :cond_9

    const/4 v3, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v3, p11

    :goto_9
    and-int/lit16 v4, v0, 0x400

    if-eqz v4, :cond_a

    const/4 v4, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v4, p12

    :goto_a
    and-int/lit16 v7, v0, 0x800

    if-eqz v7, :cond_b

    const/4 v7, 0x1

    goto :goto_b

    :cond_b
    move/from16 v7, p13

    :goto_b
    and-int/lit16 v10, v0, 0x1000

    if-eqz v10, :cond_c

    const/4 v10, 0x0

    goto :goto_c

    :cond_c
    move/from16 v10, p14

    :goto_c
    move/from16 p46, v10

    and-int/lit16 v10, v0, 0x2000

    if-eqz v10, :cond_d

    const/4 v10, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v10, p15

    :goto_d
    move-object/from16 v18, v10

    and-int/lit16 v10, v0, 0x4000

    if-eqz v10, :cond_e

    const/4 v10, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v10, p16

    :goto_e
    const v19, 0x8000

    and-int v19, v0, v19

    if-eqz v19, :cond_f

    const/16 v19, 0x0

    goto :goto_f

    :cond_f
    move-object/from16 v19, p17

    :goto_f
    const/high16 v20, 0x10000

    and-int v20, v0, v20

    if-eqz v20, :cond_10

    const/16 v20, 0x0

    goto :goto_10

    :cond_10
    move-object/from16 v20, p18

    :goto_10
    const/high16 v21, 0x20000

    and-int v21, v0, v21

    if-eqz v21, :cond_11

    const/16 v21, 0x0

    goto :goto_11

    :cond_11
    move-object/from16 v21, p19

    :goto_11
    const/high16 v22, 0x40000

    and-int v22, v0, v22

    if-eqz v22, :cond_12

    const/16 v22, 0x0

    goto :goto_12

    :cond_12
    move-object/from16 v22, p20

    :goto_12
    const/high16 v23, 0x80000

    and-int v23, v0, v23

    if-eqz v23, :cond_13

    const/16 v23, 0x0

    goto :goto_13

    :cond_13
    move-object/from16 v23, p21

    :goto_13
    const/high16 v24, 0x100000

    and-int v24, v0, v24

    if-eqz v24, :cond_14

    const/16 v24, 0x0

    goto :goto_14

    :cond_14
    move-object/from16 v24, p22

    :goto_14
    const/high16 v25, 0x200000

    and-int v25, v0, v25

    if-eqz v25, :cond_15

    const/16 v25, 0x0

    goto :goto_15

    :cond_15
    move/from16 v25, p23

    :goto_15
    const/high16 v26, 0x400000

    and-int v26, v0, v26

    if-eqz v26, :cond_16

    const/16 v26, 0x0

    goto :goto_16

    :cond_16
    move-object/from16 v26, p24

    :goto_16
    const/high16 v27, 0x800000

    and-int v27, v0, v27

    if-eqz v27, :cond_17

    const/16 v27, 0x0

    goto :goto_17

    :cond_17
    move-object/from16 v27, p25

    :goto_17
    const/high16 v28, 0x1000000

    and-int v28, v0, v28

    if-eqz v28, :cond_18

    const/16 v28, 0x0

    goto :goto_18

    :cond_18
    move-object/from16 v28, p26

    :goto_18
    const/high16 v29, 0x2000000

    and-int v29, v0, v29

    if-eqz v29, :cond_19

    const/16 v29, 0x0

    goto :goto_19

    :cond_19
    move/from16 v29, p27

    :goto_19
    const/high16 v30, 0x4000000

    and-int v30, v0, v30

    if-eqz v30, :cond_1a

    const/16 v30, 0x0

    goto :goto_1a

    :cond_1a
    move-object/from16 v30, p28

    :goto_1a
    const/high16 v31, 0x8000000

    and-int v31, v0, v31

    if-eqz v31, :cond_1b

    const/16 v31, 0x0

    goto :goto_1b

    :cond_1b
    move/from16 v31, p29

    :goto_1b
    const/high16 v32, 0x10000000

    and-int v32, v0, v32

    if-eqz v32, :cond_1c

    const/16 v32, 0x0

    goto :goto_1c

    :cond_1c
    move-object/from16 v32, p30

    :goto_1c
    const/high16 v33, 0x20000000

    and-int v33, v0, v33

    if-eqz v33, :cond_1d

    const/16 v33, 0x0

    goto :goto_1d

    :cond_1d
    move-object/from16 v33, p31

    :goto_1d
    const/high16 v34, 0x40000000    # 2.0f

    and-int v34, v0, v34

    if-eqz v34, :cond_1e

    const/16 v34, 0x0

    goto :goto_1e

    :cond_1e
    move-object/from16 v34, p32

    :goto_1e
    const/high16 v35, -0x80000000

    and-int v0, v0, v35

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    goto :goto_1f

    :cond_1f
    move-object/from16 v0, p33

    :goto_1f
    and-int/lit8 v35, v1, 0x1

    if-eqz v35, :cond_20

    const/16 v35, 0x0

    goto :goto_20

    :cond_20
    move-object/from16 v35, p34

    :goto_20
    and-int/lit8 v36, v1, 0x2

    if-eqz v36, :cond_21

    const/16 v36, 0x0

    goto :goto_21

    :cond_21
    move/from16 v36, p35

    :goto_21
    and-int/lit8 v37, v1, 0x4

    if-eqz v37, :cond_22

    const-wide/16 v16, 0x0

    goto :goto_22

    :cond_22
    move-wide/from16 v16, p36

    :goto_22
    and-int/lit8 v37, v1, 0x8

    if-eqz v37, :cond_23

    const/16 v37, 0x0

    goto :goto_23

    :cond_23
    move-object/from16 v37, p38

    :goto_23
    and-int/lit8 v38, v1, 0x10

    if-eqz v38, :cond_24

    const/16 v38, 0x0

    goto :goto_24

    :cond_24
    move-object/from16 v38, p39

    :goto_24
    and-int/lit8 v39, v1, 0x20

    if-eqz v39, :cond_25

    const/16 v39, 0x0

    goto :goto_25

    :cond_25
    move-object/from16 v39, p40

    :goto_25
    and-int/lit8 v40, v1, 0x40

    if-eqz v40, :cond_26

    const/16 v40, 0x0

    goto :goto_26

    :cond_26
    move-object/from16 v40, p41

    :goto_26
    move-object/from16 p44, v0

    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    goto :goto_27

    :cond_27
    move-object/from16 v0, p42

    :goto_27
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_28

    const/4 v1, 0x0

    goto :goto_28

    :cond_28
    move-object/from16 v1, p43

    :goto_28
    move-object/from16 p1, p0

    move-wide/from16 p2, v5

    move/from16 p4, v2

    move-object/from16 p5, v8

    move-object/from16 p6, v9

    move/from16 p7, v11

    move/from16 p8, v12

    move/from16 p9, v13

    move/from16 p10, v14

    move-object/from16 p11, v15

    move-object/from16 p12, v3

    move-object/from16 p13, v4

    move/from16 p14, v7

    move/from16 p15, p46

    move-object/from16 p16, v18

    move-object/from16 p17, v10

    move-object/from16 p18, v19

    move-object/from16 p19, v20

    move-object/from16 p20, v21

    move-object/from16 p21, v22

    move-object/from16 p22, v23

    move-object/from16 p23, v24

    move/from16 p24, v25

    move-object/from16 p25, v26

    move-object/from16 p26, v27

    move-object/from16 p27, v28

    move/from16 p28, v29

    move-object/from16 p29, v30

    move/from16 p30, v31

    move-object/from16 p31, v32

    move-object/from16 p32, v33

    move-object/from16 p33, v34

    move-object/from16 p34, p44

    move-object/from16 p35, v35

    move/from16 p36, v36

    move-wide/from16 p37, v16

    move-object/from16 p39, v37

    move-object/from16 p40, v38

    move-object/from16 p41, v39

    move-object/from16 p42, v40

    move-object/from16 p43, v0

    move-object/from16 p44, v1

    .line 45
    invoke-direct/range {p1 .. p44}, Lcom/transsion/push/bean/TPushData;-><init>(JILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/push/bean/TPushData;JILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lcom/transsion/push/bean/TPushData;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    move/from16 v1, p44

    move/from16 v2, p45

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_0

    iget-wide v3, v0, Lcom/transsion/push/bean/TPushData;->messageId:J

    goto :goto_0

    :cond_0
    move-wide/from16 v3, p1

    :goto_0
    and-int/lit8 v5, v1, 0x2

    if-eqz v5, :cond_1

    iget v5, v0, Lcom/transsion/push/bean/TPushData;->type:I

    goto :goto_1

    :cond_1
    move/from16 v5, p3

    :goto_1
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/transsion/push/bean/TPushData;->styleType:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v6, p4

    :goto_2
    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_3

    iget-object v7, v0, Lcom/transsion/push/bean/TPushData;->pkgId:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v7, p5

    :goto_3
    and-int/lit8 v8, v1, 0x10

    if-eqz v8, :cond_4

    iget v8, v0, Lcom/transsion/push/bean/TPushData;->priority:I

    goto :goto_4

    :cond_4
    move/from16 v8, p6

    :goto_4
    and-int/lit8 v9, v1, 0x20

    if-eqz v9, :cond_5

    iget v9, v0, Lcom/transsion/push/bean/TPushData;->sdkShow:I

    goto :goto_5

    :cond_5
    move/from16 v9, p7

    :goto_5
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_6

    iget v10, v0, Lcom/transsion/push/bean/TPushData;->msgTtl:I

    goto :goto_6

    :cond_6
    move/from16 v10, p8

    :goto_6
    and-int/lit16 v11, v1, 0x80

    if-eqz v11, :cond_7

    iget v11, v0, Lcom/transsion/push/bean/TPushData;->ignoreExpire:I

    goto :goto_7

    :cond_7
    move/from16 v11, p9

    :goto_7
    and-int/lit16 v12, v1, 0x100

    if-eqz v12, :cond_8

    iget-object v12, v0, Lcom/transsion/push/bean/TPushData;->packageName:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v12, p10

    :goto_8
    and-int/lit16 v13, v1, 0x200

    if-eqz v13, :cond_9

    iget-object v13, v0, Lcom/transsion/push/bean/TPushData;->rpkg:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v13, p11

    :goto_9
    and-int/lit16 v14, v1, 0x400

    if-eqz v14, :cond_a

    iget-object v14, v0, Lcom/transsion/push/bean/TPushData;->timeStamp:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v14, p12

    :goto_a
    and-int/lit16 v15, v1, 0x800

    if-eqz v15, :cond_b

    iget v15, v0, Lcom/transsion/push/bean/TPushData;->notiType:I

    goto :goto_b

    :cond_b
    move/from16 v15, p13

    :goto_b
    move/from16 p13, v15

    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget v15, v0, Lcom/transsion/push/bean/TPushData;->notiExType:I

    goto :goto_c

    :cond_c
    move/from16 v15, p14

    :goto_c
    move/from16 p14, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/transsion/push/bean/TPushData;->notiTitle:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p15

    :goto_d
    move-object/from16 p15, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/transsion/push/bean/TPushData;->notiDes:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p16

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p16, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lcom/transsion/push/bean/TPushData;->notiImg:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p17

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p17, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lcom/transsion/push/bean/TPushData;->notiIcon:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p18

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p18, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Lcom/transsion/push/bean/TPushData;->notiBtn:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p19

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p19, v15

    if-eqz v16, :cond_12

    iget-object v15, v0, Lcom/transsion/push/bean/TPushData;->notiImgEx:Ljava/lang/String;

    goto :goto_12

    :cond_12
    move-object/from16 v15, p20

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move-object/from16 p20, v15

    if-eqz v16, :cond_13

    iget-object v15, v0, Lcom/transsion/push/bean/TPushData;->notiTitleEx:Ljava/lang/String;

    goto :goto_13

    :cond_13
    move-object/from16 v15, p21

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move-object/from16 p21, v15

    if-eqz v16, :cond_14

    iget-object v15, v0, Lcom/transsion/push/bean/TPushData;->notiTxtEx:Ljava/lang/String;

    goto :goto_14

    :cond_14
    move-object/from16 v15, p22

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move-object/from16 p22, v15

    if-eqz v16, :cond_15

    iget v15, v0, Lcom/transsion/push/bean/TPushData;->notiOpenType:I

    goto :goto_15

    :cond_15
    move/from16 v15, p23

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, v1, v16

    move/from16 p23, v15

    if-eqz v16, :cond_16

    iget-object v15, v0, Lcom/transsion/push/bean/TPushData;->notiOpenContent:Ljava/lang/String;

    goto :goto_16

    :cond_16
    move-object/from16 v15, p24

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, v1, v16

    move-object/from16 p24, v15

    if-eqz v16, :cond_17

    iget-object v15, v0, Lcom/transsion/push/bean/TPushData;->transData:Ljava/lang/String;

    goto :goto_17

    :cond_17
    move-object/from16 v15, p25

    :goto_17
    const/high16 v16, 0x1000000

    and-int v16, v1, v16

    move-object/from16 p25, v15

    if-eqz v16, :cond_18

    iget-object v15, v0, Lcom/transsion/push/bean/TPushData;->notiSmallIcon:Ljava/lang/String;

    goto :goto_18

    :cond_18
    move-object/from16 v15, p26

    :goto_18
    const/high16 v16, 0x2000000

    and-int v16, v1, v16

    move-object/from16 p26, v15

    if-eqz v16, :cond_19

    iget v15, v0, Lcom/transsion/push/bean/TPushData;->displayPolicy:I

    goto :goto_19

    :cond_19
    move/from16 v15, p27

    :goto_19
    const/high16 v16, 0x4000000

    and-int v16, v1, v16

    move/from16 p27, v15

    if-eqz v16, :cond_1a

    iget-object v15, v0, Lcom/transsion/push/bean/TPushData;->appName:Ljava/lang/String;

    goto :goto_1a

    :cond_1a
    move-object/from16 v15, p28

    :goto_1a
    const/high16 v16, 0x8000000

    and-int v16, v1, v16

    move-object/from16 p28, v15

    if-eqz v16, :cond_1b

    iget v15, v0, Lcom/transsion/push/bean/TPushData;->layoutStyleId:I

    goto :goto_1b

    :cond_1b
    move/from16 v15, p29

    :goto_1b
    const/high16 v16, 0x10000000

    and-int v16, v1, v16

    move/from16 p29, v15

    if-eqz v16, :cond_1c

    iget-object v15, v0, Lcom/transsion/push/bean/TPushData;->channelId:Ljava/lang/String;

    goto :goto_1c

    :cond_1c
    move-object/from16 v15, p30

    :goto_1c
    const/high16 v16, 0x20000000

    and-int v16, v1, v16

    move-object/from16 p30, v15

    if-eqz v16, :cond_1d

    iget-object v15, v0, Lcom/transsion/push/bean/TPushData;->channelName:Ljava/lang/String;

    goto :goto_1d

    :cond_1d
    move-object/from16 v15, p31

    :goto_1d
    const/high16 v16, 0x40000000    # 2.0f

    and-int v16, v1, v16

    move-object/from16 p31, v15

    if-eqz v16, :cond_1e

    iget-object v15, v0, Lcom/transsion/push/bean/TPushData;->iconColor:Ljava/lang/String;

    goto :goto_1e

    :cond_1e
    move-object/from16 v15, p32

    :goto_1e
    const/high16 v16, -0x80000000

    and-int v1, v1, v16

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lcom/transsion/push/bean/TPushData;->impUrlList:Ljava/lang/String;

    goto :goto_1f

    :cond_1f
    move-object/from16 v1, p33

    :goto_1f
    and-int/lit8 v16, v2, 0x1

    move-object/from16 p33, v1

    if-eqz v16, :cond_20

    iget-object v1, v0, Lcom/transsion/push/bean/TPushData;->clickUrlList:Ljava/lang/String;

    goto :goto_20

    :cond_20
    move-object/from16 v1, p34

    :goto_20
    and-int/lit8 v16, v2, 0x2

    move-object/from16 p34, v1

    if-eqz v16, :cond_21

    iget v1, v0, Lcom/transsion/push/bean/TPushData;->isHeadsUp:I

    goto :goto_21

    :cond_21
    move/from16 v1, p35

    :goto_21
    and-int/lit8 v16, v2, 0x4

    move-object/from16 p12, v14

    move-object/from16 p32, v15

    if-eqz v16, :cond_22

    iget-wide v14, v0, Lcom/transsion/push/bean/TPushData;->retraceMsgId:J

    goto :goto_22

    :cond_22
    move-wide/from16 v14, p36

    :goto_22
    and-int/lit8 v16, v2, 0x8

    move-wide/from16 p36, v14

    if-eqz v16, :cond_23

    iget-object v14, v0, Lcom/transsion/push/bean/TPushData;->groupId:Ljava/lang/String;

    goto :goto_23

    :cond_23
    move-object/from16 v14, p38

    :goto_23
    and-int/lit8 v15, v2, 0x10

    if-eqz v15, :cond_24

    iget-object v15, v0, Lcom/transsion/push/bean/TPushData;->groupMaxCount:Ljava/lang/String;

    goto :goto_24

    :cond_24
    move-object/from16 v15, p39

    :goto_24
    and-int/lit8 v16, v2, 0x20

    move-object/from16 p39, v15

    if-eqz v16, :cond_25

    iget-object v15, v0, Lcom/transsion/push/bean/TPushData;->notiExtensionBtn:Ljava/lang/String;

    goto :goto_25

    :cond_25
    move-object/from16 v15, p40

    :goto_25
    and-int/lit8 v16, v2, 0x40

    move-object/from16 p40, v15

    if-eqz v16, :cond_26

    iget-object v15, v0, Lcom/transsion/push/bean/TPushData;->notiOptionalIcon:Ljava/lang/String;

    goto :goto_26

    :cond_26
    move-object/from16 v15, p41

    :goto_26
    move-object/from16 p41, v15

    and-int/lit16 v15, v2, 0x80

    if-eqz v15, :cond_27

    iget-object v15, v0, Lcom/transsion/push/bean/TPushData;->notiBtnTxtColor:Ljava/lang/String;

    goto :goto_27

    :cond_27
    move-object/from16 v15, p42

    :goto_27
    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_28

    iget-object v2, v0, Lcom/transsion/push/bean/TPushData;->notiBtnBgColor:Ljava/lang/String;

    goto :goto_28

    :cond_28
    move-object/from16 v2, p43

    :goto_28
    move-wide/from16 p1, v3

    move/from16 p3, v5

    move-object/from16 p4, v6

    move-object/from16 p5, v7

    move/from16 p6, v8

    move/from16 p7, v9

    move/from16 p8, v10

    move/from16 p9, v11

    move-object/from16 p10, v12

    move-object/from16 p11, v13

    move/from16 p35, v1

    move-object/from16 p38, v14

    move-object/from16 p42, v15

    move-object/from16 p43, v2

    invoke-virtual/range {p0 .. p43}, Lcom/transsion/push/bean/TPushData;->copy(JILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/push/bean/TPushData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/push/bean/TPushData;->messageId:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->rpkg:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->timeStamp:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component12()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/push/bean/TPushData;->notiType:I

    .line 2
    .line 3
    return v0
.end method

.method public final component13()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/push/bean/TPushData;->notiExType:I

    .line 2
    .line 3
    return v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->notiTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->notiDes:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component16()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->notiImg:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component17()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->notiIcon:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component18()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->notiBtn:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component19()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->notiImgEx:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/push/bean/TPushData;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public final component20()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->notiTitleEx:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component21()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->notiTxtEx:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component22()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/push/bean/TPushData;->notiOpenType:I

    .line 2
    .line 3
    return v0
.end method

.method public final component23()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->notiOpenContent:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component24()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->transData:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component25()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->notiSmallIcon:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component26()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/push/bean/TPushData;->displayPolicy:I

    .line 2
    .line 3
    return v0
.end method

.method public final component27()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->appName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component28()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/push/bean/TPushData;->layoutStyleId:I

    .line 2
    .line 3
    return v0
.end method

.method public final component29()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->channelId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->styleType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component30()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->channelName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component31()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->iconColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component32()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->impUrlList:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component33()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->clickUrlList:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component34()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/push/bean/TPushData;->isHeadsUp:I

    .line 2
    .line 3
    return v0
.end method

.method public final component35()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/push/bean/TPushData;->retraceMsgId:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component36()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->groupId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component37()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->groupMaxCount:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component38()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->notiExtensionBtn:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component39()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->notiOptionalIcon:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->pkgId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component40()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->notiBtnTxtColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component41()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->notiBtnBgColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/push/bean/TPushData;->priority:I

    .line 2
    .line 3
    return v0
.end method

.method public final component6()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/push/bean/TPushData;->sdkShow:I

    .line 2
    .line 3
    return v0
.end method

.method public final component7()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/push/bean/TPushData;->msgTtl:I

    .line 2
    .line 3
    return v0
.end method

.method public final component8()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/push/bean/TPushData;->ignoreExpire:I

    .line 2
    .line 3
    return v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(JILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/push/bean/TPushData;
    .locals 45

    .line 1
    move-wide/from16 v1, p1

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move/from16 v27, p27

    move-object/from16 v28, p28

    move/from16 v29, p29

    move-object/from16 v30, p30

    move-object/from16 v31, p31

    move-object/from16 v32, p32

    move-object/from16 v33, p33

    move-object/from16 v34, p34

    move/from16 v35, p35

    move-wide/from16 v36, p36

    move-object/from16 v38, p38

    move-object/from16 v39, p39

    move-object/from16 v40, p40

    move-object/from16 v41, p41

    move-object/from16 v42, p42

    move-object/from16 v43, p43

    new-instance v44, Lcom/transsion/push/bean/TPushData;

    move-object/from16 v0, v44

    invoke-direct/range {v0 .. v43}, Lcom/transsion/push/bean/TPushData;-><init>(JILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v44
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
    instance-of v1, p1, Lcom/transsion/push/bean/TPushData;

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
    check-cast p1, Lcom/transsion/push/bean/TPushData;

    .line 12
    .line 13
    iget-wide v3, p0, Lcom/transsion/push/bean/TPushData;->messageId:J

    .line 14
    .line 15
    iget-wide v5, p1, Lcom/transsion/push/bean/TPushData;->messageId:J

    .line 16
    .line 17
    cmp-long v1, v3, v5

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    return v2

    .line 22
    :cond_2
    iget v1, p0, Lcom/transsion/push/bean/TPushData;->type:I

    .line 23
    .line 24
    iget v3, p1, Lcom/transsion/push/bean/TPushData;->type:I

    .line 25
    .line 26
    if-eq v1, v3, :cond_3

    .line 27
    .line 28
    return v2

    .line 29
    :cond_3
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->styleType:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v3, p1, Lcom/transsion/push/bean/TPushData;->styleType:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_4

    .line 38
    .line 39
    return v2

    .line 40
    :cond_4
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->pkgId:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v3, p1, Lcom/transsion/push/bean/TPushData;->pkgId:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_5

    .line 49
    .line 50
    return v2

    .line 51
    :cond_5
    iget v1, p0, Lcom/transsion/push/bean/TPushData;->priority:I

    .line 52
    .line 53
    iget v3, p1, Lcom/transsion/push/bean/TPushData;->priority:I

    .line 54
    .line 55
    if-eq v1, v3, :cond_6

    .line 56
    .line 57
    return v2

    .line 58
    :cond_6
    iget v1, p0, Lcom/transsion/push/bean/TPushData;->sdkShow:I

    .line 59
    .line 60
    iget v3, p1, Lcom/transsion/push/bean/TPushData;->sdkShow:I

    .line 61
    .line 62
    if-eq v1, v3, :cond_7

    .line 63
    .line 64
    return v2

    .line 65
    :cond_7
    iget v1, p0, Lcom/transsion/push/bean/TPushData;->msgTtl:I

    .line 66
    .line 67
    iget v3, p1, Lcom/transsion/push/bean/TPushData;->msgTtl:I

    .line 68
    .line 69
    if-eq v1, v3, :cond_8

    .line 70
    .line 71
    return v2

    .line 72
    :cond_8
    iget v1, p0, Lcom/transsion/push/bean/TPushData;->ignoreExpire:I

    .line 73
    .line 74
    iget v3, p1, Lcom/transsion/push/bean/TPushData;->ignoreExpire:I

    .line 75
    .line 76
    if-eq v1, v3, :cond_9

    .line 77
    .line 78
    return v2

    .line 79
    :cond_9
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->packageName:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v3, p1, Lcom/transsion/push/bean/TPushData;->packageName:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_a

    .line 88
    .line 89
    return v2

    .line 90
    :cond_a
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->rpkg:Ljava/lang/String;

    .line 91
    .line 92
    iget-object v3, p1, Lcom/transsion/push/bean/TPushData;->rpkg:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_b

    .line 99
    .line 100
    return v2

    .line 101
    :cond_b
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->timeStamp:Ljava/lang/String;

    .line 102
    .line 103
    iget-object v3, p1, Lcom/transsion/push/bean/TPushData;->timeStamp:Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_c

    .line 110
    .line 111
    return v2

    .line 112
    :cond_c
    iget v1, p0, Lcom/transsion/push/bean/TPushData;->notiType:I

    .line 113
    .line 114
    iget v3, p1, Lcom/transsion/push/bean/TPushData;->notiType:I

    .line 115
    .line 116
    if-eq v1, v3, :cond_d

    .line 117
    .line 118
    return v2

    .line 119
    :cond_d
    iget v1, p0, Lcom/transsion/push/bean/TPushData;->notiExType:I

    .line 120
    .line 121
    iget v3, p1, Lcom/transsion/push/bean/TPushData;->notiExType:I

    .line 122
    .line 123
    if-eq v1, v3, :cond_e

    .line 124
    .line 125
    return v2

    .line 126
    :cond_e
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->notiTitle:Ljava/lang/String;

    .line 127
    .line 128
    iget-object v3, p1, Lcom/transsion/push/bean/TPushData;->notiTitle:Ljava/lang/String;

    .line 129
    .line 130
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-nez v1, :cond_f

    .line 135
    .line 136
    return v2

    .line 137
    :cond_f
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->notiDes:Ljava/lang/String;

    .line 138
    .line 139
    iget-object v3, p1, Lcom/transsion/push/bean/TPushData;->notiDes:Ljava/lang/String;

    .line 140
    .line 141
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-nez v1, :cond_10

    .line 146
    .line 147
    return v2

    .line 148
    :cond_10
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->notiImg:Ljava/lang/String;

    .line 149
    .line 150
    iget-object v3, p1, Lcom/transsion/push/bean/TPushData;->notiImg:Ljava/lang/String;

    .line 151
    .line 152
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-nez v1, :cond_11

    .line 157
    .line 158
    return v2

    .line 159
    :cond_11
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->notiIcon:Ljava/lang/String;

    .line 160
    .line 161
    iget-object v3, p1, Lcom/transsion/push/bean/TPushData;->notiIcon:Ljava/lang/String;

    .line 162
    .line 163
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-nez v1, :cond_12

    .line 168
    .line 169
    return v2

    .line 170
    :cond_12
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->notiBtn:Ljava/lang/String;

    .line 171
    .line 172
    iget-object v3, p1, Lcom/transsion/push/bean/TPushData;->notiBtn:Ljava/lang/String;

    .line 173
    .line 174
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-nez v1, :cond_13

    .line 179
    .line 180
    return v2

    .line 181
    :cond_13
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->notiImgEx:Ljava/lang/String;

    .line 182
    .line 183
    iget-object v3, p1, Lcom/transsion/push/bean/TPushData;->notiImgEx:Ljava/lang/String;

    .line 184
    .line 185
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    if-nez v1, :cond_14

    .line 190
    .line 191
    return v2

    .line 192
    :cond_14
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->notiTitleEx:Ljava/lang/String;

    .line 193
    .line 194
    iget-object v3, p1, Lcom/transsion/push/bean/TPushData;->notiTitleEx:Ljava/lang/String;

    .line 195
    .line 196
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    if-nez v1, :cond_15

    .line 201
    .line 202
    return v2

    .line 203
    :cond_15
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->notiTxtEx:Ljava/lang/String;

    .line 204
    .line 205
    iget-object v3, p1, Lcom/transsion/push/bean/TPushData;->notiTxtEx:Ljava/lang/String;

    .line 206
    .line 207
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    if-nez v1, :cond_16

    .line 212
    .line 213
    return v2

    .line 214
    :cond_16
    iget v1, p0, Lcom/transsion/push/bean/TPushData;->notiOpenType:I

    .line 215
    .line 216
    iget v3, p1, Lcom/transsion/push/bean/TPushData;->notiOpenType:I

    .line 217
    .line 218
    if-eq v1, v3, :cond_17

    .line 219
    .line 220
    return v2

    .line 221
    :cond_17
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->notiOpenContent:Ljava/lang/String;

    .line 222
    .line 223
    iget-object v3, p1, Lcom/transsion/push/bean/TPushData;->notiOpenContent:Ljava/lang/String;

    .line 224
    .line 225
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    if-nez v1, :cond_18

    .line 230
    .line 231
    return v2

    .line 232
    :cond_18
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->transData:Ljava/lang/String;

    .line 233
    .line 234
    iget-object v3, p1, Lcom/transsion/push/bean/TPushData;->transData:Ljava/lang/String;

    .line 235
    .line 236
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    if-nez v1, :cond_19

    .line 241
    .line 242
    return v2

    .line 243
    :cond_19
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->notiSmallIcon:Ljava/lang/String;

    .line 244
    .line 245
    iget-object v3, p1, Lcom/transsion/push/bean/TPushData;->notiSmallIcon:Ljava/lang/String;

    .line 246
    .line 247
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    if-nez v1, :cond_1a

    .line 252
    .line 253
    return v2

    .line 254
    :cond_1a
    iget v1, p0, Lcom/transsion/push/bean/TPushData;->displayPolicy:I

    .line 255
    .line 256
    iget v3, p1, Lcom/transsion/push/bean/TPushData;->displayPolicy:I

    .line 257
    .line 258
    if-eq v1, v3, :cond_1b

    .line 259
    .line 260
    return v2

    .line 261
    :cond_1b
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->appName:Ljava/lang/String;

    .line 262
    .line 263
    iget-object v3, p1, Lcom/transsion/push/bean/TPushData;->appName:Ljava/lang/String;

    .line 264
    .line 265
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    if-nez v1, :cond_1c

    .line 270
    .line 271
    return v2

    .line 272
    :cond_1c
    iget v1, p0, Lcom/transsion/push/bean/TPushData;->layoutStyleId:I

    .line 273
    .line 274
    iget v3, p1, Lcom/transsion/push/bean/TPushData;->layoutStyleId:I

    .line 275
    .line 276
    if-eq v1, v3, :cond_1d

    .line 277
    .line 278
    return v2

    .line 279
    :cond_1d
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->channelId:Ljava/lang/String;

    .line 280
    .line 281
    iget-object v3, p1, Lcom/transsion/push/bean/TPushData;->channelId:Ljava/lang/String;

    .line 282
    .line 283
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    if-nez v1, :cond_1e

    .line 288
    .line 289
    return v2

    .line 290
    :cond_1e
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->channelName:Ljava/lang/String;

    .line 291
    .line 292
    iget-object v3, p1, Lcom/transsion/push/bean/TPushData;->channelName:Ljava/lang/String;

    .line 293
    .line 294
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v1

    .line 298
    if-nez v1, :cond_1f

    .line 299
    .line 300
    return v2

    .line 301
    :cond_1f
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->iconColor:Ljava/lang/String;

    .line 302
    .line 303
    iget-object v3, p1, Lcom/transsion/push/bean/TPushData;->iconColor:Ljava/lang/String;

    .line 304
    .line 305
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    if-nez v1, :cond_20

    .line 310
    .line 311
    return v2

    .line 312
    :cond_20
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->impUrlList:Ljava/lang/String;

    .line 313
    .line 314
    iget-object v3, p1, Lcom/transsion/push/bean/TPushData;->impUrlList:Ljava/lang/String;

    .line 315
    .line 316
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    if-nez v1, :cond_21

    .line 321
    .line 322
    return v2

    .line 323
    :cond_21
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->clickUrlList:Ljava/lang/String;

    .line 324
    .line 325
    iget-object v3, p1, Lcom/transsion/push/bean/TPushData;->clickUrlList:Ljava/lang/String;

    .line 326
    .line 327
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    move-result v1

    .line 331
    if-nez v1, :cond_22

    .line 332
    .line 333
    return v2

    .line 334
    :cond_22
    iget v1, p0, Lcom/transsion/push/bean/TPushData;->isHeadsUp:I

    .line 335
    .line 336
    iget v3, p1, Lcom/transsion/push/bean/TPushData;->isHeadsUp:I

    .line 337
    .line 338
    if-eq v1, v3, :cond_23

    .line 339
    .line 340
    return v2

    .line 341
    :cond_23
    iget-wide v3, p0, Lcom/transsion/push/bean/TPushData;->retraceMsgId:J

    .line 342
    .line 343
    iget-wide v5, p1, Lcom/transsion/push/bean/TPushData;->retraceMsgId:J

    .line 344
    .line 345
    cmp-long v1, v3, v5

    .line 346
    .line 347
    if-eqz v1, :cond_24

    .line 348
    .line 349
    return v2

    .line 350
    :cond_24
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->groupId:Ljava/lang/String;

    .line 351
    .line 352
    iget-object v3, p1, Lcom/transsion/push/bean/TPushData;->groupId:Ljava/lang/String;

    .line 353
    .line 354
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result v1

    .line 358
    if-nez v1, :cond_25

    .line 359
    .line 360
    return v2

    .line 361
    :cond_25
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->groupMaxCount:Ljava/lang/String;

    .line 362
    .line 363
    iget-object v3, p1, Lcom/transsion/push/bean/TPushData;->groupMaxCount:Ljava/lang/String;

    .line 364
    .line 365
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 366
    .line 367
    .line 368
    move-result v1

    .line 369
    if-nez v1, :cond_26

    .line 370
    .line 371
    return v2

    .line 372
    :cond_26
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->notiExtensionBtn:Ljava/lang/String;

    .line 373
    .line 374
    iget-object v3, p1, Lcom/transsion/push/bean/TPushData;->notiExtensionBtn:Ljava/lang/String;

    .line 375
    .line 376
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    move-result v1

    .line 380
    if-nez v1, :cond_27

    .line 381
    .line 382
    return v2

    .line 383
    :cond_27
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->notiOptionalIcon:Ljava/lang/String;

    .line 384
    .line 385
    iget-object v3, p1, Lcom/transsion/push/bean/TPushData;->notiOptionalIcon:Ljava/lang/String;

    .line 386
    .line 387
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    move-result v1

    .line 391
    if-nez v1, :cond_28

    .line 392
    .line 393
    return v2

    .line 394
    :cond_28
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->notiBtnTxtColor:Ljava/lang/String;

    .line 395
    .line 396
    iget-object v3, p1, Lcom/transsion/push/bean/TPushData;->notiBtnTxtColor:Ljava/lang/String;

    .line 397
    .line 398
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 399
    .line 400
    .line 401
    move-result v1

    .line 402
    if-nez v1, :cond_29

    .line 403
    .line 404
    return v2

    .line 405
    :cond_29
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->notiBtnBgColor:Ljava/lang/String;

    .line 406
    .line 407
    iget-object p1, p1, Lcom/transsion/push/bean/TPushData;->notiBtnBgColor:Ljava/lang/String;

    .line 408
    .line 409
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 410
    .line 411
    .line 412
    move-result p1

    .line 413
    if-nez p1, :cond_2a

    .line 414
    .line 415
    return v2

    .line 416
    :cond_2a
    return v0
.end method

.method public final getAppName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->appName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getChannelId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->channelId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getChannelName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->channelName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getClickUrlList()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->clickUrlList:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDisplayPolicy()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/push/bean/TPushData;->displayPolicy:I

    .line 2
    .line 3
    return v0
.end method

.method public final getGroupId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->groupId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getGroupMaxCount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->groupMaxCount:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getIconColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->iconColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getIgnoreExpire()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/push/bean/TPushData;->ignoreExpire:I

    .line 2
    .line 3
    return v0
.end method

.method public final getImpUrlList()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->impUrlList:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLayoutStyleId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/push/bean/TPushData;->layoutStyleId:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMessageId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/push/bean/TPushData;->messageId:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getMsgTtl()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/push/bean/TPushData;->msgTtl:I

    .line 2
    .line 3
    return v0
.end method

.method public final getNotiBtn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->notiBtn:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNotiBtnBgColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->notiBtnBgColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNotiBtnTxtColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->notiBtnTxtColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNotiDes()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->notiDes:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNotiExType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/push/bean/TPushData;->notiExType:I

    .line 2
    .line 3
    return v0
.end method

.method public final getNotiExtensionBtn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->notiExtensionBtn:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNotiIcon()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->notiIcon:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNotiImg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->notiImg:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNotiImgEx()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->notiImgEx:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNotiOpenContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->notiOpenContent:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNotiOpenType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/push/bean/TPushData;->notiOpenType:I

    .line 2
    .line 3
    return v0
.end method

.method public final getNotiOptionalIcon()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->notiOptionalIcon:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNotiSmallIcon()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->notiSmallIcon:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNotiTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->notiTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNotiTitleEx()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->notiTitleEx:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNotiTxtEx()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->notiTxtEx:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNotiType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/push/bean/TPushData;->notiType:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPkgId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->pkgId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPriority()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/push/bean/TPushData;->priority:I

    .line 2
    .line 3
    return v0
.end method

.method public final getRetraceMsgId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/push/bean/TPushData;->retraceMsgId:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getRpkg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->rpkg:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSdkShow()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/push/bean/TPushData;->sdkShow:I

    .line 2
    .line 3
    return v0
.end method

.method public final getStyleType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->styleType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTimeStamp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->timeStamp:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTransData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->transData:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/push/bean/TPushData;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/transsion/push/bean/TPushData;->messageId:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroidx/collection/s;->a(J)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget v1, p0, Lcom/transsion/push/bean/TPushData;->type:I

    .line 10
    .line 11
    add-int/2addr v0, v1

    .line 12
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->styleType:Ljava/lang/String;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    move v1, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    :goto_0
    add-int/2addr v0, v1

    .line 26
    mul-int/lit8 v0, v0, 0x1f

    .line 27
    .line 28
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->pkgId:Ljava/lang/String;

    .line 29
    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    move v1, v2

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    :goto_1
    add-int/2addr v0, v1

    .line 39
    mul-int/lit8 v0, v0, 0x1f

    .line 40
    .line 41
    iget v1, p0, Lcom/transsion/push/bean/TPushData;->priority:I

    .line 42
    .line 43
    add-int/2addr v0, v1

    .line 44
    mul-int/lit8 v0, v0, 0x1f

    .line 45
    .line 46
    iget v1, p0, Lcom/transsion/push/bean/TPushData;->sdkShow:I

    .line 47
    .line 48
    add-int/2addr v0, v1

    .line 49
    mul-int/lit8 v0, v0, 0x1f

    .line 50
    .line 51
    iget v1, p0, Lcom/transsion/push/bean/TPushData;->msgTtl:I

    .line 52
    .line 53
    add-int/2addr v0, v1

    .line 54
    mul-int/lit8 v0, v0, 0x1f

    .line 55
    .line 56
    iget v1, p0, Lcom/transsion/push/bean/TPushData;->ignoreExpire:I

    .line 57
    .line 58
    add-int/2addr v0, v1

    .line 59
    mul-int/lit8 v0, v0, 0x1f

    .line 60
    .line 61
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->packageName:Ljava/lang/String;

    .line 62
    .line 63
    if-nez v1, :cond_2

    .line 64
    .line 65
    move v1, v2

    .line 66
    goto :goto_2

    .line 67
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    :goto_2
    add-int/2addr v0, v1

    .line 72
    mul-int/lit8 v0, v0, 0x1f

    .line 73
    .line 74
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->rpkg:Ljava/lang/String;

    .line 75
    .line 76
    if-nez v1, :cond_3

    .line 77
    .line 78
    move v1, v2

    .line 79
    goto :goto_3

    .line 80
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    :goto_3
    add-int/2addr v0, v1

    .line 85
    mul-int/lit8 v0, v0, 0x1f

    .line 86
    .line 87
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->timeStamp:Ljava/lang/String;

    .line 88
    .line 89
    if-nez v1, :cond_4

    .line 90
    .line 91
    move v1, v2

    .line 92
    goto :goto_4

    .line 93
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    :goto_4
    add-int/2addr v0, v1

    .line 98
    mul-int/lit8 v0, v0, 0x1f

    .line 99
    .line 100
    iget v1, p0, Lcom/transsion/push/bean/TPushData;->notiType:I

    .line 101
    .line 102
    add-int/2addr v0, v1

    .line 103
    mul-int/lit8 v0, v0, 0x1f

    .line 104
    .line 105
    iget v1, p0, Lcom/transsion/push/bean/TPushData;->notiExType:I

    .line 106
    .line 107
    add-int/2addr v0, v1

    .line 108
    mul-int/lit8 v0, v0, 0x1f

    .line 109
    .line 110
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->notiTitle:Ljava/lang/String;

    .line 111
    .line 112
    if-nez v1, :cond_5

    .line 113
    .line 114
    move v1, v2

    .line 115
    goto :goto_5

    .line 116
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    :goto_5
    add-int/2addr v0, v1

    .line 121
    mul-int/lit8 v0, v0, 0x1f

    .line 122
    .line 123
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->notiDes:Ljava/lang/String;

    .line 124
    .line 125
    if-nez v1, :cond_6

    .line 126
    .line 127
    move v1, v2

    .line 128
    goto :goto_6

    .line 129
    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    :goto_6
    add-int/2addr v0, v1

    .line 134
    mul-int/lit8 v0, v0, 0x1f

    .line 135
    .line 136
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->notiImg:Ljava/lang/String;

    .line 137
    .line 138
    if-nez v1, :cond_7

    .line 139
    .line 140
    move v1, v2

    .line 141
    goto :goto_7

    .line 142
    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    :goto_7
    add-int/2addr v0, v1

    .line 147
    mul-int/lit8 v0, v0, 0x1f

    .line 148
    .line 149
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->notiIcon:Ljava/lang/String;

    .line 150
    .line 151
    if-nez v1, :cond_8

    .line 152
    .line 153
    move v1, v2

    .line 154
    goto :goto_8

    .line 155
    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    :goto_8
    add-int/2addr v0, v1

    .line 160
    mul-int/lit8 v0, v0, 0x1f

    .line 161
    .line 162
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->notiBtn:Ljava/lang/String;

    .line 163
    .line 164
    if-nez v1, :cond_9

    .line 165
    .line 166
    move v1, v2

    .line 167
    goto :goto_9

    .line 168
    :cond_9
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    :goto_9
    add-int/2addr v0, v1

    .line 173
    mul-int/lit8 v0, v0, 0x1f

    .line 174
    .line 175
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->notiImgEx:Ljava/lang/String;

    .line 176
    .line 177
    if-nez v1, :cond_a

    .line 178
    .line 179
    move v1, v2

    .line 180
    goto :goto_a

    .line 181
    :cond_a
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    :goto_a
    add-int/2addr v0, v1

    .line 186
    mul-int/lit8 v0, v0, 0x1f

    .line 187
    .line 188
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->notiTitleEx:Ljava/lang/String;

    .line 189
    .line 190
    if-nez v1, :cond_b

    .line 191
    .line 192
    move v1, v2

    .line 193
    goto :goto_b

    .line 194
    :cond_b
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    :goto_b
    add-int/2addr v0, v1

    .line 199
    mul-int/lit8 v0, v0, 0x1f

    .line 200
    .line 201
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->notiTxtEx:Ljava/lang/String;

    .line 202
    .line 203
    if-nez v1, :cond_c

    .line 204
    .line 205
    move v1, v2

    .line 206
    goto :goto_c

    .line 207
    :cond_c
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    :goto_c
    add-int/2addr v0, v1

    .line 212
    mul-int/lit8 v0, v0, 0x1f

    .line 213
    .line 214
    iget v1, p0, Lcom/transsion/push/bean/TPushData;->notiOpenType:I

    .line 215
    .line 216
    add-int/2addr v0, v1

    .line 217
    mul-int/lit8 v0, v0, 0x1f

    .line 218
    .line 219
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->notiOpenContent:Ljava/lang/String;

    .line 220
    .line 221
    if-nez v1, :cond_d

    .line 222
    .line 223
    move v1, v2

    .line 224
    goto :goto_d

    .line 225
    :cond_d
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    :goto_d
    add-int/2addr v0, v1

    .line 230
    mul-int/lit8 v0, v0, 0x1f

    .line 231
    .line 232
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->transData:Ljava/lang/String;

    .line 233
    .line 234
    if-nez v1, :cond_e

    .line 235
    .line 236
    move v1, v2

    .line 237
    goto :goto_e

    .line 238
    :cond_e
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    :goto_e
    add-int/2addr v0, v1

    .line 243
    mul-int/lit8 v0, v0, 0x1f

    .line 244
    .line 245
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->notiSmallIcon:Ljava/lang/String;

    .line 246
    .line 247
    if-nez v1, :cond_f

    .line 248
    .line 249
    move v1, v2

    .line 250
    goto :goto_f

    .line 251
    :cond_f
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    :goto_f
    add-int/2addr v0, v1

    .line 256
    mul-int/lit8 v0, v0, 0x1f

    .line 257
    .line 258
    iget v1, p0, Lcom/transsion/push/bean/TPushData;->displayPolicy:I

    .line 259
    .line 260
    add-int/2addr v0, v1

    .line 261
    mul-int/lit8 v0, v0, 0x1f

    .line 262
    .line 263
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->appName:Ljava/lang/String;

    .line 264
    .line 265
    if-nez v1, :cond_10

    .line 266
    .line 267
    move v1, v2

    .line 268
    goto :goto_10

    .line 269
    :cond_10
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    :goto_10
    add-int/2addr v0, v1

    .line 274
    mul-int/lit8 v0, v0, 0x1f

    .line 275
    .line 276
    iget v1, p0, Lcom/transsion/push/bean/TPushData;->layoutStyleId:I

    .line 277
    .line 278
    add-int/2addr v0, v1

    .line 279
    mul-int/lit8 v0, v0, 0x1f

    .line 280
    .line 281
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->channelId:Ljava/lang/String;

    .line 282
    .line 283
    if-nez v1, :cond_11

    .line 284
    .line 285
    move v1, v2

    .line 286
    goto :goto_11

    .line 287
    :cond_11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 288
    .line 289
    .line 290
    move-result v1

    .line 291
    :goto_11
    add-int/2addr v0, v1

    .line 292
    mul-int/lit8 v0, v0, 0x1f

    .line 293
    .line 294
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->channelName:Ljava/lang/String;

    .line 295
    .line 296
    if-nez v1, :cond_12

    .line 297
    .line 298
    move v1, v2

    .line 299
    goto :goto_12

    .line 300
    :cond_12
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    :goto_12
    add-int/2addr v0, v1

    .line 305
    mul-int/lit8 v0, v0, 0x1f

    .line 306
    .line 307
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->iconColor:Ljava/lang/String;

    .line 308
    .line 309
    if-nez v1, :cond_13

    .line 310
    .line 311
    move v1, v2

    .line 312
    goto :goto_13

    .line 313
    :cond_13
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 314
    .line 315
    .line 316
    move-result v1

    .line 317
    :goto_13
    add-int/2addr v0, v1

    .line 318
    mul-int/lit8 v0, v0, 0x1f

    .line 319
    .line 320
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->impUrlList:Ljava/lang/String;

    .line 321
    .line 322
    if-nez v1, :cond_14

    .line 323
    .line 324
    move v1, v2

    .line 325
    goto :goto_14

    .line 326
    :cond_14
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 327
    .line 328
    .line 329
    move-result v1

    .line 330
    :goto_14
    add-int/2addr v0, v1

    .line 331
    mul-int/lit8 v0, v0, 0x1f

    .line 332
    .line 333
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->clickUrlList:Ljava/lang/String;

    .line 334
    .line 335
    if-nez v1, :cond_15

    .line 336
    .line 337
    move v1, v2

    .line 338
    goto :goto_15

    .line 339
    :cond_15
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 340
    .line 341
    .line 342
    move-result v1

    .line 343
    :goto_15
    add-int/2addr v0, v1

    .line 344
    mul-int/lit8 v0, v0, 0x1f

    .line 345
    .line 346
    iget v1, p0, Lcom/transsion/push/bean/TPushData;->isHeadsUp:I

    .line 347
    .line 348
    add-int/2addr v0, v1

    .line 349
    mul-int/lit8 v0, v0, 0x1f

    .line 350
    .line 351
    iget-wide v3, p0, Lcom/transsion/push/bean/TPushData;->retraceMsgId:J

    .line 352
    .line 353
    invoke-static {v3, v4}, Landroidx/collection/s;->a(J)I

    .line 354
    .line 355
    .line 356
    move-result v1

    .line 357
    add-int/2addr v0, v1

    .line 358
    mul-int/lit8 v0, v0, 0x1f

    .line 359
    .line 360
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->groupId:Ljava/lang/String;

    .line 361
    .line 362
    if-nez v1, :cond_16

    .line 363
    .line 364
    move v1, v2

    .line 365
    goto :goto_16

    .line 366
    :cond_16
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 367
    .line 368
    .line 369
    move-result v1

    .line 370
    :goto_16
    add-int/2addr v0, v1

    .line 371
    mul-int/lit8 v0, v0, 0x1f

    .line 372
    .line 373
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->groupMaxCount:Ljava/lang/String;

    .line 374
    .line 375
    if-nez v1, :cond_17

    .line 376
    .line 377
    move v1, v2

    .line 378
    goto :goto_17

    .line 379
    :cond_17
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 380
    .line 381
    .line 382
    move-result v1

    .line 383
    :goto_17
    add-int/2addr v0, v1

    .line 384
    mul-int/lit8 v0, v0, 0x1f

    .line 385
    .line 386
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->notiExtensionBtn:Ljava/lang/String;

    .line 387
    .line 388
    if-nez v1, :cond_18

    .line 389
    .line 390
    move v1, v2

    .line 391
    goto :goto_18

    .line 392
    :cond_18
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 393
    .line 394
    .line 395
    move-result v1

    .line 396
    :goto_18
    add-int/2addr v0, v1

    .line 397
    mul-int/lit8 v0, v0, 0x1f

    .line 398
    .line 399
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->notiOptionalIcon:Ljava/lang/String;

    .line 400
    .line 401
    if-nez v1, :cond_19

    .line 402
    .line 403
    move v1, v2

    .line 404
    goto :goto_19

    .line 405
    :cond_19
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 406
    .line 407
    .line 408
    move-result v1

    .line 409
    :goto_19
    add-int/2addr v0, v1

    .line 410
    mul-int/lit8 v0, v0, 0x1f

    .line 411
    .line 412
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->notiBtnTxtColor:Ljava/lang/String;

    .line 413
    .line 414
    if-nez v1, :cond_1a

    .line 415
    .line 416
    move v1, v2

    .line 417
    goto :goto_1a

    .line 418
    :cond_1a
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 419
    .line 420
    .line 421
    move-result v1

    .line 422
    :goto_1a
    add-int/2addr v0, v1

    .line 423
    mul-int/lit8 v0, v0, 0x1f

    .line 424
    .line 425
    iget-object v1, p0, Lcom/transsion/push/bean/TPushData;->notiBtnBgColor:Ljava/lang/String;

    .line 426
    .line 427
    if-nez v1, :cond_1b

    .line 428
    .line 429
    goto :goto_1b

    .line 430
    :cond_1b
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 431
    .line 432
    .line 433
    move-result v2

    .line 434
    :goto_1b
    add-int/2addr v0, v2

    .line 435
    return v0
.end method

.method public final isHeadsUp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/push/bean/TPushData;->isHeadsUp:I

    .line 2
    .line 3
    return v0
.end method

.method public final isNotifyType()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/transsion/push/bean/TPushData;->notiType:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method public final isVerticalType()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/TPushData;->styleType:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "102"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final setAppName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/TPushData;->appName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setChannelId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/TPushData;->channelId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setChannelName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/TPushData;->channelName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setClickUrlList(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/TPushData;->clickUrlList:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDisplayPolicy(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/push/bean/TPushData;->displayPolicy:I

    .line 2
    .line 3
    return-void
.end method

.method public final setGroupId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/TPushData;->groupId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setGroupMaxCount(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/TPushData;->groupMaxCount:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setHeadsUp(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/push/bean/TPushData;->isHeadsUp:I

    .line 2
    .line 3
    return-void
.end method

.method public final setIconColor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/TPushData;->iconColor:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setIgnoreExpire(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/push/bean/TPushData;->ignoreExpire:I

    .line 2
    .line 3
    return-void
.end method

.method public final setImpUrlList(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/TPushData;->impUrlList:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setLayoutStyleId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/push/bean/TPushData;->layoutStyleId:I

    .line 2
    .line 3
    return-void
.end method

.method public final setMessageId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/push/bean/TPushData;->messageId:J

    .line 2
    .line 3
    return-void
.end method

.method public final setMsgTtl(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/push/bean/TPushData;->msgTtl:I

    .line 2
    .line 3
    return-void
.end method

.method public final setNotiBtn(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/TPushData;->notiBtn:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setNotiBtnBgColor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/TPushData;->notiBtnBgColor:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setNotiBtnTxtColor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/TPushData;->notiBtnTxtColor:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setNotiDes(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/TPushData;->notiDes:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setNotiExType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/push/bean/TPushData;->notiExType:I

    .line 2
    .line 3
    return-void
.end method

.method public final setNotiExtensionBtn(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/TPushData;->notiExtensionBtn:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setNotiIcon(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/TPushData;->notiIcon:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setNotiImg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/TPushData;->notiImg:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setNotiImgEx(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/TPushData;->notiImgEx:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setNotiOpenContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/TPushData;->notiOpenContent:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setNotiOpenType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/push/bean/TPushData;->notiOpenType:I

    .line 2
    .line 3
    return-void
.end method

.method public final setNotiOptionalIcon(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/TPushData;->notiOptionalIcon:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setNotiSmallIcon(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/TPushData;->notiSmallIcon:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setNotiTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/TPushData;->notiTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setNotiTitleEx(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/TPushData;->notiTitleEx:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setNotiTxtEx(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/TPushData;->notiTxtEx:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setNotiType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/push/bean/TPushData;->notiType:I

    .line 2
    .line 3
    return-void
.end method

.method public final setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/TPushData;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPkgId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/TPushData;->pkgId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPriority(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/push/bean/TPushData;->priority:I

    .line 2
    .line 3
    return-void
.end method

.method public final setRetraceMsgId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/push/bean/TPushData;->retraceMsgId:J

    .line 2
    .line 3
    return-void
.end method

.method public final setRpkg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/TPushData;->rpkg:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSdkShow(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/push/bean/TPushData;->sdkShow:I

    .line 2
    .line 3
    return-void
.end method

.method public final setStyleType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/TPushData;->styleType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setTimeStamp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/TPushData;->timeStamp:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setTransData(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/TPushData;->transData:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/push/bean/TPushData;->type:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 45

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-wide v1, v0, Lcom/transsion/push/bean/TPushData;->messageId:J

    .line 4
    .line 5
    iget v3, v0, Lcom/transsion/push/bean/TPushData;->type:I

    .line 6
    .line 7
    iget-object v4, v0, Lcom/transsion/push/bean/TPushData;->styleType:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v5, v0, Lcom/transsion/push/bean/TPushData;->pkgId:Ljava/lang/String;

    .line 10
    .line 11
    iget v6, v0, Lcom/transsion/push/bean/TPushData;->priority:I

    .line 12
    .line 13
    iget v7, v0, Lcom/transsion/push/bean/TPushData;->sdkShow:I

    .line 14
    .line 15
    iget v8, v0, Lcom/transsion/push/bean/TPushData;->msgTtl:I

    .line 16
    .line 17
    iget v9, v0, Lcom/transsion/push/bean/TPushData;->ignoreExpire:I

    .line 18
    .line 19
    iget-object v10, v0, Lcom/transsion/push/bean/TPushData;->packageName:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v11, v0, Lcom/transsion/push/bean/TPushData;->rpkg:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v12, v0, Lcom/transsion/push/bean/TPushData;->timeStamp:Ljava/lang/String;

    .line 24
    .line 25
    iget v13, v0, Lcom/transsion/push/bean/TPushData;->notiType:I

    .line 26
    .line 27
    iget v14, v0, Lcom/transsion/push/bean/TPushData;->notiExType:I

    .line 28
    .line 29
    iget-object v15, v0, Lcom/transsion/push/bean/TPushData;->notiTitle:Ljava/lang/String;

    .line 30
    .line 31
    move-object/from16 v16, v15

    .line 32
    .line 33
    iget-object v15, v0, Lcom/transsion/push/bean/TPushData;->notiDes:Ljava/lang/String;

    .line 34
    .line 35
    move-object/from16 v17, v15

    .line 36
    .line 37
    iget-object v15, v0, Lcom/transsion/push/bean/TPushData;->notiImg:Ljava/lang/String;

    .line 38
    .line 39
    move-object/from16 v18, v15

    .line 40
    .line 41
    iget-object v15, v0, Lcom/transsion/push/bean/TPushData;->notiIcon:Ljava/lang/String;

    .line 42
    .line 43
    move-object/from16 v19, v15

    .line 44
    .line 45
    iget-object v15, v0, Lcom/transsion/push/bean/TPushData;->notiBtn:Ljava/lang/String;

    .line 46
    .line 47
    move-object/from16 v20, v15

    .line 48
    .line 49
    iget-object v15, v0, Lcom/transsion/push/bean/TPushData;->notiImgEx:Ljava/lang/String;

    .line 50
    .line 51
    move-object/from16 v21, v15

    .line 52
    .line 53
    iget-object v15, v0, Lcom/transsion/push/bean/TPushData;->notiTitleEx:Ljava/lang/String;

    .line 54
    .line 55
    move-object/from16 v22, v15

    .line 56
    .line 57
    iget-object v15, v0, Lcom/transsion/push/bean/TPushData;->notiTxtEx:Ljava/lang/String;

    .line 58
    .line 59
    move-object/from16 v23, v15

    .line 60
    .line 61
    iget v15, v0, Lcom/transsion/push/bean/TPushData;->notiOpenType:I

    .line 62
    .line 63
    move/from16 v24, v15

    .line 64
    .line 65
    iget-object v15, v0, Lcom/transsion/push/bean/TPushData;->notiOpenContent:Ljava/lang/String;

    .line 66
    .line 67
    move-object/from16 v25, v15

    .line 68
    .line 69
    iget-object v15, v0, Lcom/transsion/push/bean/TPushData;->transData:Ljava/lang/String;

    .line 70
    .line 71
    move-object/from16 v26, v15

    .line 72
    .line 73
    iget-object v15, v0, Lcom/transsion/push/bean/TPushData;->notiSmallIcon:Ljava/lang/String;

    .line 74
    .line 75
    move-object/from16 v27, v15

    .line 76
    .line 77
    iget v15, v0, Lcom/transsion/push/bean/TPushData;->displayPolicy:I

    .line 78
    .line 79
    move/from16 v28, v15

    .line 80
    .line 81
    iget-object v15, v0, Lcom/transsion/push/bean/TPushData;->appName:Ljava/lang/String;

    .line 82
    .line 83
    move-object/from16 v29, v15

    .line 84
    .line 85
    iget v15, v0, Lcom/transsion/push/bean/TPushData;->layoutStyleId:I

    .line 86
    .line 87
    move/from16 v30, v15

    .line 88
    .line 89
    iget-object v15, v0, Lcom/transsion/push/bean/TPushData;->channelId:Ljava/lang/String;

    .line 90
    .line 91
    move-object/from16 v31, v15

    .line 92
    .line 93
    iget-object v15, v0, Lcom/transsion/push/bean/TPushData;->channelName:Ljava/lang/String;

    .line 94
    .line 95
    move-object/from16 v32, v15

    .line 96
    .line 97
    iget-object v15, v0, Lcom/transsion/push/bean/TPushData;->iconColor:Ljava/lang/String;

    .line 98
    .line 99
    move-object/from16 v33, v15

    .line 100
    .line 101
    iget-object v15, v0, Lcom/transsion/push/bean/TPushData;->impUrlList:Ljava/lang/String;

    .line 102
    .line 103
    move-object/from16 v34, v15

    .line 104
    .line 105
    iget-object v15, v0, Lcom/transsion/push/bean/TPushData;->clickUrlList:Ljava/lang/String;

    .line 106
    .line 107
    move-object/from16 v35, v15

    .line 108
    .line 109
    iget v15, v0, Lcom/transsion/push/bean/TPushData;->isHeadsUp:I

    .line 110
    .line 111
    move/from16 v36, v14

    .line 112
    .line 113
    move/from16 v37, v15

    .line 114
    .line 115
    iget-wide v14, v0, Lcom/transsion/push/bean/TPushData;->retraceMsgId:J

    .line 116
    .line 117
    move-wide/from16 v38, v14

    .line 118
    .line 119
    iget-object v14, v0, Lcom/transsion/push/bean/TPushData;->groupId:Ljava/lang/String;

    .line 120
    .line 121
    iget-object v15, v0, Lcom/transsion/push/bean/TPushData;->groupMaxCount:Ljava/lang/String;

    .line 122
    .line 123
    move-object/from16 v40, v15

    .line 124
    .line 125
    iget-object v15, v0, Lcom/transsion/push/bean/TPushData;->notiExtensionBtn:Ljava/lang/String;

    .line 126
    .line 127
    move-object/from16 v41, v15

    .line 128
    .line 129
    iget-object v15, v0, Lcom/transsion/push/bean/TPushData;->notiOptionalIcon:Ljava/lang/String;

    .line 130
    .line 131
    move-object/from16 v42, v15

    .line 132
    .line 133
    iget-object v15, v0, Lcom/transsion/push/bean/TPushData;->notiBtnTxtColor:Ljava/lang/String;

    .line 134
    .line 135
    move-object/from16 v43, v15

    .line 136
    .line 137
    iget-object v15, v0, Lcom/transsion/push/bean/TPushData;->notiBtnBgColor:Ljava/lang/String;

    .line 138
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    move-object/from16 v44, v15

    .line 145
    .line 146
    const-string v15, "TPushData(messageId="

    .line 147
    .line 148
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string v1, ", type="

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v1, ", styleType="

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string v1, ", pkgId="

    .line 171
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string v1, ", priority="

    .line 179
    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string v1, ", sdkShow="

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string v1, ", msgTtl="

    .line 195
    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const-string v1, ", ignoreExpire="

    .line 203
    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string v1, ", packageName="

    .line 211
    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string v1, ", rpkg="

    .line 219
    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v1, ", timeStamp="

    .line 227
    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    const-string v1, ", notiType="

    .line 235
    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string v1, ", notiExType="

    .line 243
    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    move/from16 v1, v36

    .line 248
    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    const-string v1, ", notiTitle="

    .line 253
    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    move-object/from16 v1, v16

    .line 258
    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    const-string v1, ", notiDes="

    .line 263
    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    move-object/from16 v1, v17

    .line 268
    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    const-string v1, ", notiImg="

    .line 273
    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    move-object/from16 v1, v18

    .line 278
    .line 279
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    const-string v1, ", notiIcon="

    .line 283
    .line 284
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    move-object/from16 v1, v19

    .line 288
    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    const-string v1, ", notiBtn="

    .line 293
    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    move-object/from16 v1, v20

    .line 298
    .line 299
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    const-string v1, ", notiImgEx="

    .line 303
    .line 304
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    move-object/from16 v1, v21

    .line 308
    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    const-string v1, ", notiTitleEx="

    .line 313
    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    move-object/from16 v1, v22

    .line 318
    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    const-string v1, ", notiTxtEx="

    .line 323
    .line 324
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    move-object/from16 v1, v23

    .line 328
    .line 329
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    const-string v1, ", notiOpenType="

    .line 333
    .line 334
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    move/from16 v1, v24

    .line 338
    .line 339
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    const-string v1, ", notiOpenContent="

    .line 343
    .line 344
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    move-object/from16 v1, v25

    .line 348
    .line 349
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    const-string v1, ", transData="

    .line 353
    .line 354
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    move-object/from16 v1, v26

    .line 358
    .line 359
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    const-string v1, ", notiSmallIcon="

    .line 363
    .line 364
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    move-object/from16 v1, v27

    .line 368
    .line 369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    const-string v1, ", displayPolicy="

    .line 373
    .line 374
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    move/from16 v1, v28

    .line 378
    .line 379
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    const-string v1, ", appName="

    .line 383
    .line 384
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    move-object/from16 v1, v29

    .line 388
    .line 389
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    const-string v1, ", layoutStyleId="

    .line 393
    .line 394
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    move/from16 v1, v30

    .line 398
    .line 399
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    const-string v1, ", channelId="

    .line 403
    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    move-object/from16 v1, v31

    .line 408
    .line 409
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    const-string v1, ", channelName="

    .line 413
    .line 414
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    move-object/from16 v1, v32

    .line 418
    .line 419
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    const-string v1, ", iconColor="

    .line 423
    .line 424
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    move-object/from16 v1, v33

    .line 428
    .line 429
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    const-string v1, ", impUrlList="

    .line 433
    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    move-object/from16 v1, v34

    .line 438
    .line 439
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    const-string v1, ", clickUrlList="

    .line 443
    .line 444
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    move-object/from16 v1, v35

    .line 448
    .line 449
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    const-string v1, ", isHeadsUp="

    .line 453
    .line 454
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    move/from16 v1, v37

    .line 458
    .line 459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    const-string v1, ", retraceMsgId="

    .line 463
    .line 464
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    move-wide/from16 v1, v38

    .line 468
    .line 469
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    const-string v1, ", groupId="

    .line 473
    .line 474
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    const-string v1, ", groupMaxCount="

    .line 481
    .line 482
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    move-object/from16 v1, v40

    .line 486
    .line 487
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    const-string v1, ", notiExtensionBtn="

    .line 491
    .line 492
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    move-object/from16 v1, v41

    .line 496
    .line 497
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    const-string v1, ", notiOptionalIcon="

    .line 501
    .line 502
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    move-object/from16 v1, v42

    .line 506
    .line 507
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    const-string v1, ", notiBtnTxtColor="

    .line 511
    .line 512
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    .line 514
    .line 515
    move-object/from16 v1, v43

    .line 516
    .line 517
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    const-string v1, ", notiBtnBgColor="

    .line 521
    .line 522
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    move-object/from16 v1, v44

    .line 526
    .line 527
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    const-string v1, ")"

    .line 531
    .line 532
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    return-object v0
.end method
