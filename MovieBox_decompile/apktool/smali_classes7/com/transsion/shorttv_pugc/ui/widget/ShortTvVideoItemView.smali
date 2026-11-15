.class public final Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "source.java"

# interfaces
.implements Lcom/transsion/player/orplayer/e;
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/lifecycle/r;
.implements Lcom/transsion/shorttv_pugc/ui/widget/a;
.implements Lcom/transsion/subtitle_download/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009e\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008#\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u0006B!\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eB\u0011\u0008\u0016\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000fB\u001b\u0008\u0016\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\r\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0014\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0011H\u0014\u00a2\u0006\u0004\u0008\u0014\u0010\u0013JU\u0010!\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00172\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u001b\u001a\u00020\u001a2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001f\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020\u001aH\u0016\u00a2\u0006\u0004\u0008!\u0010\"J-\u0010\'\u001a\u00020\u00112\u0008\u0010$\u001a\u0004\u0018\u00010#2\u0008\u0010&\u001a\u0004\u0018\u00010%2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016\u00a2\u0006\u0004\u0008\'\u0010(J-\u0010)\u001a\u00020\u00112\u0008\u0010$\u001a\u0004\u0018\u00010#2\u0008\u0010&\u001a\u0004\u0018\u00010%2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016\u00a2\u0006\u0004\u0008)\u0010(J\u0017\u0010*\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008*\u0010+J\u001f\u0010.\u001a\u00020\u00112\u0006\u0010,\u001a\u00020\u000b2\u0006\u0010-\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008.\u0010/J\u0019\u00100\u001a\u00020\u00112\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016\u00a2\u0006\u0004\u00080\u00101J\u0017\u00104\u001a\u00020\u00112\u0006\u00103\u001a\u000202H\u0016\u00a2\u0006\u0004\u00084\u00105J\u000f\u00107\u001a\u000206H\u0016\u00a2\u0006\u0004\u00087\u00108J\u0017\u0010<\u001a\u00020;2\u0006\u0010:\u001a\u000209H\u0016\u00a2\u0006\u0004\u0008<\u0010=J\u0017\u0010@\u001a\u00020\u001a2\u0006\u0010?\u001a\u00020>H\u0016\u00a2\u0006\u0004\u0008@\u0010AJ\u001f\u0010E\u001a\u00020\u00112\u0006\u0010C\u001a\u00020B2\u0006\u0010?\u001a\u00020DH\u0016\u00a2\u0006\u0004\u0008E\u0010FJ\u000f\u0010G\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008G\u0010\u0013J\r\u0010H\u001a\u00020\u0011\u00a2\u0006\u0004\u0008H\u0010\u0013J\u000f\u0010I\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008I\u0010\u0013J\u0015\u0010K\u001a\u00020\u00112\u0006\u0010J\u001a\u00020\u001c\u00a2\u0006\u0004\u0008K\u0010LJ\u0015\u0010N\u001a\u00020\u00112\u0006\u0010M\u001a\u00020\u001c\u00a2\u0006\u0004\u0008N\u0010LJ\u000f\u0010O\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008O\u0010\u0013J\u000f\u0010P\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008P\u0010\u0013J\u0019\u0010S\u001a\u00020\u00112\u0008\u0010R\u001a\u0004\u0018\u00010QH\u0016\u00a2\u0006\u0004\u0008S\u0010TJ\u0019\u0010U\u001a\u00020\u00112\u0008\u0010R\u001a\u0004\u0018\u00010QH\u0016\u00a2\u0006\u0004\u0008U\u0010TJ\u0019\u0010V\u001a\u00020\u00112\u0008\u0010R\u001a\u0004\u0018\u00010QH\u0016\u00a2\u0006\u0004\u0008V\u0010TJ!\u0010Y\u001a\u00020\u00112\u0006\u0010X\u001a\u00020W2\u0008\u0010R\u001a\u0004\u0018\u00010QH\u0016\u00a2\u0006\u0004\u0008Y\u0010ZJ\u0019\u0010[\u001a\u00020\u00112\u0008\u0010R\u001a\u0004\u0018\u00010QH\u0016\u00a2\u0006\u0004\u0008[\u0010TJ\u0019\u0010\\\u001a\u00020\u00112\u0008\u0010R\u001a\u0004\u0018\u00010QH\u0016\u00a2\u0006\u0004\u0008\\\u0010TJ!\u0010_\u001a\u00020\u00112\u0006\u0010^\u001a\u00020]2\u0008\u0010R\u001a\u0004\u0018\u00010QH\u0016\u00a2\u0006\u0004\u0008_\u0010`J\u000f\u0010a\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008a\u0010\u0013J\u0019\u0010b\u001a\u00020\u00112\u0008\u0010R\u001a\u0004\u0018\u00010QH\u0016\u00a2\u0006\u0004\u0008b\u0010TJ\u0019\u0010e\u001a\u00020\u00112\u0008\u0010d\u001a\u0004\u0018\u00010cH\u0016\u00a2\u0006\u0004\u0008e\u0010fJ\r\u0010g\u001a\u00020\u0011\u00a2\u0006\u0004\u0008g\u0010\u0013J\u000f\u0010h\u001a\u00020WH\u0016\u00a2\u0006\u0004\u0008h\u0010iJ\r\u0010j\u001a\u00020\u0011\u00a2\u0006\u0004\u0008j\u0010\u0013J\u000f\u0010k\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008k\u0010\u0013J\u000f\u0010l\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008l\u0010\u0013J\u001f\u0010o\u001a\u00020\u00112\u0006\u0010X\u001a\u00020\u000b2\u0006\u0010n\u001a\u00020mH\u0016\u00a2\u0006\u0004\u0008o\u0010pJ\u0017\u0010q\u001a\u00020\u00112\u0006\u0010n\u001a\u00020mH\u0016\u00a2\u0006\u0004\u0008q\u0010rJ#\u0010w\u001a\u00020\u00112\n\u0010u\u001a\u00060sj\u0002`t2\u0006\u0010v\u001a\u00020mH\u0016\u00a2\u0006\u0004\u0008w\u0010xJ\u000f\u0010y\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008y\u0010\u0013J\u000f\u0010z\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008z\u0010\u0013J\u000f\u0010{\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008{\u0010\u0013J\u000f\u0010|\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008|\u0010\u0013J\u001b\u0010~\u001a\u00020\u00112\n\u0008\u0002\u0010}\u001a\u0004\u0018\u00010WH\u0002\u00a2\u0006\u0004\u0008~\u0010\u007fJ\u0011\u0010\u0080\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u0080\u0001\u0010\u0013J\u0011\u0010\u0081\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u0081\u0001\u0010\u0013J\u001b\u0010\u0083\u0001\u001a\u00020\u00112\u0007\u0010\u0082\u0001\u001a\u00020\u001aH\u0002\u00a2\u0006\u0006\u0008\u0083\u0001\u0010\u0084\u0001J\u0019\u0010\u0085\u0001\u001a\u00020\u00112\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0005\u0008\u0085\u0001\u0010\u000fJ(\u0010\u0088\u0001\u001a\u00020\u00112\t\u0010\u0086\u0001\u001a\u0004\u0018\u00010\u000b2\t\u0010\u0087\u0001\u001a\u0004\u0018\u00010\u000bH\u0002\u00a2\u0006\u0006\u0008\u0088\u0001\u0010\u0089\u0001J$\u0010\u008c\u0001\u001a\u00020\u00112\u0007\u0010\u008a\u0001\u001a\u00020\u001c2\u0007\u0010\u008b\u0001\u001a\u00020\u0015H\u0002\u00a2\u0006\u0006\u0008\u008c\u0001\u0010\u008d\u0001J\u001b\u0010\u008e\u0001\u001a\u00020\u00112\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0002\u00a2\u0006\u0005\u0008\u008e\u0001\u00101J\u001a\u0010\u008f\u0001\u001a\u00020\u00112\u0006\u0010X\u001a\u00020WH\u0002\u00a2\u0006\u0006\u0008\u008f\u0001\u0010\u0090\u0001J\u001b\u0010\u0092\u0001\u001a\u00020\u00112\u0007\u0010\u0091\u0001\u001a\u00020WH\u0002\u00a2\u0006\u0006\u0008\u0092\u0001\u0010\u0090\u0001J\u0011\u0010\u0093\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u0093\u0001\u0010\u0013J\u0011\u0010\u0094\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u0094\u0001\u0010\u0013J\u0011\u0010\u0095\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u0095\u0001\u0010\u0013J\u0011\u0010\u0096\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u0096\u0001\u0010\u0013J\u001b\u0010\u0097\u0001\u001a\u00020\u00112\u0007\u0010\u0082\u0001\u001a\u00020\u001aH\u0002\u00a2\u0006\u0006\u0008\u0097\u0001\u0010\u0084\u0001J\"\u0010\u009a\u0001\u001a\u00020\u00112\u000e\u0010\u0099\u0001\u001a\t\u0012\u0004\u0012\u00020\u00110\u0098\u0001H\u0002\u00a2\u0006\u0006\u0008\u009a\u0001\u0010\u009b\u0001J\u0011\u0010\u009c\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u009c\u0001\u0010\u0013J\u0011\u0010\u009d\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u009d\u0001\u0010\u0013J\u0011\u0010\u009e\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u009e\u0001\u0010\u0013J\u0011\u0010\u0086\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u0086\u0001\u0010\u0013J\u0011\u0010\u009f\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u009f\u0001\u0010\u0013J$\u0010d\u001a\u00020\u00112\u0006\u0010&\u001a\u00020%2\n\u0010\u00a1\u0001\u001a\u0005\u0018\u00010\u00a0\u0001H\u0002\u00a2\u0006\u0005\u0008d\u0010\u00a2\u0001J\u0011\u0010\u00a3\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u00a3\u0001\u0010\u0013R\u0017\u0010\u00a6\u0001\u001a\u00020\u001c8\u0002X\u0082D\u00a2\u0006\u0008\n\u0006\u0008\u00a4\u0001\u0010\u00a5\u0001R\u0017\u0010\u00a9\u0001\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00a7\u0001\u0010\u00a8\u0001R\u0018\u0010\u00ad\u0001\u001a\u00030\u00aa\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00ab\u0001\u0010\u00ac\u0001R\u001b\u0010\u00b0\u0001\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ae\u0001\u0010\u00af\u0001R\u0019\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008u\u0010\u00b1\u0001R\u001a\u0010\u001b\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b2\u0001\u0010\u00b3\u0001R\u001a\u0010\u0019\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b4\u0001\u0010\u00b5\u0001R\u001a\u0010\u001d\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0087\u0001\u0010\u00a5\u0001R\u001a\u0010$\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b6\u0001\u0010\u00b7\u0001R\u001a\u0010&\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b8\u0001\u0010\u00b9\u0001R\u001a\u00103\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ba\u0001\u0010\u00bb\u0001R\u001c\u0010\u00bf\u0001\u001a\u0005\u0018\u00010\u00bc\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00bd\u0001\u0010\u00be\u0001R\u001c\u0010\u00c3\u0001\u001a\u0005\u0018\u00010\u00c0\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c1\u0001\u0010\u00c2\u0001R\u0019\u0010\u00c5\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c4\u0001\u0010\u0081\u0001R\u0019\u0010\u00c7\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c6\u0001\u0010\u0081\u0001R\u0019\u0010\u00c9\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c8\u0001\u0010\u0081\u0001R\u0019\u0010\u00cc\u0001\u001a\u00020W8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ca\u0001\u0010\u00cb\u0001R\u0017\u0010\u00ce\u0001\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00cd\u0001\u0010\u00a8\u0001R\u0017\u0010\u00d0\u0001\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00cf\u0001\u0010\u00a8\u0001R\u0017\u0010\u00d2\u0001\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00d1\u0001\u0010\u00a8\u0001R\u0017\u0010\u00d4\u0001\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00d3\u0001\u0010\u00a8\u0001R\u0017\u0010J\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008d\u0010\u00a5\u0001R\u001b\u0010\u00d6\u0001\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0086\u0001\u0010\u00d5\u0001R\u001c\u0010\u00da\u0001\u001a\u0005\u0018\u00010\u00d7\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d8\u0001\u0010\u00d9\u0001R\u001e\u0010\u00de\u0001\u001a\t\u0012\u0004\u0012\u00020\u001a0\u00db\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00dc\u0001\u0010\u00dd\u0001R \u0010\u00e0\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u00db\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00df\u0001\u0010\u00dd\u0001R \u0010\u00e2\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u00db\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00e1\u0001\u0010\u00dd\u0001R \u0010\u00e3\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u00db\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u009e\u0001\u0010\u00dd\u0001R \u0010\u00e4\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u001c0\u00db\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0080\u0001\u0010\u00dd\u0001R\u0019\u0010\u00e5\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0085\u0001\u0010\u0081\u0001R\u0019\u0010\u00e6\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a3\u0001\u0010\u0081\u0001R\u001d\u0010\u00eb\u0001\u001a\u00080\u00e7\u0001j\u0003`\u00e8\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00e9\u0001\u0010\u00ea\u0001R\u0019\u0010\u00ec\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009d\u0001\u0010\u0081\u0001R\u0018\u0010\u00f0\u0001\u001a\u00030\u00ed\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00ee\u0001\u0010\u00ef\u0001R\u001d\u0010\u00f1\u0001\u001a\u00080\u00e7\u0001j\u0003`\u00e8\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00a8\u0001\u0010\u00ea\u0001R\u001c\u0010\u00f4\u0001\u001a\u0005\u0018\u00010\u00f2\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00cb\u0001\u0010\u00f3\u0001\u00a8\u0006\u00f5\u0001"
    }
    d2 = {
        "Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Lcom/transsion/player/orplayer/e;",
        "Landroid/view/View$OnClickListener;",
        "Landroidx/lifecycle/r;",
        "Lcom/transsion/shorttv_pugc/ui/widget/a;",
        "Lcom/transsion/subtitle_download/a;",
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
        "",
        "onAttachedToWindow",
        "()V",
        "onDetachedFromWindow",
        "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;",
        "item",
        "Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;",
        "fragment",
        "position",
        "",
        "videoLoadMore",
        "",
        "basePostId",
        "baseItemType",
        "isPayloads",
        "fromTrending",
        "setData",
        "(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;ZZ)V",
        "Lcom/transsion/player/orplayer/f;",
        "orPlayer",
        "Lcom/transsion/player/ui/ORPlayerView;",
        "orPlayerView",
        "onPageSelected",
        "(Lcom/transsion/player/orplayer/f;Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V",
        "updateShortTvInfo",
        "onPageRelease",
        "(I)V",
        "width",
        "height",
        "onVideoSizeChanged",
        "(II)V",
        "updateLockState",
        "(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V",
        "Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;",
        "pagerLayoutManager",
        "setPagerLayoutManager",
        "(Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;)V",
        "Landroid/widget/FrameLayout;",
        "getPlayerContainer",
        "()Landroid/widget/FrameLayout;",
        "Landroidx/fragment/app/FragmentActivity;",
        "activity",
        "Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;",
        "getViewModel",
        "(Landroidx/fragment/app/FragmentActivity;)Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;",
        "Landroid/view/MotionEvent;",
        "event",
        "onTouchEvent",
        "(Landroid/view/MotionEvent;)Z",
        "Landroidx/lifecycle/u;",
        "source",
        "Landroidx/lifecycle/Lifecycle$Event;",
        "onStateChanged",
        "(Landroidx/lifecycle/u;Landroidx/lifecycle/Lifecycle$Event;)V",
        "onPlayerReset",
        "reset",
        "app2Background",
        "pageFrom",
        "videoStartPrepare",
        "(Ljava/lang/String;)V",
        "url",
        "setVideoUrl",
        "onSetDataSource",
        "onRenderFirstFrame",
        "Lgn/e;",
        "mediaSource",
        "onVideoStart",
        "(Lgn/e;)V",
        "onPrepare",
        "onVideoPause",
        "",
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
        "Landroid/view/View;",
        "v",
        "onClick",
        "(Landroid/view/View;)V",
        "showEpisodeListDialog",
        "getProgress",
        "()J",
        "onNetConnect",
        "onGetDubsInfo",
        "onAudioTrackChange",
        "Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;",
        "stDownloadTable",
        "onDownloading",
        "(ILcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V",
        "onComplete",
        "(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "e",
        "dbBean",
        "onFail",
        "(Ljava/lang/Exception;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V",
        "a0",
        "c0",
        "b0",
        "f0",
        "count",
        "g0",
        "(Ljava/lang/Long;)V",
        "C",
        "Z",
        "show",
        "W",
        "(Z)V",
        "D",
        "w",
        "h",
        "h0",
        "(Ljava/lang/Integer;Ljava/lang/Integer;)V",
        "ep",
        "ugcVideo",
        "T",
        "(Ljava/lang/String;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V",
        "i0",
        "d0",
        "(J)V",
        "max",
        "e0",
        "O",
        "U",
        "R",
        "X",
        "setLoading",
        "Lkotlin/Function0;",
        "block",
        "S",
        "(Lkotlin/jvm/functions/Function0;)V",
        "P",
        "G",
        "B",
        "Y",
        "Lcom/transsion/shorttv_pugc/bean/Video;",
        "video",
        "(Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/shorttv_pugc/bean/Video;)V",
        "E",
        "a",
        "Ljava/lang/String;",
        "TAG",
        "b",
        "I",
        "screenWidth",
        "Lqr/j0;",
        "c",
        "Lqr/j0;",
        "viewBinding",
        "d",
        "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;",
        "data",
        "Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;",
        "f",
        "Ljava/lang/Boolean;",
        "g",
        "Ljava/lang/Integer;",
        "i",
        "Lcom/transsion/player/orplayer/f;",
        "j",
        "Lcom/transsion/player/ui/ORPlayerView;",
        "k",
        "Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;",
        "Landroid/view/GestureDetector;",
        "l",
        "Landroid/view/GestureDetector;",
        "gestureDetector",
        "Lxs/c;",
        "m",
        "Lxs/c;",
        "dotLayer",
        "n",
        "isClickPause",
        "o",
        "isHorizontalDragging",
        "p",
        "isPageHide",
        "q",
        "J",
        "currentSaveProgress",
        "r",
        "resImgLargeWidth",
        "s",
        "resImgLargeHeight",
        "t",
        "resImgSmallWidth",
        "u",
        "resImgSmallHeight",
        "Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;",
        "mShortTvViewModel",
        "Lat/a;",
        "x",
        "Lat/a;",
        "mShortTvSubViewModel",
        "Landroidx/lifecycle/c0;",
        "y",
        "Landroidx/lifecycle/c0;",
        "observer",
        "z",
        "favoriteObserver",
        "A",
        "likeObserver",
        "followObserver",
        "shareObserver",
        "isFirstFrame",
        "isPrepare",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "F",
        "Ljava/lang/Runnable;",
        "delayToastNetErrRunnable",
        "isLoading",
        "Landroid/os/Handler;",
        "H",
        "Landroid/os/Handler;",
        "autoHideRightMenuHandle",
        "autoHideRightMenuRunnable",
        "Lcom/transsion/shorttv_pugc/ui/adapter/p;",
        "Lcom/transsion/shorttv_pugc/ui/adapter/p;",
        "tagAdapter",
        "shortTvLib_release"
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
.field private final A:Landroidx/lifecycle/c0;

.field private final B:Landroidx/lifecycle/c0;

.field private final C:Landroidx/lifecycle/c0;

.field private D:Z

.field private E:Z

.field private final F:Ljava/lang/Runnable;

.field private G:Z

.field private final H:Landroid/os/Handler;

.field private final I:Ljava/lang/Runnable;

.field private J:Lcom/transsion/shorttv_pugc/ui/adapter/p;

.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Lqr/j0;

.field private d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

.field private e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

.field private f:Ljava/lang/Boolean;

.field private g:Ljava/lang/Integer;

.field private h:Ljava/lang/String;

.field private i:Lcom/transsion/player/orplayer/f;

.field private j:Lcom/transsion/player/ui/ORPlayerView;

.field private k:Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;

.field private l:Landroid/view/GestureDetector;

.field private m:Lxs/c;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:J

.field private final r:I

.field private final s:I

.field private final t:I

.field private final u:I

.field private v:Ljava/lang/String;

.field private w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

.field private x:Lat/a;

.field private final y:Landroidx/lifecycle/c0;

.field private final z:Landroidx/lifecycle/c0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    const-string p2, "ShortTvVideoItemView"

    iput-object p2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result p2

    iput p2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->b:I

    .line 4
    const-string p2, ""

    iput-object p2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->v:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcom/transsion/shorttv/R$layout;->short_tv_layout_play_detail:I

    invoke-static {p3, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 6
    invoke-static {p0}, Lqr/j0;->a(Landroid/view/View;)Lqr/j0;

    move-result-object p3

    const-string v0, "bind(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 7
    iget-object v0, p3, Lqr/j0;->y:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p2, p3, Lqr/j0;->w:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    invoke-static {}, Lcom/blankj/utilcode/util/d;->c()I

    move-result v1

    invoke-virtual {p2, v0, v1, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 9
    iget-object p2, p3, Lqr/j0;->h:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object p2, p3, Lqr/j0;->z:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object p2, p3, Lqr/j0;->y:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object p2, p3, Lqr/j0;->l:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object p2, p3, Lqr/j0;->k:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object p2, p3, Lqr/j0;->j:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object p2, p3, Lqr/j0;->m:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object p2, p3, Lqr/j0;->B:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object p2, p3, Lqr/j0;->C:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object p2, p3, Lqr/j0;->n:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 p2, 0x42400000    # 48.0f

    .line 19
    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p2

    iput p2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->r:I

    const/high16 p2, 0x42800000    # 64.0f

    .line 20
    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p2

    iput p2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->s:I

    const/high16 p2, 0x41c00000    # 24.0f

    .line 21
    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p2

    iput p2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->t:I

    const/high16 p2, 0x42000000    # 32.0f

    .line 22
    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p2

    iput p2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->u:I

    .line 23
    invoke-direct {p0, p1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->D(Landroid/content/Context;)V

    .line 24
    new-instance p1, Lcom/transsion/shorttv_pugc/ui/widget/v;

    invoke-direct {p1, p0}, Lcom/transsion/shorttv_pugc/ui/widget/v;-><init>(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->y:Landroidx/lifecycle/c0;

    .line 25
    new-instance p1, Lcom/transsion/shorttv_pugc/ui/widget/a0;

    invoke-direct {p1, p0}, Lcom/transsion/shorttv_pugc/ui/widget/a0;-><init>(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->z:Landroidx/lifecycle/c0;

    .line 26
    new-instance p1, Lcom/transsion/shorttv_pugc/ui/widget/b0;

    invoke-direct {p1, p0}, Lcom/transsion/shorttv_pugc/ui/widget/b0;-><init>(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->A:Landroidx/lifecycle/c0;

    .line 27
    new-instance p1, Lcom/transsion/shorttv_pugc/ui/widget/c0;

    invoke-direct {p1, p0}, Lcom/transsion/shorttv_pugc/ui/widget/c0;-><init>(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->B:Landroidx/lifecycle/c0;

    .line 28
    new-instance p1, Lcom/transsion/shorttv_pugc/ui/widget/d0;

    invoke-direct {p1, p0}, Lcom/transsion/shorttv_pugc/ui/widget/d0;-><init>(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->C:Landroidx/lifecycle/c0;

    .line 29
    new-instance p1, Lcom/transsion/shorttv_pugc/ui/widget/e0;

    invoke-direct {p1, p0}, Lcom/transsion/shorttv_pugc/ui/widget/e0;-><init>(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->F:Ljava/lang/Runnable;

    .line 30
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->H:Landroid/os/Handler;

    .line 31
    new-instance p1, Lcom/transsion/shorttv_pugc/ui/widget/f0;

    invoke-direct {p1, p0}, Lcom/transsion/shorttv_pugc/ui/widget/f0;-><init>(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->I:Ljava/lang/Runnable;

    return-void
.end method

.method private static final A(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->b0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final B()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->H:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->I:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->q0(Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private final C()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-lt v0, v1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    instance-of v1, v0, Landroid/app/Activity;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    check-cast v0, Landroid/app/Activity;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v0, v2

    .line 20
    :goto_0
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    :cond_1
    if-eqz v2, :cond_5

    .line 27
    .line 28
    invoke-static {v2}, Landroidx/core/view/t2;->a(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_5

    .line 33
    .line 34
    invoke-static {}, Landroidx/core/view/j2;->a()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-static {}, Landroidx/core/view/k2;->a()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    or-int/2addr v1, v2

    .line 43
    invoke-static {v0, v1}, Landroidx/core/view/e0;->a(Landroid/view/WindowInsetsController;I)V

    .line 44
    .line 45
    .line 46
    const/4 v1, 0x2

    .line 47
    invoke-static {v0, v1}, Landroidx/core/view/v2;->a(Landroid/view/WindowInsetsController;I)V

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    instance-of v1, v0, Landroid/app/Activity;

    .line 56
    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    check-cast v0, Landroid/app/Activity;

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    move-object v0, v2

    .line 63
    :goto_1
    if-eqz v0, :cond_4

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    :cond_4
    if-eqz v2, :cond_5

    .line 70
    .line 71
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_5

    .line 76
    .line 77
    const/16 v1, 0x1706

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 80
    .line 81
    .line 82
    :cond_5
    :goto_2
    return-void
.end method

.method private final D(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/view/GestureDetector;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$b;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$b;-><init>(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->l:Landroid/view/GestureDetector;

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->G()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private final E()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getHashTags()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v2, Lcom/transsion/shorttv_pugc/ui/adapter/p;

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-direct {v2, v1, v3, v4}, Lcom/transsion/shorttv_pugc/ui/adapter/p;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 17
    .line 18
    .line 19
    move-object v3, v0

    .line 20
    check-cast v3, Ljava/util/Collection;

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 23
    .line 24
    .line 25
    new-instance v3, Lcom/transsion/shorttv_pugc/ui/widget/y;

    .line 26
    .line 27
    invoke-direct {v3, v2, v0, p0}, Lcom/transsion/shorttv_pugc/ui/widget/y;-><init>(Lcom/transsion/shorttv_pugc/ui/adapter/p;Ljava/util/List;Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lr6/d;)V

    .line 31
    .line 32
    .line 33
    iput-object v2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->J:Lcom/transsion/shorttv_pugc/ui/adapter/p;

    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 36
    .line 37
    iget-object v0, v0, Lqr/j0;->t:Landroidx/recyclerview/widget/RecyclerView;

    .line 38
    .line 39
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-direct {v2, v3, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 49
    .line 50
    .line 51
    new-instance v1, Lcom/transsion/shorttv_pugc/base/widget/k;

    .line 52
    .line 53
    const/4 v8, 0x6

    .line 54
    const/4 v9, 0x0

    .line 55
    const/high16 v5, 0x41000000    # 8.0f

    .line 56
    .line 57
    const/4 v6, 0x0

    .line 58
    const/4 v7, 0x0

    .line 59
    move-object v4, v1

    .line 60
    invoke-direct/range {v4 .. v9}, Lcom/transsion/shorttv_pugc/base/widget/k;-><init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->J:Lcom/transsion/shorttv_pugc/ui/adapter/p;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method private static final F(Lcom/transsion/shorttv_pugc/ui/adapter/p;Ljava/util/List;Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    const-string v0, "<unused var>"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    invoke-interface {p3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    check-cast p3, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoHasTag;

    .line 18
    .line 19
    const-string p4, "/home/hashtag"

    .line 20
    .line 21
    invoke-static {p4}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 22
    .line 23
    .line 24
    move-result-object p4

    .line 25
    const-string v0, "hashtag"

    .line 26
    .line 27
    invoke-static {p1, p3}, Lcom/transsion/shorttv_pugc/utils/ShortTvExtKt;->o(Ljava/util/List;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoHasTag;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p4, v0, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const/4 p4, 0x2

    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-static {p1, p0, v0, p4, v0}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    sget-object p0, Lxs/a;->a:Lxs/a;

    .line 45
    .line 46
    iget-object p1, p2, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 47
    .line 48
    if-eqz p1, :cond_0

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->I()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    :cond_0
    invoke-virtual {p0, p3, p5, v0}, Lxs/a;->c(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoHasTag;ILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method private final G()V
    .locals 3

    .line 1
    new-instance v0, Lcom/transsion/shorttv_pugc/base/widget/e;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 8
    .line 9
    iget-object v2, v2, Lqr/j0;->I:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoProgressDragGestureView;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Lcom/transsion/shorttv_pugc/base/widget/e;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;-><init>(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/transsion/shorttv_pugc/base/widget/e;->r(Lcom/transsion/shorttv_pugc/base/widget/e$a;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 23
    .line 24
    iget-object v0, v0, Lqr/j0;->u:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 25
    .line 26
    new-instance v1, Lcom/transsion/shorttv_pugc/ui/widget/z;

    .line 27
    .line 28
    invoke-direct {v1}, Lcom/transsion/shorttv_pugc/ui/widget/z;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private static final H(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method private static final I(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final J(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->W(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final K(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->o(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method

.method private static final L(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->V(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method

.method private static final M(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->n(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method

.method private static final N(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lkotlin/Unit;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getCreator()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v1, "/profile/user_profile"

    .line 12
    .line 13
    invoke-static {v1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "userId"

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;->getUid()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v1, v2, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const/4 v1, 0x2

    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-static {v0, p0, v2, v1, v2}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 37
    .line 38
    return-object p0
.end method

.method private final O()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->G:Z

    .line 2
    .line 3
    const-string v1, "layoutTvEpisode"

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 8
    .line 9
    iget-object v0, v0, Lqr/j0;->o:Landroid/widget/FrameLayout;

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->B()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->Y()V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->i:Lcom/transsion/player/orplayer/f;

    .line 29
    .line 30
    if-eqz v0, :cond_6

    .line 31
    .line 32
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->isPlaying()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const/4 v2, 0x1

    .line 37
    if-ne v0, v2, :cond_6

    .line 38
    .line 39
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 40
    .line 41
    iget-object v0, v0, Lqr/j0;->o:Landroid/widget/FrameLayout;

    .line 42
    .line 43
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_5

    .line 51
    .line 52
    iput-boolean v2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->n:Z

    .line 53
    .line 54
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;->P0(Z)V

    .line 59
    .line 60
    .line 61
    :cond_2
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lxs/c;

    .line 62
    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    invoke-virtual {v0}, Lxs/c;->b()V

    .line 66
    .line 67
    .line 68
    :cond_3
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->i:Lcom/transsion/player/orplayer/f;

    .line 69
    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->pause()V

    .line 73
    .line 74
    .line 75
    :cond_4
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->Y()V

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_5
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->Y()V

    .line 80
    .line 81
    .line 82
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w()V

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_6
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 87
    .line 88
    iget-object v0, v0, Lqr/j0;->o:Landroid/widget/FrameLayout;

    .line 89
    .line 90
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_7

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_7
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->Y()V

    .line 101
    .line 102
    .line 103
    :goto_1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lxs/c;

    .line 104
    .line 105
    if-eqz v0, :cond_8

    .line 106
    .line 107
    invoke-virtual {v0}, Lxs/c;->c()V

    .line 108
    .line 109
    .line 110
    :cond_8
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->R()V

    .line 111
    .line 112
    .line 113
    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->n:Z

    .line 115
    .line 116
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    .line 117
    .line 118
    if-eqz v1, :cond_9

    .line 119
    .line 120
    invoke-virtual {v1, v0}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;->P0(Z)V

    .line 121
    .line 122
    .line 123
    :cond_9
    :goto_2
    return-void
.end method

.method private final P()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->P()Lvs/h;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 19
    .line 20
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget-object v3, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 28
    .line 29
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getTitle()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    iget-object v4, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    .line 37
    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    invoke-virtual {v4}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;->getPageName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    if-nez v4, :cond_2

    .line 45
    .line 46
    :cond_1
    const-string v4, ""

    .line 47
    .line 48
    :cond_2
    invoke-interface {v0, v1, v2, v3, v4}, Lvs/h;->a(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_3
    return-void
.end method

.method private static final Q(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->R()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final R()V
    .locals 7

    .line 1
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->i:Lcom/transsion/player/orplayer/f;

    .line 8
    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v4, "playVideo   data:"

    .line 15
    .line 16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, "  orPlayer:"

    .line 23
    .line 24
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, " ------- "

    .line 31
    .line 32
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const/4 v4, 0x4

    .line 43
    const/4 v5, 0x0

    .line 44
    const/4 v3, 0x0

    .line 45
    move-object v0, v6

    .line 46
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 50
    .line 51
    if-nez v0, :cond_0

    .line 52
    .line 53
    return-void

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->i:Lcom/transsion/player/orplayer/f;

    .line 55
    .line 56
    if-eqz v1, :cond_6

    .line 57
    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getPlayUrl()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    const/4 v0, 0x0

    .line 66
    :goto_0
    if-nez v0, :cond_2

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->i:Lcom/transsion/player/orplayer/f;

    .line 70
    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->isComplete()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    const/4 v1, 0x1

    .line 78
    if-ne v0, v1, :cond_3

    .line 79
    .line 80
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->i:Lcom/transsion/player/orplayer/f;

    .line 81
    .line 82
    if-eqz v0, :cond_3

    .line 83
    .line 84
    const-wide/16 v1, 0x0

    .line 85
    .line 86
    invoke-interface {v0, v1, v2}, Lcom/transsion/player/orplayer/f;->seekTo(J)V

    .line 87
    .line 88
    .line 89
    :cond_3
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->i:Lcom/transsion/player/orplayer/f;

    .line 90
    .line 91
    if-eqz v0, :cond_4

    .line 92
    .line 93
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->play()V

    .line 94
    .line 95
    .line 96
    :cond_4
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 97
    .line 98
    if-eqz v0, :cond_5

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->X()V

    .line 101
    .line 102
    .line 103
    :cond_5
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 104
    .line 105
    const/4 v4, 0x4

    .line 106
    const/4 v5, 0x0

    .line 107
    const-string v2, "player- startplay"

    .line 108
    .line 109
    const/4 v3, 0x0

    .line 110
    move-object v0, v6

    .line 111
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    :cond_6
    :goto_1
    return-void
.end method

.method private final S(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 1
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 2
    .line 3
    invoke-virtual {v0}, Lyg/l;->e()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->X()V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method private final T(Ljava/lang/String;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    iget-object v3, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 5
    .line 6
    iget-object v3, v3, Lqr/j0;->c:Lcom/transsion/shorttv_pugc/base/widget/expand/ExpandView;

    .line 7
    .line 8
    new-instance v4, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$d;

    .line 9
    .line 10
    invoke-direct {v4, p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$d;-><init>(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v3, v4}, Lcom/transsion/shorttv_pugc/base/widget/expand/ExpandView;->setExpandListener(Lcom/transsion/shorttv_pugc/base/widget/expand/ExpandView$c;)V

    .line 14
    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getDescription()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-lez v4, :cond_0

    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getDescription()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p2}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getDescription()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    if-nez p2, :cond_1

    .line 40
    .line 41
    const-string p2, ""

    .line 42
    .line 43
    :cond_1
    :goto_0
    const-string v4, "format(...)"

    .line 44
    .line 45
    if-eqz p2, :cond_3

    .line 46
    .line 47
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-nez v5, :cond_2

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    sget-object v5, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 55
    .line 56
    new-array v5, v1, [Ljava/lang/Object;

    .line 57
    .line 58
    aput-object p1, v5, v0

    .line 59
    .line 60
    aput-object p2, v5, v2

    .line 61
    .line 62
    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const-string p2, "EP%s | %s"

    .line 67
    .line 68
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    :goto_1
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_3
    :goto_2
    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 77
    .line 78
    new-array p2, v2, [Ljava/lang/Object;

    .line 79
    .line 80
    aput-object p1, p2, v0

    .line 81
    .line 82
    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    const-string p2, "EP%s"

    .line 87
    .line 88
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    goto :goto_1

    .line 93
    :goto_3
    invoke-virtual {v3, p1}, Lcom/transsion/shorttv_pugc/base/widget/expand/ExpandView;->setTitle(Ljava/lang/CharSequence;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method private final U()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->S()Landroidx/lifecycle/LiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Boolean;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x1

    .line 25
    :goto_0
    invoke-direct {p0, v0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->W(Z)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private static final V(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->f0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final W(Z)V
    .locals 3

    .line 1
    const-string v0, "groupContent"

    .line 2
    .line 3
    if-eqz p1, :cond_4

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->Z()V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getCreator()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;->getAvatar()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    if-eqz p1, :cond_3

    .line 25
    .line 26
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 27
    .line 28
    iget-object p1, p1, Lqr/j0;->f:Landroidx/constraintlayout/widget/Group;

    .line 29
    .line 30
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lgs/b;->d(Landroid/view/View;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 37
    .line 38
    iget-object p1, p1, Lqr/j0;->n:Landroidx/appcompat/widget/AppCompatImageView;

    .line 39
    .line 40
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getCreator()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;->getHasSubscribe()Ljava/lang/Boolean;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 56
    .line 57
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    move v0, v1

    .line 63
    :goto_1
    if-eqz v0, :cond_2

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_2
    const/16 v1, 0x8

    .line 67
    .line 68
    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 72
    .line 73
    iget-object p1, p1, Lqr/j0;->c:Lcom/transsion/shorttv_pugc/base/widget/expand/ExpandView;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/base/widget/expand/ExpandView;->isSetTitleSuccess()Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-nez p1, :cond_5

    .line 80
    .line 81
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 82
    .line 83
    if-eqz p1, :cond_5

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getEp()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-direct {p0, v0, p1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->T(Ljava/lang/String;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V

    .line 94
    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_3
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 98
    .line 99
    iget-object p1, p1, Lqr/j0;->f:Landroidx/constraintlayout/widget/Group;

    .line 100
    .line 101
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-static {p1}, Lgs/b;->c(Landroid/view/View;)V

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 108
    .line 109
    iget-object p1, p1, Lqr/j0;->o:Landroid/widget/FrameLayout;

    .line 110
    .line 111
    const-string v0, "layoutTvEpisode"

    .line 112
    .line 113
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-static {p1}, Lgs/b;->d(Landroid/view/View;)V

    .line 117
    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_4
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->C()V

    .line 121
    .line 122
    .line 123
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 124
    .line 125
    iget-object p1, p1, Lqr/j0;->f:Landroidx/constraintlayout/widget/Group;

    .line 126
    .line 127
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-static {p1}, Lgs/b;->c(Landroid/view/View;)V

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 134
    .line 135
    iget-object p1, p1, Lqr/j0;->n:Landroidx/appcompat/widget/AppCompatImageView;

    .line 136
    .line 137
    const-string v0, "ivSubscribe"

    .line 138
    .line 139
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-static {p1}, Lgs/b;->c(Landroid/view/View;)V

    .line 143
    .line 144
    .line 145
    :cond_5
    :goto_3
    return-void
.end method

.method private final X()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;->S0()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private final Y()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->H:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->I:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->q0(Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private final Z()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-lt v0, v1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    instance-of v1, v0, Landroid/app/Activity;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    check-cast v0, Landroid/app/Activity;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v0, v2

    .line 20
    :goto_0
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    :cond_1
    if-eqz v2, :cond_5

    .line 27
    .line 28
    invoke-static {v2}, Landroidx/core/view/t2;->a(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_5

    .line 33
    .line 34
    invoke-static {}, Landroidx/core/view/j2;->a()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-static {}, Landroidx/core/view/k2;->a()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    or-int/2addr v1, v2

    .line 43
    invoke-static {v0, v1}, Landroidx/core/view/b0;->a(Landroid/view/WindowInsetsController;I)V

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    instance-of v1, v0, Landroid/app/Activity;

    .line 52
    .line 53
    if-eqz v1, :cond_3

    .line 54
    .line 55
    check-cast v0, Landroid/app/Activity;

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    move-object v0, v2

    .line 59
    :goto_1
    if-eqz v0, :cond_4

    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    :cond_4
    if-eqz v2, :cond_5

    .line 66
    .line 67
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-eqz v0, :cond_5

    .line 72
    .line 73
    const/16 v1, 0x700

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 76
    .line 77
    .line 78
    :cond_5
    :goto_2
    return-void
.end method

.method private final a0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getInteractiveInfo()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->getFavoriteNum()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-wide/16 v0, 0x0

    .line 23
    .line 24
    :goto_0
    invoke-static {v0, v1}, Lls/e;->a(J)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 29
    .line 30
    iget-object v1, v1, Lqr/j0;->z:Landroidx/appcompat/widget/AppCompatTextView;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/transsion/shorttv_pugc/utils/ShortTvExtKt;->t(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 40
    .line 41
    iget-object v0, v0, Lqr/j0;->z:Landroidx/appcompat/widget/AppCompatTextView;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getInteractiveInfo()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->getHasFavorite()Ljava/lang/Boolean;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    const/4 v1, 0x0

    .line 65
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public static final synthetic access$autoHideRightMenu(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getData$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getDotLayer$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lxs/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lxs/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getOrPlayer$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lcom/transsion/player/orplayer/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->i:Lcom/transsion/player/orplayer/f;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getPagerLayoutManager$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->k:Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getViewBinding$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lqr/j0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$isHorizontalDragging$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->o:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$onDoubleClick(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->O()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setHorizontalDragging$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->o:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$showRightMenu(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->Y()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$updateProgress(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d0(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final b0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getCreator()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;->getHasSubscribe()Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 24
    .line 25
    iget-object v2, v1, Lqr/j0;->n:Landroidx/appcompat/widget/AppCompatImageView;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    iget-object v0, v1, Lqr/j0;->f:Landroidx/constraintlayout/widget/Group;

    .line 30
    .line 31
    const-string v1, "groupContent"

    .line 32
    .line 33
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v2}, Lgs/b;->d(Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-static {v2}, Lgs/b;->b(Landroid/view/View;)V

    .line 53
    .line 54
    .line 55
    :goto_1
    return-void
.end method

.method private final c0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getInteractiveInfo()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->getLikeNum()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-wide/16 v0, 0x0

    .line 23
    .line 24
    :goto_0
    invoke-static {v0, v1}, Lls/e;->a(J)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 29
    .line 30
    iget-object v1, v1, Lqr/j0;->B:Landroidx/appcompat/widget/AppCompatTextView;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/transsion/shorttv_pugc/utils/ShortTvExtKt;->t(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 40
    .line 41
    iget-object v0, v0, Lqr/j0;->B:Landroidx/appcompat/widget/AppCompatTextView;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getInteractiveInfo()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->getHasLike()Ljava/lang/Boolean;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    const/4 v1, 0x0

    .line 65
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method private final d0(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 2
    .line 3
    iget-object v0, v0, Lqr/j0;->u:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 4
    .line 5
    long-to-int p1, p1

    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 10
    .line 11
    iget-object p2, p2, Lqr/j0;->r:Landroid/widget/ProgressBar;

    .line 12
    .line 13
    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 17
    .line 18
    iget-object p2, p2, Lqr/j0;->D:Landroid/widget/TextView;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/transsion/shorttv_pugc/utils/j;->a(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 25
    .line 26
    iget-object v0, v0, Lqr/j0;->r:Landroid/widget/ProgressBar;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-static {v0}, Lcom/transsion/shorttv_pugc/utils/j;->a(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p1, " / "

    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method private final e0(J)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 2
    .line 3
    iget-object v0, v0, Lqr/j0;->u:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 4
    .line 5
    long-to-int v1, p1

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 10
    .line 11
    iget-object v0, v0, Lqr/j0;->r:Landroid/widget/ProgressBar;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 14
    .line 15
    .line 16
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v1, "updateProgressMax: "

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p1, "  : "

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    const/4 v6, 0x4

    .line 46
    const/4 v7, 0x0

    .line 47
    const/4 v5, 0x0

    .line 48
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method private final f0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getInteractiveInfo()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->getShareNum()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-wide/16 v0, 0x0

    .line 23
    .line 24
    :goto_0
    invoke-static {v0, v1}, Lls/e;->a(J)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private final g0(Ljava/lang/Long;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_2

    .line 8
    .line 9
    :cond_0
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getInteractiveInfo()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->getShareNum()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const-wide/16 v0, 0x0

    .line 31
    .line 32
    :goto_0
    invoke-static {v0, v1}, Lls/e;->a(J)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    :cond_2
    return-void
.end method

.method public static synthetic h(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->M(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final h0(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    if-eqz p2, :cond_2

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
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 13
    .line 14
    iget-object v0, v0, Lqr/j0;->d:Landroid/widget/FrameLayout;

    .line 15
    .line 16
    const-string v1, "flContainer"

    .line 17
    .line 18
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 28
    .line 29
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 40
    .line 41
    mul-int/2addr p2, v2

    .line 42
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    div-int/2addr p2, p1

    .line 47
    iput p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 54
    .line 55
    const-string p2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    .line 56
    .line 57
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1

    .line 61
    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic i(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->K(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final i0(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    const-wide/16 v1, 0x0

    .line 3
    .line 4
    invoke-direct {p0, v1, v2}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d0(J)V

    .line 5
    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->videoUGCPosition()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 14
    .line 15
    iget-object v2, v2, Lqr/j0;->G:Lcom/transsion/shorttv_pugc/base/widget/TnTextView;

    .line 16
    .line 17
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 18
    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Lcom/transsion/shorttv_pugc/utils/ShortTvExtKt;->n(Ljava/lang/Integer;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-array v3, v0, [Ljava/lang/Object;

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    aput-object v1, v3, v4

    .line 31
    .line 32
    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "EP%s"

    .line 37
    .line 38
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "format(...)"

    .line 43
    .line 44
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    if-eqz p1, :cond_3

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getCover()Lcom/transsion/shorttv_pugc/bean/Cover;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/bean/Cover;->getUrl()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    sget-object v0, Lis/b;->a:Lis/b$a;

    .line 65
    .line 66
    iget v3, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->b:I

    .line 67
    .line 68
    const/16 v8, 0x78

    .line 69
    .line 70
    const/4 v9, 0x0

    .line 71
    const/4 v4, 0x0

    .line 72
    const/4 v5, 0x0

    .line 73
    const/4 v6, 0x0

    .line 74
    const/4 v7, 0x0

    .line 75
    move v2, v3

    .line 76
    invoke-static/range {v0 .. v9}, Lis/b$a;->e(Lis/b$a;Ljava/lang/String;IIZZZIILjava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 81
    .line 82
    iget-object v0, v0, Lqr/j0;->i:Landroidx/appcompat/widget/AppCompatImageView;

    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_1

    .line 93
    .line 94
    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    .line 96
    .line 97
    if-eqz v0, :cond_4

    .line 98
    .line 99
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    if-nez v0, :cond_2

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_2
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 107
    .line 108
    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 109
    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    const-string v4, "into  "

    .line 116
    .line 117
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    const/4 v5, 0x4

    .line 128
    const/4 v6, 0x0

    .line 129
    const/4 v4, 0x0

    .line 130
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 134
    .line 135
    iget-object v1, v1, Lqr/j0;->i:Landroidx/appcompat/widget/AppCompatImageView;

    .line 136
    .line 137
    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    new-instance v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$e;

    .line 149
    .line 150
    invoke-direct {v0, p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$e;-><init>(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 158
    .line 159
    iget-object v0, v0, Lqr/j0;->i:Landroidx/appcompat/widget/AppCompatImageView;

    .line 160
    .line 161
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 162
    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_3
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 166
    .line 167
    iget-object p1, p1, Lqr/j0;->i:Landroidx/appcompat/widget/AppCompatImageView;

    .line 168
    .line 169
    const/4 v0, 0x0

    .line 170
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    .line 172
    .line 173
    :cond_4
    :goto_0
    return-void
.end method

.method public static synthetic j(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->y(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic k(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->z(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic l(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->L(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic m(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->x(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->H(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic o(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->J(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic p(Lcom/transsion/shorttv_pugc/ui/adapter/p;Ljava/util/List;Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->F(Lcom/transsion/shorttv_pugc/ui/adapter/p;Ljava/util/List;Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic q(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->I(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic r(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->N(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic s(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->A(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final setLoading(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->G:Z

    .line 2
    .line 3
    const-string v0, "null cannot be cast to non-null type com.transsion.shorttv_pugc.ui.fragment.ShortTvDetailListFragment"

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    .line 8
    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;->startLoading()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    .line 17
    .line 18
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;->hideLoading()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public static synthetic t(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->V(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic u(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->Q(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final v(Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/shorttv_pugc/bean/Video;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 6
    .line 7
    iget-object v1, v1, Lqr/j0;->d:Landroid/widget/FrameLayout;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    check-cast v0, Landroid/view/ViewGroup;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 25
    .line 26
    const/4 v1, -0x1

    .line 27
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 31
    .line 32
    iget-object v1, v1, Lqr/j0;->d:Landroid/widget/FrameLayout;

    .line 33
    .line 34
    invoke-virtual {v1, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    if-eqz p2, :cond_2

    .line 38
    .line 39
    invoke-virtual {p2}, Lcom/transsion/shorttv_pugc/bean/Video;->getWidth()Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p2}, Lcom/transsion/shorttv_pugc/bean/Video;->getHeight()Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->h0(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    return-void
.end method

.method private final w()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 2
    .line 3
    iget-object v0, v0, Lqr/j0;->o:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    const-string v1, "layoutTvEpisode"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->H:Landroid/os/Handler;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->I:Ljava/lang/Runnable;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->H:Landroid/os/Handler;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->I:Ljava/lang/Runnable;

    .line 26
    .line 27
    const-wide/16 v2, 0xbb8

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method private static final x(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->B()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final y(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->X()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final z(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public app2Background()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lxs/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lxs/c;->d(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
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

.method public getPlayerContainer()Landroid/widget/FrameLayout;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 2
    .line 3
    iget-object v0, v0, Lqr/j0;->d:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    const-string v1, "flContainer"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public getProgress()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 2
    .line 3
    iget-object v0, v0, Lqr/j0;->u:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    int-to-long v0, v0

    .line 10
    return-wide v0
.end method

.method public getViewModel(Landroidx/fragment/app/FragmentActivity;)Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/lifecycle/v0;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    .line 9
    .line 10
    .line 11
    const-class p1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 18
    .line 19
    return-object p1
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
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    .line 5
    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_4

    .line 13
    .line 14
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->S()Landroidx/lifecycle/LiveData;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->y:Landroidx/lifecycle/c0;

    .line 25
    .line 26
    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->y()Landroidx/lifecycle/LiveData;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->z:Landroidx/lifecycle/c0;

    .line 40
    .line 41
    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->E()Landroidx/lifecycle/LiveData;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->A:Landroidx/lifecycle/c0;

    .line 55
    .line 56
    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 60
    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->B()Landroidx/lifecycle/LiveData;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    if-eqz v1, :cond_3

    .line 68
    .line 69
    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->B:Landroidx/lifecycle/c0;

    .line 70
    .line 71
    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 72
    .line 73
    .line 74
    :cond_3
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 75
    .line 76
    if-eqz v1, :cond_4

    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->J()Landroidx/lifecycle/LiveData;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    if-eqz v1, :cond_4

    .line 83
    .line 84
    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->C:Landroidx/lifecycle/c0;

    .line 85
    .line 86
    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 87
    .line 88
    .line 89
    :cond_4
    return-void
.end method

.method public onAudioTrackChange()V
    .locals 0

    .line 1
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
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Lls/c;->a:Lls/c;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v3, 0x0

    .line 15
    :goto_0
    const-wide/16 v4, 0x1f4

    .line 16
    .line 17
    invoke-virtual {v2, v3, v4, v5}, Lls/c;->a(IJ)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 25
    .line 26
    iget-object v4, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 27
    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v5, "onclick, "

    .line 34
    .line 35
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    const/4 v7, 0x4

    .line 46
    const/4 v8, 0x0

    .line 47
    const/4 v6, 0x0

    .line 48
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    move-object v1, v2

    .line 64
    :goto_1
    sget v3, Lcom/transsion/shorttv/R$id;->iv_subscribe:I

    .line 65
    .line 66
    if-nez v1, :cond_3

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-ne v4, v3, :cond_5

    .line 74
    .line 75
    new-instance v1, Lcom/transsion/shorttv_pugc/ui/widget/g0;

    .line 76
    .line 77
    invoke-direct {v1, v0}, Lcom/transsion/shorttv_pugc/ui/widget/g0;-><init>(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V

    .line 78
    .line 79
    .line 80
    invoke-direct {v0, v1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->S(Lkotlin/jvm/functions/Function0;)V

    .line 81
    .line 82
    .line 83
    sget-object v3, Lxs/a;->a:Lxs/a;

    .line 84
    .line 85
    iget-object v5, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 86
    .line 87
    iget-object v1, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 88
    .line 89
    if-eqz v1, :cond_4

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->I()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    :cond_4
    move-object v7, v2

    .line 96
    const/4 v8, 0x4

    .line 97
    const/4 v9, 0x0

    .line 98
    const-string v4, "subscribe"

    .line 99
    .line 100
    const/4 v6, 0x0

    .line 101
    invoke-static/range {v3 .. v9}, Lxs/a;->b(Lxs/a;Ljava/lang/String;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    goto/16 :goto_10

    .line 105
    .line 106
    :cond_5
    :goto_2
    sget v3, Lcom/transsion/shorttv/R$id;->tv_episode:I

    .line 107
    .line 108
    if-nez v1, :cond_6

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-ne v4, v3, :cond_7

    .line 116
    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->showEpisodeListDialog()V

    .line 118
    .line 119
    .line 120
    goto/16 :goto_10

    .line 121
    .line 122
    :cond_7
    :goto_3
    sget v3, Lcom/transsion/shorttv/R$id;->tv_like:I

    .line 123
    .line 124
    if-nez v1, :cond_8

    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    if-ne v4, v3, :cond_a

    .line 132
    .line 133
    new-instance v1, Lcom/transsion/shorttv_pugc/ui/widget/h0;

    .line 134
    .line 135
    invoke-direct {v1, v0}, Lcom/transsion/shorttv_pugc/ui/widget/h0;-><init>(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V

    .line 136
    .line 137
    .line 138
    invoke-direct {v0, v1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->S(Lkotlin/jvm/functions/Function0;)V

    .line 139
    .line 140
    .line 141
    sget-object v3, Lxs/a;->a:Lxs/a;

    .line 142
    .line 143
    iget-object v5, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 144
    .line 145
    iget-object v1, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 146
    .line 147
    if-eqz v1, :cond_9

    .line 148
    .line 149
    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->I()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    :cond_9
    move-object v7, v2

    .line 154
    const/4 v8, 0x4

    .line 155
    const/4 v9, 0x0

    .line 156
    const-string v4, "like"

    .line 157
    .line 158
    const/4 v6, 0x0

    .line 159
    invoke-static/range {v3 .. v9}, Lxs/a;->b(Lxs/a;Ljava/lang/String;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    goto/16 :goto_10

    .line 163
    .line 164
    :cond_a
    :goto_4
    sget v3, Lcom/transsion/shorttv/R$id;->iv_share:I

    .line 165
    .line 166
    if-nez v1, :cond_b

    .line 167
    .line 168
    goto :goto_6

    .line 169
    :cond_b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    if-ne v4, v3, :cond_f

    .line 174
    .line 175
    iget-object v1, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 176
    .line 177
    if-eqz v1, :cond_c

    .line 178
    .line 179
    iget-object v3, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 180
    .line 181
    invoke-virtual {v1, v3}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->i0(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V

    .line 182
    .line 183
    .line 184
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->P()V

    .line 185
    .line 186
    .line 187
    iget-object v1, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 188
    .line 189
    if-eqz v1, :cond_d

    .line 190
    .line 191
    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getInteractiveInfo()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    if-eqz v1, :cond_d

    .line 196
    .line 197
    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->getShareNum()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    if-eqz v1, :cond_d

    .line 202
    .line 203
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 204
    .line 205
    .line 206
    move-result-wide v3

    .line 207
    goto :goto_5

    .line 208
    :cond_d
    const-wide/16 v3, 0x1

    .line 209
    .line 210
    :goto_5
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-direct {v0, v1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->g0(Ljava/lang/Long;)V

    .line 215
    .line 216
    .line 217
    sget-object v3, Lxs/a;->a:Lxs/a;

    .line 218
    .line 219
    iget-object v5, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 220
    .line 221
    iget-object v1, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 222
    .line 223
    if-eqz v1, :cond_e

    .line 224
    .line 225
    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->I()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    :cond_e
    move-object v7, v2

    .line 230
    const/4 v8, 0x4

    .line 231
    const/4 v9, 0x0

    .line 232
    const-string v4, "share"

    .line 233
    .line 234
    const/4 v6, 0x0

    .line 235
    invoke-static/range {v3 .. v9}, Lxs/a;->b(Lxs/a;Ljava/lang/String;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    goto/16 :goto_10

    .line 239
    .line 240
    :cond_f
    :goto_6
    sget v3, Lcom/transsion/shorttv/R$id;->tv_favorite:I

    .line 241
    .line 242
    if-nez v1, :cond_10

    .line 243
    .line 244
    goto :goto_7

    .line 245
    :cond_10
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 246
    .line 247
    .line 248
    move-result v4

    .line 249
    if-ne v4, v3, :cond_12

    .line 250
    .line 251
    new-instance v1, Lcom/transsion/shorttv_pugc/ui/widget/i0;

    .line 252
    .line 253
    invoke-direct {v1, v0}, Lcom/transsion/shorttv_pugc/ui/widget/i0;-><init>(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V

    .line 254
    .line 255
    .line 256
    invoke-direct {v0, v1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->S(Lkotlin/jvm/functions/Function0;)V

    .line 257
    .line 258
    .line 259
    sget-object v3, Lxs/a;->a:Lxs/a;

    .line 260
    .line 261
    iget-object v5, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 262
    .line 263
    iget-object v1, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 264
    .line 265
    if-eqz v1, :cond_11

    .line 266
    .line 267
    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->I()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    :cond_11
    move-object v7, v2

    .line 272
    const/4 v8, 0x4

    .line 273
    const/4 v9, 0x0

    .line 274
    const-string v4, "favorite"

    .line 275
    .line 276
    const/4 v6, 0x0

    .line 277
    invoke-static/range {v3 .. v9}, Lxs/a;->b(Lxs/a;Ljava/lang/String;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    goto/16 :goto_10

    .line 281
    .line 282
    :cond_12
    :goto_7
    sget v3, Lcom/transsion/shorttv/R$id;->iv_play_status:I

    .line 283
    .line 284
    if-nez v1, :cond_13

    .line 285
    .line 286
    goto :goto_8

    .line 287
    :cond_13
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 288
    .line 289
    .line 290
    move-result v4

    .line 291
    if-ne v4, v3, :cond_14

    .line 292
    .line 293
    invoke-direct/range {p0 .. p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->O()V

    .line 294
    .line 295
    .line 296
    goto/16 :goto_10

    .line 297
    .line 298
    :cond_14
    :goto_8
    sget v3, Lcom/transsion/shorttv/R$id;->iv_short_cover:I

    .line 299
    .line 300
    if-nez v1, :cond_15

    .line 301
    .line 302
    goto :goto_9

    .line 303
    :cond_15
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 304
    .line 305
    .line 306
    move-result v4

    .line 307
    if-eq v4, v3, :cond_20

    .line 308
    .line 309
    :goto_9
    sget v3, Lcom/transsion/shorttv/R$id;->tv_name:I

    .line 310
    .line 311
    if-nez v1, :cond_16

    .line 312
    .line 313
    goto :goto_a

    .line 314
    :cond_16
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 315
    .line 316
    .line 317
    move-result v4

    .line 318
    if-ne v4, v3, :cond_17

    .line 319
    .line 320
    goto/16 :goto_f

    .line 321
    .line 322
    :cond_17
    :goto_a
    sget v3, Lcom/transsion/shorttv/R$id;->iv_download:I

    .line 323
    .line 324
    if-nez v1, :cond_18

    .line 325
    .line 326
    goto/16 :goto_e

    .line 327
    .line 328
    :cond_18
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 329
    .line 330
    .line 331
    move-result v4

    .line 332
    if-ne v4, v3, :cond_1e

    .line 333
    .line 334
    iget-object v1, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 335
    .line 336
    if-eqz v1, :cond_1c

    .line 337
    .line 338
    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->r()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v5

    .line 342
    if-eqz v5, :cond_1c

    .line 343
    .line 344
    iget-object v1, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 345
    .line 346
    if-eqz v1, :cond_1c

    .line 347
    .line 348
    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->L()Lvs/c;

    .line 349
    .line 350
    .line 351
    move-result-object v3

    .line 352
    if-eqz v3, :cond_1c

    .line 353
    .line 354
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    const-string v4, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    .line 359
    .line 360
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    move-object v4, v1

    .line 364
    check-cast v4, Landroidx/fragment/app/FragmentActivity;

    .line 365
    .line 366
    iget-object v1, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 367
    .line 368
    if-eqz v1, :cond_19

    .line 369
    .line 370
    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getBelongToCollection()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    if-eqz v1, :cond_19

    .line 375
    .line 376
    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;->getCollectionName()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    move-object v6, v1

    .line 381
    goto :goto_b

    .line 382
    :cond_19
    move-object v6, v2

    .line 383
    :goto_b
    iget-object v1, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 384
    .line 385
    if-eqz v1, :cond_1a

    .line 386
    .line 387
    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->I()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    move-object v9, v1

    .line 392
    goto :goto_c

    .line 393
    :cond_1a
    move-object v9, v2

    .line 394
    :goto_c
    iget-object v1, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 395
    .line 396
    if-eqz v1, :cond_1b

    .line 397
    .line 398
    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getSubjectId()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    move-object v10, v1

    .line 403
    goto :goto_d

    .line 404
    :cond_1b
    move-object v10, v2

    .line 405
    :goto_d
    const-string v7, "ugc_video"

    .line 406
    .line 407
    const-string v8, "/ugc_shorts/detail"

    .line 408
    .line 409
    invoke-interface/range {v3 .. v10}, Lvs/c;->a(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    :cond_1c
    sget-object v11, Lxs/a;->a:Lxs/a;

    .line 413
    .line 414
    iget-object v13, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 415
    .line 416
    iget-object v1, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 417
    .line 418
    if-eqz v1, :cond_1d

    .line 419
    .line 420
    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->I()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v2

    .line 424
    :cond_1d
    move-object v15, v2

    .line 425
    const/16 v16, 0x4

    .line 426
    .line 427
    const/16 v17, 0x0

    .line 428
    .line 429
    const-string v12, "saved"

    .line 430
    .line 431
    const/4 v14, 0x0

    .line 432
    invoke-static/range {v11 .. v17}, Lxs/a;->b(Lxs/a;Ljava/lang/String;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 433
    .line 434
    .line 435
    goto :goto_10

    .line 436
    :cond_1e
    :goto_e
    sget v2, Lcom/transsion/shorttv/R$id;->iv_back:I

    .line 437
    .line 438
    if-nez v1, :cond_1f

    .line 439
    .line 440
    goto :goto_10

    .line 441
    :cond_1f
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 442
    .line 443
    .line 444
    move-result v1

    .line 445
    if-ne v1, v2, :cond_22

    .line 446
    .line 447
    iget-object v1, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    .line 448
    .line 449
    if-eqz v1, :cond_22

    .line 450
    .line 451
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    if-eqz v1, :cond_22

    .line 456
    .line 457
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 458
    .line 459
    .line 460
    goto :goto_10

    .line 461
    :cond_20
    :goto_f
    new-instance v1, Lcom/transsion/shorttv_pugc/ui/widget/w;

    .line 462
    .line 463
    invoke-direct {v1, v0}, Lcom/transsion/shorttv_pugc/ui/widget/w;-><init>(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V

    .line 464
    .line 465
    .line 466
    invoke-direct {v0, v1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->S(Lkotlin/jvm/functions/Function0;)V

    .line 467
    .line 468
    .line 469
    sget-object v3, Lxs/a;->a:Lxs/a;

    .line 470
    .line 471
    iget-object v5, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 472
    .line 473
    iget-object v1, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 474
    .line 475
    if-eqz v1, :cond_21

    .line 476
    .line 477
    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->I()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v2

    .line 481
    :cond_21
    move-object v7, v2

    .line 482
    const/4 v8, 0x4

    .line 483
    const/4 v9, 0x0

    .line 484
    const-string v4, "cover"

    .line 485
    .line 486
    const/4 v6, 0x0

    .line 487
    invoke-static/range {v3 .. v9}, Lxs/a;->b(Lxs/a;Ljava/lang/String;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 488
    .line 489
    .line 490
    :cond_22
    :goto_10
    return-void
.end method

.method public onComplete(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 1

    .line 1
    const-string v0, "stDownloadTable"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onCompletion(Lgn/e;)V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

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
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lxs/c;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-static {p1, v1, v0, v1}, Lcom/transsion/player/orplayer/e$a;->f(Lcom/transsion/player/orplayer/e;Lgn/e;ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    const-wide/16 v0, 0x0

    .line 27
    .line 28
    invoke-direct {p0, v0, v1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d0(J)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->S()Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->y:Landroidx/lifecycle/c0;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->o(Landroidx/lifecycle/c0;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->y()Landroidx/lifecycle/LiveData;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->z:Landroidx/lifecycle/c0;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->o(Landroidx/lifecycle/c0;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->J()Landroidx/lifecycle/LiveData;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->C:Landroidx/lifecycle/c0;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->o(Landroidx/lifecycle/c0;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->E()Landroidx/lifecycle/LiveData;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->A:Landroidx/lifecycle/c0;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->o(Landroidx/lifecycle/c0;)V

    .line 62
    .line 63
    .line 64
    :cond_3
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 65
    .line 66
    if-eqz v0, :cond_4

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->B()Landroidx/lifecycle/LiveData;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->B:Landroidx/lifecycle/c0;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->o(Landroidx/lifecycle/c0;)V

    .line 77
    .line 78
    .line 79
    :cond_4
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->H:Landroid/os/Handler;

    .line 80
    .line 81
    const/4 v1, 0x0

    .line 82
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public onDownloading(ILcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 0

    .line 1
    const-string p1, "stDownloadTable"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onFail(Ljava/lang/Exception;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 1

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "dbBean"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
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

.method public onGetDubsInfo()V
    .locals 0

    .line 1
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

.method public onLoadingBegin(Lgn/e;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lxs/c;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {p1, v1, v0, v1}, Lcom/transsion/player/orplayer/e$a;->j(Lcom/transsion/player/orplayer/e;Lgn/e;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-direct {p0, v0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->setLoading(Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onLoadingEnd(Lgn/e;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lxs/c;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {p1, v1, v0, v1}, Lcom/transsion/player/orplayer/e$a;->l(Lcom/transsion/player/orplayer/e;Lgn/e;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    invoke-direct {p0, p1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->setLoading(Z)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->F:Ljava/lang/Runnable;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
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
    .locals 0

    .line 1
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
    return-void
.end method

.method public onPageRelease(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->onPlayerReset()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onPageSelected(Lcom/transsion/player/orplayer/f;Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->i:Lcom/transsion/player/orplayer/f;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/ui/ORPlayerView;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lxs/c;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lxs/c;->p(Lcom/transsion/player/orplayer/f;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lxs/c;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-interface {p1, v0}, Lcom/transsion/player/orplayer/f;->addPlayerListener(Lcom/transsion/player/orplayer/e;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    if-eqz p3, :cond_2

    .line 22
    .line 23
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {p3}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getEp()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->c0(I)V

    .line 32
    .line 33
    .line 34
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->updateShortTvInfo(Lcom/transsion/player/orplayer/f;Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V

    .line 35
    .line 36
    .line 37
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
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lxs/c;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    invoke-static {v0, p1, v1, v2, v1}, Lcom/transsion/player/orplayer/e$a;->r(Lcom/transsion/player/orplayer/e;Lcom/transsion/player/orplayer/PlayError;Lgn/e;ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorCode()Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorMessage()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    invoke-virtual {p2}, Lgn/e;->j()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, " --> IPlayerListener --> onPlayError()  errorCode:"

    .line 42
    .line 43
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v2, " errorMessage:"

    .line 50
    .line 51
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v2, " url:"

    .line 58
    .line 59
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v1, " --> \u77ed\u64ad\u653e\u5931\u8d25\u4e86"

    .line 66
    .line 67
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
    invoke-direct {p0, p2}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->setLoading(Z)V

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
    goto :goto_0

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
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorCode()Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    if-nez p1, :cond_3

    .line 104
    .line 105
    goto :goto_1

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
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->X()V

    .line 115
    .line 116
    .line 117
    :cond_5
    :goto_1
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
    .locals 7

    .line 1
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

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
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 33
    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->n:Z

    .line 36
    .line 37
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    .line 38
    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;->P0(Z)V

    .line 42
    .line 43
    .line 44
    :cond_0
    iput-boolean v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->D:Z

    .line 45
    .line 46
    iput-boolean v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->E:Z

    .line 47
    .line 48
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lxs/c;

    .line 49
    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    const/4 v2, 0x1

    .line 53
    invoke-virtual {v1, v2, v0}, Lxs/c;->e(ZZ)V

    .line 54
    .line 55
    .line 56
    :cond_1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 57
    .line 58
    iget-object v0, v0, Lqr/j0;->i:Landroidx/appcompat/widget/AppCompatImageView;

    .line 59
    .line 60
    const-string v1, "ivCover"

    .line 61
    .line 62
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Lgs/b;->d(Landroid/view/View;)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 69
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v2, "onPlayerReset   visible  "

    .line 76
    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    const/4 v4, 0x4

    .line 88
    const/4 v5, 0x0

    .line 89
    const/4 v3, 0x0

    .line 90
    move-object v0, v6

    .line 91
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 95
    .line 96
    iget-object v0, v0, Lqr/j0;->k:Landroidx/appcompat/widget/AppCompatImageView;

    .line 97
    .line 98
    const-string v1, "ivPlayStatus"

    .line 99
    .line 100
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-static {v0}, Lgs/b;->b(Landroid/view/View;)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->i:Lcom/transsion/player/orplayer/f;

    .line 107
    .line 108
    if-eqz v0, :cond_2

    .line 109
    .line 110
    invoke-interface {v0, p0}, Lcom/transsion/player/orplayer/f;->removePlayerListener(Lcom/transsion/player/orplayer/e;)V

    .line 111
    .line 112
    .line 113
    :cond_2
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lxs/c;

    .line 114
    .line 115
    if-eqz v0, :cond_3

    .line 116
    .line 117
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->i:Lcom/transsion/player/orplayer/f;

    .line 118
    .line 119
    if-eqz v1, :cond_3

    .line 120
    .line 121
    invoke-interface {v1, v0}, Lcom/transsion/player/orplayer/f;->removePlayerListener(Lcom/transsion/player/orplayer/e;)V

    .line 122
    .line 123
    .line 124
    :cond_3
    const/4 v0, 0x0

    .line 125
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->i:Lcom/transsion/player/orplayer/f;

    .line 126
    .line 127
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/ui/ORPlayerView;

    .line 128
    .line 129
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->k:Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;

    .line 130
    .line 131
    const-wide/16 v0, 0x0

    .line 132
    .line 133
    iput-wide v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->q:J

    .line 134
    .line 135
    invoke-direct {p0, v0, v1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d0(J)V

    .line 136
    .line 137
    .line 138
    const-wide/16 v0, 0x64

    .line 139
    .line 140
    invoke-direct {p0, v0, v1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->e0(J)V

    .line 141
    .line 142
    .line 143
    return-void
.end method

.method public onPrepare(Lgn/e;)V
    .locals 11

    .line 1
    iget-boolean p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->E:Z

    .line 2
    .line 3
    if-nez p1, :cond_3

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->E:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->i:Lcom/transsion/player/orplayer/f;

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
    invoke-direct {p0, v3, v4}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->e0(J)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->D()Landroidx/lifecycle/LiveData;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/transsion/shorttv_pugc/bean/ShortTvInnerPlayBean;

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    iget-object v3, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 42
    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/bean/ShortTvInnerPlayBean;->getPosition()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    invoke-virtual {v3}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getEp()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-ne v4, v3, :cond_2

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/bean/ShortTvInnerPlayBean;->getProgress()J

    .line 56
    .line 57
    .line 58
    move-result-wide v3

    .line 59
    sget-object v5, Lwf/a;->a:Lwf/a$a;

    .line 60
    .line 61
    iget-object v6, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 64
    .line 65
    iget-object v0, v0, Lqr/j0;->u:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    new-instance v7, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v8, "player- onPrepare, duration = "

    .line 77
    .line 78
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v0, ", progress = "

    .line 85
    .line 86
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v0, "  this = "

    .line 93
    .line 94
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    const/4 v9, 0x4

    .line 105
    const/4 v10, 0x0

    .line 106
    const/4 v8, 0x0

    .line 107
    invoke-static/range {v5 .. v10}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    cmp-long v0, v3, v1

    .line 111
    .line 112
    if-lez v0, :cond_1

    .line 113
    .line 114
    iput-wide v3, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->q:J

    .line 115
    .line 116
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->i:Lcom/transsion/player/orplayer/f;

    .line 117
    .line 118
    if-eqz v0, :cond_1

    .line 119
    .line 120
    invoke-interface {v0, v3, v4}, Lcom/transsion/player/orplayer/f;->seekTo(J)V

    .line 121
    .line 122
    .line 123
    :cond_1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 124
    .line 125
    if-eqz v0, :cond_2

    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->m()V

    .line 128
    .line 129
    .line 130
    :cond_2
    invoke-virtual {p0, p1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 131
    .line 132
    .line 133
    :cond_3
    return-void
.end method

.method public onProgress(JLgn/e;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->o:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 9
    .line 10
    iget-object v1, v1, Lqr/j0;->u:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    int-to-long v1, v1

    .line 17
    const-wide/16 v3, 0x0

    .line 18
    .line 19
    cmp-long v5, v1, v3

    .line 20
    .line 21
    if-lez v5, :cond_1

    .line 22
    .line 23
    const-wide/16 v5, 0x64

    .line 24
    .line 25
    cmp-long v5, v1, v5

    .line 26
    .line 27
    if-eqz v5, :cond_1

    .line 28
    .line 29
    iget-object v5, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->i:Lcom/transsion/player/orplayer/f;

    .line 30
    .line 31
    if-eqz v5, :cond_1

    .line 32
    .line 33
    invoke-interface {v5}, Lcom/transsion/player/orplayer/f;->getDuration()J

    .line 34
    .line 35
    .line 36
    move-result-wide v5

    .line 37
    cmp-long v1, v1, v5

    .line 38
    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    iget-object v1, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->i:Lcom/transsion/player/orplayer/f;

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    invoke-interface {v1}, Lcom/transsion/player/orplayer/f;->getDuration()J

    .line 47
    .line 48
    .line 49
    move-result-wide v1

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    move-wide v1, v3

    .line 52
    :goto_0
    cmp-long v5, v1, v3

    .line 53
    .line 54
    if-gtz v5, :cond_3

    .line 55
    .line 56
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 57
    .line 58
    iget-object v7, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 59
    .line 60
    const/4 v10, 0x4

    .line 61
    const/4 v11, 0x0

    .line 62
    const-string v8, "onProgress- duration <= 0, return"

    .line 63
    .line 64
    const/4 v9, 0x0

    .line 65
    invoke-static/range {v6 .. v11}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_3
    invoke-direct {v0, v1, v2}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->e0(J)V

    .line 70
    .line 71
    .line 72
    :goto_1
    iget-object v12, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lxs/c;

    .line 73
    .line 74
    if-eqz v12, :cond_4

    .line 75
    .line 76
    const/16 v16, 0x2

    .line 77
    .line 78
    const/16 v17, 0x0

    .line 79
    .line 80
    const/4 v15, 0x0

    .line 81
    move-wide/from16 v13, p1

    .line 82
    .line 83
    invoke-static/range {v12 .. v17}, Lcom/transsion/player/orplayer/e$a;->z(Lcom/transsion/player/orplayer/e;JLgn/e;ILjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :cond_4
    invoke-direct/range {p0 .. p2}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d0(J)V

    .line 87
    .line 88
    .line 89
    const/4 v1, 0x0

    .line 90
    invoke-direct {v0, v1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->setLoading(Z)V

    .line 91
    .line 92
    .line 93
    cmp-long v1, p1, v3

    .line 94
    .line 95
    if-lez v1, :cond_5

    .line 96
    .line 97
    iget-object v1, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 98
    .line 99
    iget-object v1, v1, Lqr/j0;->i:Landroidx/appcompat/widget/AppCompatImageView;

    .line 100
    .line 101
    const-string v2, "ivCover"

    .line 102
    .line 103
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-nez v1, :cond_5

    .line 111
    .line 112
    iget-object v1, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->i:Lcom/transsion/player/orplayer/f;

    .line 113
    .line 114
    if-eqz v1, :cond_5

    .line 115
    .line 116
    invoke-interface {v1}, Lcom/transsion/player/orplayer/f;->isPlaying()Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    const/4 v3, 0x1

    .line 121
    if-ne v1, v3, :cond_5

    .line 122
    .line 123
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 124
    .line 125
    iget-object v5, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 126
    .line 127
    const/4 v8, 0x4

    .line 128
    const/4 v9, 0x0

    .line 129
    const-string v6, "onProgress-progress>= cover gone"

    .line 130
    .line 131
    const/4 v7, 0x0

    .line 132
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    iget-object v1, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 136
    .line 137
    iget-object v1, v1, Lqr/j0;->i:Landroidx/appcompat/widget/AppCompatImageView;

    .line 138
    .line 139
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-static {v1}, Lgs/b;->b(Landroid/view/View;)V

    .line 143
    .line 144
    .line 145
    :cond_5
    return-void
.end method

.method public onRenderFirstFrame()V
    .locals 9

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 6
    .line 7
    iget-object v2, v2, Lqr/j0;->i:Landroidx/appcompat/widget/AppCompatImageView;

    .line 8
    .line 9
    const-string v6, "ivCover"

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
    const-string v4, "player-   viewBinding.ivCover.isVisible:"

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
    const-string v2, " onRenderFirstFrame"

    .line 39
    .line 40
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const/4 v4, 0x4

    .line 51
    const/4 v5, 0x0

    .line 52
    const/4 v3, 0x0

    .line 53
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iget-boolean v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->D:Z

    .line 57
    .line 58
    if-nez v0, :cond_1

    .line 59
    .line 60
    iput-boolean v8, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->D:Z

    .line 61
    .line 62
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lxs/c;

    .line 63
    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    invoke-virtual {v0}, Lxs/c;->onRenderFirstFrame()V

    .line 67
    .line 68
    .line 69
    :cond_1
    invoke-direct {p0, v7}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->setLoading(Z)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 73
    .line 74
    iget-object v0, v0, Lqr/j0;->i:Landroidx/appcompat/widget/AppCompatImageView;

    .line 75
    .line 76
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-static {v0}, Lgs/b;->b(Landroid/view/View;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public onSaveDownload(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/subtitle_download/a$a;->a(Lcom/transsion/subtitle_download/a;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onSetDataSource()V
    .locals 0

    .line 1
    return-void
.end method

.method public onStateChanged(Landroidx/lifecycle/u;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 6

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "event"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$a;->a:[I

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    aget p1, p1, p2

    .line 18
    .line 19
    const/4 p2, 0x1

    .line 20
    if-eq p1, p2, :cond_5

    .line 21
    .line 22
    const/4 v0, 0x2

    .line 23
    if-eq p1, v0, :cond_3

    .line 24
    .line 25
    const/4 p2, 0x5

    .line 26
    if-eq p1, p2, :cond_0

    .line 27
    .line 28
    goto/16 :goto_0

    .line 29
    .line 30
    :cond_0
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->d(Landroidx/lifecycle/t;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lxs/c;

    .line 44
    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    invoke-virtual {p1}, Lxs/c;->i()V

    .line 48
    .line 49
    .line 50
    :cond_2
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->i:Lcom/transsion/player/orplayer/f;

    .line 51
    .line 52
    if-eqz p1, :cond_7

    .line 53
    .line 54
    invoke-interface {p1, p0}, Lcom/transsion/player/orplayer/f;->removePlayerListener(Lcom/transsion/player/orplayer/e;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    const/4 p1, 0x0

    .line 59
    iput-boolean p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->p:Z

    .line 60
    .line 61
    iget-boolean p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->n:Z

    .line 62
    .line 63
    if-nez p1, :cond_4

    .line 64
    .line 65
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    .line 66
    .line 67
    if-eqz p1, :cond_4

    .line 68
    .line 69
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-ne p1, p2, :cond_4

    .line 74
    .line 75
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 76
    .line 77
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 78
    .line 79
    const/4 v4, 0x4

    .line 80
    const/4 v5, 0x0

    .line 81
    const-string v2, "ON_RESUME"

    .line 82
    .line 83
    const/4 v3, 0x0

    .line 84
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    new-instance p1, Lcom/transsion/shorttv_pugc/ui/widget/x;

    .line 88
    .line 89
    invoke-direct {p1, p0}, Lcom/transsion/shorttv_pugc/ui/widget/x;-><init>(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 93
    .line 94
    .line 95
    :cond_4
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->U()V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_5
    iput-boolean p2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->p:Z

    .line 100
    .line 101
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 102
    .line 103
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 104
    .line 105
    const/4 v4, 0x4

    .line 106
    const/4 v5, 0x0

    .line 107
    const-string v2, "player- onPause"

    .line 108
    .line 109
    const/4 v3, 0x0

    .line 110
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 114
    .line 115
    if-eqz p1, :cond_6

    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->N()Lvs/e;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    if-eqz p1, :cond_6

    .line 122
    .line 123
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->i:Lcom/transsion/player/orplayer/f;

    .line 124
    .line 125
    invoke-interface {p1, v0}, Lvs/e;->f(Lcom/transsion/player/orplayer/f;)Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-ne p1, p2, :cond_6

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_6
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->i:Lcom/transsion/player/orplayer/f;

    .line 133
    .line 134
    if-eqz p1, :cond_7

    .line 135
    .line 136
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->pause()V

    .line 137
    .line 138
    .line 139
    :cond_7
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->l:Landroid/view/GestureDetector;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    :goto_0
    return v1
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

.method public onUnGzZip(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/subtitle_download/a$a;->b(Lcom/transsion/subtitle_download/a;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

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
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

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
    iget-boolean p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->n:Z

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 19
    .line 20
    iget-object p1, p1, Lqr/j0;->k:Landroidx/appcompat/widget/AppCompatImageView;

    .line 21
    .line 22
    const-string v1, "ivPlayStatus"

    .line 23
    .line 24
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lxs/c;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-static {p1, v2, v1, v2}, Lcom/transsion/player/orplayer/e$a;->G(Lcom/transsion/player/orplayer/e;Lgn/e;ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->Y()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 6

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->h0(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 15
    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string p2, "onVideoSizeChanged "

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const/4 v4, 0x4

    .line 34
    const/4 v5, 0x0

    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public onVideoStart(Lgn/e;)V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

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
    invoke-virtual {p0, p1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->onPrepare(Lgn/e;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lxs/c;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-static {p1, v1, v0, v1}, Lcom/transsion/player/orplayer/e$a;->J(Lcom/transsion/player/orplayer/e;Lgn/e;ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 26
    .line 27
    iget-object p1, p1, Lqr/j0;->k:Landroidx/appcompat/widget/AppCompatImageView;

    .line 28
    .line 29
    const-string v1, "ivPlayStatus"

    .line 30
    .line 31
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/16 v1, 0x8

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    invoke-direct {p0, p1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->setLoading(Z)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w()V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final reset()V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

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
    iput-boolean v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->n:Z

    .line 35
    .line 36
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    .line 37
    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;->P0(Z)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iput-boolean v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->D:Z

    .line 44
    .line 45
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lxs/c;

    .line 46
    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    const/4 v2, 0x1

    .line 50
    invoke-virtual {v1, v2, v0}, Lxs/c;->e(ZZ)V

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 54
    .line 55
    iget-object v0, v0, Lqr/j0;->k:Landroidx/appcompat/widget/AppCompatImageView;

    .line 56
    .line 57
    const-string v1, "ivPlayStatus"

    .line 58
    .line 59
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v0}, Lgs/b;->b(Landroid/view/View;)V

    .line 63
    .line 64
    .line 65
    const-wide/16 v0, 0x0

    .line 66
    .line 67
    iput-wide v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->q:J

    .line 68
    .line 69
    invoke-direct {p0, v0, v1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d0(J)V

    .line 70
    .line 71
    .line 72
    const-wide/16 v0, 0x64

    .line 73
    .line 74
    invoke-direct {p0, v0, v1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->e0(J)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public setData(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p5

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x1

    .line 13
    const-string v7, "item"

    .line 14
    .line 15
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v7, "fragment"

    .line 19
    .line 20
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget-object v8, Lwf/a;->a:Lwf/a$a;

    .line 24
    .line 25
    iget-object v9, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getBelongToCollection()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    const/4 v14, 0x0

    .line 32
    if-eqz v7, :cond_0

    .line 33
    .line 34
    invoke-virtual {v7}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;->getPosition()Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move-object v7, v14

    .line 40
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v11, "setData position:"

    .line 46
    .line 47
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v11, "  ep:"

    .line 54
    .line 55
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v7, " item:"

    .line 62
    .line 63
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v7, " "

    .line 70
    .line 71
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v10

    .line 81
    const/4 v12, 0x4

    .line 82
    const/4 v13, 0x0

    .line 83
    const/4 v11, 0x0

    .line 84
    invoke-static/range {v8 .. v13}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    iput-object v1, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 88
    .line 89
    iput-object v2, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    .line 90
    .line 91
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    iput-object v7, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->f:Ljava/lang/Boolean;

    .line 96
    .line 97
    iput-object v4, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->h:Ljava/lang/String;

    .line 98
    .line 99
    iput-object v3, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->g:Ljava/lang/Integer;

    .line 100
    .line 101
    iget-object v3, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 102
    .line 103
    iget-object v3, v3, Lqr/j0;->f:Landroidx/constraintlayout/widget/Group;

    .line 104
    .line 105
    invoke-virtual {v3}, Landroidx/constraintlayout/widget/ConstraintHelper;->getReferencedIds()[I

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    iget-object v7, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 110
    .line 111
    iget-object v7, v7, Lqr/j0;->f:Landroidx/constraintlayout/widget/Group;

    .line 112
    .line 113
    invoke-virtual {v7, v3}, Landroidx/constraintlayout/widget/ConstraintHelper;->setReferencedIds([I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual/range {p2 .. p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    if-eqz v3, :cond_1

    .line 121
    .line 122
    invoke-virtual {v0, v3}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->getViewModel(Landroidx/fragment/app/FragmentActivity;)Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    iput-object v7, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 127
    .line 128
    new-instance v7, Landroidx/lifecycle/v0;

    .line 129
    .line 130
    invoke-direct {v7, v3}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    .line 131
    .line 132
    .line 133
    const-class v3, Lat/a;

    .line 134
    .line 135
    invoke-virtual {v7, v3}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    check-cast v3, Lat/a;

    .line 140
    .line 141
    iput-object v3, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->x:Lat/a;

    .line 142
    .line 143
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-virtual {v3, v0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/t;)V

    .line 148
    .line 149
    .line 150
    if-nez p7, :cond_2

    .line 151
    .line 152
    new-instance v3, Lxs/c;

    .line 153
    .line 154
    iget-object v7, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 155
    .line 156
    invoke-direct {v3, v2, v7}, Lxs/c;-><init>(Landroidx/fragment/app/Fragment;Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)V

    .line 157
    .line 158
    .line 159
    iput-object v3, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lxs/c;

    .line 160
    .line 161
    :cond_2
    iget-object v3, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lxs/c;

    .line 162
    .line 163
    if-eqz v3, :cond_3

    .line 164
    .line 165
    invoke-virtual {v3, v4}, Lxs/c;->l(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    :cond_3
    iget-object v3, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lxs/c;

    .line 169
    .line 170
    if-eqz v3, :cond_4

    .line 171
    .line 172
    move-object/from16 v4, p6

    .line 173
    .line 174
    invoke-virtual {v3, v4}, Lxs/c;->k(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    :cond_4
    iget-object v3, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lxs/c;

    .line 178
    .line 179
    if-eqz v3, :cond_5

    .line 180
    .line 181
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;->getPageName()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    invoke-virtual {v3, v4}, Lxs/c;->r(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    :cond_5
    iget-object v3, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 189
    .line 190
    if-eqz v3, :cond_22

    .line 191
    .line 192
    invoke-virtual {v3}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->isDataNotComplete()Z

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    if-nez v3, :cond_22

    .line 197
    .line 198
    iget-object v3, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lxs/c;

    .line 199
    .line 200
    if-eqz v3, :cond_6

    .line 201
    .line 202
    iget-object v4, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 203
    .line 204
    invoke-virtual {v3, v4}, Lxs/c;->s(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V

    .line 205
    .line 206
    .line 207
    :cond_6
    iget-object v3, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lxs/c;

    .line 208
    .line 209
    const-string v4, ""

    .line 210
    .line 211
    if-eqz v3, :cond_9

    .line 212
    .line 213
    iget-object v7, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 214
    .line 215
    if-eqz v7, :cond_7

    .line 216
    .line 217
    invoke-virtual {v7}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->I()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v7

    .line 221
    if-nez v7, :cond_8

    .line 222
    .line 223
    :cond_7
    move-object v7, v4

    .line 224
    :cond_8
    invoke-virtual {v3, v7}, Lxs/c;->n(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    :cond_9
    iget-object v3, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 228
    .line 229
    if-eqz v3, :cond_a

    .line 230
    .line 231
    invoke-virtual {v3}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getBelongToCollection()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    if-eqz v3, :cond_a

    .line 236
    .line 237
    invoke-virtual {v3}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;->getPosition()Ljava/lang/Integer;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    goto :goto_1

    .line 242
    :cond_a
    move-object v3, v14

    .line 243
    :goto_1
    invoke-static {v3}, Lcom/transsion/shorttv_pugc/utils/ShortTvExtKt;->n(Ljava/lang/Integer;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    new-instance v7, Landroid/text/SpannableStringBuilder;

    .line 248
    .line 249
    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 250
    .line 251
    .line 252
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 253
    .line 254
    const/16 v9, 0x1d

    .line 255
    .line 256
    if-lt v8, v9, :cond_b

    .line 257
    .line 258
    new-instance v9, Landroid/text/style/ImageSpan;

    .line 259
    .line 260
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 261
    .line 262
    .line 263
    move-result-object v10

    .line 264
    sget-object v11, Lcom/transsion/shorttv_pugc/ShorttvModel;->a:Lcom/transsion/shorttv_pugc/ShorttvModel;

    .line 265
    .line 266
    invoke-virtual {v11}, Lcom/transsion/shorttv_pugc/ShorttvModel;->a()I

    .line 267
    .line 268
    .line 269
    move-result v11

    .line 270
    const/4 v12, 0x2

    .line 271
    invoke-direct {v9, v10, v11, v12}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    .line 272
    .line 273
    .line 274
    goto :goto_2

    .line 275
    :cond_b
    new-instance v9, Landroid/text/style/ImageSpan;

    .line 276
    .line 277
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 278
    .line 279
    .line 280
    move-result-object v10

    .line 281
    sget-object v11, Lcom/transsion/shorttv_pugc/ShorttvModel;->a:Lcom/transsion/shorttv_pugc/ShorttvModel;

    .line 282
    .line 283
    invoke-virtual {v11}, Lcom/transsion/shorttv_pugc/ShorttvModel;->a()I

    .line 284
    .line 285
    .line 286
    move-result v11

    .line 287
    invoke-direct {v9, v10, v11, v6}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    .line 288
    .line 289
    .line 290
    :goto_2
    const/16 v10, 0x21

    .line 291
    .line 292
    invoke-virtual {v7, v9, v5, v5, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 293
    .line 294
    .line 295
    iget-object v9, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 296
    .line 297
    if-eqz v9, :cond_c

    .line 298
    .line 299
    invoke-virtual {v9}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getTitle()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v9

    .line 303
    goto :goto_3

    .line 304
    :cond_c
    move-object v9, v14

    .line 305
    :goto_3
    iget-object v10, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 306
    .line 307
    if-eqz v10, :cond_d

    .line 308
    .line 309
    invoke-virtual {v10}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->videoUGCPosition()I

    .line 310
    .line 311
    .line 312
    move-result v10

    .line 313
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 314
    .line 315
    .line 316
    move-result-object v10

    .line 317
    goto :goto_4

    .line 318
    :cond_d
    move-object v10, v14

    .line 319
    :goto_4
    new-instance v11, Ljava/lang/StringBuilder;

    .line 320
    .line 321
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 322
    .line 323
    .line 324
    const-string v12, "ShortTV \u2022 "

    .line 325
    .line 326
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    const-string v9, " / EP"

    .line 333
    .line 334
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v9

    .line 344
    invoke-virtual {v7, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 345
    .line 346
    .line 347
    iget-object v9, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 348
    .line 349
    iget-object v9, v9, Lqr/j0;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 350
    .line 351
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    .line 356
    .line 357
    iget-object v7, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 358
    .line 359
    if-eqz v7, :cond_10

    .line 360
    .line 361
    invoke-virtual {v7}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getCreator()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;

    .line 362
    .line 363
    .line 364
    move-result-object v7

    .line 365
    if-eqz v7, :cond_10

    .line 366
    .line 367
    invoke-virtual/range {p2 .. p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 368
    .line 369
    .line 370
    move-result-object v16

    .line 371
    if-nez v16, :cond_e

    .line 372
    .line 373
    goto :goto_6

    .line 374
    :cond_e
    sget-object v15, Lis/b;->a:Lis/b$a;

    .line 375
    .line 376
    iget-object v2, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 377
    .line 378
    iget-object v2, v2, Lqr/j0;->m:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 379
    .line 380
    const-string v9, "ivShortCover"

    .line 381
    .line 382
    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v7}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;->getAvatar()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v9

    .line 389
    if-nez v9, :cond_f

    .line 390
    .line 391
    move-object/from16 v18, v4

    .line 392
    .line 393
    goto :goto_5

    .line 394
    :cond_f
    move-object/from16 v18, v9

    .line 395
    .line 396
    :goto_5
    const/16 v28, 0xff8

    .line 397
    .line 398
    const/16 v29, 0x0

    .line 399
    .line 400
    const/16 v19, 0x0

    .line 401
    .line 402
    const/16 v20, 0x0

    .line 403
    .line 404
    const/16 v21, 0x0

    .line 405
    .line 406
    const/16 v22, 0x0

    .line 407
    .line 408
    const/16 v23, 0x0

    .line 409
    .line 410
    const/16 v24, 0x0

    .line 411
    .line 412
    const/16 v25, 0x0

    .line 413
    .line 414
    const/16 v26, 0x0

    .line 415
    .line 416
    const/16 v27, 0x0

    .line 417
    .line 418
    move-object/from16 v17, v2

    .line 419
    .line 420
    invoke-static/range {v15 .. v29}, Lis/b$a;->n(Lis/b$a;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIZZZZZZIILjava/lang/Object;)V

    .line 421
    .line 422
    .line 423
    iget-object v2, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 424
    .line 425
    iget-object v2, v2, Lqr/j0;->C:Landroidx/appcompat/widget/AppCompatTextView;

    .line 426
    .line 427
    invoke-virtual {v7}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;->getNickname()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v4

    .line 431
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    .line 433
    .line 434
    :cond_10
    :goto_6
    iget-object v2, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 435
    .line 436
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 437
    .line 438
    .line 439
    invoke-direct {v0, v3, v2}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->T(Ljava/lang/String;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V

    .line 440
    .line 441
    .line 442
    const/16 v2, 0x1e

    .line 443
    .line 444
    if-lt v8, v2, :cond_21

    .line 445
    .line 446
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 447
    .line 448
    .line 449
    move-result-object v2

    .line 450
    const-string v3, "null cannot be cast to non-null type android.app.Activity"

    .line 451
    .line 452
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    check-cast v2, Landroid/app/Activity;

    .line 456
    .line 457
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    if-eqz v2, :cond_21

    .line 462
    .line 463
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 464
    .line 465
    .line 466
    move-result-object v3

    .line 467
    invoke-virtual {v3}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 468
    .line 469
    .line 470
    move-result-object v3

    .line 471
    if-eqz v3, :cond_21

    .line 472
    .line 473
    invoke-static {}, Landroidx/core/view/o2;->a()I

    .line 474
    .line 475
    .line 476
    move-result v4

    .line 477
    invoke-static {v3, v4}, Landroidx/core/view/g2;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    .line 478
    .line 479
    .line 480
    move-result-object v3

    .line 481
    if-eqz v3, :cond_21

    .line 482
    .line 483
    invoke-static {v2}, Lcom/blankj/utilcode/util/d;->e(Landroid/view/Window;)Z

    .line 484
    .line 485
    .line 486
    move-result v2

    .line 487
    if-eqz v2, :cond_11

    .line 488
    .line 489
    invoke-static {}, Lcom/blankj/utilcode/util/d;->a()I

    .line 490
    .line 491
    .line 492
    move-result v2

    .line 493
    if-le v2, v6, :cond_11

    .line 494
    .line 495
    goto :goto_7

    .line 496
    :cond_11
    move v6, v5

    .line 497
    :goto_7
    const/high16 v2, 0x41800000    # 16.0f

    .line 498
    .line 499
    invoke-static {v2}, Lcom/blankj/utilcode/util/i;->e(F)I

    .line 500
    .line 501
    .line 502
    move-result v2

    .line 503
    const-string v4, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    .line 504
    .line 505
    const-string v7, "progressGuideline"

    .line 506
    .line 507
    if-nez v6, :cond_19

    .line 508
    .line 509
    invoke-static {v3}, Landroidx/appcompat/widget/v;->a(Landroid/graphics/Insets;)I

    .line 510
    .line 511
    .line 512
    move-result v6

    .line 513
    if-lez v6, :cond_19

    .line 514
    .line 515
    iget-object v6, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 516
    .line 517
    iget-object v6, v6, Lqr/j0;->s:Landroid/widget/Space;

    .line 518
    .line 519
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 523
    .line 524
    .line 525
    move-result-object v7

    .line 526
    if-eqz v7, :cond_18

    .line 527
    .line 528
    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 529
    .line 530
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 531
    .line 532
    .line 533
    move-result-object v4

    .line 534
    instance-of v8, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 535
    .line 536
    if-eqz v8, :cond_12

    .line 537
    .line 538
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 539
    .line 540
    goto :goto_8

    .line 541
    :cond_12
    move-object v4, v14

    .line 542
    :goto_8
    if-eqz v4, :cond_13

    .line 543
    .line 544
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 545
    .line 546
    goto :goto_9

    .line 547
    :cond_13
    move v4, v5

    .line 548
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 549
    .line 550
    .line 551
    move-result-object v8

    .line 552
    instance-of v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 553
    .line 554
    if-eqz v9, :cond_14

    .line 555
    .line 556
    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 557
    .line 558
    goto :goto_a

    .line 559
    :cond_14
    move-object v8, v14

    .line 560
    :goto_a
    if-eqz v8, :cond_15

    .line 561
    .line 562
    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 563
    .line 564
    goto :goto_b

    .line 565
    :cond_15
    move v8, v5

    .line 566
    :goto_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 567
    .line 568
    .line 569
    move-result-object v9

    .line 570
    instance-of v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 571
    .line 572
    if-eqz v10, :cond_16

    .line 573
    .line 574
    move-object v14, v9

    .line 575
    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 576
    .line 577
    :cond_16
    if-eqz v14, :cond_17

    .line 578
    .line 579
    iget v5, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 580
    .line 581
    :cond_17
    invoke-static {v3}, Landroidx/appcompat/widget/v;->a(Landroid/graphics/Insets;)I

    .line 582
    .line 583
    .line 584
    move-result v3

    .line 585
    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->e(II)I

    .line 586
    .line 587
    .line 588
    move-result v2

    .line 589
    invoke-virtual {v7, v4, v8, v5, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 590
    .line 591
    .line 592
    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 593
    .line 594
    .line 595
    goto :goto_10

    .line 596
    :cond_18
    new-instance v1, Ljava/lang/NullPointerException;

    .line 597
    .line 598
    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 599
    .line 600
    .line 601
    throw v1

    .line 602
    :cond_19
    iget-object v3, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 603
    .line 604
    iget-object v3, v3, Lqr/j0;->s:Landroid/widget/Space;

    .line 605
    .line 606
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 607
    .line 608
    .line 609
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 610
    .line 611
    .line 612
    move-result-object v6

    .line 613
    if-eqz v6, :cond_20

    .line 614
    .line 615
    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 616
    .line 617
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 618
    .line 619
    .line 620
    move-result-object v4

    .line 621
    instance-of v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 622
    .line 623
    if-eqz v7, :cond_1a

    .line 624
    .line 625
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 626
    .line 627
    goto :goto_c

    .line 628
    :cond_1a
    move-object v4, v14

    .line 629
    :goto_c
    if-eqz v4, :cond_1b

    .line 630
    .line 631
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 632
    .line 633
    goto :goto_d

    .line 634
    :cond_1b
    move v4, v5

    .line 635
    :goto_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 636
    .line 637
    .line 638
    move-result-object v7

    .line 639
    instance-of v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 640
    .line 641
    if-eqz v8, :cond_1c

    .line 642
    .line 643
    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 644
    .line 645
    goto :goto_e

    .line 646
    :cond_1c
    move-object v7, v14

    .line 647
    :goto_e
    if-eqz v7, :cond_1d

    .line 648
    .line 649
    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 650
    .line 651
    goto :goto_f

    .line 652
    :cond_1d
    move v7, v5

    .line 653
    :goto_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 654
    .line 655
    .line 656
    move-result-object v8

    .line 657
    instance-of v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 658
    .line 659
    if-eqz v9, :cond_1e

    .line 660
    .line 661
    move-object v14, v8

    .line 662
    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 663
    .line 664
    :cond_1e
    if-eqz v14, :cond_1f

    .line 665
    .line 666
    iget v5, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 667
    .line 668
    :cond_1f
    invoke-virtual {v6, v4, v7, v5, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 669
    .line 670
    .line 671
    invoke-virtual {v3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 672
    .line 673
    .line 674
    goto :goto_10

    .line 675
    :cond_20
    new-instance v1, Ljava/lang/NullPointerException;

    .line 676
    .line 677
    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 678
    .line 679
    .line 680
    throw v1

    .line 681
    :cond_21
    :goto_10
    invoke-direct/range {p0 .. p1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->i0(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V

    .line 682
    .line 683
    .line 684
    invoke-direct/range {p0 .. p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->f0()V

    .line 685
    .line 686
    .line 687
    invoke-direct/range {p0 .. p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->b0()V

    .line 688
    .line 689
    .line 690
    invoke-direct/range {p0 .. p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c0()V

    .line 691
    .line 692
    .line 693
    invoke-direct/range {p0 .. p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a0()V

    .line 694
    .line 695
    .line 696
    invoke-direct/range {p0 .. p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->E()V

    .line 697
    .line 698
    .line 699
    goto :goto_11

    .line 700
    :cond_22
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->videoUGCPosition()I

    .line 701
    .line 702
    .line 703
    move-result v1

    .line 704
    iget-object v2, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lqr/j0;

    .line 705
    .line 706
    iget-object v2, v2, Lqr/j0;->G:Lcom/transsion/shorttv_pugc/base/widget/TnTextView;

    .line 707
    .line 708
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 709
    .line 710
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 711
    .line 712
    .line 713
    move-result-object v1

    .line 714
    invoke-static {v1}, Lcom/transsion/shorttv_pugc/utils/ShortTvExtKt;->n(Ljava/lang/Integer;)Ljava/lang/String;

    .line 715
    .line 716
    .line 717
    move-result-object v1

    .line 718
    new-array v3, v6, [Ljava/lang/Object;

    .line 719
    .line 720
    aput-object v1, v3, v5

    .line 721
    .line 722
    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 723
    .line 724
    .line 725
    move-result-object v1

    .line 726
    const-string v3, "EP%s"

    .line 727
    .line 728
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 729
    .line 730
    .line 731
    move-result-object v1

    .line 732
    const-string v3, "format(...)"

    .line 733
    .line 734
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 735
    .line 736
    .line 737
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 738
    .line 739
    .line 740
    :goto_11
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

.method public setPagerLayoutManager(Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;)V
    .locals 1

    .line 1
    const-string v0, "pagerLayoutManager"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->k:Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;

    .line 7
    .line 8
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
    return-void
.end method

.method public final showEpisodeListDialog()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    .line 2
    .line 3
    const-string v1, "null cannot be cast to non-null type com.transsion.shorttv_pugc.ui.fragment.ShortTvDetailListFragment"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;->Q0()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public updateLockState(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public updateShortTvInfo(Lcom/transsion/player/orplayer/f;Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V
    .locals 7

    .line 1
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->g:Ljava/lang/Integer;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v2, v3

    .line 18
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v5, "updateShortTvInfo:"

    .line 24
    .line 25
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, " ugcVideoId:"

    .line 32
    .line 33
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const/4 v2, 0x1

    .line 44
    invoke-virtual {v6, v0, v1, v2}, Lwf/a$a;->u(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 45
    .line 46
    .line 47
    if-eqz p3, :cond_1

    .line 48
    .line 49
    invoke-virtual {p3}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getPlayUrl()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    move-object v0, v3

    .line 55
    :goto_1
    if-nez v0, :cond_3

    .line 56
    .line 57
    iget-object p2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 58
    .line 59
    iget-object p3, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->g:Ljava/lang/Integer;

    .line 60
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v1, "onPageSelect position:"

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string p3, " item is null "

    .line 75
    .line 76
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p3

    .line 83
    invoke-virtual {v6, p2, p3, v2}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 84
    .line 85
    .line 86
    if-eqz p1, :cond_2

    .line 87
    .line 88
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->pause()V

    .line 89
    .line 90
    .line 91
    :cond_2
    return-void

    .line 92
    :cond_3
    if-eqz p1, :cond_4

    .line 93
    .line 94
    invoke-interface {p1, p0}, Lcom/transsion/player/orplayer/f;->setPlayerListener(Lcom/transsion/player/orplayer/e;)V

    .line 95
    .line 96
    .line 97
    :cond_4
    if-eqz p2, :cond_5

    .line 98
    .line 99
    invoke-direct {p0, p2, v3}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->v(Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/shorttv_pugc/bean/Video;)V

    .line 100
    .line 101
    .line 102
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 103
    .line 104
    const/4 v4, 0x4

    .line 105
    const/4 v5, 0x0

    .line 106
    const-string v2, "addView-----"

    .line 107
    .line 108
    const/4 v3, 0x0

    .line 109
    move-object v0, v6

    .line 110
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    :cond_5
    iget-object p2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->v:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {p0, p2}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->videoStartPrepare(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p3}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getPlayUrl()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    if-eqz p2, :cond_7

    .line 123
    .line 124
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 125
    .line 126
    new-instance p3, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string v0, "------seekTo url="

    .line 132
    .line 133
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v0, " "

    .line 140
    .line 141
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p3

    .line 148
    filled-new-array {p3}, [Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    const/4 v4, 0x4

    .line 153
    const/4 v5, 0x0

    .line 154
    const/4 v3, 0x0

    .line 155
    move-object v0, v6

    .line 156
    invoke-static/range {v0 .. v5}, Lwf/a$a;->r(Lwf/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    if-eqz p1, :cond_6

    .line 160
    .line 161
    const-wide/16 v0, 0x0

    .line 162
    .line 163
    invoke-interface {p1, p2, v0, v1}, Lcom/transsion/player/orplayer/f;->seekTo(Ljava/lang/String;J)V

    .line 164
    .line 165
    .line 166
    :cond_6
    invoke-virtual {p0, p2}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->setVideoUrl(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    :cond_7
    if-eqz p1, :cond_8

    .line 170
    .line 171
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->play()V

    .line 172
    .line 173
    .line 174
    :cond_8
    return-void
.end method

.method public final videoStartPrepare(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "pageFrom"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->D:Z

    .line 8
    .line 9
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->v:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lxs/c;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lxs/c;->q(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lxs/c;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    const-string v0, "immersive_play"

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lxs/c;->o(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lxs/c;

    .line 28
    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getEp()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const/4 v0, 0x0

    .line 45
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p1, v0}, Lxs/c;->m(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_3
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lxs/c;

    .line 53
    .line 54
    if-eqz p1, :cond_4

    .line 55
    .line 56
    invoke-virtual {p1}, Lxs/c;->g()V

    .line 57
    .line 58
    .line 59
    :cond_4
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lxs/c;

    .line 60
    .line 61
    if-eqz p1, :cond_5

    .line 62
    .line 63
    invoke-virtual {p1}, Lxs/c;->a()V

    .line 64
    .line 65
    .line 66
    :cond_5
    const/4 p1, 0x1

    .line 67
    invoke-direct {p0, p1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->setLoading(Z)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 71
    .line 72
    if-eqz p1, :cond_6

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->X()V

    .line 75
    .line 76
    .line 77
    :cond_6
    return-void
.end method
