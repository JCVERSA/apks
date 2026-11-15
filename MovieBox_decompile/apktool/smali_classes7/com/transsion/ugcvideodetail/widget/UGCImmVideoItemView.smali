.class public final Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "source.java"

# interfaces
.implements Lcom/transsion/player/orplayer/e;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u001a\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u001d\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B!\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bB\u0011\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\n\u0010\u000cB\u001b\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\n\u0010\rJ\u0017\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012JI\u0010\u001d\u001a\u00020\u001c2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0017\u001a\u00020\u00162\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u001b\u001a\u00020\u001a\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0015\u0010 \u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u0008\u00a2\u0006\u0004\u0008 \u0010!J\u000f\u0010\"\u001a\u00020\u001cH\u0014\u00a2\u0006\u0004\u0008\"\u0010#J\u000f\u0010$\u001a\u00020\u001cH\u0014\u00a2\u0006\u0004\u0008$\u0010#J\r\u0010%\u001a\u00020\u001c\u00a2\u0006\u0004\u0008%\u0010#J\r\u0010&\u001a\u00020\u001c\u00a2\u0006\u0004\u0008&\u0010#J\r\u0010\'\u001a\u00020\u001c\u00a2\u0006\u0004\u0008\'\u0010#J\r\u0010(\u001a\u00020\u001c\u00a2\u0006\u0004\u0008(\u0010#J+\u0010.\u001a\u00020\u001c2\u0008\u0010*\u001a\u0004\u0018\u00010)2\u0008\u0010,\u001a\u0004\u0018\u00010+2\u0008\u0010-\u001a\u0004\u0018\u00010\u001a\u00a2\u0006\u0004\u0008.\u0010/J!\u00104\u001a\u00020\u001c2\u0008\u00101\u001a\u0004\u0018\u0001002\u0008\u00103\u001a\u0004\u0018\u000102\u00a2\u0006\u0004\u00084\u00105J\r\u00107\u001a\u000206\u00a2\u0006\u0004\u00087\u00108J\u0015\u0010:\u001a\u00020\u001c2\u0006\u00109\u001a\u00020\u0008\u00a2\u0006\u0004\u0008:\u0010!J\u0019\u0010<\u001a\u00020\u001c2\u0008\u0010;\u001a\u0004\u0018\u000100H\u0016\u00a2\u0006\u0004\u0008<\u0010=J\r\u0010>\u001a\u00020\u001c\u00a2\u0006\u0004\u0008>\u0010#J\u000f\u0010?\u001a\u00020\u001cH\u0016\u00a2\u0006\u0004\u0008?\u0010#J\r\u0010@\u001a\u00020\u001c\u00a2\u0006\u0004\u0008@\u0010#J\r\u0010A\u001a\u00020\u001c\u00a2\u0006\u0004\u0008A\u0010#J\r\u0010B\u001a\u00020\u001c\u00a2\u0006\u0004\u0008B\u0010#J\u0015\u0010D\u001a\u00020\u001c2\u0006\u0010C\u001a\u00020\u0016\u00a2\u0006\u0004\u0008D\u0010EJ\u000f\u0010F\u001a\u00020\u001cH\u0016\u00a2\u0006\u0004\u0008F\u0010#J\u001f\u0010I\u001a\u00020\u001c2\u0006\u0010G\u001a\u00020\u00082\u0006\u0010H\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008I\u0010JJ\u000f\u0010K\u001a\u00020\u001cH\u0016\u00a2\u0006\u0004\u0008K\u0010#J\u0019\u0010N\u001a\u00020\u001c2\u0008\u0010M\u001a\u0004\u0018\u00010LH\u0016\u00a2\u0006\u0004\u0008N\u0010OJ\u0019\u0010P\u001a\u00020\u001c2\u0008\u0010M\u001a\u0004\u0018\u00010LH\u0016\u00a2\u0006\u0004\u0008P\u0010OJ\u0019\u0010Q\u001a\u00020\u001c2\u0008\u0010M\u001a\u0004\u0018\u00010LH\u0016\u00a2\u0006\u0004\u0008Q\u0010OJ!\u0010S\u001a\u00020\u001c2\u0006\u0010R\u001a\u0002062\u0008\u0010M\u001a\u0004\u0018\u00010LH\u0016\u00a2\u0006\u0004\u0008S\u0010TJ\u0019\u0010U\u001a\u00020\u001c2\u0008\u0010M\u001a\u0004\u0018\u00010LH\u0016\u00a2\u0006\u0004\u0008U\u0010OJ\u0019\u0010V\u001a\u00020\u001c2\u0008\u0010M\u001a\u0004\u0018\u00010LH\u0016\u00a2\u0006\u0004\u0008V\u0010OJ!\u0010Y\u001a\u00020\u001c2\u0006\u0010X\u001a\u00020W2\u0008\u0010M\u001a\u0004\u0018\u00010LH\u0016\u00a2\u0006\u0004\u0008Y\u0010ZJ\u000f\u0010[\u001a\u00020\u001cH\u0016\u00a2\u0006\u0004\u0008[\u0010#J\u0019\u0010\\\u001a\u00020\u001c2\u0008\u0010M\u001a\u0004\u0018\u00010LH\u0016\u00a2\u0006\u0004\u0008\\\u0010OJ\r\u0010]\u001a\u00020\u001c\u00a2\u0006\u0004\u0008]\u0010#J\u000f\u0010^\u001a\u00020\u001cH\u0002\u00a2\u0006\u0004\u0008^\u0010#J\u0017\u0010_\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u001aH\u0002\u00a2\u0006\u0004\u0008_\u0010`J\u0017\u0010c\u001a\u00020\u001c2\u0006\u0010b\u001a\u00020aH\u0002\u00a2\u0006\u0004\u0008c\u0010dJ\u0017\u0010e\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008e\u0010!J\u0017\u0010g\u001a\u00020\u001c2\u0006\u0010f\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008g\u0010hJ\u0017\u0010i\u001a\u00020\u001c2\u0006\u0010b\u001a\u00020aH\u0002\u00a2\u0006\u0004\u0008i\u0010dJ\u0017\u0010j\u001a\u00020\u001c2\u0006\u0010R\u001a\u000206H\u0002\u00a2\u0006\u0004\u0008j\u0010kJ\u0017\u0010m\u001a\u00020\u001c2\u0006\u0010l\u001a\u000206H\u0002\u00a2\u0006\u0004\u0008m\u0010kJ\u0017\u0010n\u001a\u00020\u001c2\u0006\u0010f\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008n\u0010hJ#\u0010q\u001a\u00020\u001c2\u0008\u0010o\u001a\u0004\u0018\u00010\u00082\u0008\u0010p\u001a\u0004\u0018\u00010\u0008H\u0002\u00a2\u0006\u0004\u0008q\u0010rJ\u000f\u0010s\u001a\u00020\u001cH\u0002\u00a2\u0006\u0004\u0008s\u0010#J\u0017\u0010u\u001a\u00020\u001c2\u0006\u0010t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008u\u0010!J\u000f\u0010v\u001a\u00020\u001cH\u0002\u00a2\u0006\u0004\u0008v\u0010#J\u000f\u0010w\u001a\u00020\u001cH\u0002\u00a2\u0006\u0004\u0008w\u0010#J\u0017\u0010x\u001a\u00020\u001c2\u0006\u0010f\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008x\u0010hR\u0014\u0010{\u001a\u00020\u00168\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008y\u0010zR\u0014\u0010\u007f\u001a\u00020|8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008}\u0010~R\u001a\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0080\u0001\u0010\u0081\u0001R\u001c\u0010\u0085\u0001\u001a\u0005\u0018\u00010\u0082\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0083\u0001\u0010\u0084\u0001R\u001c\u0010\u0089\u0001\u001a\u0005\u0018\u00010\u0086\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0087\u0001\u0010\u0088\u0001R\u001c\u0010\u008d\u0001\u001a\u0005\u0018\u00010\u008a\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008b\u0001\u0010\u008c\u0001R\u001c\u0010\u0091\u0001\u001a\u0005\u0018\u00010\u008e\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008f\u0001\u0010\u0090\u0001R\u0019\u0010\u001b\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008p\u0010\u0092\u0001R\u0017\u0010\u0017\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0093\u0001\u0010zR\u0019\u0010\u0018\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0094\u0001\u0010zR\u0019\u0010\u0019\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0095\u0001\u0010zR\u001a\u0010*\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0096\u0001\u0010\u0097\u0001R\u001a\u0010,\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0098\u0001\u0010\u0099\u0001R\u001c\u0010\u009d\u0001\u001a\u0005\u0018\u00010\u009a\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009b\u0001\u0010\u009c\u0001R!\u0010\u00a3\u0001\u001a\u00030\u009e\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u009f\u0001\u0010\u00a0\u0001\u001a\u0006\u0008\u00a1\u0001\u0010\u00a2\u0001R!\u0010\u00a8\u0001\u001a\u00030\u00a4\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00a5\u0001\u0010\u00a0\u0001\u001a\u0006\u0008\u00a6\u0001\u0010\u00a7\u0001R!\u0010\u00ad\u0001\u001a\u00030\u00a9\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00aa\u0001\u0010\u00a0\u0001\u001a\u0006\u0008\u00ab\u0001\u0010\u00ac\u0001R!\u0010\u00b2\u0001\u001a\u00030\u00ae\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00af\u0001\u0010\u00a0\u0001\u001a\u0006\u0008\u00b0\u0001\u0010\u00b1\u0001R!\u0010\u00b7\u0001\u001a\u00030\u00b3\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00b4\u0001\u0010\u00a0\u0001\u001a\u0006\u0008\u00b5\u0001\u0010\u00b6\u0001R!\u0010\u00bc\u0001\u001a\u00030\u00b8\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00b9\u0001\u0010\u00a0\u0001\u001a\u0006\u0008\u00ba\u0001\u0010\u00bb\u0001R\u0017\u0010\u00bf\u0001\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00bd\u0001\u0010\u00be\u0001R\u0018\u0010\u00c1\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008;\u0010\u00c0\u0001R\u0018\u0010\u00c2\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008o\u0010\u00c0\u0001R\u0019\u0010\u00c4\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c3\u0001\u0010\u00c0\u0001R\u0017\u0010\u00c6\u0001\u001a\u00020\u00088\u0002X\u0082D\u00a2\u0006\u0008\n\u0006\u0008\u00c5\u0001\u0010\u00be\u0001R\u0017\u0010\u00c8\u0001\u001a\u00020\u00088\u0002X\u0082D\u00a2\u0006\u0008\n\u0006\u0008\u00c7\u0001\u0010\u00be\u0001R\u0017\u0010\u00ca\u0001\u001a\u00020\u00088\u0002X\u0082D\u00a2\u0006\u0008\n\u0006\u0008\u00c9\u0001\u0010\u00be\u0001R\u0019\u0010\u00cc\u0001\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00cb\u0001\u0010\u00be\u0001R\u0018\u0010\u00cd\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008c\u0010\u00c0\u0001R\u0018\u0010\u00ce\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008^\u0010\u00c0\u0001R\u0019\u0010\u00d0\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00cf\u0001\u0010\u00c0\u0001R\u0019\u0010\u00d3\u0001\u001a\u0002068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d1\u0001\u0010\u00d2\u0001R\u0018\u0010\u00d4\u0001\u001a\u0002068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008u\u0010\u00d2\u0001R\u0018\u0010\u00d5\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008v\u0010\u00c0\u0001R#\u0010\u00d9\u0001\u001a\u0005\u0018\u00010\u00d6\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00be\u0001\u0010\u00a0\u0001\u001a\u0006\u0008\u00d7\u0001\u0010\u00d8\u0001R\u0019\u0010\u00da\u0001\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d2\u0001\u0010\u00be\u0001R-\u0010\u00df\u0001\u001a\u0018\u0012\u0013\u0012\u0011\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u00dc\u00010\u00db\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00dd\u0001\u0010\u00de\u0001R\u0018\u0010\u00e0\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008w\u0010\u00c0\u0001R\u0018\u0010\u00e1\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008s\u0010\u00c0\u0001R\u0019\u0010\u00e3\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00e2\u0001\u0010\u00c0\u0001R\u0018\u0010\u00e7\u0001\u001a\u00030\u00e4\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00e5\u0001\u0010\u00e6\u0001R\u0019\u0010\u00e9\u0001\u001a\u0002068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00e8\u0001\u0010\u00d2\u0001R\u0019\u0010\u00eb\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ea\u0001\u0010\u00c0\u0001\u00a8\u0006\u00ec\u0001"
    }
    d2 = {
        "Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Lcom/transsion/player/orplayer/e;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "(Landroid/content/Context;)V",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "Landroid/view/MotionEvent;",
        "event",
        "",
        "onTouchEvent",
        "(Landroid/view/MotionEvent;)Z",
        "adapterPosition",
        "Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;",
        "fragment",
        "",
        "trackId",
        "previousTrackId",
        "previousPageVideoId",
        "Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;",
        "data",
        "",
        "setData",
        "(Ljava/lang/Integer;Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;)V",
        "status",
        "setDownloadStatus",
        "(I)V",
        "onAttachedToWindow",
        "()V",
        "onDetachedFromWindow",
        "onPagePause",
        "onPageResume",
        "onPageStop",
        "onPageDestroy",
        "Lcom/transsion/player/orplayer/f;",
        "orPlayer",
        "Lcom/transsion/player/ui/ORPlayerView;",
        "orPlayerView",
        "item",
        "onPageSelected",
        "(Lcom/transsion/player/orplayer/f;Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;)V",
        "Landroid/view/View;",
        "view",
        "Lcom/transsion/moviedetailapi/bean/FirstFrame;",
        "firstImage",
        "addVideoView",
        "(Landroid/view/View;Lcom/transsion/moviedetailapi/bean/FirstFrame;)V",
        "",
        "getProgress",
        "()J",
        "position",
        "onPageRelease",
        "v",
        "onClick",
        "(Landroid/view/View;)V",
        "onNetConnect",
        "onPlayerReset",
        "reset",
        "app2Background",
        "videoStartPrepare",
        "url",
        "setVideoUrl",
        "(Ljava/lang/String;)V",
        "onSetDataSource",
        "width",
        "height",
        "onVideoSizeChanged",
        "(II)V",
        "onRenderFirstFrame",
        "Lgn/e;",
        "mediaSource",
        "onPrepare",
        "(Lgn/e;)V",
        "onVideoStart",
        "onVideoPause",
        "progress",
        "onProgress",
        "(JLgn/e;)V",
        "onLoadingBegin",
        "onLoadingEnd",
        "Lcom/transsion/player/orplayer/PlayError;",
        "errorInfo",
        "onPlayError",
        "(Lcom/transsion/player/orplayer/PlayError;Lgn/e;)V",
        "onLoopingStart",
        "onCompletion",
        "onItemViewMediaItemTransition",
        "D",
        "setContent",
        "(Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;)V",
        "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;",
        "video",
        "C",
        "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V",
        "V",
        "show",
        "setDownloadLoadingIconVisibility",
        "(Z)V",
        "setupHashTags",
        "W",
        "(J)V",
        "max",
        "X",
        "setLoading",
        "w",
        "h",
        "Y",
        "(Ljava/lang/Integer;Ljava/lang/Integer;)V",
        "M",
        "resolution",
        "G",
        "H",
        "L",
        "setControlVisible",
        "a",
        "Ljava/lang/String;",
        "TAG",
        "Liu/r;",
        "b",
        "Liu/r;",
        "viewBinding",
        "c",
        "Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;",
        "Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;",
        "d",
        "Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;",
        "detailViewModel",
        "Lcom/transsion/ugcvideodetail/hepler/subtitle/a;",
        "e",
        "Lcom/transsion/ugcvideodetail/hepler/subtitle/a;",
        "subtitleViewModel",
        "Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel;",
        "f",
        "Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel;",
        "downloadViewModel",
        "Lcom/transsion/ugcvideodetail/hepler/a;",
        "g",
        "Lcom/transsion/ugcvideodetail/hepler/a;",
        "dotLayer",
        "Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;",
        "i",
        "j",
        "k",
        "l",
        "Lcom/transsion/player/orplayer/f;",
        "m",
        "Lcom/transsion/player/ui/ORPlayerView;",
        "Lcom/tn/lib/pager/PagerLayoutManager;",
        "n",
        "Lcom/tn/lib/pager/PagerLayoutManager;",
        "pagerLayoutManager",
        "Llu/i;",
        "o",
        "Lkotlin/Lazy;",
        "getReportDelegate",
        "()Llu/i;",
        "reportDelegate",
        "Llu/e;",
        "p",
        "getDownloadDelegate",
        "()Llu/e;",
        "downloadDelegate",
        "Llu/h;",
        "q",
        "getPlayerDelegate",
        "()Llu/h;",
        "playerDelegate",
        "Llu/a;",
        "r",
        "getActionDelegate",
        "()Llu/a;",
        "actionDelegate",
        "Llu/n;",
        "s",
        "getSubtitleDelegate",
        "()Llu/n;",
        "subtitleDelegate",
        "Llu/g;",
        "t",
        "getGestureDelegate",
        "()Llu/g;",
        "gestureDelegate",
        "u",
        "I",
        "screenWidth",
        "Z",
        "isClickPause",
        "isPageHide",
        "x",
        "isDownloadImmediately",
        "y",
        "DOWNLOAD_STATUS_DOWNLOAD_NONE",
        "z",
        "DOWNLOAD_STATUS_DOWNLOADING",
        "A",
        "DOWNLOAD_STATUS_DOWNLOAD_COMPLETE",
        "B",
        "singleDownloadImmediatelyStatus",
        "isSearchShow",
        "isEpLayoutShow",
        "E",
        "isHashTagShow",
        "F",
        "J",
        "totalDuration",
        "playProgress",
        "isSubscriptionInitiatedByThisView",
        "Lqx/a;",
        "getLoginApi",
        "()Lqx/a;",
        "loginApi",
        "curStatus",
        "Landroidx/lifecycle/c0;",
        "Lkotlin/Pair;",
        "K",
        "Landroidx/lifecycle/c0;",
        "subscriptObserver",
        "isLoading",
        "isFirstFrame",
        "N",
        "isPrepare",
        "Ljava/lang/Runnable;",
        "O",
        "Ljava/lang/Runnable;",
        "delayToastNetErrRunnable",
        "P",
        "lastShowNetWorkErrToastTime",
        "Q",
        "isBarHide",
        "UGCVideoDetail_psRelease"
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


# instance fields
.field private final A:I

.field private B:I

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:J

.field private G:J

.field private H:Z

.field private final I:Lkotlin/Lazy;

.field private J:I

.field private final K:Landroidx/lifecycle/c0;

.field private L:Z

.field private M:Z

.field private N:Z

.field private final O:Ljava/lang/Runnable;

.field private P:J

.field private Q:Z

.field private final a:Ljava/lang/String;

.field private final b:Liu/r;

.field private c:Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

.field private d:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

.field private e:Lcom/transsion/ugcvideodetail/hepler/subtitle/a;

.field private f:Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel;

.field private g:Lcom/transsion/ugcvideodetail/hepler/a;

.field private h:Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lcom/transsion/player/orplayer/f;

.field private m:Lcom/transsion/player/ui/ORPlayerView;

.field private n:Lcom/tn/lib/pager/PagerLayoutManager;

.field private final o:Lkotlin/Lazy;

.field private final p:Lkotlin/Lazy;

.field private final q:Lkotlin/Lazy;

.field private final r:Lkotlin/Lazy;

.field private final s:Lkotlin/Lazy;

.field private final t:Lkotlin/Lazy;

.field private final u:I

.field private v:Z

.field private w:Z

.field private x:Z

.field private final y:I

.field private final z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    const-string p1, "UGCImmVideoItemView"

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->a:Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "toString(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->i:Ljava/lang/String;

    .line 4
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lku/n;

    invoke-direct {p2, p0}, Lku/n;-><init>(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->o:Lkotlin/Lazy;

    .line 5
    new-instance p2, Lku/o;

    invoke-direct {p2, p0}, Lku/o;-><init>(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->p:Lkotlin/Lazy;

    .line 6
    new-instance p2, Lku/p;

    invoke-direct {p2, p0}, Lku/p;-><init>(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->q:Lkotlin/Lazy;

    .line 7
    new-instance p2, Lku/q;

    invoke-direct {p2, p0}, Lku/q;-><init>(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->r:Lkotlin/Lazy;

    .line 8
    new-instance p2, Lku/b;

    invoke-direct {p2, p0}, Lku/b;-><init>(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->s:Lkotlin/Lazy;

    .line 9
    new-instance p2, Lku/c;

    invoke-direct {p2, p0}, Lku/c;-><init>(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->t:Lkotlin/Lazy;

    .line 10
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result p1

    iput p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->u:I

    const/4 p1, 0x1

    .line 11
    iput p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->y:I

    const/4 p2, 0x2

    .line 12
    iput p2, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->z:I

    const/4 p2, 0x3

    .line 13
    iput p2, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->A:I

    .line 14
    iput p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->B:I

    .line 15
    new-instance p1, Lku/d;

    invoke-direct {p1}, Lku/d;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->I:Lkotlin/Lazy;

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/transsion/ugcvideodetail/R$layout;->view_ugc_imm_video_detail_item:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 17
    invoke-static {p0}, Liu/r;->a(Landroid/view/View;)Liu/r;

    move-result-object p1

    const-string p2, "bind(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 18
    iget-object p2, p1, Liu/r;->D:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object p2, p1, Liu/r;->C:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object p2, p1, Liu/r;->z:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object p2, p1, Liu/r;->o:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object p2, p1, Liu/r;->k:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object p2, p1, Liu/r;->q:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object p2, p1, Liu/r;->H:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object p2, p1, Liu/r;->p:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iget-object p2, p1, Liu/r;->r:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object p2, p1, Liu/r;->s:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object p1, p1, Liu/r;->J:Landroid/widget/FrameLayout;

    const-string p2, "vTopStatus"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Luf/c;->e(Landroid/view/View;)V

    .line 29
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->getGestureDelegate()Llu/g;

    move-result-object p1

    invoke-virtual {p1}, Llu/g;->i()V

    .line 30
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->D()V

    const/4 p1, -0x1

    .line 31
    iput p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->J:I

    .line 32
    new-instance p1, Lku/e;

    invoke-direct {p1, p0}, Lku/e;-><init>(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)V

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->K:Landroidx/lifecycle/c0;

    .line 33
    new-instance p1, Lku/f;

    invoke-direct {p1, p0}, Lku/f;-><init>(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)V

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->O:Ljava/lang/Runnable;

    return-void
.end method

.method private static final A(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Llu/e;
    .locals 2

    .line 1
    new-instance v0, Llu/e;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$b;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$b;-><init>(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Llu/e;-><init>(Llu/e$b;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method private static final B(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Llu/g;
    .locals 2

    .line 1
    new-instance v0, Llu/g;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$c;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$c;-><init>(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->getReportDelegate()Llu/i;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-direct {v0, v1, p0}, Llu/g;-><init>(Llu/g$a;Llu/i;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method private final C(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->isCollection()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    :cond_0
    :goto_0
    move v2, v1

    .line 9
    goto :goto_2

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getDownloadStyle()Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getDownloadStyle()Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-nez p1, :cond_2

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-ne p1, v2, :cond_0

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_3
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->h:Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 32
    .line 33
    if-eqz p1, :cond_4

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getPlayInfo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-eqz p1, :cond_4

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->getResources()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_4

    .line 46
    .line 47
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    goto :goto_1

    .line 52
    :cond_4
    move p1, v1

    .line 53
    :goto_1
    if-gt p1, v2, :cond_0

    .line 54
    .line 55
    :goto_2
    iput-boolean v2, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->x:Z

    .line 56
    .line 57
    if-eqz v2, :cond_6

    .line 58
    .line 59
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->h:Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 60
    .line 61
    if-eqz p1, :cond_5

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getDownloadStatus()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    :cond_5
    invoke-direct {p0, v1}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->V(I)V

    .line 68
    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_6
    invoke-direct {p0, v1}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->setDownloadLoadingIconVisibility(Z)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 75
    .line 76
    iget-object p1, p1, Liu/r;->k:Landroidx/appcompat/widget/AppCompatImageView;

    .line 77
    .line 78
    sget v0, Lcom/transsion/ugcvideodetail/R$drawable;->ugc_imm_video_ic_download:I

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 81
    .line 82
    .line 83
    :goto_3
    return-void
.end method

.method private final D()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Lku/g;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lku/g;-><init>(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private static final E(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "null cannot be cast to non-null type android.app.Activity"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    check-cast v0, Landroid/app/Activity;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_11

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_11

    .line 27
    .line 28
    invoke-static {}, Landroidx/core/view/o2;->a()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-static {v1, v2}, Landroidx/core/view/g2;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_11

    .line 37
    .line 38
    invoke-static {v0}, Lcom/blankj/utilcode/util/d;->e(Landroid/view/Window;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/4 v2, 0x0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    invoke-static {}, Lcom/blankj/utilcode/util/d;->a()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const/4 v3, 0x1

    .line 50
    if-le v0, v3, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move v3, v2

    .line 54
    :goto_0
    const/high16 v0, 0x41c00000    # 24.0f

    .line 55
    .line 56
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 61
    .line 62
    const/16 v5, 0x23

    .line 63
    .line 64
    if-lt v4, v5, :cond_1

    .line 65
    .line 66
    const/high16 v4, 0x41a00000    # 20.0f

    .line 67
    .line 68
    invoke-static {v4}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    invoke-static {v1}, Landroidx/appcompat/widget/v;->a(Landroid/graphics/Insets;)I

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    invoke-static {v0, v5}, Lkotlin/ranges/RangesKt;->e(II)I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    add-int/2addr v4, v5

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    invoke-static {v1}, Landroidx/appcompat/widget/v;->a(Landroid/graphics/Insets;)I

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    invoke-static {v0, v4}, Lkotlin/ranges/RangesKt;->e(II)I

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    :goto_1
    const-string v5, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    .line 91
    .line 92
    const-string v6, "progressUgcImmGuideline"

    .line 93
    .line 94
    const/4 v7, 0x0

    .line 95
    if-nez v3, :cond_9

    .line 96
    .line 97
    invoke-static {v1}, Landroidx/appcompat/widget/v;->a(Landroid/graphics/Insets;)I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-lez v1, :cond_9

    .line 102
    .line 103
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 104
    .line 105
    iget-object v0, v0, Liu/r;->w:Landroid/widget/Space;

    .line 106
    .line 107
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    if-eqz v1, :cond_8

    .line 115
    .line 116
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 117
    .line 118
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    instance-of v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 123
    .line 124
    if-eqz v5, :cond_2

    .line 125
    .line 126
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_2
    move-object v3, v7

    .line 130
    :goto_2
    if-eqz v3, :cond_3

    .line 131
    .line 132
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_3
    move v3, v2

    .line 136
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    instance-of v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 141
    .line 142
    if-eqz v6, :cond_4

    .line 143
    .line 144
    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_4
    move-object v5, v7

    .line 148
    :goto_4
    if-eqz v5, :cond_5

    .line 149
    .line 150
    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 151
    .line 152
    goto :goto_5

    .line 153
    :cond_5
    move v5, v2

    .line 154
    :goto_5
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    instance-of v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 159
    .line 160
    if-eqz v6, :cond_6

    .line 161
    .line 162
    move-object v7, p0

    .line 163
    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 164
    .line 165
    :cond_6
    if-eqz v7, :cond_7

    .line 166
    .line 167
    iget v2, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 168
    .line 169
    :cond_7
    invoke-virtual {v1, v3, v5, v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    .line 174
    .line 175
    goto :goto_a

    .line 176
    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    .line 177
    .line 178
    invoke-direct {p0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw p0

    .line 182
    :cond_9
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 183
    .line 184
    iget-object v1, v1, Liu/r;->w:Landroid/widget/Space;

    .line 185
    .line 186
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    if-eqz v3, :cond_10

    .line 194
    .line 195
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 196
    .line 197
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    instance-of v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 202
    .line 203
    if-eqz v5, :cond_a

    .line 204
    .line 205
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 206
    .line 207
    goto :goto_6

    .line 208
    :cond_a
    move-object v4, v7

    .line 209
    :goto_6
    if-eqz v4, :cond_b

    .line 210
    .line 211
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 212
    .line 213
    goto :goto_7

    .line 214
    :cond_b
    move v4, v2

    .line 215
    :goto_7
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    instance-of v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 220
    .line 221
    if-eqz v6, :cond_c

    .line 222
    .line 223
    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 224
    .line 225
    goto :goto_8

    .line 226
    :cond_c
    move-object v5, v7

    .line 227
    :goto_8
    if-eqz v5, :cond_d

    .line 228
    .line 229
    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 230
    .line 231
    goto :goto_9

    .line 232
    :cond_d
    move v5, v2

    .line 233
    :goto_9
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    instance-of v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 238
    .line 239
    if-eqz v6, :cond_e

    .line 240
    .line 241
    move-object v7, p0

    .line 242
    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 243
    .line 244
    :cond_e
    if-eqz v7, :cond_f

    .line 245
    .line 246
    iget v2, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 247
    .line 248
    :cond_f
    invoke-virtual {v3, v4, v5, v2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    .line 253
    .line 254
    goto :goto_a

    .line 255
    :cond_10
    new-instance p0, Ljava/lang/NullPointerException;

    .line 256
    .line 257
    invoke-direct {p0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    throw p0

    .line 261
    :cond_11
    :goto_a
    return-void
.end method

.method private static final F()Lqx/a;
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

.method private final G(I)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->h:Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 2
    .line 3
    if-eqz v0, :cond_c

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getPlayInfo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_4

    .line 12
    .line 13
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->getResources()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Iterable;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x0

    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    move-object v3, v1

    .line 35
    check-cast v3, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;

    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;->getResolutions()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    move-object v1, v2

    .line 53
    :goto_0
    check-cast v1, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;

    .line 54
    .line 55
    if-nez v1, :cond_3

    .line 56
    .line 57
    return-void

    .line 58
    :cond_3
    new-instance v0, Lgn/e;

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;->getUrl()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;->getUrl()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    iget-object v3, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->h:Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 69
    .line 70
    const/4 v11, 0x0

    .line 71
    if-eqz v3, :cond_4

    .line 72
    .line 73
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    if-eqz v3, :cond_4

    .line 78
    .line 79
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->videoUGCPosition()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    move v6, v3

    .line 84
    goto :goto_1

    .line 85
    :cond_4
    move v6, v11

    .line 86
    :goto_1
    const/16 v9, 0x18

    .line 87
    .line 88
    const/4 v10, 0x0

    .line 89
    const/4 v7, 0x0

    .line 90
    const/4 v8, 0x0

    .line 91
    move-object v3, v0

    .line 92
    invoke-direct/range {v3 .. v10}, Lgn/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/transsion/player/enum/PlayMimeType;Lcom/transsion/player/mediasession/MediaItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 93
    .line 94
    .line 95
    iget-object v3, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->l:Lcom/transsion/player/orplayer/f;

    .line 96
    .line 97
    instance-of v4, v3, Lpn/f;

    .line 98
    .line 99
    if-eqz v4, :cond_5

    .line 100
    .line 101
    check-cast v3, Lpn/f;

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_5
    move-object v3, v2

    .line 105
    :goto_2
    if-eqz v3, :cond_6

    .line 106
    .line 107
    invoke-interface {v3}, Lpn/f;->b()Ljava/util/Map;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    if-eqz v3, :cond_6

    .line 112
    .line 113
    invoke-virtual {v0}, Lgn/e;->e()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v11

    .line 121
    :cond_6
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 122
    .line 123
    iget-object v4, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->a:Ljava/lang/String;

    .line 124
    .line 125
    iget-object v5, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->h:Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 126
    .line 127
    if-eqz v5, :cond_7

    .line 128
    .line 129
    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    if-eqz v5, :cond_7

    .line 134
    .line 135
    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->videoUGCPosition()I

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    :cond_7
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;->getUrl()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    new-instance v5, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    const-string v6, "resolution play, resolution:"

    .line 153
    .line 154
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string p1, ", EP:"

    .line 161
    .line 162
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string p1, ", inList:"

    .line 169
    .line 170
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string p1, ", url:"

    .line 177
    .line 178
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    const/4 v7, 0x4

    .line 189
    const/4 v8, 0x0

    .line 190
    const/4 v6, 0x0

    .line 191
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->l:Lcom/transsion/player/orplayer/f;

    .line 195
    .line 196
    if-eqz p1, :cond_8

    .line 197
    .line 198
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->getCurrentPosition()J

    .line 199
    .line 200
    .line 201
    move-result-wide v1

    .line 202
    goto :goto_3

    .line 203
    :cond_8
    const-wide/16 v1, 0x0

    .line 204
    .line 205
    :goto_3
    if-nez v11, :cond_a

    .line 206
    .line 207
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->l:Lcom/transsion/player/orplayer/f;

    .line 208
    .line 209
    if-eqz p1, :cond_9

    .line 210
    .line 211
    invoke-interface {p1, v0}, Lcom/transsion/player/orplayer/f;->addDataSource(Lgn/e;)Z

    .line 212
    .line 213
    .line 214
    :cond_9
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->l:Lcom/transsion/player/orplayer/f;

    .line 215
    .line 216
    if-eqz p1, :cond_a

    .line 217
    .line 218
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->prepare()V

    .line 219
    .line 220
    .line 221
    :cond_a
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->l:Lcom/transsion/player/orplayer/f;

    .line 222
    .line 223
    if-eqz p1, :cond_c

    .line 224
    .line 225
    invoke-virtual {v0}, Lgn/e;->e()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    if-nez v0, :cond_b

    .line 230
    .line 231
    const-string v0, ""

    .line 232
    .line 233
    :cond_b
    invoke-interface {p1, v0, v1, v2}, Lcom/transsion/player/orplayer/f;->seekTo(Ljava/lang/String;J)V

    .line 234
    .line 235
    .line 236
    :cond_c
    :goto_4
    return-void
.end method

.method private final H()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->getPlayerDelegate()Llu/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Llu/h;->e()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static final I(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Llu/h;
    .locals 2

    .line 1
    new-instance v0, Llu/h;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$d;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$d;-><init>(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Llu/h;-><init>(Llu/h$a;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method private static final J(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Llu/i;
    .locals 2

    .line 1
    new-instance v0, Llu/i;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$e;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$e;-><init>(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Llu/i;-><init>(Llu/i$a;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method private static final K(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 6

    .line 1
    const-string v0, "<unused var>"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getFilteredHashTags()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    const/4 p3, 0x0

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    invoke-static {p2, p4}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    check-cast p2, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object p2, p3

    .line 24
    :goto_0
    invoke-direct {p1}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->getReportDelegate()Llu/i;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p1, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->d:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->Y0()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    move-object v3, v1

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move-object v3, p3

    .line 43
    :goto_1
    if-eqz p2, :cond_2

    .line 44
    .line 45
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;->getTag()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    move-object v4, v1

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    move-object v4, p3

    .line 52
    :goto_2
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    const-string v1, "hash_tag"

    .line 57
    .line 58
    move-object v2, p0

    .line 59
    invoke-virtual/range {v0 .. v5}, Llu/i;->a(Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 60
    .line 61
    .line 62
    const-string p4, "/home/hashtag"

    .line 63
    .line 64
    invoke-static {p4}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 65
    .line 66
    .line 67
    move-result-object p4

    .line 68
    const-string v0, "titleHashTag"

    .line 69
    .line 70
    invoke-virtual {p4, v0, p2}, Lcom/therouter/router/Navigator;->I(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/therouter/router/Navigator;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    const-string p4, "UGCVideoId"

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {p2, p4, p0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    const/4 p2, 0x2

    .line 89
    invoke-static {p0, p1, p3, p2, p3}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method private final L()V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->P:J

    .line 6
    .line 7
    sub-long v2, v0, v2

    .line 8
    .line 9
    const-wide/16 v4, 0xdac

    .line 10
    .line 11
    cmp-long v2, v2, v4

    .line 12
    .line 13
    if-lez v2, :cond_0

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->P:J

    .line 16
    .line 17
    sget-object v0, Lfh/b;->a:Lfh/b$a;

    .line 18
    .line 19
    sget v1, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lfh/b$a;->d(I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method private final M()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->c:Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->c:Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 23
    .line 24
    sget-object v1, Lcom/transsion/ugcvideodetail/dialog/UGCImmVideoSettingDialog;->l:Lcom/transsion/ugcvideodetail/dialog/UGCImmVideoSettingDialog$a;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/dialog/UGCImmVideoSettingDialog$a;->a()Lcom/transsion/ugcvideodetail/dialog/UGCImmVideoSettingDialog;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    new-instance v2, Lku/a;

    .line 31
    .line 32
    invoke-direct {v2, p0}, Lku/a;-><init>(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Lcom/transsion/ugcvideodetail/dialog/UGCImmVideoSettingDialog;->u0(Lkotlin/jvm/functions/Function1;)V

    .line 36
    .line 37
    .line 38
    new-instance v2, Lku/i;

    .line 39
    .line 40
    invoke-direct {v2, p0}, Lku/i;-><init>(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Lcom/transsion/ugcvideodetail/dialog/UGCImmVideoSettingDialog;->t0(Lkotlin/jvm/functions/Function1;)V

    .line 44
    .line 45
    .line 46
    new-instance v2, Lku/j;

    .line 47
    .line 48
    invoke-direct {v2, p0}, Lku/j;-><init>(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Lcom/transsion/ugcvideodetail/dialog/UGCImmVideoSettingDialog;->v0(Lkotlin/jvm/functions/Function1;)V

    .line 52
    .line 53
    .line 54
    new-instance v2, Lku/k;

    .line 55
    .line 56
    invoke-direct {v2, p0}, Lku/k;-><init>(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2}, Lcom/transsion/ugcvideodetail/dialog/UGCImmVideoSettingDialog;->s0(Lkotlin/jvm/functions/Function0;)V

    .line 60
    .line 61
    .line 62
    new-instance v2, Lku/l;

    .line 63
    .line 64
    invoke-direct {v2, p0}, Lku/l;-><init>(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Lcom/transsion/ugcvideodetail/dialog/UGCImmVideoSettingDialog;->r0(Lkotlin/jvm/functions/Function1;)V

    .line 68
    .line 69
    .line 70
    const-string v2, "UGCImmVideoSettingDialog"

    .line 71
    .line 72
    invoke-virtual {v1, v0, v2}, Lcom/transsion/baseui/dialog/BaseDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    .line 81
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 82
    .line 83
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    .line 92
    .line 93
    .line 94
    :cond_0
    return-void
.end method

.method private static final N(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;F)Lkotlin/Unit;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->d:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->e1(F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->l:Lcom/transsion/player/orplayer/f;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/f;->setSpeed(F)V

    .line 13
    .line 14
    .line 15
    :cond_1
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->a:Ljava/lang/String;

    .line 18
    .line 19
    new-instance p0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v0, "setSpeed speed:"

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const/4 v5, 0x4

    .line 37
    const/4 v6, 0x0

    .line 38
    const/4 v4, 0x0

    .line 39
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 43
    .line 44
    return-object p0
.end method

.method private static final O(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;I)Lkotlin/Unit;
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->a:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "resolution change:"

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v4, 0x4

    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, p1}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->G(I)V

    .line 29
    .line 30
    .line 31
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 32
    .line 33
    return-object p0
.end method

.method private static final P(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;Lht/a;)Lkotlin/Unit;
    .locals 7

    .line 1
    const-string v0, "subtitle"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->a:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v3, "subtitle change:"

    .line 16
    .line 17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const/4 v5, 0x4

    .line 28
    const/4 v6, 0x0

    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->getSubtitleDelegate()Llu/n;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0, p1}, Llu/n;->o(Lht/a;)V

    .line 38
    .line 39
    .line 40
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 41
    .line 42
    return-object p0
.end method

.method private static final Q(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Lkotlin/Unit;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->Q:Z

    .line 3
    .line 4
    new-instance v0, Lku/h;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lku/h;-><init>(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->setControlVisible(Z)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method

.method private static final R(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->c:Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->with(Landroidx/fragment/app/Fragment;)Lcom/gyf/immersionbar/ImmersionBar;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    sget-object v0, Lcom/gyf/immersionbar/BarHide;->FLAG_HIDE_BAR:Lcom/gyf/immersionbar/BarHide;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/gyf/immersionbar/ImmersionBar;->hideBar(Lcom/gyf/immersionbar/BarHide;)Lcom/gyf/immersionbar/ImmersionBar;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lcom/gyf/immersionbar/ImmersionBar;->init()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method private static final S(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;Z)Lkotlin/Unit;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->l:Lcom/transsion/player/orplayer/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    xor-int/lit8 v1, p1, 0x1

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/transsion/player/orplayer/f;->setLooping(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 11
    .line 12
    iget-object v3, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->a:Ljava/lang/String;

    .line 13
    .line 14
    new-instance p0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v0, "autoplay change:"

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    const/4 v6, 0x4

    .line 32
    const/4 v7, 0x0

    .line 33
    const/4 v5, 0x0

    .line 34
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 38
    .line 39
    return-object p0
.end method

.method private static final T(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;Lkotlin/Pair;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Ljava/lang/String;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v1, v0

    .line 12
    :goto_0
    iget-object v2, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->h:Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCreator()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;->getUid()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :cond_1
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    iget-boolean v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->H:Z

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    iput-boolean v1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->H:Z

    .line 45
    .line 46
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 47
    .line 48
    iget-object v1, v1, Liu/r;->u:Landroid/widget/ProgressBar;

    .line 49
    .line 50
    const-string v2, "pbUgcImmSubscribeLoading"

    .line 51
    .line 52
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v1}, Luf/c;->g(Landroid/view/View;)V

    .line 56
    .line 57
    .line 58
    :cond_3
    const-string v1, "ivUgcImmSubscribe"

    .line 59
    .line 60
    if-eqz p1, :cond_7

    .line 61
    .line 62
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Ljava/lang/Boolean;

    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_4

    .line 73
    .line 74
    iget-object v2, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 75
    .line 76
    iget-object v2, v2, Liu/r;->p:Landroidx/appcompat/widget/AppCompatImageView;

    .line 77
    .line 78
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-static {v2}, Luf/c;->g(Landroid/view/View;)V

    .line 82
    .line 83
    .line 84
    :cond_4
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->h:Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 85
    .line 86
    if-eqz v1, :cond_5

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    if-eqz v1, :cond_5

    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCreator()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    if-eqz v1, :cond_5

    .line 99
    .line 100
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, Ljava/lang/Boolean;

    .line 105
    .line 106
    invoke-virtual {v1, v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;->setHasSubscribe(Ljava/lang/Boolean;)V

    .line 107
    .line 108
    .line 109
    :cond_5
    if-eqz v0, :cond_8

    .line 110
    .line 111
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Ljava/lang/Boolean;

    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_6

    .line 122
    .line 123
    sget v0, Lcom/transsion/baseui/R$string;->ugc_video_detail_followed:I

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_6
    sget v0, Lcom/transsion/baseui/R$string;->ugc_video_detail_unfollowed:I

    .line 127
    .line 128
    :goto_1
    invoke-static {v0}, Lcom/transsion/baseui/util/m;->c(I)V

    .line 129
    .line 130
    .line 131
    iget-object p0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->h:Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 132
    .line 133
    if-eqz p0, :cond_8

    .line 134
    .line 135
    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    if-eqz p0, :cond_8

    .line 140
    .line 141
    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCreator()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    if-eqz p0, :cond_8

    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;->getUid()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    if-eqz p0, :cond_8

    .line 152
    .line 153
    new-instance v0, Lgu/d;

    .line 154
    .line 155
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    check-cast p1, Ljava/lang/Boolean;

    .line 160
    .line 161
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    invoke-direct {v0, p0, p1}, Lgu/d;-><init>(Ljava/lang/String;Z)V

    .line 166
    .line 167
    .line 168
    sget-object p0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 169
    .line 170
    const-class p1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 171
    .line 172
    invoke-virtual {p0, p1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    check-cast p0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 177
    .line 178
    const-class p1, Lgu/d;

    .line 179
    .line 180
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    const-string v1, "getName(...)"

    .line 185
    .line 186
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    const-wide/16 v1, 0x0

    .line 190
    .line 191
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 192
    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_7
    if-eqz v0, :cond_8

    .line 196
    .line 197
    iget-object p0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 198
    .line 199
    iget-object p0, p0, Liu/r;->p:Landroidx/appcompat/widget/AppCompatImageView;

    .line 200
    .line 201
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-static {p0}, Luf/c;->k(Landroid/view/View;)V

    .line 205
    .line 206
    .line 207
    :cond_8
    :goto_2
    return-void
.end method

.method private static final U(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Llu/n;
    .locals 2

    .line 1
    new-instance v0, Llu/n;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$g;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$g;-><init>(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Llu/n;-><init>(Llu/n$a;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method private final V(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 3
    .line 4
    .line 5
    iget p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->y:I

    .line 6
    .line 7
    iput p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->B:I

    .line 8
    .line 9
    invoke-direct {p0, v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->setDownloadLoadingIconVisibility(Z)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 13
    .line 14
    iget-object p1, p1, Liu/r;->k:Landroidx/appcompat/widget/AppCompatImageView;

    .line 15
    .line 16
    sget v0, Lcom/transsion/ugcvideodetail/R$drawable;->ugc_imm_video_ic_download:I

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :pswitch_0
    iget p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->A:I

    .line 23
    .line 24
    iput p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->B:I

    .line 25
    .line 26
    invoke-direct {p0, v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->setDownloadLoadingIconVisibility(Z)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 30
    .line 31
    iget-object p1, p1, Liu/r;->k:Landroidx/appcompat/widget/AppCompatImageView;

    .line 32
    .line 33
    sget v0, Lcom/transsion/ugcvideodetail/R$drawable;->ugc_imm_video_ic_downloaded:I

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :pswitch_1
    iget p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->z:I

    .line 40
    .line 41
    iput p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->B:I

    .line 42
    .line 43
    const/4 p1, 0x1

    .line 44
    invoke-direct {p0, p1}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->setDownloadLoadingIconVisibility(Z)V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final W(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->getPlayerDelegate()Llu/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Llu/h;->g(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final X(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->getPlayerDelegate()Llu/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Llu/h;->h(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final Y(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 11

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    if-eqz p2, :cond_6

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_0
    iget v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->u:I

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-le v1, v2, :cond_1

    .line 24
    .line 25
    invoke-static {}, Lcom/blankj/utilcode/util/y;->c()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    int-to-float v1, v1

    .line 30
    const v2, 0x3e0f5c29    # 0.14f

    .line 31
    .line 32
    .line 33
    mul-float/2addr v1, v2

    .line 34
    float-to-int v1, v1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    :goto_0
    iget-object v2, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 38
    .line 39
    iget-object v2, v2, Liu/r;->d:Landroid/widget/FrameLayout;

    .line 40
    .line 41
    const-string v3, "flUgcImmContainer"

    .line 42
    .line 43
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    const-string v4, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    .line 51
    .line 52
    if-eqz v3, :cond_5

    .line 53
    .line 54
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 55
    .line 56
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    iget v5, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->u:I

    .line 61
    .line 62
    mul-int/2addr p2, v5

    .line 63
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    div-int/2addr p2, p1

    .line 68
    iget p1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 69
    .line 70
    if-ne v0, p1, :cond_2

    .line 71
    .line 72
    iget p1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 73
    .line 74
    if-eq p2, p1, :cond_3

    .line 75
    .line 76
    :cond_2
    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 77
    .line 78
    iput p2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 79
    .line 80
    sget-object v5, Lwf/a;->a:Lwf/a$a;

    .line 81
    .line 82
    iget-object v6, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->a:Ljava/lang/String;

    .line 83
    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v7, "=====> updateSurface, w:"

    .line 90
    .line 91
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v0, ", h:"

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    const/4 v9, 0x4

    .line 110
    const/4 v10, 0x0

    .line 111
    const/4 v8, 0x0

    .line 112
    invoke-static/range {v5 .. v10}, Lwf/a$a;->v(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    :cond_3
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 116
    .line 117
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 121
    .line 122
    iget-object p1, p1, Liu/r;->j:Landroidx/appcompat/widget/AppCompatImageView;

    .line 123
    .line 124
    const-string p2, "ivUgcImmCover"

    .line 125
    .line 126
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    if-eqz p2, :cond_4

    .line 134
    .line 135
    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 136
    .line 137
    iput v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 138
    .line 139
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    .line 144
    .line 145
    invoke-direct {p1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw p1

    .line 149
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    .line 150
    .line 151
    invoke-direct {p1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw p1

    .line 155
    :cond_6
    :goto_1
    return-void
.end method

.method public static final synthetic access$getData$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->h:Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getDetailViewModel$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->d:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getDotLayer$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Lcom/transsion/ugcvideodetail/hepler/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->g:Lcom/transsion/ugcvideodetail/hepler/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getDownloadViewModel$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->f:Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getFragment$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->c:Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getLoginApi(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Lqx/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->getLoginApi()Lqx/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getOrPlayer$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Lcom/transsion/player/orplayer/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->l:Lcom/transsion/player/orplayer/f;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getPagerLayoutManager$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Lcom/tn/lib/pager/PagerLayoutManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->n:Lcom/tn/lib/pager/PagerLayoutManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getPreviousPageVideoId$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getPreviousTrackId$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getScreenWidth$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->u:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getSubtitleDelegate(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Llu/n;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->getSubtitleDelegate()Llu/n;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getSubtitleViewModel$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Lcom/transsion/ugcvideodetail/hepler/subtitle/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->e:Lcom/transsion/ugcvideodetail/hepler/subtitle/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getTrackId$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getViewBinding$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Liu/r;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$isDownloadImmediately$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->x:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$isLoading$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->L:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$playVideo(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->H()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setClickPause$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->v:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setControlVisible(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->setControlVisible(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setDownloadLoadingIconVisibility(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->setDownloadLoadingIconVisibility(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setSubscriptionInitiatedByThisView$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->H:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$showSettingDialog(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->M()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$updateProgress(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->W(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final getActionDelegate()Llu/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->r:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Llu/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getDownloadDelegate()Llu/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->p:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Llu/e;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getGestureDelegate()Llu/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->t:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Llu/g;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getLoginApi()Lqx/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->I:Lkotlin/Lazy;

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

.method private final getPlayerDelegate()Llu/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->q:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Llu/h;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getReportDelegate()Llu/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->o:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Llu/i;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getSubtitleDelegate()Llu/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->s:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Llu/n;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic h(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;Lht/a;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->P(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;Lht/a;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->S(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->z(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic k(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Llu/g;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->B(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Llu/g;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;Lkotlin/Pair;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->T(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;Lkotlin/Pair;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic m(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Llu/e;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->A(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Llu/e;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic n()Lqx/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->F()Lqx/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic o(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->Q(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->E(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic q(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Llu/h;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->I(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Llu/h;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic r(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Llu/a;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->y(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Llu/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic s(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->K(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final setContent(Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 7
    .line 8
    .line 9
    move-result-object v4

    .line 10
    if-nez v4, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCreator()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    const-string v6, ""

    .line 18
    .line 19
    if-eqz v5, :cond_2

    .line 20
    .line 21
    sget-object v7, Lni/f;->a:Lni/f$a;

    .line 22
    .line 23
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v8

    .line 27
    const-string v9, "getContext(...)"

    .line 28
    .line 29
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v7, v8}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;->getAvatar()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    if-nez v8, :cond_1

    .line 41
    .line 42
    move-object v8, v6

    .line 43
    :cond_1
    invoke-virtual {v7, v8}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    sget v8, Lcom/transsion/wrapperad/R$color;->white_20:I

    .line 48
    .line 49
    invoke-virtual {v7, v8}, Lni/f$b;->i(I)Lni/f$b;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    iget-object v8, v1, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 54
    .line 55
    iget-object v8, v8, Liu/r;->q:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 56
    .line 57
    const-string v9, "ivUgcImmUserCover"

    .line 58
    .line 59
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v7, v8}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 63
    .line 64
    .line 65
    iget-object v7, v1, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 66
    .line 67
    iget-object v7, v7, Liu/r;->H:Landroidx/appcompat/widget/AppCompatTextView;

    .line 68
    .line 69
    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;->getNickname()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    iget-object v5, v1, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->d:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 77
    .line 78
    const/4 v7, 0x0

    .line 79
    if-eqz v5, :cond_5

    .line 80
    .line 81
    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->Y0()Z

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    if-ne v5, v3, :cond_5

    .line 86
    .line 87
    iget-object v5, v1, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->d:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 88
    .line 89
    if-eqz v5, :cond_3

    .line 90
    .line 91
    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->I0()Landroidx/lifecycle/LiveData;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    if-eqz v5, :cond_3

    .line 96
    .line 97
    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    check-cast v5, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_3
    move-object v5, v7

    .line 105
    :goto_0
    if-eqz v5, :cond_4

    .line 106
    .line 107
    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    if-eqz v5, :cond_4

    .line 112
    .line 113
    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCreator()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    if-eqz v5, :cond_4

    .line 118
    .line 119
    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;->getHasSubscribe()Ljava/lang/Boolean;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 124
    .line 125
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    goto :goto_1

    .line 130
    :cond_4
    move v5, v2

    .line 131
    goto :goto_1

    .line 132
    :cond_5
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCreator()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    if-eqz v5, :cond_4

    .line 137
    .line 138
    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;->getHasSubscribe()Ljava/lang/Boolean;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 143
    .line 144
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    :goto_1
    iget-object v8, v1, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 149
    .line 150
    iget-object v8, v8, Liu/r;->p:Landroidx/appcompat/widget/AppCompatImageView;

    .line 151
    .line 152
    const-string v9, "ivUgcImmSubscribe"

    .line 153
    .line 154
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    const/16 v9, 0x8

    .line 158
    .line 159
    if-nez v5, :cond_6

    .line 160
    .line 161
    move v10, v2

    .line 162
    goto :goto_2

    .line 163
    :cond_6
    move v10, v9

    .line 164
    :goto_2
    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    .line 165
    .line 166
    .line 167
    iget-object v8, v1, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 168
    .line 169
    iget-object v8, v8, Liu/r;->H:Landroidx/appcompat/widget/AppCompatTextView;

    .line 170
    .line 171
    iget v10, v1, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->u:I

    .line 172
    .line 173
    if-eqz v5, :cond_7

    .line 174
    .line 175
    const/16 v5, 0x76

    .line 176
    .line 177
    :goto_3
    invoke-static {v5}, Llj/a;->b(I)I

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    goto :goto_4

    .line 182
    :cond_7
    const/16 v5, 0x8e

    .line 183
    .line 184
    goto :goto_3

    .line 185
    :goto_4
    sub-int/2addr v10, v5

    .line 186
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getDescription()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    const-string v8, "nsUgcImmPostDes"

    .line 194
    .line 195
    if-eqz v5, :cond_a

    .line 196
    .line 197
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    if-nez v5, :cond_8

    .line 202
    .line 203
    goto :goto_6

    .line 204
    :cond_8
    iget-object v5, v1, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 205
    .line 206
    iget-object v5, v5, Liu/r;->c:Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;

    .line 207
    .line 208
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getDescription()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v10

    .line 212
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->videoUGCPosition()I

    .line 216
    .line 217
    .line 218
    move-result v5

    .line 219
    if-lez v5, :cond_9

    .line 220
    .line 221
    sget-object v5, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 222
    .line 223
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->videoUGCPosition()I

    .line 224
    .line 225
    .line 226
    move-result v5

    .line 227
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getDescription()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v10

    .line 235
    new-array v11, v0, [Ljava/lang/Object;

    .line 236
    .line 237
    aput-object v5, v11, v2

    .line 238
    .line 239
    aput-object v10, v11, v3

    .line 240
    .line 241
    invoke-static {v11, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    const-string v10, "EP%s | %s"

    .line 246
    .line 247
    invoke-static {v10, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v5

    .line 251
    const-string v10, "format(...)"

    .line 252
    .line 253
    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    goto :goto_5

    .line 257
    :cond_9
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getDescription()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v5

    .line 261
    :goto_5
    iget-object v10, v1, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 262
    .line 263
    iget-object v10, v10, Liu/r;->c:Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;

    .line 264
    .line 265
    invoke-virtual {v10, v5}, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->setTitle(Ljava/lang/CharSequence;)V

    .line 266
    .line 267
    .line 268
    iget-object v5, v1, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 269
    .line 270
    iget-object v5, v5, Liu/r;->t:Lcom/transsion/baseui/widget/NestedScrollableHost;

    .line 271
    .line 272
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    invoke-static {v5}, Luf/c;->k(Landroid/view/View;)V

    .line 276
    .line 277
    .line 278
    goto :goto_7

    .line 279
    :cond_a
    :goto_6
    iget-object v5, v1, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 280
    .line 281
    iget-object v5, v5, Liu/r;->t:Lcom/transsion/baseui/widget/NestedScrollableHost;

    .line 282
    .line 283
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    invoke-static {v5}, Luf/c;->g(Landroid/view/View;)V

    .line 287
    .line 288
    .line 289
    :goto_7
    iget-object v5, v1, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 290
    .line 291
    iget-object v5, v5, Liu/r;->x:Landroidx/recyclerview/widget/RecyclerView;

    .line 292
    .line 293
    new-instance v8, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 294
    .line 295
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 296
    .line 297
    .line 298
    move-result-object v10

    .line 299
    invoke-direct {v8, v10, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v5, v8}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 303
    .line 304
    .line 305
    iget-object v8, v1, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 306
    .line 307
    iget-object v8, v8, Liu/r;->x:Landroidx/recyclerview/widget/RecyclerView;

    .line 308
    .line 309
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 310
    .line 311
    .line 312
    move-result v8

    .line 313
    if-nez v8, :cond_b

    .line 314
    .line 315
    new-instance v8, Ltf/c;

    .line 316
    .line 317
    const/16 v10, 0xc

    .line 318
    .line 319
    invoke-static {v10}, Llj/a;->b(I)I

    .line 320
    .line 321
    .line 322
    move-result v10

    .line 323
    invoke-static {v9}, Llj/a;->b(I)I

    .line 324
    .line 325
    .line 326
    move-result v9

    .line 327
    invoke-direct {v8, v10, v9}, Ltf/c;-><init>(II)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v5, v8}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 331
    .line 332
    .line 333
    :cond_b
    invoke-direct {v1, v4}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->setupHashTags(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getInteractiveInfo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;

    .line 337
    .line 338
    .line 339
    move-result-object v5

    .line 340
    if-eqz v5, :cond_12

    .line 341
    .line 342
    iget-object v8, v1, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 343
    .line 344
    iget-object v8, v8, Liu/r;->D:Landroidx/appcompat/widget/AppCompatTextView;

    .line 345
    .line 346
    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;->getLikeNum()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v9

    .line 350
    const-string v10, "0"

    .line 351
    .line 352
    if-nez v9, :cond_c

    .line 353
    .line 354
    move-object v9, v10

    .line 355
    :cond_c
    invoke-static {v9}, Lkotlin/text/StringsKt;->x(Ljava/lang/String;)Ljava/lang/Long;

    .line 356
    .line 357
    .line 358
    move-result-object v9

    .line 359
    const-wide/16 v11, 0x0

    .line 360
    .line 361
    if-eqz v9, :cond_d

    .line 362
    .line 363
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 364
    .line 365
    .line 366
    move-result-wide v13

    .line 367
    goto :goto_8

    .line 368
    :cond_d
    move-wide v13, v11

    .line 369
    :goto_8
    invoke-static {v13, v14}, Lcom/transsion/baseui/util/j;->a(J)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v9

    .line 373
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    .line 375
    .line 376
    iget-object v8, v1, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 377
    .line 378
    iget-object v8, v8, Liu/r;->D:Landroidx/appcompat/widget/AppCompatTextView;

    .line 379
    .line 380
    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;->getHasLike()Ljava/lang/Boolean;

    .line 381
    .line 382
    .line 383
    move-result-object v9

    .line 384
    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 385
    .line 386
    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    move-result v9

    .line 390
    invoke-virtual {v8, v9}, Landroid/view/View;->setSelected(Z)V

    .line 391
    .line 392
    .line 393
    iget-object v8, v1, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 394
    .line 395
    iget-object v8, v8, Liu/r;->C:Landroidx/appcompat/widget/AppCompatTextView;

    .line 396
    .line 397
    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;->getFavoriteNum()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v9

    .line 401
    if-nez v9, :cond_e

    .line 402
    .line 403
    move-object v9, v10

    .line 404
    :cond_e
    invoke-static {v9}, Lkotlin/text/StringsKt;->x(Ljava/lang/String;)Ljava/lang/Long;

    .line 405
    .line 406
    .line 407
    move-result-object v9

    .line 408
    if-eqz v9, :cond_f

    .line 409
    .line 410
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 411
    .line 412
    .line 413
    move-result-wide v14

    .line 414
    goto :goto_9

    .line 415
    :cond_f
    move-wide v14, v11

    .line 416
    :goto_9
    invoke-static {v14, v15}, Lcom/transsion/baseui/util/j;->a(J)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v9

    .line 420
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    .line 422
    .line 423
    iget-object v8, v1, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 424
    .line 425
    iget-object v8, v8, Liu/r;->C:Landroidx/appcompat/widget/AppCompatTextView;

    .line 426
    .line 427
    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;->getHasFavorite()Ljava/lang/Boolean;

    .line 428
    .line 429
    .line 430
    move-result-object v9

    .line 431
    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 432
    .line 433
    .line 434
    move-result v9

    .line 435
    invoke-virtual {v8, v9}, Landroid/view/View;->setSelected(Z)V

    .line 436
    .line 437
    .line 438
    iget-object v8, v1, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 439
    .line 440
    iget-object v8, v8, Liu/r;->z:Landroidx/appcompat/widget/AppCompatTextView;

    .line 441
    .line 442
    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;->getCommentNum()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v5

    .line 446
    if-nez v5, :cond_10

    .line 447
    .line 448
    goto :goto_a

    .line 449
    :cond_10
    move-object v10, v5

    .line 450
    :goto_a
    invoke-static {v10}, Lkotlin/text/StringsKt;->x(Ljava/lang/String;)Ljava/lang/Long;

    .line 451
    .line 452
    .line 453
    move-result-object v5

    .line 454
    if-eqz v5, :cond_11

    .line 455
    .line 456
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 457
    .line 458
    .line 459
    move-result-wide v11

    .line 460
    :cond_11
    invoke-static {v11, v12}, Lcom/transsion/baseui/util/j;->a(J)Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v5

    .line 464
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    .line 466
    .line 467
    :cond_12
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->isCollection()Z

    .line 468
    .line 469
    .line 470
    move-result v5

    .line 471
    const-string v8, " "

    .line 472
    .line 473
    const-string v9, "layoutUgcImmTvEpisode"

    .line 474
    .line 475
    if-eqz v5, :cond_17

    .line 476
    .line 477
    iput-boolean v3, v1, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->D:Z

    .line 478
    .line 479
    iget-object v5, v1, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 480
    .line 481
    iget-object v5, v5, Liu/r;->r:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 482
    .line 483
    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    invoke-static {v5}, Luf/c;->k(Landroid/view/View;)V

    .line 487
    .line 488
    .line 489
    iget-object v5, v1, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 490
    .line 491
    iget-object v5, v5, Liu/r;->B:Landroidx/appcompat/widget/AppCompatTextView;

    .line 492
    .line 493
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->isShortTv()Z

    .line 494
    .line 495
    .line 496
    move-result v9

    .line 497
    if-eqz v9, :cond_14

    .line 498
    .line 499
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 500
    .line 501
    .line 502
    move-result-object v6

    .line 503
    sget v9, Lcom/transsion/ugcvideodetail/R$string;->ugc_video_detail_short_tv_prefix:I

    .line 504
    .line 505
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTitle()Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v10

    .line 509
    if-nez v10, :cond_13

    .line 510
    .line 511
    move-object v10, v8

    .line 512
    :cond_13
    new-array v11, v3, [Ljava/lang/Object;

    .line 513
    .line 514
    aput-object v10, v11, v2

    .line 515
    .line 516
    invoke-virtual {v6, v9, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v6

    .line 520
    goto :goto_b

    .line 521
    :cond_14
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTitle()Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v9

    .line 525
    if-nez v9, :cond_15

    .line 526
    .line 527
    goto :goto_b

    .line 528
    :cond_15
    move-object v6, v9

    .line 529
    :goto_b
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    .line 531
    .line 532
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->videoUGCPosition()I

    .line 533
    .line 534
    .line 535
    move-result v5

    .line 536
    if-lez v5, :cond_16

    .line 537
    .line 538
    iget-object v6, v1, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 539
    .line 540
    iget-object v6, v6, Liu/r;->A:Landroidx/appcompat/widget/AppCompatTextView;

    .line 541
    .line 542
    new-instance v9, Ljava/lang/StringBuilder;

    .line 543
    .line 544
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 545
    .line 546
    .line 547
    const-string v10, "/EP"

    .line 548
    .line 549
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v5

    .line 559
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 560
    .line 561
    .line 562
    :cond_16
    iget-object v5, v1, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 563
    .line 564
    iget-object v5, v5, Liu/r;->m:Landroidx/appcompat/widget/AppCompatImageView;

    .line 565
    .line 566
    const-string v6, "ivUgcImmEpTitleIc"

    .line 567
    .line 568
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    const/16 v6, 0x10

    .line 572
    .line 573
    invoke-static {v6}, Llj/a;->b(I)I

    .line 574
    .line 575
    .line 576
    move-result v6

    .line 577
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 578
    .line 579
    .line 580
    move-result-object v6

    .line 581
    invoke-static {v5, v4, v6}, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;->h(Landroid/widget/ImageView;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Integer;)V

    .line 582
    .line 583
    .line 584
    goto :goto_c

    .line 585
    :cond_17
    iput-boolean v2, v1, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->D:Z

    .line 586
    .line 587
    iget-object v5, v1, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 588
    .line 589
    iget-object v5, v5, Liu/r;->r:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 590
    .line 591
    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 592
    .line 593
    .line 594
    invoke-static {v5}, Luf/c;->g(Landroid/view/View;)V

    .line 595
    .line 596
    .line 597
    :goto_c
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getSearchWord()Ljava/util/List;

    .line 598
    .line 599
    .line 600
    move-result-object v5

    .line 601
    check-cast v5, Ljava/util/Collection;

    .line 602
    .line 603
    const-string v6, "layoutUgcImmTvSearch"

    .line 604
    .line 605
    if-eqz v5, :cond_1b

    .line 606
    .line 607
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 608
    .line 609
    .line 610
    move-result v5

    .line 611
    if-eqz v5, :cond_18

    .line 612
    .line 613
    goto :goto_e

    .line 614
    :cond_18
    iput-boolean v3, v1, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->C:Z

    .line 615
    .line 616
    iget-object v5, v1, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 617
    .line 618
    iget-object v5, v5, Liu/r;->s:Landroid/widget/FrameLayout;

    .line 619
    .line 620
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 621
    .line 622
    .line 623
    invoke-static {v5}, Luf/c;->k(Landroid/view/View;)V

    .line 624
    .line 625
    .line 626
    iget-object v5, v1, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 627
    .line 628
    iget-object v5, v5, Liu/r;->G:Landroid/widget/TextView;

    .line 629
    .line 630
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 631
    .line 632
    .line 633
    move-result-object v6

    .line 634
    sget v9, Lcom/transsion/ugcvideodetail/R$string;->ugc_video_detail_search_prefix:I

    .line 635
    .line 636
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getSearchWord()Ljava/util/List;

    .line 637
    .line 638
    .line 639
    move-result-object v10

    .line 640
    if-eqz v10, :cond_1a

    .line 641
    .line 642
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 643
    .line 644
    .line 645
    move-result-object v10

    .line 646
    check-cast v10, Ljava/lang/String;

    .line 647
    .line 648
    if-nez v10, :cond_19

    .line 649
    .line 650
    goto :goto_d

    .line 651
    :cond_19
    move-object v8, v10

    .line 652
    :cond_1a
    :goto_d
    new-array v10, v3, [Ljava/lang/Object;

    .line 653
    .line 654
    aput-object v8, v10, v2

    .line 655
    .line 656
    invoke-virtual {v6, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 657
    .line 658
    .line 659
    move-result-object v6

    .line 660
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 661
    .line 662
    .line 663
    goto :goto_f

    .line 664
    :cond_1b
    :goto_e
    iput-boolean v2, v1, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->C:Z

    .line 665
    .line 666
    iget-object v5, v1, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 667
    .line 668
    iget-object v5, v5, Liu/r;->s:Landroid/widget/FrameLayout;

    .line 669
    .line 670
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 671
    .line 672
    .line 673
    invoke-static {v5}, Luf/c;->g(Landroid/view/View;)V

    .line 674
    .line 675
    .line 676
    :goto_f
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getPlayInfo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;

    .line 677
    .line 678
    .line 679
    move-result-object v5

    .line 680
    if-eqz v5, :cond_1d

    .line 681
    .line 682
    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->getFirstImage()Lcom/transsion/moviedetailapi/bean/FirstFrame;

    .line 683
    .line 684
    .line 685
    move-result-object v5

    .line 686
    if-eqz v5, :cond_1d

    .line 687
    .line 688
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/FirstFrame;->getUrl()Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object v5

    .line 692
    if-nez v5, :cond_1c

    .line 693
    .line 694
    goto :goto_11

    .line 695
    :cond_1c
    :goto_10
    move-object v9, v5

    .line 696
    goto :goto_13

    .line 697
    :cond_1d
    :goto_11
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCoverVertical()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 698
    .line 699
    .line 700
    move-result-object v5

    .line 701
    if-eqz v5, :cond_1e

    .line 702
    .line 703
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 704
    .line 705
    .line 706
    move-result-object v5

    .line 707
    goto :goto_12

    .line 708
    :cond_1e
    move-object v5, v7

    .line 709
    :goto_12
    if-nez v5, :cond_1c

    .line 710
    .line 711
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 712
    .line 713
    .line 714
    move-result-object v5

    .line 715
    if-eqz v5, :cond_1f

    .line 716
    .line 717
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 718
    .line 719
    .line 720
    move-result-object v5

    .line 721
    goto :goto_10

    .line 722
    :cond_1f
    move-object v9, v7

    .line 723
    :goto_13
    iget v5, v1, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->u:I

    .line 724
    .line 725
    div-int/lit8 v10, v5, 0x2

    .line 726
    .line 727
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 728
    .line 729
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getPlayInfo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;

    .line 730
    .line 731
    .line 732
    move-result-object v0

    .line 733
    if-eqz v0, :cond_20

    .line 734
    .line 735
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->getFirstImage()Lcom/transsion/moviedetailapi/bean/FirstFrame;

    .line 736
    .line 737
    .line 738
    move-result-object v0

    .line 739
    goto :goto_14

    .line 740
    :catchall_0
    move-exception v0

    .line 741
    goto/16 :goto_19

    .line 742
    .line 743
    :cond_20
    move-object v0, v7

    .line 744
    :goto_14
    if-eqz v0, :cond_23

    .line 745
    .line 746
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getPlayInfo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;

    .line 747
    .line 748
    .line 749
    move-result-object v0

    .line 750
    if-eqz v0, :cond_21

    .line 751
    .line 752
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->getFirstImage()Lcom/transsion/moviedetailapi/bean/FirstFrame;

    .line 753
    .line 754
    .line 755
    move-result-object v0

    .line 756
    if-eqz v0, :cond_21

    .line 757
    .line 758
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/FirstFrame;->getHeight()Ljava/lang/Integer;

    .line 759
    .line 760
    .line 761
    move-result-object v0

    .line 762
    if-eqz v0, :cond_21

    .line 763
    .line 764
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 765
    .line 766
    .line 767
    move-result v0

    .line 768
    goto :goto_15

    .line 769
    :cond_21
    move v0, v2

    .line 770
    :goto_15
    mul-int/2addr v0, v10

    .line 771
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getPlayInfo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;

    .line 772
    .line 773
    .line 774
    move-result-object v5

    .line 775
    if-eqz v5, :cond_22

    .line 776
    .line 777
    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->getFirstImage()Lcom/transsion/moviedetailapi/bean/FirstFrame;

    .line 778
    .line 779
    .line 780
    move-result-object v5

    .line 781
    if-eqz v5, :cond_22

    .line 782
    .line 783
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/FirstFrame;->getWidth()Ljava/lang/Integer;

    .line 784
    .line 785
    .line 786
    move-result-object v5

    .line 787
    if-eqz v5, :cond_22

    .line 788
    .line 789
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 790
    .line 791
    .line 792
    move-result v3

    .line 793
    :cond_22
    div-int/2addr v0, v3

    .line 794
    goto :goto_18

    .line 795
    :cond_23
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCoverVertical()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 796
    .line 797
    .line 798
    move-result-object v0

    .line 799
    if-eqz v0, :cond_26

    .line 800
    .line 801
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCoverVertical()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 802
    .line 803
    .line 804
    move-result-object v0

    .line 805
    if-eqz v0, :cond_24

    .line 806
    .line 807
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Cover;->getHeight()Ljava/lang/Integer;

    .line 808
    .line 809
    .line 810
    move-result-object v0

    .line 811
    if-eqz v0, :cond_24

    .line 812
    .line 813
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 814
    .line 815
    .line 816
    move-result v0

    .line 817
    goto :goto_16

    .line 818
    :cond_24
    move v0, v2

    .line 819
    :goto_16
    mul-int/2addr v0, v10

    .line 820
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCoverVertical()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 821
    .line 822
    .line 823
    move-result-object v5

    .line 824
    if-eqz v5, :cond_25

    .line 825
    .line 826
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Cover;->getWidth()Ljava/lang/Integer;

    .line 827
    .line 828
    .line 829
    move-result-object v5

    .line 830
    if-eqz v5, :cond_25

    .line 831
    .line 832
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 833
    .line 834
    .line 835
    move-result v3

    .line 836
    :cond_25
    div-int/2addr v0, v3

    .line 837
    goto :goto_18

    .line 838
    :cond_26
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 839
    .line 840
    .line 841
    move-result-object v0

    .line 842
    if-eqz v0, :cond_27

    .line 843
    .line 844
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Cover;->getHeight()Ljava/lang/Integer;

    .line 845
    .line 846
    .line 847
    move-result-object v0

    .line 848
    if-eqz v0, :cond_27

    .line 849
    .line 850
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 851
    .line 852
    .line 853
    move-result v0

    .line 854
    goto :goto_17

    .line 855
    :cond_27
    move v0, v2

    .line 856
    :goto_17
    mul-int/2addr v0, v10

    .line 857
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 858
    .line 859
    .line 860
    move-result-object v5

    .line 861
    if-eqz v5, :cond_28

    .line 862
    .line 863
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Cover;->getWidth()Ljava/lang/Integer;

    .line 864
    .line 865
    .line 866
    move-result-object v5

    .line 867
    if-eqz v5, :cond_28

    .line 868
    .line 869
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 870
    .line 871
    .line 872
    move-result v3

    .line 873
    :cond_28
    div-int/2addr v0, v3

    .line 874
    :goto_18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 875
    .line 876
    .line 877
    move-result-object v0

    .line 878
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    .line 880
    .line 881
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 882
    goto :goto_1a

    .line 883
    :goto_19
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 884
    .line 885
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 886
    .line 887
    .line 888
    move-result-object v0

    .line 889
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    .line 891
    .line 892
    move-result-object v0

    .line 893
    :goto_1a
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 894
    .line 895
    .line 896
    move-result v3

    .line 897
    if-eqz v3, :cond_29

    .line 898
    .line 899
    goto :goto_1b

    .line 900
    :cond_29
    move-object v7, v0

    .line 901
    :goto_1b
    check-cast v7, Ljava/lang/Integer;

    .line 902
    .line 903
    if-eqz v7, :cond_2a

    .line 904
    .line 905
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 906
    .line 907
    .line 908
    move-result v2

    .line 909
    :cond_2a
    move v11, v2

    .line 910
    if-eqz v9, :cond_2d

    .line 911
    .line 912
    sget-object v8, Ler/b;->a:Ler/b$a;

    .line 913
    .line 914
    const/16 v16, 0x78

    .line 915
    .line 916
    const/16 v17, 0x0

    .line 917
    .line 918
    const/4 v12, 0x0

    .line 919
    const/4 v13, 0x0

    .line 920
    const/4 v14, 0x0

    .line 921
    const/4 v15, 0x0

    .line 922
    invoke-static/range {v8 .. v17}, Ler/b$a;->e(Ler/b$a;Ljava/lang/String;IIZZZIILjava/lang/Object;)Ljava/lang/String;

    .line 923
    .line 924
    .line 925
    move-result-object v0

    .line 926
    iget-object v2, v1, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 927
    .line 928
    iget-object v2, v2, Liu/r;->j:Landroidx/appcompat/widget/AppCompatImageView;

    .line 929
    .line 930
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 931
    .line 932
    .line 933
    move-result-object v2

    .line 934
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 935
    .line 936
    .line 937
    move-result v2

    .line 938
    if-eqz v2, :cond_2b

    .line 939
    .line 940
    return-void

    .line 941
    :cond_2b
    iget-object v2, v1, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->c:Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    .line 942
    .line 943
    if-eqz v2, :cond_2d

    .line 944
    .line 945
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 946
    .line 947
    .line 948
    move-result-object v2

    .line 949
    if-nez v2, :cond_2c

    .line 950
    .line 951
    goto :goto_1c

    .line 952
    :cond_2c
    iget-object v3, v1, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 953
    .line 954
    iget-object v3, v3, Liu/r;->j:Landroidx/appcompat/widget/AppCompatImageView;

    .line 955
    .line 956
    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 957
    .line 958
    .line 959
    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    .line 960
    .line 961
    .line 962
    move-result-object v2

    .line 963
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    .line 964
    .line 965
    .line 966
    move-result-object v0

    .line 967
    new-instance v2, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$f;

    .line 968
    .line 969
    invoke-direct {v2, v1}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$f;-><init>(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)V

    .line 970
    .line 971
    .line 972
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    .line 973
    .line 974
    .line 975
    move-result-object v0

    .line 976
    iget-object v2, v1, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 977
    .line 978
    iget-object v2, v2, Liu/r;->j:Landroidx/appcompat/widget/AppCompatImageView;

    .line 979
    .line 980
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 981
    .line 982
    .line 983
    :cond_2d
    :goto_1c
    invoke-direct {v1, v4}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->C(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V

    .line 984
    .line 985
    .line 986
    return-void
.end method

.method private final setControlVisible(Z)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-boolean v1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->Q:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->c:Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->Q:Z

    .line 13
    .line 14
    invoke-static {v1}, Lcom/gyf/immersionbar/ImmersionBar;->with(Landroidx/fragment/app/Fragment;)Lcom/gyf/immersionbar/ImmersionBar;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sget-object v2, Lcom/gyf/immersionbar/BarHide;->FLAG_SHOW_BAR:Lcom/gyf/immersionbar/BarHide;

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Lcom/gyf/immersionbar/ImmersionBar;->hideBar(Lcom/gyf/immersionbar/BarHide;)Lcom/gyf/immersionbar/ImmersionBar;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lcom/gyf/immersionbar/ImmersionBar;->init()V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->c:Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    .line 28
    .line 29
    const/16 v2, 0x8

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;->L0()Landroidx/appcompat/widget/AppCompatImageView;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    move v3, v0

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move v3, v2

    .line 44
    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    :cond_2
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 48
    .line 49
    iget-object v1, v1, Liu/r;->i:Landroidx/constraintlayout/widget/Group;

    .line 50
    .line 51
    const-string v3, "groupUgcImmControl"

    .line 52
    .line 53
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    move v3, v0

    .line 59
    goto :goto_1

    .line 60
    :cond_3
    move v3, v2

    .line 61
    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 65
    .line 66
    iget-object v1, v1, Liu/r;->s:Landroid/widget/FrameLayout;

    .line 67
    .line 68
    const-string v3, "layoutUgcImmTvSearch"

    .line 69
    .line 70
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const/4 v3, 0x1

    .line 74
    if-eqz p1, :cond_4

    .line 75
    .line 76
    iget-boolean v4, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->C:Z

    .line 77
    .line 78
    if-eqz v4, :cond_4

    .line 79
    .line 80
    move v4, v3

    .line 81
    goto :goto_2

    .line 82
    :cond_4
    move v4, v0

    .line 83
    :goto_2
    if-eqz v4, :cond_5

    .line 84
    .line 85
    move v4, v0

    .line 86
    goto :goto_3

    .line 87
    :cond_5
    move v4, v2

    .line 88
    :goto_3
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 89
    .line 90
    .line 91
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 92
    .line 93
    iget-object v1, v1, Liu/r;->r:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 94
    .line 95
    const-string v4, "layoutUgcImmTvEpisode"

    .line 96
    .line 97
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    if-eqz p1, :cond_6

    .line 101
    .line 102
    iget-boolean v4, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->D:Z

    .line 103
    .line 104
    if-eqz v4, :cond_6

    .line 105
    .line 106
    move v4, v3

    .line 107
    goto :goto_4

    .line 108
    :cond_6
    move v4, v0

    .line 109
    :goto_4
    if-eqz v4, :cond_7

    .line 110
    .line 111
    move v4, v0

    .line 112
    goto :goto_5

    .line 113
    :cond_7
    move v4, v2

    .line 114
    :goto_5
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 115
    .line 116
    .line 117
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 118
    .line 119
    iget-object v1, v1, Liu/r;->x:Landroidx/recyclerview/widget/RecyclerView;

    .line 120
    .line 121
    const-string v4, "rvUgcImmTags"

    .line 122
    .line 123
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    if-eqz p1, :cond_8

    .line 127
    .line 128
    iget-boolean p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->E:Z

    .line 129
    .line 130
    if-eqz p1, :cond_8

    .line 131
    .line 132
    goto :goto_6

    .line 133
    :cond_8
    move v3, v0

    .line 134
    :goto_6
    if-eqz v3, :cond_9

    .line 135
    .line 136
    goto :goto_7

    .line 137
    :cond_9
    move v0, v2

    .line 138
    :goto_7
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 139
    .line 140
    .line 141
    return-void
.end method

.method public static synthetic setData$default(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;Ljava/lang/Integer;Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;ILjava/lang/Object;)V
    .locals 9

    .line 1
    and-int/lit8 v0, p7, 0x8

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v6, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v6, p4

    .line 9
    :goto_0
    and-int/lit8 v0, p7, 0x10

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    move-object v7, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move-object v7, p5

    .line 16
    :goto_1
    move-object v2, p0

    .line 17
    move-object v3, p1

    .line 18
    move-object v4, p2

    .line 19
    move-object v5, p3

    .line 20
    move-object v8, p6

    .line 21
    invoke-virtual/range {v2 .. v8}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->setData(Ljava/lang/Integer;Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private final setDownloadLoadingIconVisibility(Z)V
    .locals 2

    .line 1
    const-string v0, "vUgcImmDownloadLoading"

    .line 2
    .line 3
    const-string v1, "ivUgcImmDownload"

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 8
    .line 9
    iget-object p1, p1, Liu/r;->k:Landroidx/appcompat/widget/AppCompatImageView;

    .line 10
    .line 11
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Luf/c;->h(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 18
    .line 19
    iget-object p1, p1, Liu/r;->K:Lcom/transsion/ugcvideodetail/widget/UGCImmRingLoadingView;

    .line 20
    .line 21
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 29
    .line 30
    iget-object p1, p1, Liu/r;->k:Landroidx/appcompat/widget/AppCompatImageView;

    .line 31
    .line 32
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 39
    .line 40
    iget-object p1, p1, Liu/r;->K:Lcom/transsion/ugcvideodetail/widget/UGCImmRingLoadingView;

    .line 41
    .line 42
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void
.end method

.method private final setLoading(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->L:Z

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->getPlayerDelegate()Llu/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Llu/h;->f(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final setupHashTags(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getFilteredHashTags()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/util/Collection;

    .line 6
    .line 7
    const-string v1, "rvUgcImmTags"

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->E:Z

    .line 20
    .line 21
    iget-object v2, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 22
    .line 23
    iget-object v2, v2, Liu/r;->x:Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    .line 25
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v2}, Luf/c;->k(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    new-instance v1, Lcom/transsion/ugcvideodetail/adapter/i;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getFilteredHashTags()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {v1, v2, v0}, Lcom/transsion/ugcvideodetail/adapter/i;-><init>(Ljava/util/List;Z)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 44
    .line 45
    iget-object v0, v0, Liu/r;->x:Landroidx/recyclerview/widget/RecyclerView;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 48
    .line 49
    .line 50
    new-instance v0, Lku/m;

    .line 51
    .line 52
    invoke-direct {v0, p1, p0}, Lku/m;-><init>(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lr6/d;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 60
    iput-boolean p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->E:Z

    .line 61
    .line 62
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 63
    .line 64
    iget-object p1, p1, Liu/r;->x:Landroidx/recyclerview/widget/RecyclerView;

    .line 65
    .line 66
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public static synthetic t(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;F)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->N(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;F)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic u(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->O(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic v(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Llu/n;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->U(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Llu/n;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic w(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->R(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic x(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Llu/i;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->J(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Llu/i;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final y(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Llu/a;
    .locals 3

    .line 1
    new-instance v0, Llu/a;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$a;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$a;-><init>(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->getReportDelegate()Llu/i;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->getDownloadDelegate()Llu/e;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-direct {v0, v1, v2, p0}, Llu/a;-><init>(Llu/a$b;Llu/i;Llu/e;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method private static final z(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->L()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final addVideoView(Landroid/view/View;Lcom/transsion/moviedetailapi/bean/FirstFrame;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->m:Lcom/transsion/player/ui/ORPlayerView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

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
    if-eqz v0, :cond_3

    .line 13
    .line 14
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->m:Lcom/transsion/player/ui/ORPlayerView;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move-object v0, v1

    .line 24
    :goto_1
    instance-of v2, v0, Landroid/view/ViewGroup;

    .line 25
    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    move-object v1, v0

    .line 29
    check-cast v1, Landroid/view/ViewGroup;

    .line 30
    .line 31
    :cond_2
    if-eqz v1, :cond_3

    .line 32
    .line 33
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->m:Lcom/transsion/player/ui/ORPlayerView;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    :cond_3
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 39
    .line 40
    const/4 v1, -0x1

    .line 41
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 45
    .line 46
    iget-object v1, v1, Liu/r;->d:Landroid/widget/FrameLayout;

    .line 47
    .line 48
    invoke-virtual {v1, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    .line 50
    .line 51
    if-eqz p2, :cond_4

    .line 52
    .line 53
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/FirstFrame;->getWidth()Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/FirstFrame;->getHeight()Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->Y(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 62
    .line 63
    .line 64
    :cond_4
    return-void
.end method

.method public final app2Background()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->h:Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->isFree()Z

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
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->g:Lcom/transsion/ugcvideodetail/hepler/a;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-virtual {v1, v0, v2}, Lcom/transsion/ugcvideodetail/hepler/a;->c(ZZ)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public canNonSubscriberPlay(ZIILqn/d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/player/orplayer/e$a;->a(Lcom/transsion/player/orplayer/e;ZIILqn/d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final getProgress()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 2
    .line 3
    iget-object v0, v0, Liu/r;->y:Lcom/tn/lib/view/SecondariesSeekBar;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/tn/lib/view/SecondariesSeekBar;->getProgress()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public initPlayer()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/orplayer/e$a;->b(Lcom/transsion/player/orplayer/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onAliyunDecodeErrorChangeSoftwareDecoder(Lgn/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->c(Lcom/transsion/player/orplayer/e;Lgn/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->c:Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->d:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->R()Landroidx/lifecycle/LiveData;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    iget-object v2, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->K:Landroidx/lifecycle/c0;

    .line 25
    .line 26
    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->getDownloadDelegate()Llu/e;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1, v0}, Llu/e;->j(Landroidx/lifecycle/u;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->getSubtitleDelegate()Llu/n;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Llu/n;->e()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public onBufferedPosition(JLgn/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/e$a;->d(Lcom/transsion/player/orplayer/e;JLgn/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->getActionDelegate()Llu/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Llu/a;->a(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onCompletion(Lgn/e;)V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->a:Ljava/lang/String;

    .line 4
    .line 5
    const-string p1, "onCompletion\uff0c play next"

    .line 6
    .line 7
    filled-new-array {p1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v4, 0x4

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lwf/a$a;->r(Lwf/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->g:Lcom/transsion/ugcvideodetail/hepler/a;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/hepler/a;->g()V

    .line 22
    .line 23
    .line 24
    :cond_0
    const-wide/16 v0, 0x0

    .line 25
    .line 26
    invoke-direct {p0, v0, v1}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->W(J)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->d:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->R()Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->K:Landroidx/lifecycle/c0;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->o(Landroidx/lifecycle/c0;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->c:Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->getDownloadDelegate()Llu/e;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1, v0}, Llu/e;->k(Landroidx/lifecycle/u;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->getSubtitleDelegate()Llu/n;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Llu/n;->g()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public onFocusChange(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->g(Lcom/transsion/player/orplayer/e;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->h(Lcom/transsion/player/orplayer/e;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onItemViewMediaItemTransition()V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 6
    .line 7
    iget-object v2, v2, Liu/r;->y:Lcom/tn/lib/view/SecondariesSeekBar;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/tn/lib/view/SecondariesSeekBar;->getMaxProgress()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v5, "onMediaItemTransition: "

    .line 19
    .line 20
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, "  : "

    .line 27
    .line 28
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const/4 v4, 0x4

    .line 39
    const/4 v5, 0x0

    .line 40
    const/4 v3, 0x0

    .line 41
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->g:Lcom/transsion/ugcvideodetail/hepler/a;

    .line 45
    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/hepler/a;->g()V

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->reset()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public onLoadingBegin(Lgn/e;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->g:Lcom/transsion/ugcvideodetail/hepler/a;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/hepler/a;->h()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 p1, 0x1

    .line 9
    invoke-direct {p0, p1}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->setLoading(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onLoadingEnd(Lgn/e;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->g:Lcom/transsion/ugcvideodetail/hepler/a;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/hepler/a;->i()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    invoke-direct {p0, p1}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->setLoading(Z)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->O:Ljava/lang/Runnable;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onLoadingProgress(IFLgn/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/e$a;->m(Lcom/transsion/player/orplayer/e;IFLgn/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onLoopingStart()V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->a:Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, "onLoopingStart"

    .line 6
    .line 7
    filled-new-array {v2}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v4, 0x4

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lwf/a$a;->r(Lwf/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->g:Lcom/transsion/ugcvideodetail/hepler/a;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/hepler/a;->j()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public onMediaItemTransition(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->p(Lcom/transsion/player/orplayer/e;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onNetConnect()V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "ORSubtitle_v"

    .line 6
    .line 7
    const-string v2, "onNetConnect, \u7f51\u7edc\u6062\u590d\uff0c\u68c0\u6d4b\u5b57\u5e55"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->getSubtitleDelegate()Llu/n;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Llu/n;->f()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onPageDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->g:Lcom/transsion/ugcvideodetail/hepler/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/hepler/a;->p()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->l:Lcom/transsion/player/orplayer/f;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0, p0}, Lcom/transsion/player/orplayer/f;->removePlayerListener(Lcom/transsion/player/orplayer/e;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public final onPagePause()V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->w:Z

    .line 3
    .line 4
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->a:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v5, 0x4

    .line 9
    const/4 v6, 0x0

    .line 10
    const-string v3, "player- onPause"

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lcw/c;->a:Lcw/c;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->l:Lcom/transsion/player/orplayer/f;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcw/c;->c(Lcom/transsion/player/orplayer/f;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->l:Lcom/transsion/player/orplayer/f;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->pause()V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public final onPageRelease(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->onPlayerReset()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onPageResume()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->w:Z

    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->v:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->c:Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x1

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 20
    .line 21
    iget-object v3, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->a:Ljava/lang/String;

    .line 22
    .line 23
    const/4 v6, 0x4

    .line 24
    const/4 v7, 0x0

    .line 25
    const-string v4, "ON_RESUME"

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->H()V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public final onPageSelected(Lcom/transsion/player/orplayer/f;Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;)V
    .locals 8

    .line 1
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->l:Lcom/transsion/player/orplayer/f;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->m:Lcom/transsion/player/ui/ORPlayerView;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->g:Lcom/transsion/ugcvideodetail/hepler/a;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/transsion/ugcvideodetail/hepler/a;->t(Lcom/transsion/player/orplayer/f;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->d:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->L0()Landroidx/lifecycle/b0;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->h:Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->d:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->D()Landroidx/lifecycle/b0;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    iget-object v2, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->h:Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    move-object v2, v1

    .line 54
    :goto_0
    invoke-virtual {v0, v2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :cond_3
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->d:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 58
    .line 59
    if-eqz v0, :cond_5

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->B()Landroidx/lifecycle/b0;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_5

    .line 66
    .line 67
    iget-object v2, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->h:Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 68
    .line 69
    if-eqz v2, :cond_4

    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    if-eqz v2, :cond_4

    .line 76
    .line 77
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    if-eqz v2, :cond_4

    .line 82
    .line 83
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getCollectionId()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    goto :goto_1

    .line 88
    :cond_4
    move-object v2, v1

    .line 89
    :goto_1
    invoke-virtual {v0, v2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    :cond_5
    if-eqz p1, :cond_6

    .line 93
    .line 94
    invoke-interface {p1, p0}, Lcom/transsion/player/orplayer/f;->addPlayerListener(Lcom/transsion/player/orplayer/e;)V

    .line 95
    .line 96
    .line 97
    :cond_6
    if-eqz p3, :cond_7

    .line 98
    .line 99
    invoke-virtual {p3}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getPlayInfo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    if-eqz v0, :cond_7

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->getFirstImage()Lcom/transsion/moviedetailapi/bean/FirstFrame;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    goto :goto_2

    .line 110
    :cond_7
    move-object v0, v1

    .line 111
    :goto_2
    if-eqz p2, :cond_8

    .line 112
    .line 113
    invoke-virtual {p0, p2, v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->addVideoView(Landroid/view/View;Lcom/transsion/moviedetailapi/bean/FirstFrame;)V

    .line 114
    .line 115
    .line 116
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 117
    .line 118
    iget-object v3, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->a:Ljava/lang/String;

    .line 119
    .line 120
    const/4 v6, 0x4

    .line 121
    const/4 v7, 0x0

    .line 122
    const-string v4, "addView-----"

    .line 123
    .line 124
    const/4 v5, 0x0

    .line 125
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    :cond_8
    sget-object p2, Lhu/a;->a:Lhu/a;

    .line 129
    .line 130
    if-eqz p3, :cond_9

    .line 131
    .line 132
    invoke-virtual {p3}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getPlayInfo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;

    .line 133
    .line 134
    .line 135
    move-result-object p3

    .line 136
    goto :goto_3

    .line 137
    :cond_9
    move-object p3, v1

    .line 138
    :goto_3
    invoke-virtual {p2, p3}, Lhu/a;->a(Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;)Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    iget-object p3, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->d:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 143
    .line 144
    if-eqz p3, :cond_b

    .line 145
    .line 146
    invoke-virtual {p3}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->M0()Landroidx/lifecycle/b0;

    .line 147
    .line 148
    .line 149
    move-result-object p3

    .line 150
    if-eqz p3, :cond_b

    .line 151
    .line 152
    if-eqz p2, :cond_a

    .line 153
    .line 154
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;->getResolutions()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    goto :goto_4

    .line 159
    :cond_a
    move-object v0, v1

    .line 160
    :goto_4
    invoke-virtual {p3, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    :cond_b
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 164
    .line 165
    iget-object v3, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->a:Ljava/lang/String;

    .line 166
    .line 167
    if-eqz p2, :cond_c

    .line 168
    .line 169
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;->getUrl()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p3

    .line 173
    goto :goto_5

    .line 174
    :cond_c
    move-object p3, v1

    .line 175
    :goto_5
    if-eqz p2, :cond_d

    .line 176
    .line 177
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;->getDuration()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    goto :goto_6

    .line 182
    :cond_d
    move-object v0, v1

    .line 183
    :goto_6
    if-eqz p2, :cond_e

    .line 184
    .line 185
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;->getResolutions()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    const-string v5, "play url="

    .line 195
    .line 196
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const-string p3, " , duration: "

    .line 203
    .line 204
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string p3, ", resolutions:"

    .line 211
    .line 212
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    const/4 v6, 0x4

    .line 223
    const/4 v7, 0x0

    .line 224
    const/4 v5, 0x0

    .line 225
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->getSubtitleDelegate()Llu/n;

    .line 229
    .line 230
    .line 231
    move-result-object p3

    .line 232
    invoke-virtual {p3, p2}, Llu/n;->i(Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->videoStartPrepare()V

    .line 236
    .line 237
    .line 238
    if-eqz p2, :cond_10

    .line 239
    .line 240
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;->getUrl()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p2

    .line 244
    if-eqz p2, :cond_10

    .line 245
    .line 246
    if-eqz p1, :cond_f

    .line 247
    .line 248
    const-wide/16 v0, 0x0

    .line 249
    .line 250
    invoke-interface {p1, p2, v0, v1}, Lcom/transsion/player/orplayer/f;->seekTo(Ljava/lang/String;J)V

    .line 251
    .line 252
    .line 253
    :cond_f
    invoke-virtual {p0, p2}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->setVideoUrl(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    :cond_10
    if-eqz p1, :cond_11

    .line 257
    .line 258
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->play()V

    .line 259
    .line 260
    .line 261
    :cond_11
    return-void
.end method

.method public final onPageStop()V
    .locals 10

    .line 1
    iget-wide v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->F:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->l:Lcom/transsion/player/orplayer/f;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->getDuration()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    :cond_0
    iput-wide v2, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->F:J

    .line 18
    .line 19
    :cond_1
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 20
    .line 21
    iget-object v5, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->a:Ljava/lang/String;

    .line 22
    .line 23
    iget-wide v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->F:J

    .line 24
    .line 25
    iget-wide v2, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->G:J

    .line 26
    .line 27
    new-instance v6, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v7, "onPageStop: totalDuration:"

    .line 33
    .line 34
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, ",playProgress:"

    .line 41
    .line 42
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    const/4 v8, 0x4

    .line 53
    const/4 v9, 0x0

    .line 54
    const/4 v7, 0x0

    .line 55
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->getPlayerDelegate()Llu/h;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-wide v1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->F:J

    .line 63
    .line 64
    iget-wide v3, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->G:J

    .line 65
    .line 66
    invoke-virtual {v0, v1, v2, v3, v4}, Llu/h;->a(JJ)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public onPlayError(Lcom/transsion/player/orplayer/PlayError;Lgn/e;)V
    .locals 5

    .line 1
    const-string v0, "errorInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->g:Lcom/transsion/ugcvideodetail/hepler/a;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/transsion/ugcvideodetail/hepler/a;->k(Lcom/transsion/player/orplayer/PlayError;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorCode()Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorMessage()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    invoke-virtual {p2}, Lgn/e;->j()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p2, 0x0

    .line 33
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, " --> IPlayerListener --> onPlayError()  errorCode:"

    .line 42
    .line 43
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v1, " errorMessage:"

    .line 50
    .line 51
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, " url:"

    .line 58
    .line 59
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string p2, " --> \u77ed\u64ad\u653e\u5931\u8d25\u4e86"

    .line 66
    .line 67
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    const/4 v1, 0x1

    .line 75
    const-string v2, "i_media"

    .line 76
    .line 77
    invoke-virtual {v0, v2, p2, v1}, Lwf/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 78
    .line 79
    .line 80
    const/4 p2, 0x0

    .line 81
    invoke-direct {p0, p2}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->setLoading(Z)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorCode()Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    if-nez p2, :cond_2

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    const/16 v0, 0x7d1

    .line 96
    .line 97
    if-eq p2, v0, :cond_4

    .line 98
    .line 99
    :goto_1
    invoke-virtual {p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorCode()Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    if-nez p1, :cond_3

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    const/16 p2, 0x7d2

    .line 111
    .line 112
    if-ne p1, p2, :cond_5

    .line 113
    .line 114
    :cond_4
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->L()V

    .line 115
    .line 116
    .line 117
    :cond_5
    :goto_2
    return-void
.end method

.method public onPlayErrorChangePayer(Lcom/transsion/player/orplayer/global/TnPlayerType;Lgn/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/player/orplayer/e$a;->s(Lcom/transsion/player/orplayer/e;Lcom/transsion/player/orplayer/global/TnPlayerType;Lgn/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onPlayerRelease(Lgn/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->t(Lcom/transsion/player/orplayer/e;Lgn/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onPlayerReset()V
    .locals 13

    .line 1
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->h:Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v3, "player- onPlayerReset data: "

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const/4 v4, 0x4

    .line 25
    const/4 v5, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    move-object v0, v6

    .line 28
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->getSubtitleDelegate()Llu/n;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Llu/n;->n()V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, v0}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 40
    .line 41
    .line 42
    iput-boolean v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->v:Z

    .line 43
    .line 44
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->c:Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    .line 45
    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    invoke-virtual {v1, v0}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;->b1(Z)V

    .line 49
    .line 50
    .line 51
    :cond_0
    iput-boolean v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->M:Z

    .line 52
    .line 53
    iput-boolean v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->N:Z

    .line 54
    .line 55
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->h:Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 56
    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->isFree()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    move v1, v0

    .line 65
    :goto_0
    iget-object v2, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->g:Lcom/transsion/ugcvideodetail/hepler/a;

    .line 66
    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    invoke-virtual {v2, v1, v0}, Lcom/transsion/ugcvideodetail/hepler/a;->c(ZZ)V

    .line 70
    .line 71
    .line 72
    :cond_2
    if-eqz v1, :cond_3

    .line 73
    .line 74
    iget-object v7, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->d:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 75
    .line 76
    if-eqz v7, :cond_3

    .line 77
    .line 78
    iget-object v8, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->h:Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 79
    .line 80
    iget-wide v9, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->G:J

    .line 81
    .line 82
    iget-wide v11, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->F:J

    .line 83
    .line 84
    invoke-virtual/range {v7 .. v12}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->f1(Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;JJ)V

    .line 85
    .line 86
    .line 87
    :cond_3
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 88
    .line 89
    iget-object v0, v0, Liu/r;->j:Landroidx/appcompat/widget/AppCompatImageView;

    .line 90
    .line 91
    const-string v1, "ivUgcImmCover"

    .line 92
    .line 93
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->a:Ljava/lang/String;

    .line 100
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string v2, "onPlayerReset   visible  "

    .line 107
    .line 108
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    const/4 v4, 0x4

    .line 119
    const/4 v5, 0x0

    .line 120
    const/4 v3, 0x0

    .line 121
    move-object v0, v6

    .line 122
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 126
    .line 127
    iget-object v0, v0, Liu/r;->n:Landroidx/appcompat/widget/AppCompatImageView;

    .line 128
    .line 129
    const-string v1, "ivUgcImmPlayStatus"

    .line 130
    .line 131
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->l:Lcom/transsion/player/orplayer/f;

    .line 138
    .line 139
    if-eqz v0, :cond_4

    .line 140
    .line 141
    invoke-interface {v0, p0}, Lcom/transsion/player/orplayer/f;->removePlayerListener(Lcom/transsion/player/orplayer/e;)V

    .line 142
    .line 143
    .line 144
    :cond_4
    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->l:Lcom/transsion/player/orplayer/f;

    .line 146
    .line 147
    iput-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->m:Lcom/transsion/player/ui/ORPlayerView;

    .line 148
    .line 149
    iput-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->n:Lcom/tn/lib/pager/PagerLayoutManager;

    .line 150
    .line 151
    const-wide/16 v0, 0x0

    .line 152
    .line 153
    invoke-direct {p0, v0, v1}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->W(J)V

    .line 154
    .line 155
    .line 156
    const-wide/16 v0, 0x64

    .line 157
    .line 158
    invoke-direct {p0, v0, v1}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->X(J)V

    .line 159
    .line 160
    .line 161
    return-void
.end method

.method public onPrepare(Lgn/e;)V
    .locals 14

    .line 1
    iget-boolean p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->N:Z

    .line 2
    .line 3
    if-nez p1, :cond_4

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->N:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->l:Lcom/transsion/player/orplayer/f;

    .line 9
    .line 10
    const-wide/16 v1, 0x0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->getDuration()J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-wide v3, v1

    .line 20
    :goto_0
    iput-wide v3, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->F:J

    .line 21
    .line 22
    invoke-direct {p0, v3, v4}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->X(J)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->d:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->H()Landroidx/lifecycle/b0;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getUgcVideoId()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    iget-object v6, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->h:Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 48
    .line 49
    const/4 v7, 0x0

    .line 50
    if-eqz v6, :cond_1

    .line 51
    .line 52
    invoke-virtual {v6}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    if-eqz v6, :cond_1

    .line 57
    .line 58
    invoke-virtual {v6}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    move-object v6, v7

    .line 64
    :goto_1
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-eqz v5, :cond_3

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getProgress()J

    .line 71
    .line 72
    .line 73
    move-result-wide v5

    .line 74
    sget-object v8, Lwf/a;->a:Lwf/a$a;

    .line 75
    .line 76
    iget-object v9, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->a:Ljava/lang/String;

    .line 77
    .line 78
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 79
    .line 80
    iget-object v0, v0, Liu/r;->y:Lcom/tn/lib/view/SecondariesSeekBar;

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/tn/lib/view/SecondariesSeekBar;->getProgress()J

    .line 83
    .line 84
    .line 85
    move-result-wide v10

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v12, "player- onPrepare, duration = "

    .line 92
    .line 93
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v10, ", progress = "

    .line 100
    .line 101
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v10, "  duration = "

    .line 108
    .line 109
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v10

    .line 119
    const/4 v12, 0x4

    .line 120
    const/4 v13, 0x0

    .line 121
    const/4 v11, 0x0

    .line 122
    invoke-static/range {v8 .. v13}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->d:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 126
    .line 127
    if-eqz v0, :cond_2

    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->H()Landroidx/lifecycle/b0;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    if-eqz v0, :cond_2

    .line 134
    .line 135
    invoke-virtual {v0, v7}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    :cond_2
    cmp-long v0, v5, v1

    .line 139
    .line 140
    if-lez v0, :cond_3

    .line 141
    .line 142
    sub-long/2addr v3, v5

    .line 143
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    .line 144
    .line 145
    .line 146
    move-result-wide v0

    .line 147
    const-wide/16 v2, 0x7d0

    .line 148
    .line 149
    cmp-long v0, v0, v2

    .line 150
    .line 151
    if-lez v0, :cond_3

    .line 152
    .line 153
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->l:Lcom/transsion/player/orplayer/f;

    .line 154
    .line 155
    if-eqz v0, :cond_3

    .line 156
    .line 157
    invoke-interface {v0, v5, v6}, Lcom/transsion/player/orplayer/f;->seekTo(J)V

    .line 158
    .line 159
    .line 160
    :cond_3
    invoke-virtual {p0, p1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 161
    .line 162
    .line 163
    :cond_4
    return-void
.end method

.method public onProgress(JLgn/e;)V
    .locals 1

    .line 1
    iput-wide p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->G:J

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->getPlayerDelegate()Llu/h;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->getGestureDelegate()Llu/g;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Llu/g;->k()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p3, p1, p2, v0}, Llu/h;->b(JZ)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onRenderFirstFrame()V
    .locals 9

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 6
    .line 7
    iget-object v2, v2, Liu/r;->j:Landroidx/appcompat/widget/AppCompatImageView;

    .line 8
    .line 9
    const-string v6, "ivUgcImmCover"

    .line 10
    .line 11
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v7, 0x0

    .line 19
    const/4 v8, 0x1

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    move v2, v8

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v2, v7

    .line 25
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v4, "player-onRenderFirstFrame   viewBinding.ivCover.isVisible:"

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v2, " "

    .line 39
    .line 40
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const/4 v4, 0x4

    .line 48
    const/4 v5, 0x0

    .line 49
    const/4 v3, 0x0

    .line 50
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-boolean v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->M:Z

    .line 54
    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    iput-boolean v8, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->M:Z

    .line 58
    .line 59
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->g:Lcom/transsion/ugcvideodetail/hepler/a;

    .line 60
    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/hepler/a;->m()V

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-direct {p0, v7}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->setLoading(Z)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 70
    .line 71
    iget-object v0, v0, Liu/r;->j:Landroidx/appcompat/widget/AppCompatImageView;

    .line 72
    .line 73
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public onSetDataSource()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->g:Lcom/transsion/ugcvideodetail/hepler/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/hepler/a;->f()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->g:Lcom/transsion/ugcvideodetail/hepler/a;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/hepler/a;->a()V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->getGestureDelegate()Llu/g;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Llu/g;->m(Landroid/view/MotionEvent;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    :goto_0
    return p1
.end method

.method public onTracksAudioBitrateChange(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->C(Lcom/transsion/player/orplayer/e;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onTracksChange(Lqn/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->D(Lcom/transsion/player/orplayer/e;Lqn/c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onTracksVideoBitrateChange(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->E(Lcom/transsion/player/orplayer/e;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onVideoPause(Lgn/e;)V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->a:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v4, 0x4

    .line 6
    const/4 v5, 0x0

    .line 7
    const-string v2, "player- onVideoPause"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->getPlayerDelegate()Llu/h;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Llu/h;->c()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/player/orplayer/e$a;->H(Lcom/transsion/player/orplayer/e;II)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->Y(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onVideoStart(Lgn/e;)V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->a:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v4, 0x4

    .line 6
    const/4 v5, 0x0

    .line 7
    const-string v2, "player- onVideoStart"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->onPrepare(Lgn/e;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->getPlayerDelegate()Llu/h;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Llu/h;->d()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final reset()V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->h:Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v4, "playNewMedia data: "

    .line 13
    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const/4 v4, 0x4

    .line 25
    const/4 v5, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 32
    .line 33
    .line 34
    iput-boolean v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->v:Z

    .line 35
    .line 36
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->c:Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    .line 37
    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;->b1(Z)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iput-boolean v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->M:Z

    .line 44
    .line 45
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->h:Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 46
    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->isFree()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    move v1, v0

    .line 55
    :goto_0
    iget-object v2, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->g:Lcom/transsion/ugcvideodetail/hepler/a;

    .line 56
    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    invoke-virtual {v2, v1, v0}, Lcom/transsion/ugcvideodetail/hepler/a;->c(ZZ)V

    .line 60
    .line 61
    .line 62
    :cond_2
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->b:Liu/r;

    .line 63
    .line 64
    iget-object v0, v0, Liu/r;->n:Landroidx/appcompat/widget/AppCompatImageView;

    .line 65
    .line 66
    const-string v1, "ivUgcImmPlayStatus"

    .line 67
    .line 68
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 72
    .line 73
    .line 74
    const-wide/16 v0, 0x0

    .line 75
    .line 76
    invoke-direct {p0, v0, v1}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->W(J)V

    .line 77
    .line 78
    .line 79
    const-wide/16 v0, 0x64

    .line 80
    .line 81
    invoke-direct {p0, v0, v1}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->X(J)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public final setData(Ljava/lang/Integer;Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;)V
    .locals 7

    .line 1
    const-string v0, "trackId"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "data"

    .line 7
    .line 8
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->a:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v3, "--------------------------setData position:"

    .line 21
    .line 22
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const/4 v5, 0x4

    .line 33
    const/4 v6, 0x0

    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iput-object p6, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->h:Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 39
    .line 40
    iput-object p3, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->i:Ljava/lang/String;

    .line 41
    .line 42
    iput-object p4, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->j:Ljava/lang/String;

    .line 43
    .line 44
    iput-object p5, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->k:Ljava/lang/String;

    .line 45
    .line 46
    iput-object p2, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->c:Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    .line 47
    .line 48
    const/4 p3, 0x0

    .line 49
    iput-boolean p3, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->H:Z

    .line 50
    .line 51
    new-instance p3, Lcom/transsion/ugcvideodetail/hepler/a;

    .line 52
    .line 53
    if-eqz p2, :cond_0

    .line 54
    .line 55
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;->F0()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p4

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const/4 p4, 0x0

    .line 61
    :goto_0
    const-string p5, "/ugc_video/immersive_detail"

    .line 62
    .line 63
    invoke-direct {p3, p5, p4}, Lcom/transsion/ugcvideodetail/hepler/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iput-object p3, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->g:Lcom/transsion/ugcvideodetail/hepler/a;

    .line 67
    .line 68
    invoke-virtual {p6}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 69
    .line 70
    .line 71
    move-result-object p4

    .line 72
    invoke-virtual {p3, p4}, Lcom/transsion/ugcvideodetail/hepler/a;->s(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V

    .line 73
    .line 74
    .line 75
    iget-object p3, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->g:Lcom/transsion/ugcvideodetail/hepler/a;

    .line 76
    .line 77
    if-eqz p3, :cond_1

    .line 78
    .line 79
    invoke-virtual {p3, p1}, Lcom/transsion/ugcvideodetail/hepler/a;->r(Ljava/lang/Integer;)V

    .line 80
    .line 81
    .line 82
    :cond_1
    if-eqz p2, :cond_2

    .line 83
    .line 84
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    if-eqz p1, :cond_2

    .line 89
    .line 90
    new-instance p2, Landroidx/lifecycle/v0;

    .line 91
    .line 92
    invoke-direct {p2, p1}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    .line 93
    .line 94
    .line 95
    const-class p3, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 96
    .line 97
    invoke-virtual {p2, p3}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    check-cast p2, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 102
    .line 103
    iput-object p2, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->d:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 104
    .line 105
    new-instance p2, Landroidx/lifecycle/v0;

    .line 106
    .line 107
    invoke-direct {p2, p1}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    .line 108
    .line 109
    .line 110
    const-class p3, Lcom/transsion/ugcvideodetail/hepler/subtitle/a;

    .line 111
    .line 112
    invoke-virtual {p2, p3}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    check-cast p2, Lcom/transsion/ugcvideodetail/hepler/subtitle/a;

    .line 117
    .line 118
    iput-object p2, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->e:Lcom/transsion/ugcvideodetail/hepler/subtitle/a;

    .line 119
    .line 120
    new-instance p2, Landroidx/lifecycle/v0;

    .line 121
    .line 122
    invoke-direct {p2, p1}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    .line 123
    .line 124
    .line 125
    const-class p1, Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel;

    .line 126
    .line 127
    invoke-virtual {p2, p1}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    check-cast p1, Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel;

    .line 132
    .line 133
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->f:Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel;

    .line 134
    .line 135
    :cond_2
    invoke-direct {p0, p6}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->setContent(Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;)V

    .line 136
    .line 137
    .line 138
    return-void
.end method

.method public final setDownloadStatus(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->x:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->J:I

    .line 7
    .line 8
    if-ne p1, v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    iput p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->J:I

    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->h:Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->setDownloadStatus(I)V

    .line 18
    .line 19
    .line 20
    :cond_2
    invoke-direct {p0, p1}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->V(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public setOnSeekCompleteListener()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/orplayer/e$a;->K(Lcom/transsion/player/orplayer/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final setVideoUrl(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->g:Lcom/transsion/ugcvideodetail/hepler/a;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/transsion/ugcvideodetail/hepler/a;->u(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final videoStartPrepare()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->M:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->g:Lcom/transsion/ugcvideodetail/hepler/a;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/hepler/a;->f()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->g:Lcom/transsion/ugcvideodetail/hepler/a;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/hepler/a;->a()V

    .line 16
    .line 17
    .line 18
    :cond_1
    const/4 v0, 0x1

    .line 19
    invoke-direct {p0, v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->setLoading(Z)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
