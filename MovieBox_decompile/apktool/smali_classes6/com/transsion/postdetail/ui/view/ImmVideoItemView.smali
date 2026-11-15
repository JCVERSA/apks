.class public final Lcom/transsion/postdetail/ui/view/ImmVideoItemView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "source.java"

# interfaces
.implements Lcom/transsion/player/orplayer/e;
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/lifecycle/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/ui/view/ImmVideoItemView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b0\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0002\u00f5\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B!\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cB\u0011\u0008\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u000b\u0010\rB\u001b\u0008\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000fH\u0014\u00a2\u0006\u0004\u0008\u0012\u0010\u0011Jk\u0010!\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00152\u0008\u0010\u0017\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0019\u001a\u00020\u00182\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001a2\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001a2\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u001a2\u0008\u0008\u0002\u0010 \u001a\u00020\u0018\u00a2\u0006\u0004\u0008!\u0010\"J\u001d\u0010\'\u001a\u00020\u000f2\u0006\u0010$\u001a\u00020#2\u0006\u0010&\u001a\u00020%\u00a2\u0006\u0004\u0008\'\u0010(J\u0015\u0010+\u001a\u00020\u000f2\u0006\u0010*\u001a\u00020)\u00a2\u0006\u0004\u0008+\u0010,J\r\u0010.\u001a\u00020-\u00a2\u0006\u0004\u0008.\u0010/J\u0017\u00102\u001a\u00020\u00182\u0006\u00101\u001a\u000200H\u0016\u00a2\u0006\u0004\u00082\u00103J\u001f\u00107\u001a\u00020\u000f2\u0006\u00105\u001a\u0002042\u0006\u00101\u001a\u000206H\u0016\u00a2\u0006\u0004\u00087\u00108J\u000f\u00109\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u00089\u0010\u0011J\u0019\u0010<\u001a\u00020\u000f2\u0008\u0010;\u001a\u0004\u0018\u00010:H\u0016\u00a2\u0006\u0004\u0008<\u0010=J\r\u0010>\u001a\u00020\u000f\u00a2\u0006\u0004\u0008>\u0010\u0011J\u0017\u0010?\u001a\u00020\u000f2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001a\u00a2\u0006\u0004\u0008?\u0010@J\u0015\u0010B\u001a\u00020\u000f2\u0006\u0010A\u001a\u00020\u001a\u00a2\u0006\u0004\u0008B\u0010@J\u000f\u0010C\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008C\u0010\u0011J\u000f\u0010D\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008D\u0010\u0011J\u0019\u0010E\u001a\u00020\u000f2\u0008\u0010;\u001a\u0004\u0018\u00010:H\u0016\u00a2\u0006\u0004\u0008E\u0010=J\u0019\u0010F\u001a\u00020\u000f2\u0008\u0010;\u001a\u0004\u0018\u00010:H\u0016\u00a2\u0006\u0004\u0008F\u0010=J\u0019\u0010G\u001a\u00020\u000f2\u0008\u0010;\u001a\u0004\u0018\u00010:H\u0016\u00a2\u0006\u0004\u0008G\u0010=J!\u0010J\u001a\u00020\u000f2\u0006\u0010I\u001a\u00020H2\u0008\u0010;\u001a\u0004\u0018\u00010:H\u0016\u00a2\u0006\u0004\u0008J\u0010KJ\u0019\u0010L\u001a\u00020\u000f2\u0008\u0010;\u001a\u0004\u0018\u00010:H\u0016\u00a2\u0006\u0004\u0008L\u0010=J\u0019\u0010M\u001a\u00020\u000f2\u0008\u0010;\u001a\u0004\u0018\u00010:H\u0016\u00a2\u0006\u0004\u0008M\u0010=J!\u0010P\u001a\u00020\u000f2\u0006\u0010O\u001a\u00020N2\u0008\u0010;\u001a\u0004\u0018\u00010:H\u0016\u00a2\u0006\u0004\u0008P\u0010QJ\u000f\u0010R\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008R\u0010\u0011J\u0019\u0010S\u001a\u00020\u000f2\u0008\u0010;\u001a\u0004\u0018\u00010:H\u0016\u00a2\u0006\u0004\u0008S\u0010=J\u000f\u0010T\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008T\u0010\u0011J\u0019\u0010W\u001a\u00020\u000f2\u0008\u0010V\u001a\u0004\u0018\u00010UH\u0016\u00a2\u0006\u0004\u0008W\u0010XJ\r\u0010Y\u001a\u00020\u000f\u00a2\u0006\u0004\u0008Y\u0010\u0011J\u0019\u0010[\u001a\u00020\u000f2\u0008\u0010Z\u001a\u0004\u0018\u00010\u001aH\u0002\u00a2\u0006\u0004\u0008[\u0010@J\u0017\u0010\\\u001a\u00020\u000f2\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\\\u0010\rJ\u0017\u0010]\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008]\u0010^J\u0017\u0010_\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008_\u0010^J\u0017\u0010a\u001a\u00020\u000f2\u0006\u0010`\u001a\u00020HH\u0002\u00a2\u0006\u0004\u0008a\u0010bJ\u0017\u0010d\u001a\u00020\u000f2\u0006\u0010c\u001a\u00020HH\u0002\u00a2\u0006\u0004\u0008d\u0010bJ\u0017\u0010e\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008e\u0010^J\u0017\u0010f\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008f\u0010^J\u0017\u0010g\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008g\u0010^J\u001f\u0010j\u001a\u00020\u000f2\u0006\u0010h\u001a\u00020\u00182\u0006\u0010i\u001a\u00020\u0018H\u0002\u00a2\u0006\u0004\u0008j\u0010kJ\u0017\u0010l\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008l\u0010^J\u001f\u0010o\u001a\u00020\u000f2\u0006\u0010n\u001a\u00020m2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008o\u0010pJ\u0017\u0010q\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008q\u0010^J\u001f\u0010s\u001a\u00020\u000f2\u0006\u0010r\u001a\u00020\u001a2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008s\u0010tJ\u000f\u0010u\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008u\u0010\u0011J\u000f\u0010v\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008v\u0010\u0011J\u000f\u0010w\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008w\u0010\u0011J\u000f\u0010x\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008x\u0010\u0011J\u0017\u0010z\u001a\u00020\u000f2\u0006\u0010y\u001a\u00020\u0018H\u0002\u00a2\u0006\u0004\u0008z\u0010{J\u0017\u0010|\u001a\u00020\u000f2\u0006\u0010I\u001a\u00020HH\u0002\u00a2\u0006\u0004\u0008|\u0010bJ\u0017\u0010~\u001a\u00020\u000f2\u0006\u0010}\u001a\u00020UH\u0002\u00a2\u0006\u0004\u0008~\u0010XJ\u000f\u0010\u007f\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u007f\u0010\u0011J\u0019\u0010\u0080\u0001\u001a\u00020\u000f2\u0006\u0010}\u001a\u00020UH\u0002\u00a2\u0006\u0005\u0008\u0080\u0001\u0010XJ\u0019\u0010\u0081\u0001\u001a\u00020\u000f2\u0006\u0010}\u001a\u00020UH\u0002\u00a2\u0006\u0005\u0008\u0081\u0001\u0010XJ\u0019\u0010\u0082\u0001\u001a\u00020\u000f2\u0006\u0010}\u001a\u00020UH\u0002\u00a2\u0006\u0005\u0008\u0082\u0001\u0010XJ\u001c\u0010\u0085\u0001\u001a\u00020\u000f2\u0008\u0010\u0084\u0001\u001a\u00030\u0083\u0001H\u0002\u00a2\u0006\u0006\u0008\u0085\u0001\u0010\u0086\u0001J\u001c\u0010\u0088\u0001\u001a\u00020\u000f2\t\u0010\u0087\u0001\u001a\u0004\u0018\u00010\u001aH\u0002\u00a2\u0006\u0005\u0008\u0088\u0001\u0010@J\u0019\u0010\u0089\u0001\u001a\u00020\u000f2\u0006\u0010}\u001a\u00020UH\u0002\u00a2\u0006\u0005\u0008\u0089\u0001\u0010XJ\u0019\u0010\u008a\u0001\u001a\u00020\u000f2\u0006\u0010}\u001a\u00020UH\u0002\u00a2\u0006\u0005\u0008\u008a\u0001\u0010XJ\u0019\u0010\u008b\u0001\u001a\u00020\u000f2\u0006\u0010}\u001a\u00020UH\u0002\u00a2\u0006\u0005\u0008\u008b\u0001\u0010XJ\u0011\u0010\u008c\u0001\u001a\u00020\u000fH\u0002\u00a2\u0006\u0005\u0008\u008c\u0001\u0010\u0011J\u001a\u0010\u008e\u0001\u001a\u00020\u000f2\u0007\u0010\u008d\u0001\u001a\u00020\u0018H\u0002\u00a2\u0006\u0005\u0008\u008e\u0001\u0010{J\u0019\u0010\u008f\u0001\u001a\u00020\u000f2\u0006\u0010}\u001a\u00020UH\u0002\u00a2\u0006\u0005\u0008\u008f\u0001\u0010XJ\u0019\u0010\u0090\u0001\u001a\u00020\u000f2\u0006\u0010}\u001a\u00020UH\u0002\u00a2\u0006\u0005\u0008\u0090\u0001\u0010XR\u0017\u0010\u0093\u0001\u001a\u00020\u001a8\u0002X\u0082D\u00a2\u0006\u0008\n\u0006\u0008\u0091\u0001\u0010\u0092\u0001R\u0018\u0010\u0097\u0001\u001a\u00030\u0094\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0095\u0001\u0010\u0096\u0001R\u001c\u0010\u009b\u0001\u001a\u0005\u0018\u00010\u0098\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0099\u0001\u0010\u009a\u0001R\u001c\u0010\u009f\u0001\u001a\u0005\u0018\u00010\u009c\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009d\u0001\u0010\u009e\u0001R\u001c\u0010\u00a3\u0001\u001a\u0005\u0018\u00010\u00a0\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a1\u0001\u0010\u00a2\u0001R\u001c\u0010\u00a7\u0001\u001a\u0005\u0018\u00010\u00a4\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a5\u0001\u0010\u00a6\u0001R\u001b\u0010\u00aa\u0001\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a8\u0001\u0010\u00a9\u0001R\u001a\u0010\u0016\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ab\u0001\u0010\u00ac\u0001R\u001a\u0010\u0019\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ad\u0001\u0010\u00ae\u0001R*\u0010\u0017\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00af\u0001\u0010\u00b0\u0001\u001a\u0006\u0008\u00b1\u0001\u0010\u00b2\u0001\"\u0006\u0008\u00b3\u0001\u0010\u00b4\u0001R\u001a\u0010\u001b\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b5\u0001\u0010\u0092\u0001R\u0018\u0010\u001e\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b6\u0001\u0010\u0092\u0001R\u001a\u0010$\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b7\u0001\u0010\u00b8\u0001R\u001a\u0010&\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b9\u0001\u0010\u00ba\u0001R\u001a\u0010*\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00bb\u0001\u0010\u00bc\u0001R\u001c\u0010\u00c0\u0001\u001a\u0005\u0018\u00010\u00bd\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00be\u0001\u0010\u00bf\u0001R\u001c\u0010\u00c4\u0001\u001a\u0005\u0018\u00010\u00c1\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c2\u0001\u0010\u00c3\u0001R\u001c\u0010\u00c8\u0001\u001a\u0005\u0018\u00010\u00c5\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c6\u0001\u0010\u00c7\u0001R#\u0010\u00ce\u0001\u001a\u0005\u0018\u00010\u00c9\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00ca\u0001\u0010\u00cb\u0001\u001a\u0006\u0008\u00cc\u0001\u0010\u00cd\u0001R\u001c\u0010\u00d2\u0001\u001a\u0005\u0018\u00010\u00cf\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d0\u0001\u0010\u00d1\u0001R\u001c\u0010\u00d6\u0001\u001a\u0005\u0018\u00010\u00d3\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d4\u0001\u0010\u00d5\u0001R\u0018\u0010\u00d8\u0001\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008V\u0010\u00d7\u0001R\u0019\u0010\u00da\u0001\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d9\u0001\u0010\u00d7\u0001R\u0019\u0010\u00dc\u0001\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00db\u0001\u0010\u00d7\u0001R\u0018\u0010\u00dd\u0001\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008[\u0010\u00d7\u0001R\u0019\u0010\u00de\u0001\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0088\u0001\u0010\u00d7\u0001R\u0018\u0010\u00e0\u0001\u001a\u00020H8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008o\u0010\u00df\u0001R\u0015\u0010\u00e1\u0001\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\\\u0010vR\u0016\u0010\u00e2\u0001\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u008c\u0001\u0010vR\u0016\u0010\u00e4\u0001\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u00e3\u0001\u0010vR\u0016\u0010\u00e6\u0001\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u00e5\u0001\u0010vR\u0016\u0010\u00e7\u0001\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u0089\u0001\u0010vR\u0016\u0010\u00e8\u0001\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u008b\u0001\u0010vR\u001a\u0010\u001f\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008a\u0001\u0010\u0092\u0001R\u0017\u0010\u00eb\u0001\u001a\u00030\u00e9\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008v\u0010\u00ea\u0001R\u0019\u0010\u00ec\u0001\u001a\u00020H8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00df\u0001\u0010\u00df\u0001R\u0018\u0010\u001d\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ed\u0001\u0010\u00d7\u0001R\u0018\u0010\u00ee\u0001\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008w\u0010\u00d7\u0001R\u0019\u0010\u00f0\u0001\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ef\u0001\u0010\u00d7\u0001R\u0016\u0010\u00f1\u0001\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u0081\u0001\u0010vR\u0018\u0010 \u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0080\u0001\u0010\u00d7\u0001R\u001b\u0010\u00f4\u0001\u001a\u0005\u0018\u00010\u00f2\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008|\u0010\u00f3\u0001R\u0018\u0010\u00f8\u0001\u001a\u00030\u00f5\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00f6\u0001\u0010\u00f7\u0001R!\u0010\u00fd\u0001\u001a\u00030\u00f9\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00fa\u0001\u0010\u00cb\u0001\u001a\u0006\u0008\u00fb\u0001\u0010\u00fc\u0001R\u001f\u0010\u0080\u0002\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u00fe\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008~\u0010\u00ff\u0001\u00a8\u0006\u0082\u0002\u00b2\u0006\u000e\u0010\u009b\u0001\u001a\u00030\u0098\u00018\nX\u008a\u0084\u0002\u00b2\u0006\u000e\u0010\u009f\u0001\u001a\u00030\u009c\u00018\nX\u008a\u0084\u0002\u00b2\u0006\u000e\u0010\u0081\u0002\u001a\u00030\u00a0\u00018\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/transsion/postdetail/ui/view/ImmVideoItemView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Lcom/transsion/player/orplayer/e;",
        "Landroid/view/View$OnClickListener;",
        "Landroidx/lifecycle/r;",
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
        "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;",
        "item",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "position",
        "",
        "videoLoadMore",
        "",
        "basePostId",
        "baseItemType",
        "attachToMain",
        "commentId",
        "pageFrom",
        "isFromDownloaded",
        "setData",
        "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Landroidx/fragment/app/Fragment;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V",
        "Lcom/transsion/player/orplayer/f;",
        "orPlayer",
        "Lcom/transsion/player/ui/ORPlayerView;",
        "orPlayerView",
        "setPlayer",
        "(Lcom/transsion/player/orplayer/f;Lcom/transsion/player/ui/ORPlayerView;)V",
        "Lcom/transsion/shorttv/base/pager/PagerLayoutManager;",
        "pagerLayoutManager",
        "setPagerLayoutManager",
        "(Lcom/transsion/shorttv/base/pager/PagerLayoutManager;)V",
        "Landroid/widget/FrameLayout;",
        "getPlayerContainer",
        "()Landroid/widget/FrameLayout;",
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
        "Lgn/e;",
        "mediaSource",
        "onPlayerRelease",
        "(Lgn/e;)V",
        "app2Background",
        "videoStartPrepare",
        "(Ljava/lang/String;)V",
        "url",
        "setVideoUrl",
        "onSetDataSource",
        "onRenderFirstFrame",
        "onVideoStart",
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
        "setOnSeekCompleteListener",
        "Landroid/view/View;",
        "v",
        "onClick",
        "(Landroid/view/View;)V",
        "showCommentDialog",
        "type",
        "y",
        "B",
        "p0",
        "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V",
        "i0",
        "comment",
        "e0",
        "(J)V",
        "share",
        "l0",
        "o0",
        "setBottomSubjectModuleData",
        "setBottomRoomModuleData",
        "isShowSubject",
        "isShowRoom",
        "setBottomSubjectAndRoomVisibility",
        "(ZZ)V",
        "f0",
        "Lcom/transsion/moviedetailapi/bean/CommentBean;",
        "hotComment",
        "A",
        "(Lcom/transsion/moviedetailapi/bean/CommentBean;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V",
        "W",
        "moduleName",
        "X",
        "(Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V",
        "m0",
        "I",
        "L",
        "U",
        "show",
        "setLoading",
        "(Z)V",
        "P",
        "view",
        "S",
        "j0",
        "O",
        "N",
        "T",
        "Lcom/transsion/baselib/db/download/DownloadBean;",
        "download",
        "Y",
        "(Lcom/transsion/baselib/db/download/DownloadBean;)V",
        "id",
        "z",
        "F",
        "H",
        "G",
        "C",
        "visible",
        "setContentVisibility",
        "c0",
        "d0",
        "a",
        "Ljava/lang/String;",
        "TAG",
        "Lwn/t;",
        "b",
        "Lwn/t;",
        "viewBinding",
        "Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;",
        "c",
        "Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;",
        "videoDetailModel",
        "Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;",
        "d",
        "Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;",
        "shortTvPlayListViewModel",
        "Lcom/transsion/postdetail/viewmodel/CommentViewModel;",
        "e",
        "Lcom/transsion/postdetail/viewmodel/CommentViewModel;",
        "mCommentViewModel",
        "Lcom/transsion/share/share/ShareDialogFragment;",
        "f",
        "Lcom/transsion/share/share/ShareDialogFragment;",
        "mShareDialog",
        "g",
        "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;",
        "data",
        "h",
        "Landroidx/fragment/app/Fragment;",
        "i",
        "Ljava/lang/Boolean;",
        "j",
        "Ljava/lang/Integer;",
        "getPosition",
        "()Ljava/lang/Integer;",
        "setPosition",
        "(Ljava/lang/Integer;)V",
        "k",
        "l",
        "m",
        "Lcom/transsion/player/orplayer/f;",
        "n",
        "Lcom/transsion/player/ui/ORPlayerView;",
        "o",
        "Lcom/transsion/shorttv/base/pager/PagerLayoutManager;",
        "Lep/a;",
        "p",
        "Lep/a;",
        "audioApi",
        "Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;",
        "q",
        "Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;",
        "guideView",
        "Landroid/view/GestureDetector;",
        "r",
        "Landroid/view/GestureDetector;",
        "gestureDetector",
        "Lqx/a;",
        "s",
        "Lkotlin/Lazy;",
        "getLoginApi",
        "()Lqx/a;",
        "loginApi",
        "Lcom/transsion/postdetail/layer/b;",
        "t",
        "Lcom/transsion/postdetail/layer/b;",
        "dotLayer",
        "Lcom/transsion/postdetail/ui/dialog/ImmVideoCommentDialog;",
        "u",
        "Lcom/transsion/postdetail/ui/dialog/ImmVideoCommentDialog;",
        "commentDialog",
        "Z",
        "isClickPause",
        "w",
        "isHorizontalDragging",
        "x",
        "isPageHide",
        "isShowHotComment",
        "isFavoriteShow",
        "J",
        "currentSaveProgress",
        "resImgLargeWidth",
        "resImgLargeHeight",
        "D",
        "resImgSmallWidth",
        "E",
        "resImgSmallHeight",
        "screenHeight",
        "dp170",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "isSeekToFinish",
        "nextSeekTo",
        "K",
        "isPageRelease",
        "M",
        "isLongPressTriggered",
        "screenWidth",
        "Landroid/animation/ObjectAnimator;",
        "Landroid/animation/ObjectAnimator;",
        "rotateAnimator",
        "com/transsion/postdetail/ui/view/ImmVideoItemView$b",
        "Q",
        "Lcom/transsion/postdetail/ui/view/ImmVideoItemView$b;",
        "downloadListener",
        "Lcom/transsnet/downloader/manager/g;",
        "R",
        "getDownloadManager",
        "()Lcom/transsnet/downloader/manager/g;",
        "downloadManager",
        "Landroidx/lifecycle/c0;",
        "Landroidx/lifecycle/c0;",
        "favoriteResultObserver",
        "commentViewModel",
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


# instance fields
.field private A:J

.field private final B:I

.field private final C:I

.field private final D:I

.field private final E:I

.field private final F:I

.field private final G:I

.field private H:Ljava/lang/String;

.field private final I:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private J:J

.field private K:Z

.field private L:Z

.field private M:Z

.field private final N:I

.field private O:Z

.field private P:Landroid/animation/ObjectAnimator;

.field private final Q:Lcom/transsion/postdetail/ui/view/ImmVideoItemView$b;

.field private final R:Lkotlin/Lazy;

.field private final S:Landroidx/lifecycle/c0;

.field private final a:Ljava/lang/String;

.field private final b:Lwn/t;

.field private c:Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

.field private d:Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

.field private e:Lcom/transsion/postdetail/viewmodel/CommentViewModel;

.field private f:Lcom/transsion/share/share/ShareDialogFragment;

.field private g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

.field private h:Landroidx/fragment/app/Fragment;

.field private i:Ljava/lang/Boolean;

.field private j:Ljava/lang/Integer;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Lcom/transsion/player/orplayer/f;

.field private n:Lcom/transsion/player/ui/ORPlayerView;

.field private o:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

.field private p:Lep/a;

.field private q:Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;

.field private r:Landroid/view/GestureDetector;

.field private final s:Lkotlin/Lazy;

.field private t:Lcom/transsion/postdetail/layer/b;

.field private u:Lcom/transsion/postdetail/ui/dialog/ImmVideoCommentDialog;

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    const-string p2, "ImmVideoPlayer"

    iput-object p2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->a:Ljava/lang/String;

    .line 3
    const-string p2, ""

    iput-object p2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->l:Ljava/lang/String;

    .line 4
    new-instance p2, Lcom/transsion/postdetail/ui/view/c;

    invoke-direct {p2}, Lcom/transsion/postdetail/ui/view/c;-><init>()V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->s:Lkotlin/Lazy;

    .line 5
    invoke-static {}, Lcom/blankj/utilcode/util/y;->c()I

    move-result p2

    iput p2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->F:I

    const/high16 p2, 0x432a0000    # 170.0f

    .line 6
    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p2

    iput p2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->G:I

    .line 7
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    iput-boolean p3, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->K:Z

    .line 9
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result p2

    iput p2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->N:I

    .line 10
    new-instance p2, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$b;

    invoke-direct {p2, p0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$b;-><init>(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V

    iput-object p2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->Q:Lcom/transsion/postdetail/ui/view/ImmVideoItemView$b;

    .line 11
    new-instance p2, Lcom/transsion/postdetail/ui/view/i;

    invoke-direct {p2}, Lcom/transsion/postdetail/ui/view/i;-><init>()V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->R:Lkotlin/Lazy;

    .line 12
    new-instance p2, Lcom/transsion/postdetail/ui/view/j;

    invoke-direct {p2, p0}, Lcom/transsion/postdetail/ui/view/j;-><init>(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V

    iput-object p2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->S:Landroidx/lifecycle/c0;

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/transsion/postdetail/R$layout;->layout_immersion_video_item_view:I

    invoke-static {p2, p3, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    invoke-static {p0}, Lwn/t;->a(Landroid/view/View;)Lwn/t;

    move-result-object p2

    const-string p3, "bind(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 15
    iget-object p3, p2, Lwn/t;->C:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object p3, p2, Lwn/t;->x:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object p3, p2, Lwn/t;->E:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object p3, p2, Lwn/t;->o:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object p3, p2, Lwn/t;->q:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object p3, p2, Lwn/t;->r:Lwn/z;

    iget-object p3, p3, Lwn/z;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object p3, p2, Lwn/t;->r:Lwn/z;

    iget-object p3, p3, Lwn/z;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object p3, p2, Lwn/t;->F:Lcom/noober/background/view/BLTextView;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object p3, p2, Lwn/t;->j:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object p3, p2, Lwn/t;->p:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object p3, p2, Lwn/t;->G:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iget-object p3, p2, Lwn/t;->d:Lcom/noober/background/view/BLConstraintLayout;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 p3, 0x42400000    # 48.0f

    .line 27
    invoke-static {p3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p3

    iput p3, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->B:I

    const/high16 p3, 0x42800000    # 64.0f

    .line 28
    invoke-static {p3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p3

    iput p3, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->C:I

    const/high16 p3, 0x41c00000    # 24.0f

    .line 29
    invoke-static {p3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p3

    iput p3, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->D:I

    const/high16 p3, 0x42000000    # 32.0f

    .line 30
    invoke-static {p3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p3

    iput p3, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->E:I

    .line 31
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->B(Landroid/content/Context;)V

    .line 32
    sget-object p1, Lcom/transsion/postdetail/helper/ImmVideoHelper;->h:Lcom/transsion/postdetail/helper/ImmVideoHelper$a;

    invoke-virtual {p1}, Lcom/transsion/postdetail/helper/ImmVideoHelper$a;->a()Lcom/transsion/postdetail/helper/ImmVideoHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/postdetail/helper/ImmVideoHelper;->h()I

    move-result p1

    if-lez p1, :cond_0

    .line 33
    iget-object p1, p2, Lwn/t;->v:Landroid/widget/Space;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const-string p3, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 34
    iget p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const/high16 v0, 0x420c0000    # 35.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    if-ge p3, v0, :cond_0

    .line 35
    iget p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    add-int/2addr p3, v0

    iput p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 36
    iget-object p2, p2, Lwn/t;->v:Landroid/widget/Space;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private final A(Lcom/transsion/moviedetailapi/bean/CommentBean;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 6

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
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 10
    .line 11
    sget p2, Lcom/transsion/postdetail/R$string;->base_net_err:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lfh/b$a;->d(I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getLikeStatu()Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 28
    .line 29
    iget-object v2, v2, Lwn/t;->m:Landroidx/appcompat/widget/AppCompatImageView;

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 42
    .line 43
    .line 44
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->setLikeStatu(Ljava/lang/Boolean;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getLikeCnt()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-lez v1, :cond_2

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getLikeCnt()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    add-int/lit8 v1, v1, -0x1

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->setLikeCnt(I)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->setLikeStatu(Ljava/lang/Boolean;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getLikeCnt()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    add-int/2addr v1, v3

    .line 76
    invoke-virtual {p1, v1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->setLikeCnt(I)V

    .line 77
    .line 78
    .line 79
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 80
    .line 81
    iget-object v1, v1, Lwn/t;->B:Landroidx/appcompat/widget/AppCompatTextView;

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getLikeCnt()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-nez v2, :cond_3

    .line 88
    .line 89
    const-string v2, ""

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_3
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getLikeCnt()I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    int-to-long v4, v2

    .line 97
    invoke-static {v4, v5}, Lcom/transsion/baseui/util/j;->a(J)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getCommentId()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    if-eqz v1, :cond_6

    .line 109
    .line 110
    if-eqz v0, :cond_4

    .line 111
    .line 112
    const-string v2, "dislike_hot_comment"

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_4
    const-string v2, "like_hot_comment"

    .line 116
    .line 117
    :goto_2
    invoke-direct {p0, v2, p2}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->X(Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 118
    .line 119
    .line 120
    new-instance p2, Lcom/transsion/postdetail/bean/CommentLikeBody;

    .line 121
    .line 122
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-direct {p2, v1, v2}, Lcom/transsion/postdetail/bean/CommentLikeBody;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 127
    .line 128
    .line 129
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->e:Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    .line 130
    .line 131
    if-eqz v2, :cond_5

    .line 132
    .line 133
    invoke-virtual {v2, p2}, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->q(Lcom/transsion/postdetail/bean/CommentLikeBody;)V

    .line 134
    .line 135
    .line 136
    :cond_5
    new-instance p2, Lrm/b;

    .line 137
    .line 138
    xor-int/2addr v0, v3

    .line 139
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getLikeCnt()I

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    invoke-direct {p2, v0, v1, p1}, Lrm/b;-><init>(ZLjava/lang/String;I)V

    .line 144
    .line 145
    .line 146
    sget-object p1, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 147
    .line 148
    const-class v0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 149
    .line 150
    invoke-virtual {p1, v0}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    check-cast p1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 155
    .line 156
    const-class v0, Lrm/b;

    .line 157
    .line 158
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    const-string v1, "getName(...)"

    .line 163
    .line 164
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    const-wide/16 v1, 0x0

    .line 168
    .line 169
    invoke-virtual {p1, v0, p2, v1, v2}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 170
    .line 171
    .line 172
    :cond_6
    return-void
.end method

.method private final B(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/view/GestureDetector;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$c;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$c;-><init>(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->r:Landroid/view/GestureDetector;

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->L()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->I()V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->C()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private final C()V
    .locals 3

    .line 1
    new-instance v0, Lcom/transsion/baseui/widget/f;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 8
    .line 9
    iget-object v2, v2, Lwn/t;->J:Lcom/transsion/postdetail/ui/view/VideoProgressDragGestureView;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Lcom/transsion/baseui/widget/f;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$d;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$d;-><init>(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/transsion/baseui/widget/f;->s(Lcom/transsion/baseui/widget/f$a;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 23
    .line 24
    iget-object v0, v0, Lwn/t;->w:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 25
    .line 26
    new-instance v1, Lcom/transsion/postdetail/ui/view/g;

    .line 27
    .line 28
    invoke-direct {v1}, Lcom/transsion/postdetail/ui/view/g;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private static final D(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method private static final E()Lqx/a;
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

.method private final F(Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const-wide/16 v1, 0x1f4

    .line 8
    .line 9
    invoke-virtual {v0, p1, v1, v2}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance p1, Lcom/transsnet/loginapi/bean/UserInfo;

    .line 17
    .line 18
    invoke-direct {p1}, Lcom/transsnet/loginapi/bean/UserInfo;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getUser()Lcom/transsion/moviedetailapi/bean/User;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move-object v0, v1

    .line 32
    :goto_0
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/User;->getUserId()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    move-object v2, v1

    .line 40
    :goto_1
    invoke-virtual {p1, v2}, Lcom/transsnet/loginapi/bean/UserInfo;->setUserId(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/User;->getNickname()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    goto :goto_2

    .line 50
    :cond_3
    move-object v2, v1

    .line 51
    :goto_2
    invoke-virtual {p1, v2}, Lcom/transsnet/loginapi/bean/UserInfo;->setNickname(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/User;->getUsername()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    goto :goto_3

    .line 61
    :cond_4
    move-object v2, v1

    .line 62
    :goto_3
    invoke-virtual {p1, v2}, Lcom/transsnet/loginapi/bean/UserInfo;->setUsername(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    if-eqz v0, :cond_5

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/User;->getAvatar()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    goto :goto_4

    .line 72
    :cond_5
    move-object v0, v1

    .line 73
    :goto_4
    invoke-virtual {p1, v0}, Lcom/transsnet/loginapi/bean/UserInfo;->setAvatar(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-string v0, "/profile/user_profile"

    .line 77
    .line 78
    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const-string v2, "userId"

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {v0, v2, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    const/4 v2, 0x2

    .line 97
    invoke-static {p1, v0, v1, v2, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    sget-object p1, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    .line 101
    .line 102
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 103
    .line 104
    const-string v1, "postdetail_video"

    .line 105
    .line 106
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->H:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/postdetail/helper/a;->c(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method private final G(Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const-wide/16 v1, 0x1f4

    .line 8
    .line 9
    invoke-virtual {v0, p1, v1, v2}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    sget-object p1, Lsg/b;->b:Lsg/b$a;

    .line 17
    .line 18
    invoke-virtual {p1}, Lsg/b$a;->a()Lsg/b;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lsg/b;->c()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 v0, 0x0

    .line 27
    new-array v0, v0, [Ljava/lang/Object;

    .line 28
    .line 29
    const-class v1, Lep/f;

    .line 30
    .line 31
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lep/f;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-interface {v0}, Lep/f;->d()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move-object v0, v1

    .line 46
    :goto_0
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->j:Ljava/lang/Integer;

    .line 53
    .line 54
    if-nez p1, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_3

    .line 62
    .line 63
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->h:Landroidx/fragment/app/Fragment;

    .line 64
    .line 65
    if-eqz p1, :cond_5

    .line 66
    .line 67
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    if-eqz p1, :cond_5

    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 74
    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_3
    :goto_1
    const-string p1, "/room/detail"

    .line 78
    .line 79
    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 84
    .line 85
    if-eqz v0, :cond_4

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    if-eqz v0, :cond_4

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Group;->getGroupId()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    goto :goto_2

    .line 98
    :cond_4
    move-object v0, v1

    .line 99
    :goto_2
    const-string v2, "id"

    .line 100
    .line 101
    invoke-virtual {p1, v2, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    const/4 v2, 0x2

    .line 110
    invoke-static {p1, v0, v1, v2, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    sget-object p1, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    .line 114
    .line 115
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 116
    .line 117
    const-string v1, "postdetail_video"

    .line 118
    .line 119
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->H:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/postdetail/helper/a;->l(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :cond_5
    :goto_3
    return-void
.end method

.method private final H(Landroid/view/View;)V
    .locals 14

    .line 1
    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const-wide/16 v1, 0x1f4

    .line 8
    .line 9
    invoke-virtual {v0, p1, v1, v2}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    sget-object p1, Lsg/b;->b:Lsg/b$a;

    .line 17
    .line 18
    invoke-virtual {p1}, Lsg/b$a;->a()Lsg/b;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lsg/b;->c()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 v0, 0x0

    .line 27
    new-array v0, v0, [Ljava/lang/Object;

    .line 28
    .line 29
    const-class v1, Lcom/transsion/moviedetailapi/g;

    .line 30
    .line 31
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/transsion/moviedetailapi/g;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-interface {v0}, Lcom/transsion/moviedetailapi/g;->d()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move-object v0, v1

    .line 46
    :goto_0
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->j:Ljava/lang/Integer;

    .line 53
    .line 54
    if-nez p1, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_3

    .line 62
    .line 63
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->h:Landroidx/fragment/app/Fragment;

    .line 64
    .line 65
    if-eqz p1, :cond_b

    .line 66
    .line 67
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    if-eqz p1, :cond_b

    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 74
    .line 75
    .line 76
    goto/16 :goto_8

    .line 77
    .line 78
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 79
    .line 80
    if-eqz p1, :cond_7

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-eqz p1, :cond_7

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-nez p1, :cond_4

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-ne p1, v0, :cond_7

    .line 106
    .line 107
    sget-object p1, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    const-string v0, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    .line 118
    .line 119
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    move-object v3, p1

    .line 123
    check-cast v3, Landroidx/fragment/app/FragmentActivity;

    .line 124
    .line 125
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 126
    .line 127
    if-eqz p1, :cond_5

    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    if-eqz p1, :cond_5

    .line 134
    .line 135
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    move-object v6, p1

    .line 140
    goto :goto_2

    .line 141
    :cond_5
    move-object v6, v1

    .line 142
    :goto_2
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 143
    .line 144
    if-eqz p1, :cond_6

    .line 145
    .line 146
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    :cond_6
    move-object v9, v1

    .line 151
    const/16 v12, 0x180

    .line 152
    .line 153
    const/4 v13, 0x0

    .line 154
    const-string v4, "postdetail_video"

    .line 155
    .line 156
    const-string v5, ""

    .line 157
    .line 158
    const-string v7, "download_subject"

    .line 159
    .line 160
    const/4 v8, 0x0

    .line 161
    const/4 v10, 0x0

    .line 162
    const/4 v11, 0x0

    .line 163
    invoke-static/range {v2 .. v13}, Lcom/transsnet/downloader/DownloadManagerApi;->e0(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    goto :goto_7

    .line 167
    :cond_7
    :goto_3
    const-string p1, "/movie/detail"

    .line 168
    .line 169
    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 174
    .line 175
    if-eqz v0, :cond_8

    .line 176
    .line 177
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    if-eqz v0, :cond_8

    .line 182
    .line 183
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    if-eqz v0, :cond_8

    .line 188
    .line 189
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    goto :goto_4

    .line 194
    :cond_8
    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->MOVIE:Lcom/transsion/moviedetailapi/SubjectType;

    .line 195
    .line 196
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    :goto_4
    const-string v2, "subject_type"

    .line 201
    .line 202
    invoke-virtual {p1, v2, v0}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 207
    .line 208
    if-eqz v0, :cond_9

    .line 209
    .line 210
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    if-eqz v0, :cond_9

    .line 215
    .line 216
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    goto :goto_5

    .line 221
    :cond_9
    move-object v0, v1

    .line 222
    :goto_5
    const-string v2, "id"

    .line 223
    .line 224
    invoke-virtual {p1, v2, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 229
    .line 230
    if-eqz v0, :cond_a

    .line 231
    .line 232
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getOps()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    goto :goto_6

    .line 237
    :cond_a
    move-object v0, v1

    .line 238
    :goto_6
    const-string v2, "ops"

    .line 239
    .line 240
    invoke-virtual {p1, v2, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    const/4 v2, 0x2

    .line 249
    invoke-static {p1, v0, v1, v2, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    :goto_7
    sget-object p1, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    .line 253
    .line 254
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 255
    .line 256
    const-string v1, "postdetail_video"

    .line 257
    .line 258
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->H:Ljava/lang/String;

    .line 259
    .line 260
    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/postdetail/helper/a;->B(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    :cond_b
    :goto_8
    return-void
.end method

.method private final I()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    move-object v4, v1

    .line 13
    check-cast v4, Landroidx/appcompat/app/AppCompatActivity;

    .line 14
    .line 15
    new-instance v9, Lcom/transsion/postdetail/ui/view/e;

    .line 16
    .line 17
    invoke-direct {v9, v0}, Lcom/transsion/postdetail/ui/view/e;-><init>(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V

    .line 18
    .line 19
    .line 20
    sget-object v1, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 21
    .line 22
    const-class v10, Lcom/transsnet/flow/event/FlowEventBus;

    .line 23
    .line 24
    invoke-virtual {v1, v10}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Lcom/transsnet/flow/event/FlowEventBus;

    .line 29
    .line 30
    const-class v5, Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;

    .line 31
    .line 32
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    const-string v11, "getName(...)"

    .line 37
    .line 38
    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sget-object v15, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 42
    .line 43
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-virtual {v6}, Lkotlinx/coroutines/a2;->p()Lkotlinx/coroutines/a2;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    const/4 v8, 0x0

    .line 52
    move-object v6, v15

    .line 53
    invoke-virtual/range {v3 .. v9}, Lcom/transsnet/flow/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    .line 54
    .line 55
    .line 56
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    move-object v13, v3

    .line 64
    check-cast v13, Landroidx/appcompat/app/AppCompatActivity;

    .line 65
    .line 66
    new-instance v2, Lcom/transsion/postdetail/ui/view/f;

    .line 67
    .line 68
    invoke-direct {v2, v0}, Lcom/transsion/postdetail/ui/view/f;-><init>(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v10}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    move-object v12, v1

    .line 76
    check-cast v12, Lcom/transsnet/flow/event/FlowEventBus;

    .line 77
    .line 78
    const-class v1, Lhx/c;

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v14

    .line 84
    invoke-static {v14, v11}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v1}, Lkotlinx/coroutines/a2;->p()Lkotlinx/coroutines/a2;

    .line 92
    .line 93
    .line 94
    move-result-object v16

    .line 95
    const/16 v17, 0x0

    .line 96
    .line 97
    move-object/from16 v18, v2

    .line 98
    .line 99
    invoke-virtual/range {v12 .. v18}, Lcom/transsnet/flow/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method private static final J(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;)Lkotlin/Unit;
    .locals 3

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;->getSubjectId()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object p0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object p0, v0

    .line 27
    :goto_0
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-nez p0, :cond_1

    .line 32
    .line 33
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    return-object p0

    .line 36
    :catch_0
    sget-object p0, Lwf/a;->a:Lwf/a$a;

    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    const/4 v1, 0x2

    .line 40
    const-string v2, " callback change data fail"

    .line 41
    .line 42
    invoke-static {p0, v2, p1, v1, v0}, Lwf/a$a;->g(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 46
    .line 47
    return-object p0
.end method

.method private static final K(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lhx/c;)Lkotlin/Unit;
    .locals 3

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    invoke-virtual {p1}, Lhx/c;->c()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v2, v0

    .line 27
    :goto_0
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_1
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getShortTVFavInfo()Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    invoke-virtual {p1}, Lhx/c;->b()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v1, v2}, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;->setFavoriteNum(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lhx/c;->a()Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    invoke-virtual {v1, v2}, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;->setHasFavorite(Z)V

    .line 64
    .line 65
    .line 66
    :cond_2
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 67
    .line 68
    iget-object v1, v1, Lwn/t;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 69
    .line 70
    invoke-virtual {p1}, Lhx/c;->a()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 75
    .line 76
    .line 77
    iget-object p0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 78
    .line 79
    iget-object p0, p0, Lwn/t;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 80
    .line 81
    invoke-virtual {p1}, Lhx/c;->b()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-eqz p1, :cond_3

    .line 86
    .line 87
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 88
    .line 89
    .line 90
    move-result-wide v1

    .line 91
    goto :goto_1

    .line 92
    :cond_3
    const-wide/16 v1, 0x0

    .line 93
    .line 94
    :goto_1
    invoke-static {v1, v2}, Lcom/transsion/baseui/util/j;->a(J)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :catch_0
    sget-object p0, Lwf/a;->a:Lwf/a$a;

    .line 103
    .line 104
    const/4 p1, 0x0

    .line 105
    const/4 v1, 0x2

    .line 106
    const-string v2, " callback change data fail"

    .line 107
    .line 108
    invoke-static {p0, v2, p1, v1, v0}, Lwf/a$a;->g(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 112
    .line 113
    return-object p0
.end method

.method private final L()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    move-object v3, v0

    .line 11
    check-cast v3, Landroidx/appcompat/app/AppCompatActivity;

    .line 12
    .line 13
    new-instance v8, Lcom/transsion/postdetail/ui/view/h;

    .line 14
    .line 15
    invoke-direct {v8, p0}, Lcom/transsion/postdetail/ui/view/h;-><init>(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V

    .line 16
    .line 17
    .line 18
    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 19
    .line 20
    const-class v1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    move-object v2, v0

    .line 27
    check-cast v2, Lcom/transsnet/flow/event/FlowEventBus;

    .line 28
    .line 29
    const-class v0, Lcom/transsnet/flow/event/sync/event/LikeEvent;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    const-string v0, "getName(...)"

    .line 36
    .line 37
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    sget-object v5, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 41
    .line 42
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lkotlinx/coroutines/a2;->p()Lkotlinx/coroutines/a2;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    const/4 v7, 0x0

    .line 51
    invoke-virtual/range {v2 .. v8}, Lcom/transsnet/flow/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private static final M(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lcom/transsnet/flow/event/sync/event/LikeEvent;)Lkotlin/Unit;
    .locals 5

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LikeEvent;->getSubjectId()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v2, v0

    .line 21
    :goto_0
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_1
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LikeEvent;->getLike()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->setHasLike(Ljava/lang/Boolean;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LikeEvent;->getLike()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    const-wide/16 v1, 0x1

    .line 50
    .line 51
    if-eqz p1, :cond_4

    .line 52
    .line 53
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 54
    .line 55
    if-eqz p1, :cond_6

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getStat()Lcom/transsion/moviedetailapi/bean/Stat;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-eqz p1, :cond_6

    .line 62
    .line 63
    iget-object v3, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 64
    .line 65
    if-eqz v3, :cond_3

    .line 66
    .line 67
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getStat()Lcom/transsion/moviedetailapi/bean/Stat;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    if-eqz v3, :cond_3

    .line 72
    .line 73
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Stat;->getLikeCount()Ljava/lang/Long;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    if-eqz v3, :cond_3

    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 80
    .line 81
    .line 82
    move-result-wide v3

    .line 83
    add-long/2addr v3, v1

    .line 84
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    goto :goto_1

    .line 89
    :cond_3
    move-object v1, v0

    .line 90
    :goto_1
    invoke-virtual {p1, v1}, Lcom/transsion/moviedetailapi/bean/Stat;->setLikeCount(Ljava/lang/Long;)V

    .line 91
    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_4
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 95
    .line 96
    if-eqz p1, :cond_6

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getStat()Lcom/transsion/moviedetailapi/bean/Stat;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    if-eqz p1, :cond_6

    .line 103
    .line 104
    iget-object v3, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 105
    .line 106
    if-eqz v3, :cond_5

    .line 107
    .line 108
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getStat()Lcom/transsion/moviedetailapi/bean/Stat;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    if-eqz v3, :cond_5

    .line 113
    .line 114
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Stat;->getLikeCount()Ljava/lang/Long;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    if-eqz v3, :cond_5

    .line 119
    .line 120
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 121
    .line 122
    .line 123
    move-result-wide v3

    .line 124
    sub-long/2addr v3, v1

    .line 125
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    goto :goto_2

    .line 130
    :cond_5
    move-object v1, v0

    .line 131
    :goto_2
    invoke-virtual {p1, v1}, Lcom/transsion/moviedetailapi/bean/Stat;->setLikeCount(Ljava/lang/Long;)V

    .line 132
    .line 133
    .line 134
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 135
    .line 136
    if-eqz p1, :cond_7

    .line 137
    .line 138
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->i0(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .line 140
    .line 141
    goto :goto_4

    .line 142
    :catch_0
    sget-object p0, Lwf/a;->a:Lwf/a$a;

    .line 143
    .line 144
    const/4 p1, 0x0

    .line 145
    const/4 v1, 0x2

    .line 146
    const-string v2, " callback change data fail"

    .line 147
    .line 148
    invoke-static {p0, v2, p1, v1, v0}, Lwf/a$a;->g(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    :cond_7
    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 152
    .line 153
    return-object p0
.end method

.method private final N(Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const-wide/16 v1, 0x1f4

    .line 8
    .line 9
    invoke-virtual {v0, p1, v1, v2}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->showCommentDialog()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private final O(Landroid/view/View;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const-wide/16 v1, 0x1f4

    .line 8
    .line 9
    invoke-virtual {v0, p1, v1, v2}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    sget-object p1, Lyg/l;->a:Lyg/l;

    .line 17
    .line 18
    invoke-virtual {p1}, Lyg/l;->e()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_5

    .line 23
    .line 24
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getHasLike()Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move p1, v0

    .line 41
    :goto_0
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->c:Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    .line 42
    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 46
    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    const/4 v2, 0x0

    .line 55
    :goto_1
    invoke-virtual {v1, v2, p1}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->G(Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    :cond_3
    sget-object p1, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 61
    .line 62
    if-eqz v1, :cond_4

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getHasLike()Ljava/lang/Boolean;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 69
    .line 70
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    :cond_4
    const-string v2, "postdetail_video"

    .line 75
    .line 76
    iget-object v3, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->H:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/transsion/postdetail/helper/a;->o(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;ZLjava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_5
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 83
    .line 84
    sget v0, Lcom/tn/lib/widget/R$string;->no_network_tips:I

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Lfh/b$a;->d(I)V

    .line 87
    .line 88
    .line 89
    :goto_2
    return-void
.end method

.method private final P(J)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->i:Ljava/lang/Boolean;

    .line 2
    .line 3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-wide/16 v2, 0x1388

    .line 10
    .line 11
    const-wide/16 v4, 0x3e8

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    sget-object v0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->h:Lcom/transsion/postdetail/helper/ImmVideoHelper$a;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/transsion/postdetail/helper/ImmVideoHelper$a;->a()Lcom/transsion/postdetail/helper/ImmVideoHelper;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    invoke-virtual {v6}, Lcom/transsion/postdetail/helper/ImmVideoHelper;->n()Z

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    if-eqz v6, :cond_0

    .line 26
    .line 27
    cmp-long v6, p1, v4

    .line 28
    .line 29
    if-ltz v6, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/transsion/postdetail/helper/ImmVideoHelper$a;->a()Lcom/transsion/postdetail/helper/ImmVideoHelper;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lcom/transsion/postdetail/helper/ImmVideoHelper;->t()V

    .line 36
    .line 37
    .line 38
    sget-object p1, Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;->Companion:Lcom/transsion/postdetail/ui/view/ImmVideoGuideView$a;

    .line 39
    .line 40
    invoke-virtual {p1, p0}, Lcom/transsion/postdetail/ui/view/ImmVideoGuideView$a;->a(Landroid/view/ViewGroup;)Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    new-instance p2, Lcom/transsion/postdetail/ui/view/p;

    .line 45
    .line 46
    invoke-direct {p2, p0}, Lcom/transsion/postdetail/ui/view/p;-><init>(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->q:Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->i:Ljava/lang/Boolean;

    .line 56
    .line 57
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->H:Ljava/lang/String;

    .line 64
    .line 65
    const-string v1, "Trending"

    .line 66
    .line 67
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    sget-object v0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->h:Lcom/transsion/postdetail/helper/ImmVideoHelper$a;

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/transsion/postdetail/helper/ImmVideoHelper$a;->a()Lcom/transsion/postdetail/helper/ImmVideoHelper;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1}, Lcom/transsion/postdetail/helper/ImmVideoHelper;->o()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_1

    .line 84
    .line 85
    cmp-long p1, p1, v4

    .line 86
    .line 87
    if-ltz p1, :cond_1

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/transsion/postdetail/helper/ImmVideoHelper$a;->a()Lcom/transsion/postdetail/helper/ImmVideoHelper;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1}, Lcom/transsion/postdetail/helper/ImmVideoHelper;->u()V

    .line 94
    .line 95
    .line 96
    sget-object p1, Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;->Companion:Lcom/transsion/postdetail/ui/view/ImmVideoGuideView$a;

    .line 97
    .line 98
    invoke-virtual {p1, p0}, Lcom/transsion/postdetail/ui/view/ImmVideoGuideView$a;->a(Landroid/view/ViewGroup;)Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    new-instance p2, Lcom/transsion/postdetail/ui/view/q;

    .line 103
    .line 104
    invoke-direct {p2, p0}, Lcom/transsion/postdetail/ui/view/q;-><init>(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, p2, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 108
    .line 109
    .line 110
    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->q:Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;

    .line 111
    .line 112
    :cond_1
    :goto_0
    return-void
.end method

.method private static final Q(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->q:Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;->removeGuide()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private static final R(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->q:Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;->removeGuide()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private final S(Landroid/view/View;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const-wide/16 v1, 0x1f4

    .line 8
    .line 9
    invoke-virtual {v0, p1, v1, v2}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    sget-object v0, Lcom/transsnet/downloader/util/DownloadUtil;->a:Lcom/transsnet/downloader/util/DownloadUtil;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/transsnet/downloader/util/DownloadUtil;->G(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-nez p1, :cond_2

    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    sget-object v0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-nez v1, :cond_3

    .line 41
    .line 42
    const-string v1, ""

    .line 43
    .line 44
    :cond_3
    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->q(Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    const/4 v1, 0x5

    .line 55
    if-ne v0, v1, :cond_4

    .line 56
    .line 57
    return-void

    .line 58
    :cond_4
    sget v0, Lcom/transsion/postdetail/R$string;->shorts_click_download:I

    .line 59
    .line 60
    invoke-static {v0}, Lcom/transsion/baseui/util/m;->c(I)V

    .line 61
    .line 62
    .line 63
    sget-object v0, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    .line 64
    .line 65
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 66
    .line 67
    const-string v2, "postdetail_video"

    .line 68
    .line 69
    iget-object v3, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->H:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/postdetail/helper/a;->i(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->getDownloadManager()Lcom/transsnet/downloader/manager/g;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-interface {v0, p1}, Lcom/transsnet/downloader/manager/g;->p(Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 79
    .line 80
    .line 81
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->j0()V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method private final T(Landroid/view/View;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "share"

    .line 4
    .line 5
    sget-object v2, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const-wide/16 v4, 0x1f4

    .line 12
    .line 13
    invoke-virtual {v2, v3, v4, v5}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    sget-object v2, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    .line 21
    .line 22
    iget-object v3, v1, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 23
    .line 24
    const-string v4, "postdetail_video"

    .line 25
    .line 26
    iget-object v5, v1, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->H:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v2, v3, v4, v5}, Lcom/transsion/postdetail/helper/a;->z(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v2, v1, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->f:Lcom/transsion/share/share/ShareDialogFragment;

    .line 32
    .line 33
    if-nez v2, :cond_9

    .line 34
    .line 35
    invoke-direct/range {p0 .. p0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->getLoginApi()Lqx/a;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const/4 v3, 0x0

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    invoke-interface {v2}, Lqx/a;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move-object v2, v3

    .line 48
    :goto_0
    iget-object v4, v1, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 49
    .line 50
    if-eqz v4, :cond_2

    .line 51
    .line 52
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getUser()Lcom/transsion/moviedetailapi/bean/User;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    if-eqz v4, :cond_2

    .line 57
    .line 58
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/User;->getUserId()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    move-object v4, v3

    .line 64
    :goto_1
    if-eqz v2, :cond_3

    .line 65
    .line 66
    invoke-virtual {v2}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    goto :goto_2

    .line 71
    :cond_3
    move-object v2, v3

    .line 72
    :goto_2
    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result v13

    .line 76
    sget-object v5, Lcom/transsion/share/share/ShareDialogFragment;->s:Lcom/transsion/share/share/ShareDialogFragment$a;

    .line 77
    .line 78
    sget-object v6, Lcom/transsion/share/bean/PostType;->POST_TYPE:Lcom/transsion/share/bean/PostType;

    .line 79
    .line 80
    iget-object v2, v1, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 81
    .line 82
    if-eqz v2, :cond_4

    .line 83
    .line 84
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    move-object v7, v2

    .line 89
    goto :goto_3

    .line 90
    :cond_4
    move-object v7, v3

    .line 91
    :goto_3
    iget-object v2, v1, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 92
    .line 93
    if-eqz v2, :cond_5

    .line 94
    .line 95
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getUser()Lcom/transsion/moviedetailapi/bean/User;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    if-eqz v2, :cond_5

    .line 100
    .line 101
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/User;->getUserId()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    move-object v8, v2

    .line 106
    goto :goto_4

    .line 107
    :cond_5
    move-object v8, v3

    .line 108
    :goto_4
    sget-object v2, Lcom/transsion/usercenterapi/ReportType;->POST:Lcom/transsion/usercenterapi/ReportType;

    .line 109
    .line 110
    invoke-virtual {v2}, Lcom/transsion/usercenterapi/ReportType;->getValue()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v9

    .line 114
    iget-object v2, v1, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 115
    .line 116
    if-eqz v2, :cond_6

    .line 117
    .line 118
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getTitle()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    move-object v10, v2

    .line 123
    goto :goto_5

    .line 124
    :cond_6
    move-object v10, v3

    .line 125
    :goto_5
    iget-object v2, v1, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 126
    .line 127
    if-eqz v2, :cond_7

    .line 128
    .line 129
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubjectRate()Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    if-eqz v2, :cond_7

    .line 134
    .line 135
    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    move-object v11, v2

    .line 140
    goto :goto_6

    .line 141
    :cond_7
    move-object v11, v3

    .line 142
    :goto_6
    iget-object v2, v1, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 143
    .line 144
    if-eqz v2, :cond_8

    .line 145
    .line 146
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getOps()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    :cond_8
    move-object/from16 v16, v3

    .line 151
    .line 152
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    sget v3, Lcom/transsion/postdetail/R$string;->save_video:I

    .line 157
    .line 158
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v17

    .line 162
    const/4 v12, 0x0

    .line 163
    const/4 v14, 0x0

    .line 164
    const-string v15, "postdetail"

    .line 165
    .line 166
    invoke-virtual/range {v5 .. v17}, Lcom/transsion/share/share/ShareDialogFragment$a;->a(Lcom/transsion/share/bean/PostType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/share/share/ShareDialogFragment;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    iput-object v2, v1, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->f:Lcom/transsion/share/share/ShareDialogFragment;

    .line 171
    .line 172
    if-eqz v2, :cond_9

    .line 173
    .line 174
    new-instance v3, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e;

    .line 175
    .line 176
    move-object/from16 v4, p1

    .line 177
    .line 178
    invoke-direct {v3, v4, v1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e;-><init>(Landroid/view/View;Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2, v3}, Lcom/transsion/share/share/ShareDialogFragment;->G0(Lcom/transsion/share/share/a;)V

    .line 182
    .line 183
    .line 184
    :cond_9
    :try_start_0
    iget-object v2, v1, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->h:Landroidx/fragment/app/Fragment;

    .line 185
    .line 186
    if-eqz v2, :cond_c

    .line 187
    .line 188
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    const/4 v3, 0x1

    .line 193
    if-ne v2, v3, :cond_c

    .line 194
    .line 195
    iget-object v2, v1, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->h:Landroidx/fragment/app/Fragment;

    .line 196
    .line 197
    if-eqz v2, :cond_c

    .line 198
    .line 199
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    if-eqz v2, :cond_c

    .line 204
    .line 205
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->g0()Z

    .line 206
    .line 207
    .line 208
    iget-object v4, v1, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->f:Lcom/transsion/share/share/ShareDialogFragment;

    .line 209
    .line 210
    if-eqz v4, :cond_a

    .line 211
    .line 212
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 213
    .line 214
    .line 215
    move-result v4

    .line 216
    if-ne v4, v3, :cond_a

    .line 217
    .line 218
    goto :goto_7

    .line 219
    :catch_0
    move-exception v0

    .line 220
    goto :goto_8

    .line 221
    :cond_a
    invoke-virtual {v2, v0}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    if-eqz v3, :cond_b

    .line 226
    .line 227
    :goto_7
    return-void

    .line 228
    :cond_b
    iget-object v3, v1, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->f:Lcom/transsion/share/share/ShareDialogFragment;

    .line 229
    .line 230
    if-eqz v3, :cond_c

    .line 231
    .line 232
    invoke-virtual {v3, v2, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .line 234
    .line 235
    goto :goto_9

    .line 236
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 237
    .line 238
    .line 239
    :cond_c
    :goto_9
    return-void
.end method

.method private final U()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 2
    .line 3
    iget-object v0, v0, Lwn/t;->e:Lcom/transsion/postdetail/ui/view/ClipLoading;

    .line 4
    .line 5
    const-string v1, "clLoading"

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
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->m:Lcom/transsion/player/orplayer/f;

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->isPlaying()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x1

    .line 26
    if-ne v0, v1, :cond_3

    .line 27
    .line 28
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->t:Lcom/transsion/postdetail/layer/b;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/transsion/postdetail/layer/b;->b()V

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->m:Lcom/transsion/player/orplayer/f;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->pause()V

    .line 40
    .line 41
    .line 42
    :cond_2
    iput-boolean v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->v:Z

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->t:Lcom/transsion/postdetail/layer/b;

    .line 46
    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/transsion/postdetail/layer/b;->c()V

    .line 50
    .line 51
    .line 52
    :cond_4
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->m:Lcom/transsion/player/orplayer/f;

    .line 53
    .line 54
    if-eqz v0, :cond_5

    .line 55
    .line 56
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->play()V

    .line 57
    .line 58
    .line 59
    :cond_5
    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->v:Z

    .line 61
    .line 62
    :goto_0
    return-void
.end method

.method private static final V(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->h:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

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
    iget-object p0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->m:Lcom/transsion/player/orplayer/f;

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-interface {p0}, Lcom/transsion/player/orplayer/f;->play()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private final W(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, ""

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    move-object v0, v1

    .line 10
    :cond_0
    const-string v2, "post_id"

    .line 11
    .line 12
    invoke-static {v2, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v2, "page_from"

    .line 17
    .line 18
    iget-object v3, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->H:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string v3, "module_name"

    .line 25
    .line 26
    const-string v4, "hot_comment"

    .line 27
    .line 28
    invoke-static {v3, v4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomCache()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const-string v5, "is_cache_post"

    .line 41
    .line 42
    invoke-static {v5, v4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getUser()Lcom/transsion/moviedetailapi/bean/User;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    if-eqz v5, :cond_1

    .line 51
    .line 52
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/User;->getUserId()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    if-nez v5, :cond_2

    .line 57
    .line 58
    :cond_1
    move-object v5, v1

    .line 59
    :cond_2
    const-string v6, "user_id"

    .line 60
    .line 61
    invoke-static {v6, v5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    if-eqz v6, :cond_3

    .line 70
    .line 71
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Group;->getGroupId()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    if-nez v6, :cond_4

    .line 76
    .line 77
    :cond_3
    move-object v6, v1

    .line 78
    :cond_4
    const-string v7, "group_id"

    .line 79
    .line 80
    invoke-static {v7, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    if-eqz v7, :cond_5

    .line 89
    .line 90
    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    if-nez v7, :cond_6

    .line 95
    .line 96
    :cond_5
    move-object v7, v1

    .line 97
    :cond_6
    const-string v8, "subject_id"

    .line 98
    .line 99
    invoke-static {v8, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    if-eqz v8, :cond_7

    .line 108
    .line 109
    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    if-eqz v8, :cond_7

    .line 114
    .line 115
    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    if-nez v8, :cond_8

    .line 120
    .line 121
    :cond_7
    move-object v8, v1

    .line 122
    :cond_8
    const-string v9, "subject_type"

    .line 123
    .line 124
    invoke-static {v9, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getBuiltIn()Z

    .line 129
    .line 130
    .line 131
    move-result v9

    .line 132
    if-eqz v9, :cond_9

    .line 133
    .line 134
    const-string v9, "1"

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_9
    const-string v9, "0"

    .line 138
    .line 139
    :goto_0
    const-string v10, "builtin"

    .line 140
    .line 141
    invoke-static {v10, v9}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 146
    .line 147
    .line 148
    move-result-object v10

    .line 149
    if-eqz v10, :cond_a

    .line 150
    .line 151
    invoke-virtual {v10}, Lcom/transsion/moviedetailapi/bean/Media;->getMediaType()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v10

    .line 155
    if-nez v10, :cond_b

    .line 156
    .line 157
    :cond_a
    sget-object v10, Lcom/transsion/moviedetailapi/bean/MediaType;->TEXT:Lcom/transsion/moviedetailapi/bean/MediaType;

    .line 158
    .line 159
    invoke-virtual {v10}, Lcom/transsion/moviedetailapi/bean/MediaType;->getValue()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v10

    .line 163
    :cond_b
    const-string v11, "post_media_type"

    .line 164
    .line 165
    invoke-static {v11, v10}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 166
    .line 167
    .line 168
    move-result-object v10

    .line 169
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getOps()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    if-nez p1, :cond_c

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_c
    move-object v1, p1

    .line 177
    :goto_1
    const-string p1, "ops"

    .line 178
    .line 179
    invoke-static {p1, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    const/16 v1, 0xb

    .line 184
    .line 185
    new-array v1, v1, [Lkotlin/Pair;

    .line 186
    .line 187
    const/4 v11, 0x0

    .line 188
    aput-object v0, v1, v11

    .line 189
    .line 190
    const/4 v0, 0x1

    .line 191
    aput-object v2, v1, v0

    .line 192
    .line 193
    const/4 v0, 0x2

    .line 194
    aput-object v3, v1, v0

    .line 195
    .line 196
    const/4 v0, 0x3

    .line 197
    aput-object v4, v1, v0

    .line 198
    .line 199
    const/4 v0, 0x4

    .line 200
    aput-object v5, v1, v0

    .line 201
    .line 202
    const/4 v0, 0x5

    .line 203
    aput-object v6, v1, v0

    .line 204
    .line 205
    const/4 v0, 0x6

    .line 206
    aput-object v7, v1, v0

    .line 207
    .line 208
    const/4 v0, 0x7

    .line 209
    aput-object v8, v1, v0

    .line 210
    .line 211
    const/16 v0, 0x8

    .line 212
    .line 213
    aput-object v9, v1, v0

    .line 214
    .line 215
    const/16 v0, 0x9

    .line 216
    .line 217
    aput-object v10, v1, v0

    .line 218
    .line 219
    const/16 v0, 0xa

    .line 220
    .line 221
    aput-object p1, v1, v0

    .line 222
    .line 223
    invoke-static {v1}, Lkotlin/collections/MapsKt;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    sget-object v0, Lqi/h;->a:Lqi/h;

    .line 228
    .line 229
    const-string v1, "postdetail_video"

    .line 230
    .line 231
    invoke-virtual {v0, v1, p1}, Lqi/h;->z(Ljava/lang/String;Ljava/util/Map;)V

    .line 232
    .line 233
    .line 234
    return-void
.end method

.method private final X(Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
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
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getHotComment()Lcom/transsion/moviedetailapi/bean/CommentBean;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v1, ""

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getCommentId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    :cond_0
    move-object p1, v1

    .line 26
    :cond_1
    const-string v2, "comment_id"

    .line 27
    .line 28
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-nez p1, :cond_2

    .line 36
    .line 37
    move-object p1, v1

    .line 38
    :cond_2
    const-string v2, "post_id"

    .line 39
    .line 40
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getOps()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-nez p1, :cond_3

    .line 48
    .line 49
    move-object p1, v1

    .line 50
    :cond_3
    const-string v2, "ops"

    .line 51
    .line 52
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-eqz p1, :cond_5

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Group;->getGroupId()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-nez p1, :cond_4

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    move-object v1, p1

    .line 69
    :cond_5
    :goto_0
    const-string p1, "group_id"

    .line 70
    .line 71
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-eqz p1, :cond_6

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Media;->getMediaType()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-nez p1, :cond_7

    .line 85
    .line 86
    :cond_6
    sget-object p1, Lcom/transsion/moviedetailapi/bean/MediaType;->TEXT:Lcom/transsion/moviedetailapi/bean/MediaType;

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/MediaType;->getValue()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    :cond_7
    const-string p2, "post_media_type"

    .line 93
    .line 94
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->H:Ljava/lang/String;

    .line 98
    .line 99
    if-eqz p1, :cond_9

    .line 100
    .line 101
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-nez p1, :cond_8

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_8
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->H:Ljava/lang/String;

    .line 109
    .line 110
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    const-string p2, "page_from"

    .line 114
    .line 115
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    :cond_9
    :goto_1
    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    .line 119
    .line 120
    const-string p2, "postdetail_video"

    .line 121
    .line 122
    invoke-virtual {p1, p2, v0}, Lcom/transsion/baselib/helper/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method private final Y(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 7

    .line 1
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v4, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$saveBuiltInVideo$1;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {v4, p1, v0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$saveBuiltInVideo$1;-><init>(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    const/4 v5, 0x3

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private static final Z(Lkotlin/Lazy;)Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;
    .locals 0

    .line 1
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    .line 6
    .line 7
    return-object p0
.end method

.method private static final a0(Lkotlin/Lazy;)Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;
    .locals 0

    .line 1
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    .line 6
    .line 7
    return-object p0
.end method

.method public static final synthetic access$finishAfterReport(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->z(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getData$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getFragment$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->h:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getOrPlayer$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lcom/transsion/player/orplayer/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->m:Lcom/transsion/player/orplayer/f;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getPageFrom$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->H:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getPagerLayoutManager$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lcom/transsion/shorttv/base/pager/PagerLayoutManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->o:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getScreenWidth$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->N:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getVideoDetailModel$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->c:Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getViewBinding$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lwn/t;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$isHorizontalDragging$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->w:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$isSeekToFinish$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$onSingleClick(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->U()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$saveBuiltInVideo(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->Y(Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setContentVisibility(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->setContentVisibility(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setHorizontalDragging$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->w:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setLongPressTriggered$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->M:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setNextSeekTo$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->J:J

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$updateCommentCount(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->e0(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$updateSaveIconStatus(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->j0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final b0(Lkotlin/Lazy;)Lcom/transsion/postdetail/viewmodel/CommentViewModel;
    .locals 0

    .line 1
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    .line 6
    .line 7
    return-object p0
.end method

.method private final c0(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->P:Landroid/animation/ObjectAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const/4 v0, 0x2

    .line 16
    new-array v0, v0, [F

    .line 17
    .line 18
    fill-array-data v0, :array_0

    .line 19
    .line 20
    .line 21
    const-string v1, "rotation"

    .line 22
    .line 23
    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-wide/16 v0, 0x320

    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 30
    .line 31
    .line 32
    const/4 v0, -0x1

    .line 33
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    .line 37
    .line 38
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->P:Landroid/animation/ObjectAnimator;

    .line 48
    .line 49
    return-void

    .line 50
    nop

    .line 51
    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method private final d0(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->P:Landroid/animation/ObjectAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->P:Landroid/animation/ObjectAnimator;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final e0(J)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/transsion/baseui/util/j;->a(J)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 6
    .line 7
    iget-object p2, p2, Lwn/t;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 8
    .line 9
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private final f0(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 2
    .line 3
    const-string v1, "clHotComment"

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v2, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-ne v0, v2, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 33
    .line 34
    iget-object p1, p1, Lwn/t;->d:Lcom/noober/background/view/BLConstraintLayout;

    .line 35
    .line 36
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getHotComment()Lcom/transsion/moviedetailapi/bean/CommentBean;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getContent()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    const/4 v2, 0x0

    .line 55
    :goto_1
    const-string v3, "nsPostDes"

    .line 56
    .line 57
    if-eqz v2, :cond_b

    .line 58
    .line 59
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-nez v4, :cond_3

    .line 64
    .line 65
    goto/16 :goto_6

    .line 66
    .line 67
    :cond_3
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->W(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 68
    .line 69
    .line 70
    iget-object v4, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 71
    .line 72
    iget-object v4, v4, Lwn/t;->d:Lcom/noober/background/view/BLConstraintLayout;

    .line 73
    .line 74
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v4}, Luf/c;->k(Landroid/view/View;)V

    .line 78
    .line 79
    .line 80
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 81
    .line 82
    iget-object v1, v1, Lwn/t;->t:Lcom/transsion/baseui/widget/NestedScrollableHost;

    .line 83
    .line 84
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v1}, Luf/c;->g(Landroid/view/View;)V

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 91
    .line 92
    iget-object v1, v1, Lwn/t;->z:Landroidx/appcompat/widget/AppCompatTextView;

    .line 93
    .line 94
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getAvatarUrl()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    const-string v2, ""

    .line 102
    .line 103
    if-nez v1, :cond_4

    .line 104
    .line 105
    move-object v1, v2

    .line 106
    :cond_4
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    const-string v4, "getContext(...)"

    .line 111
    .line 112
    if-lez v3, :cond_5

    .line 113
    .line 114
    sget-object v3, Lni/f;->a:Lni/f$a;

    .line 115
    .line 116
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3, v5}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {v3, v1}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    const/16 v3, 0x14

    .line 132
    .line 133
    invoke-static {v3}, Llj/a;->b(I)I

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    invoke-virtual {v1, v5}, Lni/f$b;->m(I)Lni/f$b;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-static {v3}, Llj/a;->b(I)I

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    invoke-virtual {v1, v3}, Lni/f$b;->c(I)Lni/f$b;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    iget-object v3, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 150
    .line 151
    iget-object v3, v3, Lwn/t;->k:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 152
    .line 153
    const-string v5, "ivHotCommentAvatar"

    .line 154
    .line 155
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v3}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 159
    .line 160
    .line 161
    :cond_5
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 162
    .line 163
    iget-object v1, v1, Lwn/t;->B:Landroidx/appcompat/widget/AppCompatTextView;

    .line 164
    .line 165
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getLikeCnt()I

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    if-nez v3, :cond_6

    .line 170
    .line 171
    move-object v3, v2

    .line 172
    goto :goto_2

    .line 173
    :cond_6
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getLikeCnt()I

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    int-to-long v5, v3

    .line 178
    invoke-static {v5, v6}, Lcom/transsion/baseui/util/j;->a(J)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    .line 184
    .line 185
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 186
    .line 187
    iget-object v1, v1, Lwn/t;->m:Landroidx/appcompat/widget/AppCompatImageView;

    .line 188
    .line 189
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getLikeStatu()Ljava/lang/Boolean;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 194
    .line 195
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getImageList()Ljava/util/List;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    check-cast v1, Ljava/util/Collection;

    .line 207
    .line 208
    if-eqz v1, :cond_a

    .line 209
    .line 210
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    if-eqz v1, :cond_7

    .line 215
    .line 216
    goto :goto_4

    .line 217
    :cond_7
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 218
    .line 219
    iget-object v1, v1, Lwn/t;->f:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 220
    .line 221
    const/4 v3, 0x0

    .line 222
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 223
    .line 224
    .line 225
    sget-object v5, Lni/f;->a:Lni/f$a;

    .line 226
    .line 227
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 228
    .line 229
    .line 230
    move-result-object v6

    .line 231
    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v5, v6}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getImageList()Ljava/util/List;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    check-cast v3, Lcom/transsion/moviedetailapi/bean/Cover;

    .line 250
    .line 251
    if-eqz v3, :cond_9

    .line 252
    .line 253
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    if-nez v3, :cond_8

    .line 258
    .line 259
    goto :goto_3

    .line 260
    :cond_8
    move-object v2, v3

    .line 261
    :cond_9
    :goto_3
    invoke-virtual {v4, v2}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v2, v1}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 269
    .line 270
    .line 271
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    goto :goto_5

    .line 275
    :cond_a
    :goto_4
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 276
    .line 277
    iget-object v1, v1, Lwn/t;->f:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 278
    .line 279
    const-string v2, "commentCover"

    .line 280
    .line 281
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    invoke-static {v1}, Luf/c;->g(Landroid/view/View;)V

    .line 285
    .line 286
    .line 287
    :goto_5
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 288
    .line 289
    iget-object v1, v1, Lwn/t;->I:Landroid/view/View;

    .line 290
    .line 291
    new-instance v2, Lcom/transsion/postdetail/ui/view/l;

    .line 292
    .line 293
    invoke-direct {v2, p0, v0, p1}, Lcom/transsion/postdetail/ui/view/l;-><init>(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lcom/transsion/moviedetailapi/bean/CommentBean;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    const-string v1, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    .line 304
    .line 305
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    move-object v3, p1

    .line 309
    check-cast v3, Landroidx/appcompat/app/AppCompatActivity;

    .line 310
    .line 311
    new-instance v8, Lcom/transsion/postdetail/ui/view/m;

    .line 312
    .line 313
    invoke-direct {v8, v0, p0}, Lcom/transsion/postdetail/ui/view/m;-><init>(Lcom/transsion/moviedetailapi/bean/CommentBean;Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V

    .line 314
    .line 315
    .line 316
    sget-object p1, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 317
    .line 318
    const-class v0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 319
    .line 320
    invoke-virtual {p1, v0}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    move-object v2, p1

    .line 325
    check-cast v2, Lcom/transsnet/flow/event/FlowEventBus;

    .line 326
    .line 327
    const-class p1, Lrm/b;

    .line 328
    .line 329
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v4

    .line 333
    const-string p1, "getName(...)"

    .line 334
    .line 335
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    sget-object v5, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 339
    .line 340
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 341
    .line 342
    .line 343
    move-result-object p1

    .line 344
    invoke-virtual {p1}, Lkotlinx/coroutines/a2;->p()Lkotlinx/coroutines/a2;

    .line 345
    .line 346
    .line 347
    move-result-object v6

    .line 348
    const/4 v7, 0x0

    .line 349
    invoke-virtual/range {v2 .. v8}, Lcom/transsnet/flow/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    .line 350
    .line 351
    .line 352
    return-void

    .line 353
    :cond_b
    :goto_6
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 354
    .line 355
    iget-object p1, p1, Lwn/t;->d:Lcom/noober/background/view/BLConstraintLayout;

    .line 356
    .line 357
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 361
    .line 362
    .line 363
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 364
    .line 365
    iget-object p1, p1, Lwn/t;->t:Lcom/transsion/baseui/widget/NestedScrollableHost;

    .line 366
    .line 367
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 371
    .line 372
    .line 373
    return-void
.end method

.method private static final g0(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lcom/transsion/moviedetailapi/bean/CommentBean;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->A(Lcom/transsion/moviedetailapi/bean/CommentBean;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final getDownloadManager()Lcom/transsnet/downloader/manager/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->R:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsnet/downloader/manager/g;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getLoginApi()Lqx/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->s:Lkotlin/Lazy;

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

.method public static synthetic h(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lhx/c;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->K(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lhx/c;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final h0(Lcom/transsion/moviedetailapi/bean/CommentBean;Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lrm/b;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lrm/b;->a()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getCommentId()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p2}, Lrm/b;->c()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p0, v0}, Lcom/transsion/moviedetailapi/bean/CommentBean;->setLikeStatu(Ljava/lang/Boolean;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Lrm/b;->b()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p0, v0}, Lcom/transsion/moviedetailapi/bean/CommentBean;->setLikeCnt(I)V

    .line 36
    .line 37
    .line 38
    iget-object p0, p1, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 39
    .line 40
    iget-object p0, p0, Lwn/t;->B:Landroidx/appcompat/widget/AppCompatTextView;

    .line 41
    .line 42
    invoke-virtual {p2}, Lrm/b;->b()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_0

    .line 47
    .line 48
    const-string v0, ""

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p2}, Lrm/b;->b()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    int-to-long v0, v0

    .line 56
    invoke-static {v0, v1}, Lcom/transsion/baseui/util/j;->a(J)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    iget-object p0, p1, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 64
    .line 65
    iget-object p0, p0, Lwn/t;->m:Landroidx/appcompat/widget/AppCompatImageView;

    .line 66
    .line 67
    invoke-virtual {p2}, Lrm/b;->c()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 72
    .line 73
    .line 74
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 75
    .line 76
    return-object p0
.end method

.method public static synthetic i(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->R(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final i0(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 2
    .line 3
    iget-object v0, v0, Lwn/t;->C:Landroidx/appcompat/widget/AppCompatTextView;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getHasLike()Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getStat()Lcom/transsion/moviedetailapi/bean/Stat;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Stat;->getLikeCount()Ljava/lang/Long;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 33
    .line 34
    .line 35
    move-result-wide v1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const-wide/16 v1, 0x0

    .line 38
    .line 39
    :goto_1
    invoke-static {v1, v2}, Lcom/transsion/baseui/util/j;->a(J)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string v1, "0"

    .line 44
    .line 45
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    const-string p1, ""

    .line 52
    .line 53
    :cond_2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public static synthetic j()Lcom/transsnet/downloader/manager/g;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->w()Lcom/transsnet/downloader/manager/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final j0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 13
    .line 14
    iget-object v1, v1, Lwn/t;->o:Landroidx/appcompat/widget/AppCompatImageView;

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    sget-object v2, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->q(Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const/4 v3, 0x1

    .line 30
    if-eqz v2, :cond_4

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eq v2, v3, :cond_3

    .line 37
    .line 38
    const/4 v4, 0x2

    .line 39
    if-eq v2, v4, :cond_3

    .line 40
    .line 41
    const/4 v4, 0x3

    .line 42
    if-eq v2, v4, :cond_3

    .line 43
    .line 44
    const/4 v4, 0x5

    .line 45
    if-eq v2, v4, :cond_2

    .line 46
    .line 47
    invoke-direct {p0, v1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->d0(Landroid/view/View;)V

    .line 48
    .line 49
    .line 50
    sget v0, Lcom/transsion/postdetail/R$mipmap;->post_detail_ic_video_download_new:I

    .line 51
    .line 52
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    invoke-direct {p0, v1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->d0(Landroid/view/View;)V

    .line 63
    .line 64
    .line 65
    sget v2, Lcom/transsion/postdetail/R$drawable;->post_detail_ic_video_downloaded:I

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 71
    .line 72
    .line 73
    new-instance v2, Lcom/transsion/postdetail/ui/view/n;

    .line 74
    .line 75
    invoke-direct {v2, p0, v0}, Lcom/transsion/postdetail/ui/view/n;-><init>(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    sget v0, Lcom/transsion/postdetail/R$drawable;->post_detail_ic_video_downloading:I

    .line 83
    .line 84
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 85
    .line 86
    .line 87
    const/4 v0, 0x0

    .line 88
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 89
    .line 90
    .line 91
    invoke-direct {p0, v1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->c0(Landroid/view/View;)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_4
    invoke-direct {p0, v1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->d0(Landroid/view/View;)V

    .line 96
    .line 97
    .line 98
    sget v0, Lcom/transsion/postdetail/R$mipmap;->post_detail_ic_video_download_new:I

    .line 99
    .line 100
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    .line 108
    .line 109
    :cond_5
    :goto_0
    return-void
.end method

.method public static synthetic k(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->J(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final k0(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Ljava/lang/String;Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object p2, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 4
    .line 5
    const-string v1, "postdetail_video"

    .line 6
    .line 7
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->H:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p2, v0, v1, v2}, Lcom/transsion/postdetail/helper/a;->k(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string p2, "/download/panel_activity"

    .line 13
    .line 14
    invoke-static {p2}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const-string v0, "extra_page_index"

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {p2, v0, v1}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    const-string v0, "extra_target_resource_id"

    .line 26
    .line 27
    invoke-virtual {p2, v0, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const/4 p2, 0x0

    .line 36
    const/4 v0, 0x2

    .line 37
    invoke-static {p1, p0, p2, v0, p2}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public static synthetic l(Lcom/transsion/moviedetailapi/bean/CommentBean;Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lrm/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->h0(Lcom/transsion/moviedetailapi/bean/CommentBean;Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lrm/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final l0(J)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/transsion/baseui/util/j;->a(J)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 6
    .line 7
    iget-object p2, p2, Lwn/t;->E:Landroidx/appcompat/widget/AppCompatTextView;

    .line 8
    .line 9
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static synthetic m(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lcom/transsnet/flow/event/sync/event/LikeEvent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->M(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lcom/transsnet/flow/event/sync/event/LikeEvent;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final m0()V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 4
    .line 5
    const-string v3, "tvFavorite"

    .line 6
    .line 7
    const-string v4, "ivVideoAvatar"

    .line 8
    .line 9
    const-string v5, "ivDownload"

    .line 10
    .line 11
    const-string v6, "tvShortTvEp"

    .line 12
    .line 13
    const-string v7, "tvTitle"

    .line 14
    .line 15
    const-string v8, "ivShortCover"

    .line 16
    .line 17
    if-eqz v2, :cond_b

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_b

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    sget-object v9, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    .line 30
    .line 31
    invoke-virtual {v9}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 32
    .line 33
    .line 34
    move-result v9

    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    goto/16 :goto_5

    .line 38
    .line 39
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-ne v2, v9, :cond_b

    .line 44
    .line 45
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 46
    .line 47
    iget-object v2, v2, Lwn/t;->r:Lwn/z;

    .line 48
    .line 49
    invoke-virtual {v2}, Lwn/z;->b()Lcom/noober/background/view/BLLinearLayout;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const-string v9, "getRoot(...)"

    .line 54
    .line 55
    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v2}, Luf/c;->g(Landroid/view/View;)V

    .line 59
    .line 60
    .line 61
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 62
    .line 63
    iget-object v2, v2, Lwn/t;->q:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 64
    .line 65
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-static {v2}, Luf/c;->g(Landroid/view/View;)V

    .line 69
    .line 70
    .line 71
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 72
    .line 73
    iget-object v2, v2, Lwn/t;->j:Landroidx/appcompat/widget/AppCompatImageView;

    .line 74
    .line 75
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v2}, Luf/c;->k(Landroid/view/View;)V

    .line 79
    .line 80
    .line 81
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 82
    .line 83
    iget-object v2, v2, Lwn/t;->G:Landroidx/appcompat/widget/AppCompatTextView;

    .line 84
    .line 85
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-static {v2}, Luf/c;->k(Landroid/view/View;)V

    .line 89
    .line 90
    .line 91
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 92
    .line 93
    iget-object v2, v2, Lwn/t;->F:Lcom/noober/background/view/BLTextView;

    .line 94
    .line 95
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-static {v2}, Luf/c;->k(Landroid/view/View;)V

    .line 99
    .line 100
    .line 101
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 102
    .line 103
    iget-object v2, v2, Lwn/t;->p:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 104
    .line 105
    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-static {v2}, Luf/c;->k(Landroid/view/View;)V

    .line 109
    .line 110
    .line 111
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 112
    .line 113
    iget-object v2, v2, Lwn/t;->G:Landroidx/appcompat/widget/AppCompatTextView;

    .line 114
    .line 115
    iget-object v4, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 116
    .line 117
    const/4 v5, 0x0

    .line 118
    if-eqz v4, :cond_1

    .line 119
    .line 120
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    if-eqz v4, :cond_1

    .line 125
    .line 126
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    goto :goto_0

    .line 131
    :cond_1
    move-object v4, v5

    .line 132
    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    .line 134
    .line 135
    sget-object v2, Lcom/transsion/postdetail/util/s;->a:Lcom/transsion/postdetail/util/s;

    .line 136
    .line 137
    iget-object v4, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 138
    .line 139
    if-eqz v4, :cond_2

    .line 140
    .line 141
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    if-eqz v4, :cond_2

    .line 146
    .line 147
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Subject;->getShortTVFirstEp()Lcom/transsion/moviedetailapi/bean/ShortTVItem;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    if-eqz v4, :cond_2

    .line 152
    .line 153
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/ShortTVItem;->getEp()I

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    goto :goto_1

    .line 158
    :cond_2
    move v4, v1

    .line 159
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    invoke-virtual {v2, v4}, Lcom/transsion/postdetail/util/s;->a(Ljava/lang/Integer;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    iget-object v4, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 167
    .line 168
    if-eqz v4, :cond_3

    .line 169
    .line 170
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    if-eqz v4, :cond_3

    .line 175
    .line 176
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Subject;->getTotalEpisode()I

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    goto :goto_2

    .line 181
    :cond_3
    move v4, v0

    .line 182
    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    invoke-virtual {v2, v4}, Lcom/transsion/postdetail/util/s;->a(Ljava/lang/Integer;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    iget-object v4, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 191
    .line 192
    iget-object v4, v4, Lwn/t;->F:Lcom/noober/background/view/BLTextView;

    .line 193
    .line 194
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    sget v7, Lcom/transsion/postdetail/R$string;->short_tv_play_all:I

    .line 199
    .line 200
    new-array v9, v1, [Ljava/lang/Object;

    .line 201
    .line 202
    aput-object v2, v9, v0

    .line 203
    .line 204
    invoke-virtual {v6, v7, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    .line 210
    .line 211
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 212
    .line 213
    iget-object v2, v2, Lwn/t;->F:Lcom/noober/background/view/BLTextView;

    .line 214
    .line 215
    invoke-static {v2}, Lcom/transsion/baseui/widget/jumpingbeans/a;->a(Landroid/widget/TextView;)Lcom/transsion/baseui/widget/jumpingbeans/a$a;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    iget-object v4, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 220
    .line 221
    iget-object v4, v4, Lwn/t;->F:Lcom/noober/background/view/BLTextView;

    .line 222
    .line 223
    invoke-virtual {v4}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 232
    .line 233
    .line 234
    move-result v4

    .line 235
    invoke-virtual {v2, v0, v4}, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->e(II)Lcom/transsion/baseui/widget/jumpingbeans/a$a;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {v0, v1}, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->g(Z)Lcom/transsion/baseui/widget/jumpingbeans/a$a;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    const/16 v2, 0x64

    .line 244
    .line 245
    invoke-virtual {v0, v2}, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->i(I)Lcom/transsion/baseui/widget/jumpingbeans/a$a;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    const v2, 0x3d4ccccd    # 0.05f

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, v2}, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->f(F)Lcom/transsion/baseui/widget/jumpingbeans/a$a;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    const/16 v2, 0x2710

    .line 257
    .line 258
    invoke-virtual {v0, v2}, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->h(I)Lcom/transsion/baseui/widget/jumpingbeans/a$a;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-virtual {v0}, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->a()Lcom/transsion/baseui/widget/jumpingbeans/a;

    .line 263
    .line 264
    .line 265
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 266
    .line 267
    iget-object v0, v0, Lwn/t;->p:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 268
    .line 269
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 270
    .line 271
    if-eqz v0, :cond_4

    .line 272
    .line 273
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getBuiltIn()Z

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    if-ne v0, v1, :cond_4

    .line 278
    .line 279
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 284
    .line 285
    .line 286
    move-result-object v6

    .line 287
    new-instance v9, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$updateShortTVInfo$1;

    .line 288
    .line 289
    invoke-direct {v9, p0, v5}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$updateShortTVInfo$1;-><init>(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lkotlin/coroutines/Continuation;)V

    .line 290
    .line 291
    .line 292
    const/4 v10, 0x3

    .line 293
    const/4 v11, 0x0

    .line 294
    const/4 v7, 0x0

    .line 295
    const/4 v8, 0x0

    .line 296
    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 297
    .line 298
    .line 299
    goto :goto_3

    .line 300
    :cond_4
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 301
    .line 302
    if-eqz v0, :cond_7

    .line 303
    .line 304
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    if-eqz v0, :cond_7

    .line 309
    .line 310
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    if-eqz v0, :cond_7

    .line 315
    .line 316
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    if-eqz v0, :cond_7

    .line 321
    .line 322
    sget-object v2, Lni/f;->a:Lni/f$a;

    .line 323
    .line 324
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 325
    .line 326
    .line 327
    move-result-object v4

    .line 328
    const-string v6, "getContext(...)"

    .line 329
    .line 330
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v2, v4}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    invoke-virtual {v2, v0}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    const/high16 v2, 0x41a80000    # 21.0f

    .line 342
    .line 343
    invoke-static {v2}, Lcom/blankj/utilcode/util/i;->e(F)I

    .line 344
    .line 345
    .line 346
    move-result v2

    .line 347
    invoke-virtual {v0, v2}, Lni/f$b;->m(I)Lni/f$b;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    const/high16 v2, 0x41f00000    # 30.0f

    .line 352
    .line 353
    invoke-static {v2}, Lcom/blankj/utilcode/util/i;->e(F)I

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    invoke-virtual {v0, v2}, Lni/f$b;->c(I)Lni/f$b;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 362
    .line 363
    if-eqz v2, :cond_5

    .line 364
    .line 365
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    if-eqz v2, :cond_5

    .line 370
    .line 371
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    if-eqz v2, :cond_5

    .line 376
    .line 377
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v2

    .line 381
    if-nez v2, :cond_6

    .line 382
    .line 383
    :cond_5
    const-string v2, ""

    .line 384
    .line 385
    :cond_6
    invoke-virtual {v0, v2}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    invoke-virtual {v0, v1}, Lni/f$b;->h(Z)Lni/f$b;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 394
    .line 395
    iget-object v1, v1, Lwn/t;->p:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 396
    .line 397
    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v0, v1}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 401
    .line 402
    .line 403
    :cond_7
    :goto_3
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 404
    .line 405
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 406
    .line 407
    .line 408
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 409
    .line 410
    if-eqz v1, :cond_8

    .line 411
    .line 412
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 413
    .line 414
    .line 415
    move-result-object v1

    .line 416
    if-eqz v1, :cond_8

    .line 417
    .line 418
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getShortTVFavInfo()Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;

    .line 419
    .line 420
    .line 421
    move-result-object v5

    .line 422
    :cond_8
    iput-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 423
    .line 424
    const-string v1, "0"

    .line 425
    .line 426
    if-nez v5, :cond_9

    .line 427
    .line 428
    new-instance v2, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;

    .line 429
    .line 430
    const/4 v10, 0x7

    .line 431
    const/4 v11, 0x0

    .line 432
    const/4 v7, 0x0

    .line 433
    const/4 v8, 0x0

    .line 434
    const/4 v9, 0x0

    .line 435
    move-object v6, v2

    .line 436
    invoke-direct/range {v6 .. v11}, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v2, v1}, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;->setFavoriteNum(Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    iput-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 443
    .line 444
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 445
    .line 446
    if-eqz v2, :cond_9

    .line 447
    .line 448
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 449
    .line 450
    .line 451
    move-result-object v2

    .line 452
    if-eqz v2, :cond_9

    .line 453
    .line 454
    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 455
    .line 456
    check-cast v4, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;

    .line 457
    .line 458
    invoke-virtual {v2, v4}, Lcom/transsion/moviedetailapi/bean/Subject;->setShortTVFavInfo(Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;)V

    .line 459
    .line 460
    .line 461
    :cond_9
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 462
    .line 463
    iget-object v2, v2, Lwn/t;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 464
    .line 465
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    invoke-static {v2}, Luf/c;->k(Landroid/view/View;)V

    .line 469
    .line 470
    .line 471
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 472
    .line 473
    iget-object v2, v2, Lwn/t;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 474
    .line 475
    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 476
    .line 477
    check-cast v3, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;

    .line 478
    .line 479
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;->getHasFavorite()Z

    .line 480
    .line 481
    .line 482
    move-result v3

    .line 483
    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 484
    .line 485
    .line 486
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 487
    .line 488
    iget-object v2, v2, Lwn/t;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 489
    .line 490
    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 491
    .line 492
    check-cast v3, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;

    .line 493
    .line 494
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;->getFavoriteNum()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v3

    .line 498
    if-nez v3, :cond_a

    .line 499
    .line 500
    goto :goto_4

    .line 501
    :cond_a
    move-object v1, v3

    .line 502
    :goto_4
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 503
    .line 504
    .line 505
    move-result-wide v3

    .line 506
    invoke-static {v3, v4}, Lcom/transsion/baseui/util/j;->a(J)Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v1

    .line 510
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    .line 512
    .line 513
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 514
    .line 515
    iget-object v1, v1, Lwn/t;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 516
    .line 517
    new-instance v2, Lcom/transsion/postdetail/ui/view/o;

    .line 518
    .line 519
    invoke-direct {v2, p0, v0}, Lcom/transsion/postdetail/ui/view/o;-><init>(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 523
    .line 524
    .line 525
    return-void

    .line 526
    :cond_b
    :goto_5
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 527
    .line 528
    iget-object v0, v0, Lwn/t;->G:Landroidx/appcompat/widget/AppCompatTextView;

    .line 529
    .line 530
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 534
    .line 535
    .line 536
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 537
    .line 538
    iget-object v0, v0, Lwn/t;->F:Lcom/noober/background/view/BLTextView;

    .line 539
    .line 540
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 544
    .line 545
    .line 546
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 547
    .line 548
    iget-object v0, v0, Lwn/t;->p:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 549
    .line 550
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 551
    .line 552
    .line 553
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 554
    .line 555
    .line 556
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 557
    .line 558
    iget-object v0, v0, Lwn/t;->j:Landroidx/appcompat/widget/AppCompatImageView;

    .line 559
    .line 560
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 561
    .line 562
    .line 563
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 564
    .line 565
    .line 566
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 567
    .line 568
    iget-object v0, v0, Lwn/t;->q:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 569
    .line 570
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 571
    .line 572
    .line 573
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 574
    .line 575
    .line 576
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 577
    .line 578
    iget-object v0, v0, Lwn/t;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 579
    .line 580
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 581
    .line 582
    .line 583
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 584
    .line 585
    .line 586
    return-void
.end method

.method public static synthetic n(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->V(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final n0(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/transsion/postdetail/shorttv/k;->a:Lcom/transsion/postdetail/shorttv/k;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 4
    .line 5
    const/4 v7, 0x0

    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    move-object v1, p2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v1, v7

    .line 21
    :goto_0
    iget-object p2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 22
    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    move-object v2, p2

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move-object v2, v7

    .line 38
    :goto_1
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;->getHasFavorite()Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    const-string v5, "postdetail_video"

    .line 47
    .line 48
    iget-object v6, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->H:Ljava/lang/String;

    .line 49
    .line 50
    const-string v3, ""

    .line 51
    .line 52
    invoke-virtual/range {v0 .. v6}, Lcom/transsion/postdetail/shorttv/k;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->d:Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    .line 56
    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    iget-object p0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 60
    .line 61
    if-eqz p0, :cond_2

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    :cond_2
    invoke-virtual {p1, v7}, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->d(Lcom/transsion/moviedetailapi/bean/Subject;)V

    .line 68
    .line 69
    .line 70
    :cond_3
    return-void
.end method

.method public static synthetic o(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->k0(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Ljava/lang/String;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final o0(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move v0, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    move v1, v2

    .line 19
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->setBottomSubjectAndRoomVisibility(ZZ)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->setBottomSubjectModuleData(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 29
    .line 30
    .line 31
    :cond_2
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_5

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Group;->getName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    goto :goto_1

    .line 48
    :cond_3
    const/4 v0, 0x0

    .line 49
    :goto_1
    if-eqz v0, :cond_5

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_4

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_4
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->setBottomRoomModuleData(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 59
    .line 60
    .line 61
    :cond_5
    :goto_2
    return-void
.end method

.method public static synthetic p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->n0(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final p0(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 14

    .line 1
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getBuiltIn()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    new-instance v5, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$updateVideoInfo$1;

    .line 17
    .line 18
    invoke-direct {v5, p1, p0, v1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$updateVideoInfo$1;-><init>(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lkotlin/coroutines/Continuation;)V

    .line 19
    .line 20
    .line 21
    const/4 v6, 0x3

    .line 22
    const/4 v7, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    new-instance v5, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$updateVideoInfo$2;

    .line 37
    .line 38
    invoke-direct {v5, p1, p0, v1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$updateVideoInfo$2;-><init>(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lkotlin/coroutines/Continuation;)V

    .line 39
    .line 40
    .line 41
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 42
    .line 43
    .line 44
    sget-object v8, Lwf/a;->a:Lwf/a$a;

    .line 45
    .line 46
    iget-object v9, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->a:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Media;->getFirstFrame()Lcom/transsion/moviedetailapi/bean/FirstFrame;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/FirstFrame;->getUrl()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    move-object v0, v1

    .line 66
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getUser()Lcom/transsion/moviedetailapi/bean/User;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    if-eqz v2, :cond_1

    .line 71
    .line 72
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/User;->getAvatar()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    goto :goto_1

    .line 77
    :cond_1
    move-object v2, v1

    .line 78
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v4, "set info - firstFrame = "

    .line 84
    .line 85
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v0, ", avatar = "

    .line 92
    .line 93
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v10

    .line 103
    const/4 v12, 0x4

    .line 104
    const/4 v13, 0x0

    .line 105
    const/4 v11, 0x0

    .line 106
    invoke-static/range {v8 .. v13}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    goto/16 :goto_2

    .line 110
    .line 111
    :cond_2
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    if-eqz v0, :cond_3

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Media;->getFirstFrame()Lcom/transsion/moviedetailapi/bean/FirstFrame;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    if-eqz v0, :cond_3

    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/FirstFrame;->getUrl()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    if-eqz v3, :cond_3

    .line 128
    .line 129
    sget-object v2, Lni/f;->a:Lni/f$a;

    .line 130
    .line 131
    sget-object v0, Lsm/b;->e:Lsm/b$a;

    .line 132
    .line 133
    invoke-virtual {v0}, Lsm/b$a;->a()I

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    const/16 v7, 0xc

    .line 138
    .line 139
    const/4 v8, 0x0

    .line 140
    const/4 v5, 0x0

    .line 141
    const/4 v6, 0x0

    .line 142
    invoke-static/range {v2 .. v8}, Lni/f$a;->e(Lni/f$a;Ljava/lang/String;IZZILjava/lang/Object;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 159
    .line 160
    iget-object v2, v2, Lwn/t;->i:Landroidx/appcompat/widget/AppCompatImageView;

    .line 161
    .line 162
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 163
    .line 164
    .line 165
    :cond_3
    sget-object v0, Lni/f;->a:Lni/f$a;

    .line 166
    .line 167
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    const-string v3, "getContext(...)"

    .line 172
    .line 173
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v2}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getUser()Lcom/transsion/moviedetailapi/bean/User;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    if-eqz v2, :cond_4

    .line 185
    .line 186
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/User;->getAvatar()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    if-nez v2, :cond_5

    .line 191
    .line 192
    :cond_4
    const-string v2, ""

    .line 193
    .line 194
    :cond_5
    invoke-virtual {v0, v2}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 199
    .line 200
    iget-object v2, v2, Lwn/t;->q:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 201
    .line 202
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    invoke-virtual {v0, v2}, Lni/f$b;->m(I)Lni/f$b;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 211
    .line 212
    iget-object v2, v2, Lwn/t;->q:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 213
    .line 214
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    invoke-virtual {v0, v2}, Lni/f$b;->c(I)Lni/f$b;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 223
    .line 224
    iget-object v2, v2, Lwn/t;->q:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 225
    .line 226
    const-string v3, "ivVideoAvatar"

    .line 227
    .line 228
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, v2}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 232
    .line 233
    .line 234
    :goto_2
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 235
    .line 236
    const-string v2, "ivSave"

    .line 237
    .line 238
    const-string v3, "nsPostDes"

    .line 239
    .line 240
    if-eqz v0, :cond_7

    .line 241
    .line 242
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    if-eqz v0, :cond_7

    .line 247
    .line 248
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    sget-object v4, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    .line 253
    .line 254
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 255
    .line 256
    .line 257
    move-result v4

    .line 258
    if-nez v0, :cond_6

    .line 259
    .line 260
    goto :goto_3

    .line 261
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    if-ne v0, v4, :cond_7

    .line 266
    .line 267
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 268
    .line 269
    iget-object p1, p1, Lwn/t;->G:Landroidx/appcompat/widget/AppCompatTextView;

    .line 270
    .line 271
    const/high16 v0, 0x41900000    # 18.0f

    .line 272
    .line 273
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 274
    .line 275
    .line 276
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 277
    .line 278
    iget-object p1, p1, Lwn/t;->t:Lcom/transsion/baseui/widget/NestedScrollableHost;

    .line 279
    .line 280
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 284
    .line 285
    .line 286
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 287
    .line 288
    iget-object p1, p1, Lwn/t;->o:Landroidx/appcompat/widget/AppCompatImageView;

    .line 289
    .line 290
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 294
    .line 295
    .line 296
    goto/16 :goto_a

    .line 297
    .line 298
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 299
    .line 300
    iget-object v0, v0, Lwn/t;->t:Lcom/transsion/baseui/widget/NestedScrollableHost;

    .line 301
    .line 302
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 306
    .line 307
    .line 308
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 309
    .line 310
    iget-object v0, v0, Lwn/t;->o:Landroidx/appcompat/widget/AppCompatImageView;

    .line 311
    .line 312
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 316
    .line 317
    .line 318
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->j0()V

    .line 319
    .line 320
    .line 321
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 322
    .line 323
    iget-object v0, v0, Lwn/t;->G:Landroidx/appcompat/widget/AppCompatTextView;

    .line 324
    .line 325
    const/high16 v2, 0x41800000    # 16.0f

    .line 326
    .line 327
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 328
    .line 329
    .line 330
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 331
    .line 332
    iget-object v0, v0, Lwn/t;->g:Lcom/tn/lib/view/expand/ExpandView;

    .line 333
    .line 334
    new-instance v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 335
    .line 336
    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 337
    .line 338
    .line 339
    const/4 v2, 0x1

    .line 340
    iput-boolean v2, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 341
    .line 342
    new-instance v2, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$g;

    .line 343
    .line 344
    invoke-direct {v2, v4}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$g;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0, v2}, Lcom/tn/lib/view/expand/ExpandView;->setExpandListener(Lcom/tn/lib/view/expand/ExpandView$c;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getTitle()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v2

    .line 354
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 355
    .line 356
    .line 357
    move-result v2

    .line 358
    if-eqz v2, :cond_9

    .line 359
    .line 360
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getContent()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v2

    .line 364
    if-eqz v2, :cond_8

    .line 365
    .line 366
    invoke-static {v2}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 367
    .line 368
    .line 369
    move-result-object v2

    .line 370
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v2

    .line 374
    goto :goto_6

    .line 375
    :cond_8
    move-object v2, v1

    .line 376
    goto :goto_6

    .line 377
    :cond_9
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getContent()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v2

    .line 381
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 382
    .line 383
    .line 384
    move-result v2

    .line 385
    if-eqz v2, :cond_a

    .line 386
    .line 387
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getTitle()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v2

    .line 391
    if-eqz v2, :cond_8

    .line 392
    .line 393
    invoke-static {v2}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v2

    .line 401
    goto :goto_6

    .line 402
    :cond_a
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getTitle()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v2

    .line 406
    if-eqz v2, :cond_b

    .line 407
    .line 408
    invoke-static {v2}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 409
    .line 410
    .line 411
    move-result-object v2

    .line 412
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v2

    .line 416
    goto :goto_4

    .line 417
    :cond_b
    move-object v2, v1

    .line 418
    :goto_4
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getContent()Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v3

    .line 422
    if-eqz v3, :cond_c

    .line 423
    .line 424
    invoke-static {v3}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 425
    .line 426
    .line 427
    move-result-object v3

    .line 428
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v3

    .line 432
    goto :goto_5

    .line 433
    :cond_c
    move-object v3, v1

    .line 434
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    .line 435
    .line 436
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    const-string v2, "\n"

    .line 443
    .line 444
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v2

    .line 454
    :goto_6
    iget-object v3, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 455
    .line 456
    if-eqz v3, :cond_e

    .line 457
    .line 458
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 459
    .line 460
    .line 461
    move-result-object v3

    .line 462
    if-eqz v3, :cond_e

    .line 463
    .line 464
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 465
    .line 466
    .line 467
    move-result-object v3

    .line 468
    sget-object v5, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    .line 469
    .line 470
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 471
    .line 472
    .line 473
    move-result v5

    .line 474
    if-nez v3, :cond_d

    .line 475
    .line 476
    goto :goto_7

    .line 477
    :cond_d
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 478
    .line 479
    .line 480
    move-result v3

    .line 481
    if-ne v3, v5, :cond_e

    .line 482
    .line 483
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 484
    .line 485
    .line 486
    move-result-object v2

    .line 487
    if-eqz v2, :cond_f

    .line 488
    .line 489
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getDescription()Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v1

    .line 493
    goto :goto_8

    .line 494
    :cond_e
    :goto_7
    move-object v1, v2

    .line 495
    :cond_f
    :goto_8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 496
    .line 497
    .line 498
    move-result v2

    .line 499
    if-eqz v2, :cond_10

    .line 500
    .line 501
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 502
    .line 503
    .line 504
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 505
    .line 506
    .line 507
    goto :goto_9

    .line 508
    :cond_10
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 509
    .line 510
    .line 511
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 512
    .line 513
    .line 514
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 515
    .line 516
    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 517
    .line 518
    .line 519
    new-instance v8, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$h;

    .line 520
    .line 521
    invoke-direct {v8, v5}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$h;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 522
    .line 523
    .line 524
    new-instance v9, Lcom/transsion/postdetail/ui/view/k;

    .line 525
    .line 526
    move-object v2, v9

    .line 527
    move-object v3, v0

    .line 528
    move-object v6, p1

    .line 529
    move-object v7, p0

    .line 530
    invoke-direct/range {v2 .. v7}, Lcom/transsion/postdetail/ui/view/k;-><init>(Lcom/tn/lib/view/expand/ExpandView;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V

    .line 531
    .line 532
    .line 533
    const/4 p1, 0x0

    .line 534
    invoke-static {v0, v1, p1, v8, v9}, Lcom/transsion/baseui/util/l;->b(Landroid/widget/TextView;Ljava/lang/CharSequence;ZLcom/transsion/baseui/util/g;Lkotlin/jvm/functions/Function2;)Landroid/text/SpannableString;

    .line 535
    .line 536
    .line 537
    move-result-object p1

    .line 538
    invoke-virtual {v0, p1}, Lcom/tn/lib/view/expand/ExpandView;->setTitle(Ljava/lang/CharSequence;)V

    .line 539
    .line 540
    .line 541
    :goto_9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 542
    .line 543
    .line 544
    :goto_a
    return-void
.end method

.method public static synthetic q(Lcom/tn/lib/view/expand/ExpandView;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Landroid/view/View;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->q0(Lcom/tn/lib/view/expand/ExpandView;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Landroid/view/View;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final q0(Lcom/tn/lib/view/expand/ExpandView;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Landroid/view/View;Ljava/lang/String;)Lkotlin/Unit;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p5

    .line 5
    invoke-interface {p5}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result p5

    .line 9
    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    iget-object p1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p1, Ljava/util/List;

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    check-cast p1, Ljava/lang/Iterable;

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    move p2, v1

    .line 28
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_3

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lcom/transsion/baseui/util/UrlContent;

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/transsion/baseui/util/UrlContent;->getIndexOfUrl()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-virtual {v2}, Lcom/transsion/baseui/util/UrlContent;->getIndexOfUrl()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    invoke-virtual {v2}, Lcom/transsion/baseui/util/UrlContent;->getUrl()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    add-int/2addr v4, v2

    .line 57
    if-gt v3, p5, :cond_0

    .line 58
    .line 59
    if-ge v4, p5, :cond_1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    if-gt v3, p5, :cond_0

    .line 63
    .line 64
    add-int/lit8 v4, v4, 0x1

    .line 65
    .line 66
    if-ge p5, v4, :cond_0

    .line 67
    .line 68
    move p2, v0

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    move p2, v1

    .line 71
    :cond_3
    if-eqz p2, :cond_4

    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    .line 74
    .line 75
    .line 76
    goto/16 :goto_7

    .line 77
    .line 78
    :cond_4
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-eqz p1, :cond_6

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    if-eqz p1, :cond_6

    .line 89
    .line 90
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-lez p1, :cond_5

    .line 95
    .line 96
    move p1, v0

    .line 97
    goto :goto_1

    .line 98
    :cond_5
    move p1, v1

    .line 99
    :goto_1
    if-ne p1, v0, :cond_6

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_6
    move v0, v1

    .line 103
    :goto_2
    const/4 p1, 0x0

    .line 104
    if-eqz v0, :cond_b

    .line 105
    .line 106
    sget-object p2, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    .line 107
    .line 108
    invoke-virtual {p2}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    const-string p2, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    .line 117
    .line 118
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    move-object v1, p0

    .line 122
    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    .line 123
    .line 124
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-static {p6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    iget-object p0, p4, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 132
    .line 133
    if-eqz p0, :cond_7

    .line 134
    .line 135
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getOps()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    move-object v5, p0

    .line 140
    goto :goto_3

    .line 141
    :cond_7
    move-object v5, p1

    .line 142
    :goto_3
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    if-eqz p0, :cond_9

    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    if-eqz p0, :cond_9

    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getResourceLink()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    if-nez p0, :cond_8

    .line 159
    .line 160
    goto :goto_5

    .line 161
    :cond_8
    :goto_4
    move-object v6, p0

    .line 162
    goto :goto_6

    .line 163
    :cond_9
    :goto_5
    const-string p0, ""

    .line 164
    .line 165
    goto :goto_4

    .line 166
    :goto_6
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getUser()Lcom/transsion/moviedetailapi/bean/User;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    if-eqz p0, :cond_a

    .line 171
    .line 172
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/User;->getNickname()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    :cond_a
    move-object v7, p1

    .line 177
    const-string v4, "post_video_detail"

    .line 178
    .line 179
    move-object v3, p6

    .line 180
    invoke-virtual/range {v0 .. v7}, Lcom/transsnet/downloader/DownloadManagerApi;->U(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    goto :goto_7

    .line 184
    :cond_b
    const-string p2, "/web/web"

    .line 185
    .line 186
    invoke-static {p2}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    const-string p3, "url"

    .line 191
    .line 192
    invoke-virtual {p2, p3, p6}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    const/4 p3, 0x2

    .line 201
    invoke-static {p2, p0, p1, p3, p1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    :goto_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 205
    .line 206
    return-object p0
.end method

.method public static synthetic r(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lcom/transsion/moviedetailapi/bean/CommentBean;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g0(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lcom/transsion/moviedetailapi/bean/CommentBean;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic s(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->D(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final setBottomRoomModuleData(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 2
    .line 3
    iget-object v0, v0, Lwn/t;->r:Lwn/z;

    .line 4
    .line 5
    iget-object v0, v0, Lwn/z;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Group;->getName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v1, v2

    .line 20
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    sget-object v0, Lni/f;->a:Lni/f$a;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v3, "getContext(...)"

    .line 30
    .line 31
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Group;->getAvatar()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    if-nez v1, :cond_4

    .line 49
    .line 50
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Group;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    :cond_2
    if-nez v2, :cond_3

    .line 67
    .line 68
    const-string v1, ""

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    move-object v1, v2

    .line 72
    :cond_4
    :goto_1
    invoke-virtual {v0, v1}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const/16 v0, 0x20

    .line 77
    .line 78
    invoke-static {v0}, Llj/a;->b(I)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-virtual {p1, v1}, Lni/f$b;->m(I)Lni/f$b;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {v0}, Llj/a;->b(I)I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    invoke-virtual {p1, v0}, Lni/f$b;->c(I)Lni/f$b;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 95
    .line 96
    iget-object v0, v0, Lwn/t;->r:Lwn/z;

    .line 97
    .line 98
    iget-object v0, v0, Lwn/z;->c:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 99
    .line 100
    const-string v1, "ivRoomCover"

    .line 101
    .line 102
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v0}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method private final setBottomSubjectAndRoomVisibility(ZZ)V
    .locals 7

    .line 1
    sget-object v0, Lij/g;->a:Lij/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lij/g;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "llRoomTag"

    .line 8
    .line 9
    const-string v2, "vSubjectRoomLine"

    .line 10
    .line 11
    const-string v3, "clSubjectContent"

    .line 12
    .line 13
    const-string v4, "getRoot(...)"

    .line 14
    .line 15
    const/16 v5, 0x8

    .line 16
    .line 17
    const/4 v6, 0x0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 21
    .line 22
    iget-object p1, p1, Lwn/t;->r:Lwn/z;

    .line 23
    .line 24
    invoke-virtual {p1}, Lwn/z;->b()Lcom/noober/background/view/BLLinearLayout;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    if-eqz p2, :cond_0

    .line 32
    .line 33
    move v0, v6

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v0, v5

    .line 36
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 40
    .line 41
    iget-object p1, p1, Lwn/t;->r:Lwn/z;

    .line 42
    .line 43
    iget-object p1, p1, Lwn/z;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 44
    .line 45
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 52
    .line 53
    iget-object p1, p1, Lwn/t;->r:Lwn/z;

    .line 54
    .line 55
    iget-object p1, p1, Lwn/z;->m:Landroid/view/View;

    .line 56
    .line 57
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 64
    .line 65
    iget-object p1, p1, Lwn/t;->r:Lwn/z;

    .line 66
    .line 67
    iget-object p1, p1, Lwn/z;->f:Landroid/widget/LinearLayout;

    .line 68
    .line 69
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    if-eqz p2, :cond_1

    .line 73
    .line 74
    move v5, v6

    .line 75
    :cond_1
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_2
    if-eqz p1, :cond_5

    .line 80
    .line 81
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 82
    .line 83
    iget-object p1, p1, Lwn/t;->r:Lwn/z;

    .line 84
    .line 85
    invoke-virtual {p1}, Lwn/z;->b()Lcom/noober/background/view/BLLinearLayout;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 96
    .line 97
    iget-object p1, p1, Lwn/t;->r:Lwn/z;

    .line 98
    .line 99
    iget-object p1, p1, Lwn/z;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 100
    .line 101
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 108
    .line 109
    iget-object p1, p1, Lwn/t;->r:Lwn/z;

    .line 110
    .line 111
    iget-object p1, p1, Lwn/z;->m:Landroid/view/View;

    .line 112
    .line 113
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    if-eqz p2, :cond_3

    .line 117
    .line 118
    move v0, v6

    .line 119
    goto :goto_1

    .line 120
    :cond_3
    move v0, v5

    .line 121
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 125
    .line 126
    iget-object p1, p1, Lwn/t;->r:Lwn/z;

    .line 127
    .line 128
    iget-object p1, p1, Lwn/z;->f:Landroid/widget/LinearLayout;

    .line 129
    .line 130
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    if-eqz p2, :cond_4

    .line 134
    .line 135
    move v5, v6

    .line 136
    :cond_4
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 137
    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_5
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 141
    .line 142
    iget-object p1, p1, Lwn/t;->r:Lwn/z;

    .line 143
    .line 144
    invoke-virtual {p1}, Lwn/z;->b()Lcom/noober/background/view/BLLinearLayout;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    if-eqz p2, :cond_6

    .line 152
    .line 153
    move v0, v6

    .line 154
    goto :goto_2

    .line 155
    :cond_6
    move v0, v5

    .line 156
    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 157
    .line 158
    .line 159
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 160
    .line 161
    iget-object p1, p1, Lwn/t;->r:Lwn/z;

    .line 162
    .line 163
    iget-object p1, p1, Lwn/z;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 164
    .line 165
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 169
    .line 170
    .line 171
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 172
    .line 173
    iget-object p1, p1, Lwn/t;->r:Lwn/z;

    .line 174
    .line 175
    iget-object p1, p1, Lwn/z;->m:Landroid/view/View;

    .line 176
    .line 177
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 181
    .line 182
    .line 183
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 184
    .line 185
    iget-object p1, p1, Lwn/t;->r:Lwn/z;

    .line 186
    .line 187
    iget-object p1, p1, Lwn/z;->f:Landroid/widget/LinearLayout;

    .line 188
    .line 189
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    if-eqz p2, :cond_7

    .line 193
    .line 194
    move v5, v6

    .line 195
    :cond_7
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 196
    .line 197
    .line 198
    :goto_3
    return-void
.end method

.method private final setBottomSubjectModuleData(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 11

    .line 1
    sget-object v0, Lni/f;->a:Lni/f$a;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "getContext(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, ""

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    :cond_0
    move-object v1, v2

    .line 37
    :cond_1
    invoke-virtual {v0, v1}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/16 v1, 0x20

    .line 42
    .line 43
    invoke-static {v1}, Llj/a;->b(I)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-virtual {v0, v3}, Lni/f$b;->m(I)Lni/f$b;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v1}, Llj/a;->b(I)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-virtual {v0, v1}, Lni/f$b;->c(I)Lni/f$b;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    if-nez v1, :cond_3

    .line 76
    .line 77
    :cond_2
    move-object v1, v2

    .line 78
    :cond_3
    invoke-virtual {v0, v1}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 83
    .line 84
    iget-object v1, v1, Lwn/t;->r:Lwn/z;

    .line 85
    .line 86
    iget-object v1, v1, Lwn/z;->d:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 87
    .line 88
    const-string v3, "ivSubjectCover"

    .line 89
    .line 90
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 97
    .line 98
    iget-object v0, v0, Lwn/t;->r:Lwn/z;

    .line 99
    .line 100
    iget-object v0, v0, Lwn/z;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    if-eqz v1, :cond_4

    .line 107
    .line 108
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    if-eqz v1, :cond_4

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_4
    move-object v1, v2

    .line 116
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    const/4 v1, 0x0

    .line 124
    if-eqz v0, :cond_5

    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    goto :goto_1

    .line 131
    :cond_5
    move-object v0, v1

    .line 132
    :goto_1
    invoke-static {v0}, Lcom/transsion/moviedetailapi/h;->a(Ljava/lang/Integer;)I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    iget-object v3, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 137
    .line 138
    iget-object v3, v3, Lwn/t;->r:Lwn/z;

    .line 139
    .line 140
    iget-object v3, v3, Lwn/z;->e:Landroidx/appcompat/widget/AppCompatImageView;

    .line 141
    .line 142
    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    if-eqz v0, :cond_6

    .line 150
    .line 151
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getReleaseDate()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    goto :goto_2

    .line 156
    :cond_6
    move-object v0, v1

    .line 157
    :goto_2
    const-string v3, "yyyy-MM-dd"

    .line 158
    .line 159
    invoke-static {v0, v3}, Lcom/blankj/utilcode/util/c0;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 171
    .line 172
    iget-object v0, v0, Lwn/t;->r:Lwn/z;

    .line 173
    .line 174
    iget-object v0, v0, Lwn/z;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 175
    .line 176
    const/4 v4, 0x1

    .line 177
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    if-eqz v0, :cond_7

    .line 193
    .line 194
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getGenre()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    :cond_7
    if-eqz v1, :cond_a

    .line 199
    .line 200
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    if-nez v0, :cond_8

    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_8
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    if-eqz p1, :cond_a

    .line 212
    .line 213
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getGenre()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    if-eqz v5, :cond_a

    .line 218
    .line 219
    const-string p1, ", "

    .line 220
    .line 221
    filled-new-array {p1}, [Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v6

    .line 225
    const/4 v9, 0x6

    .line 226
    const/4 v10, 0x0

    .line 227
    const/4 v7, 0x0

    .line 228
    const/4 v8, 0x0

    .line 229
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    if-eqz p1, :cond_a

    .line 234
    .line 235
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    check-cast p1, Ljava/lang/String;

    .line 240
    .line 241
    if-nez p1, :cond_9

    .line 242
    .line 243
    goto :goto_3

    .line 244
    :cond_9
    move-object v2, p1

    .line 245
    :cond_a
    :goto_3
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 246
    .line 247
    iget-object p1, p1, Lwn/t;->r:Lwn/z;

    .line 248
    .line 249
    iget-object p1, p1, Lwn/z;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 250
    .line 251
    const-string v0, "tvSubjectGenre"

    .line 252
    .line 253
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    const/4 v3, 0x0

    .line 261
    if-lez v1, :cond_b

    .line 262
    .line 263
    move v1, v4

    .line 264
    goto :goto_4

    .line 265
    :cond_b
    move v1, v3

    .line 266
    :goto_4
    const/16 v5, 0x8

    .line 267
    .line 268
    if-eqz v1, :cond_c

    .line 269
    .line 270
    move v1, v3

    .line 271
    goto :goto_5

    .line 272
    :cond_c
    move v1, v5

    .line 273
    :goto_5
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 274
    .line 275
    .line 276
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 277
    .line 278
    iget-object p1, p1, Lwn/t;->r:Lwn/z;

    .line 279
    .line 280
    iget-object p1, p1, Lwn/z;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 281
    .line 282
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    if-lez v0, :cond_d

    .line 290
    .line 291
    goto :goto_6

    .line 292
    :cond_d
    move v4, v3

    .line 293
    :goto_6
    if-eqz v4, :cond_e

    .line 294
    .line 295
    goto :goto_7

    .line 296
    :cond_e
    move v3, v5

    .line 297
    :goto_7
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 298
    .line 299
    .line 300
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 301
    .line 302
    iget-object p1, p1, Lwn/t;->r:Lwn/z;

    .line 303
    .line 304
    iget-object p1, p1, Lwn/z;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 305
    .line 306
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    .line 308
    .line 309
    return-void
.end method

.method private final setContentVisibility(Z)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "tvComment"

    .line 4
    .line 5
    const-string v2, "tvShare"

    .line 6
    .line 7
    const-string v3, "tvLike"

    .line 8
    .line 9
    const-string v4, "progressBar"

    .line 10
    .line 11
    const-string v5, "nsPostDes"

    .line 12
    .line 13
    const-string v6, "getRoot(...)"

    .line 14
    .line 15
    const-string v7, "ivVideoAvatar"

    .line 16
    .line 17
    const-string v8, "ivShortCover"

    .line 18
    .line 19
    const-string v9, "ivDownload"

    .line 20
    .line 21
    const-string v10, "tvTitle"

    .line 22
    .line 23
    const-string v11, "tvShortTvEp"

    .line 24
    .line 25
    const-string v12, "clHotComment"

    .line 26
    .line 27
    const-string v13, "ivSave"

    .line 28
    .line 29
    const-string v14, "tvFavorite"

    .line 30
    .line 31
    if-eqz p1, :cond_5

    .line 32
    .line 33
    iget-object v15, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 34
    .line 35
    if-eqz v15, :cond_1

    .line 36
    .line 37
    invoke-virtual {v15}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 38
    .line 39
    .line 40
    move-result-object v15

    .line 41
    if-eqz v15, :cond_1

    .line 42
    .line 43
    invoke-virtual {v15}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v15

    .line 47
    sget-object v16, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    .line 48
    .line 49
    move-object/from16 v17, v14

    .line 50
    .line 51
    invoke-virtual/range {v16 .. v16}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 52
    .line 53
    .line 54
    move-result v14

    .line 55
    if-nez v15, :cond_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result v15

    .line 62
    if-ne v15, v14, :cond_2

    .line 63
    .line 64
    iget-object v5, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 65
    .line 66
    iget-object v5, v5, Lwn/t;->F:Lcom/noober/background/view/BLTextView;

    .line 67
    .line 68
    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-static {v5}, Luf/c;->k(Landroid/view/View;)V

    .line 72
    .line 73
    .line 74
    iget-object v5, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 75
    .line 76
    iget-object v5, v5, Lwn/t;->G:Landroidx/appcompat/widget/AppCompatTextView;

    .line 77
    .line 78
    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-static {v5}, Luf/c;->k(Landroid/view/View;)V

    .line 82
    .line 83
    .line 84
    iget-object v5, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 85
    .line 86
    iget-object v5, v5, Lwn/t;->j:Landroidx/appcompat/widget/AppCompatImageView;

    .line 87
    .line 88
    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-static {v5}, Luf/c;->k(Landroid/view/View;)V

    .line 92
    .line 93
    .line 94
    iget-object v5, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 95
    .line 96
    iget-object v5, v5, Lwn/t;->p:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 97
    .line 98
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-static {v5}, Luf/c;->k(Landroid/view/View;)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_1
    move-object/from16 v17, v14

    .line 106
    .line 107
    :cond_2
    :goto_0
    iget-object v8, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 108
    .line 109
    iget-object v8, v8, Lwn/t;->q:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 110
    .line 111
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-static {v8}, Luf/c;->k(Landroid/view/View;)V

    .line 115
    .line 116
    .line 117
    iget-object v7, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 118
    .line 119
    iget-object v7, v7, Lwn/t;->r:Lwn/z;

    .line 120
    .line 121
    invoke-virtual {v7}, Lwn/z;->b()Lcom/noober/background/view/BLLinearLayout;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-static {v7}, Luf/c;->k(Landroid/view/View;)V

    .line 129
    .line 130
    .line 131
    iget-object v6, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 132
    .line 133
    iget-object v6, v6, Lwn/t;->t:Lcom/transsion/baseui/widget/NestedScrollableHost;

    .line 134
    .line 135
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-static {v6}, Luf/c;->k(Landroid/view/View;)V

    .line 139
    .line 140
    .line 141
    iget-object v5, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 142
    .line 143
    iget-object v5, v5, Lwn/t;->o:Landroidx/appcompat/widget/AppCompatImageView;

    .line 144
    .line 145
    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-static {v5}, Luf/c;->k(Landroid/view/View;)V

    .line 149
    .line 150
    .line 151
    :goto_1
    iget-object v5, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 152
    .line 153
    iget-object v5, v5, Lwn/t;->u:Landroid/widget/ProgressBar;

    .line 154
    .line 155
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-static {v5}, Luf/c;->k(Landroid/view/View;)V

    .line 159
    .line 160
    .line 161
    iget-object v4, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 162
    .line 163
    iget-object v4, v4, Lwn/t;->C:Landroidx/appcompat/widget/AppCompatTextView;

    .line 164
    .line 165
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-static {v4}, Luf/c;->k(Landroid/view/View;)V

    .line 169
    .line 170
    .line 171
    iget-object v3, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 172
    .line 173
    iget-object v3, v3, Lwn/t;->E:Landroidx/appcompat/widget/AppCompatTextView;

    .line 174
    .line 175
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-static {v3}, Luf/c;->k(Landroid/view/View;)V

    .line 179
    .line 180
    .line 181
    iget-object v2, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 182
    .line 183
    iget-object v2, v2, Lwn/t;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 184
    .line 185
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-static {v2}, Luf/c;->k(Landroid/view/View;)V

    .line 189
    .line 190
    .line 191
    iget-boolean v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->y:Z

    .line 192
    .line 193
    if-eqz v1, :cond_3

    .line 194
    .line 195
    iget-object v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 196
    .line 197
    iget-object v1, v1, Lwn/t;->d:Lcom/noober/background/view/BLConstraintLayout;

    .line 198
    .line 199
    invoke-static {v1, v12}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-static {v1}, Luf/c;->k(Landroid/view/View;)V

    .line 203
    .line 204
    .line 205
    :cond_3
    iget-boolean v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->z:Z

    .line 206
    .line 207
    if-eqz v1, :cond_4

    .line 208
    .line 209
    iget-object v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 210
    .line 211
    iget-object v1, v1, Lwn/t;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 212
    .line 213
    move-object/from16 v14, v17

    .line 214
    .line 215
    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-static {v1}, Luf/c;->k(Landroid/view/View;)V

    .line 219
    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_4
    move-object/from16 v14, v17

    .line 223
    .line 224
    :goto_2
    iget-object v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 225
    .line 226
    iget-object v1, v1, Lwn/t;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 227
    .line 228
    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-static {v1}, Luf/c;->k(Landroid/view/View;)V

    .line 232
    .line 233
    .line 234
    goto/16 :goto_5

    .line 235
    .line 236
    :cond_5
    iget-object v15, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 237
    .line 238
    iget-object v15, v15, Lwn/t;->d:Lcom/noober/background/view/BLConstraintLayout;

    .line 239
    .line 240
    invoke-static {v15, v12}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    .line 244
    .line 245
    .line 246
    move-result v15

    .line 247
    move-object/from16 v16, v1

    .line 248
    .line 249
    const/4 v1, 0x1

    .line 250
    if-nez v15, :cond_6

    .line 251
    .line 252
    iput-boolean v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->y:Z

    .line 253
    .line 254
    iget-object v15, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 255
    .line 256
    iget-object v15, v15, Lwn/t;->d:Lcom/noober/background/view/BLConstraintLayout;

    .line 257
    .line 258
    invoke-static {v15, v12}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-static {v15}, Luf/c;->h(Landroid/view/View;)V

    .line 262
    .line 263
    .line 264
    :cond_6
    iget-object v12, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 265
    .line 266
    iget-object v12, v12, Lwn/t;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 267
    .line 268
    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    .line 272
    .line 273
    .line 274
    move-result v12

    .line 275
    if-nez v12, :cond_7

    .line 276
    .line 277
    iput-boolean v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->z:Z

    .line 278
    .line 279
    iget-object v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 280
    .line 281
    iget-object v1, v1, Lwn/t;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 282
    .line 283
    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    invoke-static {v1}, Luf/c;->h(Landroid/view/View;)V

    .line 287
    .line 288
    .line 289
    :cond_7
    iget-object v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 290
    .line 291
    if-eqz v1, :cond_9

    .line 292
    .line 293
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    if-eqz v1, :cond_9

    .line 298
    .line 299
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    sget-object v12, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    .line 304
    .line 305
    invoke-virtual {v12}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 306
    .line 307
    .line 308
    move-result v12

    .line 309
    if-nez v1, :cond_8

    .line 310
    .line 311
    goto :goto_3

    .line 312
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 313
    .line 314
    .line 315
    move-result v1

    .line 316
    if-ne v1, v12, :cond_9

    .line 317
    .line 318
    iget-object v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 319
    .line 320
    iget-object v1, v1, Lwn/t;->F:Lcom/noober/background/view/BLTextView;

    .line 321
    .line 322
    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    invoke-static {v1}, Luf/c;->h(Landroid/view/View;)V

    .line 326
    .line 327
    .line 328
    iget-object v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 329
    .line 330
    iget-object v1, v1, Lwn/t;->G:Landroidx/appcompat/widget/AppCompatTextView;

    .line 331
    .line 332
    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    invoke-static {v1}, Luf/c;->h(Landroid/view/View;)V

    .line 336
    .line 337
    .line 338
    iget-object v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 339
    .line 340
    iget-object v1, v1, Lwn/t;->j:Landroidx/appcompat/widget/AppCompatImageView;

    .line 341
    .line 342
    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    invoke-static {v1}, Luf/c;->h(Landroid/view/View;)V

    .line 346
    .line 347
    .line 348
    iget-object v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 349
    .line 350
    iget-object v1, v1, Lwn/t;->p:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 351
    .line 352
    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    invoke-static {v1}, Luf/c;->h(Landroid/view/View;)V

    .line 356
    .line 357
    .line 358
    goto :goto_4

    .line 359
    :cond_9
    :goto_3
    iget-object v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 360
    .line 361
    iget-object v1, v1, Lwn/t;->q:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 362
    .line 363
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    invoke-static {v1}, Luf/c;->h(Landroid/view/View;)V

    .line 367
    .line 368
    .line 369
    iget-object v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 370
    .line 371
    iget-object v1, v1, Lwn/t;->r:Lwn/z;

    .line 372
    .line 373
    invoke-virtual {v1}, Lwn/z;->b()Lcom/noober/background/view/BLLinearLayout;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    invoke-static {v1}, Luf/c;->h(Landroid/view/View;)V

    .line 381
    .line 382
    .line 383
    iget-object v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 384
    .line 385
    iget-object v1, v1, Lwn/t;->t:Lcom/transsion/baseui/widget/NestedScrollableHost;

    .line 386
    .line 387
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    invoke-static {v1}, Luf/c;->h(Landroid/view/View;)V

    .line 391
    .line 392
    .line 393
    iget-object v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 394
    .line 395
    iget-object v1, v1, Lwn/t;->o:Landroidx/appcompat/widget/AppCompatImageView;

    .line 396
    .line 397
    invoke-static {v1, v13}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    invoke-static {v1}, Luf/c;->h(Landroid/view/View;)V

    .line 401
    .line 402
    .line 403
    :goto_4
    iget-object v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 404
    .line 405
    iget-object v1, v1, Lwn/t;->u:Landroid/widget/ProgressBar;

    .line 406
    .line 407
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    invoke-static {v1}, Luf/c;->h(Landroid/view/View;)V

    .line 411
    .line 412
    .line 413
    iget-object v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 414
    .line 415
    iget-object v1, v1, Lwn/t;->C:Landroidx/appcompat/widget/AppCompatTextView;

    .line 416
    .line 417
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    invoke-static {v1}, Luf/c;->h(Landroid/view/View;)V

    .line 421
    .line 422
    .line 423
    iget-object v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 424
    .line 425
    iget-object v1, v1, Lwn/t;->E:Landroidx/appcompat/widget/AppCompatTextView;

    .line 426
    .line 427
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    invoke-static {v1}, Luf/c;->h(Landroid/view/View;)V

    .line 431
    .line 432
    .line 433
    iget-object v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 434
    .line 435
    iget-object v1, v1, Lwn/t;->o:Landroidx/appcompat/widget/AppCompatImageView;

    .line 436
    .line 437
    invoke-static {v1, v13}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    invoke-static {v1}, Luf/c;->h(Landroid/view/View;)V

    .line 441
    .line 442
    .line 443
    iget-object v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 444
    .line 445
    iget-object v1, v1, Lwn/t;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 446
    .line 447
    move-object/from16 v2, v16

    .line 448
    .line 449
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    invoke-static {v1}, Luf/c;->h(Landroid/view/View;)V

    .line 453
    .line 454
    .line 455
    :goto_5
    return-void
.end method

.method public static synthetic setData$default(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Landroidx/fragment/app/Fragment;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 14

    .line 1
    move/from16 v0, p11

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x40

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    move v10, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move/from16 v10, p7

    .line 11
    .line 12
    :goto_0
    and-int/lit16 v1, v0, 0x80

    .line 13
    .line 14
    const-string v3, ""

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    move-object v11, v3

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move-object/from16 v11, p8

    .line 21
    .line 22
    :goto_1
    and-int/lit16 v1, v0, 0x100

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    move-object v12, v3

    .line 27
    goto :goto_2

    .line 28
    :cond_2
    move-object/from16 v12, p9

    .line 29
    .line 30
    :goto_2
    and-int/lit16 v0, v0, 0x200

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    move v13, v2

    .line 35
    goto :goto_3

    .line 36
    :cond_3
    move/from16 v13, p10

    .line 37
    .line 38
    :goto_3
    move-object v3, p0

    .line 39
    move-object v4, p1

    .line 40
    move-object/from16 v5, p2

    .line 41
    .line 42
    move-object/from16 v6, p3

    .line 43
    .line 44
    move/from16 v7, p4

    .line 45
    .line 46
    move-object/from16 v8, p5

    .line 47
    .line 48
    move-object/from16 v9, p6

    .line 49
    .line 50
    invoke-virtual/range {v3 .. v13}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->setData(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Landroidx/fragment/app/Fragment;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private final setLoading(Z)V
    .locals 2

    .line 1
    const-string v0, "progressBar"

    .line 2
    .line 3
    const-string v1, "clLoading"

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 8
    .line 9
    iget-object p1, p1, Lwn/t;->e:Lcom/transsion/postdetail/ui/view/ClipLoading;

    .line 10
    .line 11
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 18
    .line 19
    iget-object p1, p1, Lwn/t;->u:Landroid/widget/ProgressBar;

    .line 20
    .line 21
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 28
    .line 29
    iget-object p1, p1, Lwn/t;->e:Lcom/transsion/postdetail/ui/view/ClipLoading;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/transsion/postdetail/ui/view/ClipLoading;->start()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 36
    .line 37
    iget-object p1, p1, Lwn/t;->u:Landroid/widget/ProgressBar;

    .line 38
    .line 39
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 46
    .line 47
    iget-object p1, p1, Lwn/t;->e:Lcom/transsion/postdetail/ui/view/ClipLoading;

    .line 48
    .line 49
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 56
    .line 57
    iget-object p1, p1, Lwn/t;->e:Lcom/transsion/postdetail/ui/view/ClipLoading;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/transsion/postdetail/ui/view/ClipLoading;->stop()V

    .line 60
    .line 61
    .line 62
    :goto_0
    return-void
.end method

.method public static synthetic t(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->x(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic u()Lqx/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->E()Lqx/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic v(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->Q(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final w()Lcom/transsnet/downloader/manager/g;
    .locals 2

    .line 1
    sget-object v0, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    .line 2
    .line 3
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/manager/p$a;->a(Landroid/content/Context;)Lcom/transsnet/downloader/manager/g;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private static final x(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->y(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final y(Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const v1, -0x5c646583

    .line 8
    .line 9
    .line 10
    if-eq v0, v1, :cond_4

    .line 11
    .line 12
    const v1, -0x344d981f    # -2.3384002E7f

    .line 13
    .line 14
    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    const v1, 0x1f58437e

    .line 18
    .line 19
    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string v0, "favorite_add"

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    sget p1, Lcom/transsnet/downloader/R$string;->short_tv_favorite_toast:I

    .line 33
    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    const-string v0, "favorite_fail"

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_3

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    sget p1, Lcom/tn/lib/widget/R$string;->failed_toast:I

    .line 49
    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    goto :goto_1

    .line 55
    :cond_4
    const-string v0, "favorite_cancel"

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_5

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_5
    sget p1, Lcom/transsnet/downloader/R$string;->short_tv_favorite_remove_toast:I

    .line 65
    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    goto :goto_1

    .line 71
    :cond_6
    :goto_0
    const/4 p1, 0x0

    .line 72
    :goto_1
    if-eqz p1, :cond_7

    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    sget-object v0, Lfh/b;->a:Lfh/b$a;

    .line 79
    .line 80
    invoke-virtual {v0, p1}, Lfh/b$a;->d(I)V

    .line 81
    .line 82
    .line 83
    :cond_7
    return-void
.end method

.method private final z(Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->j:Ljava/lang/Integer;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v3, "finishAfterReport, position = "

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    filled-new-array {p1}, [Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const/4 v4, 0x4

    .line 29
    const/4 v5, 0x0

    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-static/range {v0 .. v5}, Lwf/a$a;->r(Lwf/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->c:Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    .line 35
    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->C()Landroidx/lifecycle/b0;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->j:Ljava/lang/Integer;

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method


# virtual methods
.method public final app2Background()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->t:Lcom/transsion/postdetail/layer/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/transsion/postdetail/layer/b;->d(Z)V

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

.method public final getPlayerContainer()Landroid/widget/FrameLayout;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 2
    .line 3
    iget-object v0, v0, Lwn/t;->h:Landroid/widget/FrameLayout;

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

.method public final getPosition()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->j:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
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
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->h:Landroidx/fragment/app/Fragment;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->d:Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->f()Landroidx/lifecycle/b0;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->S:Landroidx/lifecycle/c0;

    .line 25
    .line 26
    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->getDownloadManager()Lcom/transsnet/downloader/manager/g;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->Q:Lcom/transsion/postdetail/ui/view/ImmVideoItemView$b;

    .line 34
    .line 35
    invoke-interface {v0, v1}, Lcom/transsnet/downloader/manager/g;->g(Lui/m0;)V

    .line 36
    .line 37
    .line 38
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
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v2, v1

    .line 16
    :goto_0
    sget v3, Lcom/transsion/postdetail/R$id;->tv_like:I

    .line 17
    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-ne v4, v3, :cond_2

    .line 26
    .line 27
    invoke-direct/range {p0 .. p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->O(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_13

    .line 31
    .line 32
    :cond_2
    :goto_1
    sget v3, Lcom/transsion/postdetail/R$id;->tv_comment:I

    .line 33
    .line 34
    if-nez v2, :cond_3

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eq v4, v3, :cond_1c

    .line 42
    .line 43
    :goto_2
    sget v3, Lcom/transsion/postdetail/R$id;->clHotComment:I

    .line 44
    .line 45
    if-nez v2, :cond_4

    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-ne v4, v3, :cond_5

    .line 53
    .line 54
    goto/16 :goto_12

    .line 55
    .line 56
    :cond_5
    :goto_3
    sget v3, Lcom/transsion/postdetail/R$id;->tv_share:I

    .line 57
    .line 58
    if-nez v2, :cond_6

    .line 59
    .line 60
    goto :goto_4

    .line 61
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-ne v4, v3, :cond_7

    .line 66
    .line 67
    invoke-direct/range {p0 .. p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->T(Landroid/view/View;)V

    .line 68
    .line 69
    .line 70
    goto/16 :goto_13

    .line 71
    .line 72
    :cond_7
    :goto_4
    sget v3, Lcom/transsion/postdetail/R$id;->iv_save:I

    .line 73
    .line 74
    if-nez v2, :cond_8

    .line 75
    .line 76
    goto :goto_5

    .line 77
    :cond_8
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-ne v4, v3, :cond_9

    .line 82
    .line 83
    invoke-direct/range {p0 .. p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->S(Landroid/view/View;)V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_13

    .line 87
    .line 88
    :cond_9
    :goto_5
    sget v3, Lcom/transsion/postdetail/R$id;->iv_video_avatar:I

    .line 89
    .line 90
    if-nez v2, :cond_a

    .line 91
    .line 92
    goto :goto_6

    .line 93
    :cond_a
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-ne v4, v3, :cond_b

    .line 98
    .line 99
    invoke-direct/range {p0 .. p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->F(Landroid/view/View;)V

    .line 100
    .line 101
    .line 102
    goto/16 :goto_13

    .line 103
    .line 104
    :cond_b
    :goto_6
    sget v3, Lcom/transsion/postdetail/R$id;->ev_post_des:I

    .line 105
    .line 106
    if-nez v2, :cond_c

    .line 107
    .line 108
    goto :goto_7

    .line 109
    :cond_c
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    if-eq v4, v3, :cond_1d

    .line 114
    .line 115
    :goto_7
    sget v3, Lcom/transsion/postdetail/R$id;->cl_subject_content:I

    .line 116
    .line 117
    if-nez v2, :cond_d

    .line 118
    .line 119
    goto :goto_8

    .line 120
    :cond_d
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    if-ne v4, v3, :cond_e

    .line 125
    .line 126
    invoke-direct/range {p0 .. p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->H(Landroid/view/View;)V

    .line 127
    .line 128
    .line 129
    goto/16 :goto_13

    .line 130
    .line 131
    :cond_e
    :goto_8
    sget v3, Lcom/transsion/postdetail/R$id;->ll_room_tag:I

    .line 132
    .line 133
    if-nez v2, :cond_f

    .line 134
    .line 135
    goto :goto_9

    .line 136
    :cond_f
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    if-ne v4, v3, :cond_10

    .line 141
    .line 142
    invoke-direct/range {p0 .. p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->G(Landroid/view/View;)V

    .line 143
    .line 144
    .line 145
    goto/16 :goto_13

    .line 146
    .line 147
    :cond_10
    :goto_9
    sget v3, Lcom/transsion/postdetail/R$id;->tvShortTvEp:I

    .line 148
    .line 149
    const/4 v4, 0x1

    .line 150
    if-nez v2, :cond_11

    .line 151
    .line 152
    goto :goto_c

    .line 153
    :cond_11
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 154
    .line 155
    .line 156
    move-result v5

    .line 157
    if-ne v5, v3, :cond_14

    .line 158
    .line 159
    iget-object v2, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->h:Landroidx/fragment/app/Fragment;

    .line 160
    .line 161
    if-eqz v2, :cond_1d

    .line 162
    .line 163
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    if-eqz v2, :cond_1d

    .line 168
    .line 169
    iget-object v3, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 170
    .line 171
    if-eqz v3, :cond_1d

    .line 172
    .line 173
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    if-eqz v3, :cond_1d

    .line 178
    .line 179
    iget-object v5, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 180
    .line 181
    if-eqz v5, :cond_12

    .line 182
    .line 183
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getOps()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    goto :goto_a

    .line 188
    :cond_12
    move-object v5, v1

    .line 189
    :goto_a
    invoke-virtual {v3, v5}, Lcom/transsion/moviedetailapi/bean/Subject;->setOps(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    sget-object v5, Lpr/a;->a:Lpr/a;

    .line 193
    .line 194
    invoke-virtual {v5}, Lpr/a;->b()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    invoke-static {v5}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    const-string v6, "id"

    .line 203
    .line 204
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    invoke-virtual {v5, v6, v3}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    const-string v5, "ep"

    .line 213
    .line 214
    invoke-virtual {v3, v5, v4}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    iget-object v4, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 219
    .line 220
    if-eqz v4, :cond_13

    .line 221
    .line 222
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getOps()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    goto :goto_b

    .line 227
    :cond_13
    move-object v4, v1

    .line 228
    :goto_b
    const-string v5, "ops"

    .line 229
    .line 230
    invoke-virtual {v3, v5, v4}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    const/4 v4, 0x2

    .line 235
    invoke-static {v3, v2, v1, v4, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    goto/16 :goto_13

    .line 239
    .line 240
    :cond_14
    :goto_c
    sget v3, Lcom/transsion/postdetail/R$id;->iv_download:I

    .line 241
    .line 242
    if-nez v2, :cond_15

    .line 243
    .line 244
    goto :goto_d

    .line 245
    :cond_15
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 246
    .line 247
    .line 248
    move-result v5

    .line 249
    if-eq v5, v3, :cond_18

    .line 250
    .line 251
    :goto_d
    sget v3, Lcom/transsion/postdetail/R$id;->iv_short_cover:I

    .line 252
    .line 253
    if-nez v2, :cond_16

    .line 254
    .line 255
    goto :goto_e

    .line 256
    :cond_16
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 257
    .line 258
    .line 259
    move-result v5

    .line 260
    if-eq v5, v3, :cond_18

    .line 261
    .line 262
    :goto_e
    sget v3, Lcom/transsion/postdetail/R$id;->tv_title:I

    .line 263
    .line 264
    if-nez v2, :cond_17

    .line 265
    .line 266
    goto :goto_13

    .line 267
    :cond_17
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    if-ne v2, v3, :cond_1d

    .line 272
    .line 273
    :cond_18
    sget-object v2, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    .line 274
    .line 275
    invoke-virtual {v2}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    .line 276
    .line 277
    .line 278
    move-result-object v5

    .line 279
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    const-string v3, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    .line 284
    .line 285
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    move-object v6, v2

    .line 289
    check-cast v6, Landroidx/fragment/app/FragmentActivity;

    .line 290
    .line 291
    iget-object v2, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 292
    .line 293
    if-eqz v2, :cond_19

    .line 294
    .line 295
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    if-eqz v2, :cond_19

    .line 300
    .line 301
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    move-object v9, v2

    .line 306
    goto :goto_f

    .line 307
    :cond_19
    move-object v9, v1

    .line 308
    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 309
    .line 310
    .line 311
    move-result v2

    .line 312
    sget v3, Lcom/transsion/postdetail/R$id;->iv_download:I

    .line 313
    .line 314
    if-ne v2, v3, :cond_1a

    .line 315
    .line 316
    :goto_10
    move v11, v4

    .line 317
    goto :goto_11

    .line 318
    :cond_1a
    const/4 v4, 0x0

    .line 319
    goto :goto_10

    .line 320
    :goto_11
    iget-object v2, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 321
    .line 322
    if-eqz v2, :cond_1b

    .line 323
    .line 324
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    :cond_1b
    move-object v12, v1

    .line 329
    const/16 v15, 0x180

    .line 330
    .line 331
    const/16 v16, 0x0

    .line 332
    .line 333
    const-string v7, "postdetail_video"

    .line 334
    .line 335
    const-string v8, ""

    .line 336
    .line 337
    const-string v10, "download_subject"

    .line 338
    .line 339
    const/4 v13, 0x0

    .line 340
    const/4 v14, 0x0

    .line 341
    invoke-static/range {v5 .. v16}, Lcom/transsnet/downloader/DownloadManagerApi;->e0(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 342
    .line 343
    .line 344
    goto :goto_13

    .line 345
    :cond_1c
    :goto_12
    invoke-direct/range {p0 .. p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->N(Landroid/view/View;)V

    .line 346
    .line 347
    .line 348
    :cond_1d
    :goto_13
    return-void
.end method

.method public onCompletion(Lgn/e;)V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->a:Ljava/lang/String;

    .line 4
    .line 5
    const-string p1, "player- onCompletion"

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
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 18
    .line 19
    if-eqz p1, :cond_3

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_3

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez p1, :cond_0

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-ne p1, v0, :cond_3

    .line 45
    .line 46
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->h:Landroidx/fragment/app/Fragment;

    .line 47
    .line 48
    if-eqz p1, :cond_3

    .line 49
    .line 50
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 57
    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 67
    .line 68
    const/4 v2, 0x0

    .line 69
    if-eqz v1, :cond_1

    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getOps()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    goto :goto_0

    .line 76
    :cond_1
    move-object v1, v2

    .line 77
    :goto_0
    invoke-virtual {v0, v1}, Lcom/transsion/moviedetailapi/bean/Subject;->setOps(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    sget-object v1, Lpr/a;->a:Lpr/a;

    .line 81
    .line 82
    invoke-virtual {v1}, Lpr/a;->b()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-static {v1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    const-string v3, "id"

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v1, v3, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    const-string v1, "ep"

    .line 101
    .line 102
    const/4 v3, 0x1

    .line 103
    invoke-virtual {v0, v1, v3}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 108
    .line 109
    if-eqz v1, :cond_2

    .line 110
    .line 111
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getOps()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    goto :goto_1

    .line 116
    :cond_2
    move-object v1, v2

    .line 117
    :goto_1
    const-string v3, "ops"

    .line 118
    .line 119
    invoke-virtual {v0, v3, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    const/4 v1, 0x2

    .line 124
    invoke-static {v0, p1, v2, v1, v2}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->m:Lcom/transsion/player/orplayer/f;

    .line 128
    .line 129
    if-eqz p1, :cond_3

    .line 130
    .line 131
    const-wide/16 v0, 0x0

    .line 132
    .line 133
    invoke-interface {p1, v0, v1}, Lcom/transsion/player/orplayer/f;->seekTo(J)V

    .line 134
    .line 135
    .line 136
    :cond_3
    :goto_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->d:Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->f()Landroidx/lifecycle/b0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->d:Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->f()Landroidx/lifecycle/b0;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->S:Landroidx/lifecycle/c0;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->o(Landroidx/lifecycle/c0;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->getDownloadManager()Lcom/transsnet/downloader/manager/g;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->Q:Lcom/transsion/postdetail/ui/view/ImmVideoItemView$b;

    .line 38
    .line 39
    invoke-interface {v0, v1}, Lcom/transsnet/downloader/manager/g;->k(Lui/m0;)V

    .line 40
    .line 41
    .line 42
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

.method public onLoadingBegin(Lgn/e;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->t:Lcom/transsion/postdetail/layer/b;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/b;->h()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 p1, 0x1

    .line 9
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->setLoading(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onLoadingEnd(Lgn/e;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->t:Lcom/transsion/postdetail/layer/b;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/b;->i()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->setLoading(Z)V

    .line 10
    .line 11
    .line 12
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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->t:Lcom/transsion/postdetail/layer/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/postdetail/layer/b;->j()V

    .line 6
    .line 7
    .line 8
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
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10
    .line 11
    .line 12
    const-wide/16 v2, 0x0

    .line 13
    .line 14
    iput-wide v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->J:J

    .line 15
    .line 16
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->t:Lcom/transsion/postdetail/layer/b;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/layer/b;->k(Lcom/transsion/player/orplayer/PlayError;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->a:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorCode()Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorMessage()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    invoke-virtual {p2}, Lgn/e;->j()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 p2, 0x0

    .line 43
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v2, " --> IPlayerListener --> onPlayError()  errorCode:"

    .line 52
    .line 53
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v2, " errorMessage:"

    .line 60
    .line 61
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string p1, " url:"

    .line 68
    .line 69
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p1, " --> \u77ed\u64ad\u653e\u5931\u8d25\u4e86"

    .line 76
    .line 77
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    const-string p2, "i_media"

    .line 85
    .line 86
    invoke-virtual {v0, p2, p1, v1}, Lwf/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 87
    .line 88
    .line 89
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
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->J:J

    .line 10
    .line 11
    return-void
.end method

.method public onPlayerReset()V
    .locals 8

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->a:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v4, 0x4

    .line 6
    const/4 v5, 0x0

    .line 7
    const-string v2, "player- onPlayerReset"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->L:Z

    .line 15
    .line 16
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 19
    .line 20
    .line 21
    const-wide/16 v1, 0x0

    .line 22
    .line 23
    iput-wide v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->J:J

    .line 24
    .line 25
    invoke-virtual {p0, v3}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 26
    .line 27
    .line 28
    iput-boolean v3, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->v:Z

    .line 29
    .line 30
    iget-object v4, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->t:Lcom/transsion/postdetail/layer/b;

    .line 31
    .line 32
    if-eqz v4, :cond_0

    .line 33
    .line 34
    invoke-static {v4, v3, v0, v5}, Lcom/transsion/postdetail/layer/b;->e(Lcom/transsion/postdetail/layer/b;ZILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    sget-object v3, Lcom/transsion/postdetail/helper/ImmVideoHelper;->h:Lcom/transsion/postdetail/helper/ImmVideoHelper$a;

    .line 48
    .line 49
    invoke-virtual {v3}, Lcom/transsion/postdetail/helper/ImmVideoHelper$a;->a()Lcom/transsion/postdetail/helper/ImmVideoHelper;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v3}, Lcom/transsion/postdetail/helper/ImmVideoHelper;->j()Ljava/util/Map;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    iget-object v4, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 58
    .line 59
    iget-object v4, v4, Lwn/t;->u:Landroid/widget/ProgressBar;

    .line 60
    .line 61
    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getProgress()I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    int-to-long v6, v4

    .line 66
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Ljava/lang/Long;

    .line 75
    .line 76
    :cond_1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 77
    .line 78
    iget-object v0, v0, Lwn/t;->i:Landroidx/appcompat/widget/AppCompatImageView;

    .line 79
    .line 80
    const-string v3, "ivCover"

    .line 81
    .line 82
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 89
    .line 90
    iget-object v0, v0, Lwn/t;->n:Landroidx/appcompat/widget/AppCompatImageView;

    .line 91
    .line 92
    const-string v3, "ivPause"

    .line 93
    .line 94
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 101
    .line 102
    iget-object v0, v0, Lwn/t;->w:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 103
    .line 104
    const-string v3, "seekBar"

    .line 105
    .line 106
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 113
    .line 114
    iget-object v0, v0, Lwn/t;->g:Lcom/tn/lib/view/expand/ExpandView;

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/tn/lib/view/expand/ExpandView;->reset()V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->q:Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;

    .line 120
    .line 121
    if-eqz v0, :cond_2

    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;->removeGuide()V

    .line 124
    .line 125
    .line 126
    :cond_2
    iput-object v5, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->m:Lcom/transsion/player/orplayer/f;

    .line 127
    .line 128
    iput-object v5, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->n:Lcom/transsion/player/ui/ORPlayerView;

    .line 129
    .line 130
    iput-object v5, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->o:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    .line 131
    .line 132
    iput-wide v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->A:J

    .line 133
    .line 134
    return-void
.end method

.method public onPrepare(Lgn/e;)V
    .locals 13

    .line 1
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->m:Lcom/transsion/player/orplayer/f;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->getDuration()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    long-to-int p1, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move p1, v0

    .line 13
    :goto_0
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 14
    .line 15
    iget-object v1, v1, Lwn/t;->u:Landroid/widget/ProgressBar;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 21
    .line 22
    iget-object v1, v1, Lwn/t;->w:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    if-eqz p1, :cond_7

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_7

    .line 37
    .line 38
    iget-boolean v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->O:Z

    .line 39
    .line 40
    const-wide/16 v3, 0x0

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    sget-object v2, Lio/f;->a:Lio/f;

    .line 45
    .line 46
    invoke-virtual {v2, p1}, Lio/f;->c(Ljava/lang/String;)J

    .line 47
    .line 48
    .line 49
    move-result-wide v5

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    sget-object v2, Lio/d;->a:Lio/d;

    .line 52
    .line 53
    invoke-virtual {v2, p1}, Lio/d;->b(Ljava/lang/String;)Ljava/lang/Long;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 60
    .line 61
    .line 62
    move-result-wide v5

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    move-wide v5, v3

    .line 65
    :goto_1
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 70
    .line 71
    .line 72
    move-result-wide v5

    .line 73
    cmp-long v5, v5, v3

    .line 74
    .line 75
    if-lez v5, :cond_3

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_3
    const/4 v2, 0x0

    .line 79
    :goto_2
    if-eqz v2, :cond_5

    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 82
    .line 83
    .line 84
    move-result-wide v5

    .line 85
    sget-object v7, Lwf/a;->a:Lwf/a$a;

    .line 86
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v2, "immvideo seek:"

    .line 93
    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    const/4 v11, 0x4

    .line 105
    const/4 v12, 0x0

    .line 106
    const-string v8, "PostFeedVideo"

    .line 107
    .line 108
    const/4 v10, 0x0

    .line 109
    invoke-static/range {v7 .. v12}, Lwf/a$a;->v(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->m:Lcom/transsion/player/orplayer/f;

    .line 113
    .line 114
    if-eqz v0, :cond_4

    .line 115
    .line 116
    invoke-interface {v0, v5, v6}, Lcom/transsion/player/orplayer/f;->seekTo(J)V

    .line 117
    .line 118
    .line 119
    :cond_4
    move v0, v1

    .line 120
    :cond_5
    sget-object v2, Lcom/transsion/postdetail/helper/ImmVideoHelper;->h:Lcom/transsion/postdetail/helper/ImmVideoHelper$a;

    .line 121
    .line 122
    invoke-virtual {v2}, Lcom/transsion/postdetail/helper/ImmVideoHelper$a;->a()Lcom/transsion/postdetail/helper/ImmVideoHelper;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {v2}, Lcom/transsion/postdetail/helper/ImmVideoHelper;->j()Ljava/util/Map;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    check-cast p1, Ljava/lang/Long;

    .line 135
    .line 136
    if-eqz p1, :cond_6

    .line 137
    .line 138
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 139
    .line 140
    .line 141
    move-result-wide v5

    .line 142
    goto :goto_3

    .line 143
    :cond_6
    move-wide v5, v3

    .line 144
    :goto_3
    sget-object v7, Lwf/a;->a:Lwf/a$a;

    .line 145
    .line 146
    iget-object v8, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->a:Ljava/lang/String;

    .line 147
    .line 148
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 149
    .line 150
    iget-object p1, p1, Lwn/t;->u:Landroid/widget/ProgressBar;

    .line 151
    .line 152
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMax()I

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    const-string v9, "player- onPrepare, duration = "

    .line 162
    .line 163
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string p1, ", progress = "

    .line 170
    .line 171
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v9

    .line 181
    const/4 v11, 0x4

    .line 182
    const/4 v12, 0x0

    .line 183
    const/4 v10, 0x0

    .line 184
    invoke-static/range {v7 .. v12}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    cmp-long p1, v5, v3

    .line 188
    .line 189
    if-lez p1, :cond_7

    .line 190
    .line 191
    if-nez v0, :cond_7

    .line 192
    .line 193
    iput-wide v5, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->A:J

    .line 194
    .line 195
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 196
    .line 197
    iget-object p1, p1, Lwn/t;->u:Landroid/widget/ProgressBar;

    .line 198
    .line 199
    long-to-int v0, v5

    .line 200
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 201
    .line 202
    .line 203
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 204
    .line 205
    iget-object p1, p1, Lwn/t;->w:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 206
    .line 207
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 208
    .line 209
    .line 210
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->m:Lcom/transsion/player/orplayer/f;

    .line 211
    .line 212
    if-eqz p1, :cond_7

    .line 213
    .line 214
    invoke-interface {p1, v5, v6}, Lcom/transsion/player/orplayer/f;->seekTo(J)V

    .line 215
    .line 216
    .line 217
    :cond_7
    iget-boolean p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->v:Z

    .line 218
    .line 219
    if-nez p1, :cond_8

    .line 220
    .line 221
    iget-boolean p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->x:Z

    .line 222
    .line 223
    if-nez p1, :cond_8

    .line 224
    .line 225
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->h:Landroidx/fragment/app/Fragment;

    .line 226
    .line 227
    if-eqz p1, :cond_8

    .line 228
    .line 229
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    .line 230
    .line 231
    .line 232
    move-result p1

    .line 233
    if-ne p1, v1, :cond_8

    .line 234
    .line 235
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 236
    .line 237
    iget-object v3, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->a:Ljava/lang/String;

    .line 238
    .line 239
    const/4 v6, 0x4

    .line 240
    const/4 v7, 0x0

    .line 241
    const-string v4, "player- onPrepare\uff0c play~"

    .line 242
    .line 243
    const/4 v5, 0x0

    .line 244
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->m:Lcom/transsion/player/orplayer/f;

    .line 248
    .line 249
    if-eqz p1, :cond_8

    .line 250
    .line 251
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->play()V

    .line 252
    .line 253
    .line 254
    :cond_8
    invoke-virtual {p0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 255
    .line 256
    .line 257
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->j0()V

    .line 258
    .line 259
    .line 260
    return-void
.end method

.method public onProgress(JLgn/e;)V
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-boolean p3, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->w:Z

    .line 11
    .line 12
    if-eqz p3, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iget-object p3, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->t:Lcom/transsion/postdetail/layer/b;

    .line 16
    .line 17
    if-eqz p3, :cond_2

    .line 18
    .line 19
    invoke-virtual {p3, p1, p2}, Lcom/transsion/postdetail/layer/b;->l(J)V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object p3, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 23
    .line 24
    iget-object p3, p3, Lwn/t;->u:Landroid/widget/ProgressBar;

    .line 25
    .line 26
    long-to-int v0, p1

    .line 27
    invoke-virtual {p3, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 28
    .line 29
    .line 30
    iget-object p3, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 31
    .line 32
    iget-object p3, p3, Lwn/t;->w:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 33
    .line 34
    invoke-virtual {p3, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->P(J)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public onRenderFirstFrame()V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->a:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v4, 0x4

    .line 6
    const/4 v5, 0x0

    .line 7
    const-string v2, "player- onRenderFirstFrame"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 14
    .line 15
    iget-object v0, v0, Lwn/t;->i:Landroidx/appcompat/widget/AppCompatImageView;

    .line 16
    .line 17
    const-string v1, "ivCover"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->t:Lcom/transsion/postdetail/layer/b;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/transsion/postdetail/layer/b;->m()V

    .line 30
    .line 31
    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, v0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->setLoading(Z)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public onSetDataSource()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->L:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    .line 9
    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    iput-wide v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->J:J

    .line 13
    .line 14
    invoke-direct {p0, v1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->setLoading(Z)V

    .line 15
    .line 16
    .line 17
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
    sget-object p1, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$a;->a:[I

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
    const/4 p2, 0x2

    .line 23
    if-eq p1, p2, :cond_3

    .line 24
    .line 25
    const/4 p2, 0x3

    .line 26
    if-eq p1, p2, :cond_2

    .line 27
    .line 28
    const/4 p2, 0x5

    .line 29
    if-eq p1, p2, :cond_0

    .line 30
    .line 31
    goto/16 :goto_0

    .line 32
    .line 33
    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->h:Landroidx/fragment/app/Fragment;

    .line 34
    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->d(Landroidx/lifecycle/t;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->t:Lcom/transsion/postdetail/layer/b;

    .line 47
    .line 48
    if-eqz p1, :cond_8

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/b;->p()V

    .line 51
    .line 52
    .line 53
    goto/16 :goto_0

    .line 54
    .line 55
    :cond_2
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 56
    .line 57
    if-eqz p1, :cond_8

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_8

    .line 64
    .line 65
    sget-object p2, Lcom/transsion/postdetail/helper/ImmVideoHelper;->h:Lcom/transsion/postdetail/helper/ImmVideoHelper$a;

    .line 66
    .line 67
    invoke-virtual {p2}, Lcom/transsion/postdetail/helper/ImmVideoHelper$a;->a()Lcom/transsion/postdetail/helper/ImmVideoHelper;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p2}, Lcom/transsion/postdetail/helper/ImmVideoHelper;->j()Ljava/util/Map;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 76
    .line 77
    iget-object v0, v0, Lwn/t;->u:Landroid/widget/ProgressBar;

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    int-to-long v0, v0

    .line 84
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Ljava/lang/Long;

    .line 93
    .line 94
    goto/16 :goto_0

    .line 95
    .line 96
    :cond_3
    const/4 p1, 0x0

    .line 97
    iput-boolean p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->x:Z

    .line 98
    .line 99
    iget-boolean p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->v:Z

    .line 100
    .line 101
    if-nez p1, :cond_8

    .line 102
    .line 103
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->h:Landroidx/fragment/app/Fragment;

    .line 104
    .line 105
    if-eqz p1, :cond_4

    .line 106
    .line 107
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-nez p1, :cond_4

    .line 112
    .line 113
    new-instance p1, Lcom/transsion/postdetail/ui/view/d;

    .line 114
    .line 115
    invoke-direct {p1, p0}, Lcom/transsion/postdetail/ui/view/d;-><init>(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_4
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->m:Lcom/transsion/player/orplayer/f;

    .line 123
    .line 124
    if-eqz p1, :cond_8

    .line 125
    .line 126
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->play()V

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_5
    iput-boolean p2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->x:Z

    .line 131
    .line 132
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 133
    .line 134
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->a:Ljava/lang/String;

    .line 135
    .line 136
    const/4 v4, 0x4

    .line 137
    const/4 v5, 0x0

    .line 138
    const-string v2, "player- onPause"

    .line 139
    .line 140
    const/4 v3, 0x0

    .line 141
    move-object v0, p1

    .line 142
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    iget-object p2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->m:Lcom/transsion/player/orplayer/f;

    .line 146
    .line 147
    if-eqz p2, :cond_6

    .line 148
    .line 149
    invoke-interface {p2}, Lcom/transsion/player/orplayer/f;->pause()V

    .line 150
    .line 151
    .line 152
    :cond_6
    iget-object p2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 153
    .line 154
    if-eqz p2, :cond_8

    .line 155
    .line 156
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    if-eqz p2, :cond_8

    .line 161
    .line 162
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 163
    .line 164
    iget-object v0, v0, Lwn/t;->u:Landroid/widget/ProgressBar;

    .line 165
    .line 166
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    int-to-long v0, v0

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .line 175
    .line 176
    const-string v3, "immvideo savePlayProgress:"

    .line 177
    .line 178
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    const/4 v4, 0x4

    .line 189
    const/4 v5, 0x0

    .line 190
    const-string v1, "PostFeedVideo"

    .line 191
    .line 192
    const/4 v3, 0x0

    .line 193
    move-object v0, p1

    .line 194
    invoke-static/range {v0 .. v5}, Lwf/a$a;->v(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    iget-boolean p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->O:Z

    .line 198
    .line 199
    if-eqz p1, :cond_7

    .line 200
    .line 201
    sget-object p1, Lio/f;->a:Lio/f;

    .line 202
    .line 203
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 204
    .line 205
    iget-object v0, v0, Lwn/t;->u:Landroid/widget/ProgressBar;

    .line 206
    .line 207
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    int-to-long v0, v0

    .line 212
    invoke-virtual {p1, p2, v0, v1}, Lio/f;->e(Ljava/lang/String;J)V

    .line 213
    .line 214
    .line 215
    goto :goto_0

    .line 216
    :cond_7
    sget-object p1, Lio/d;->a:Lio/d;

    .line 217
    .line 218
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 219
    .line 220
    iget-object v0, v0, Lwn/t;->u:Landroid/widget/ProgressBar;

    .line 221
    .line 222
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    int-to-long v0, v0

    .line 227
    invoke-virtual {p1, p2, v0, v1}, Lio/d;->c(Ljava/lang/String;J)V

    .line 228
    .line 229
    .line 230
    :cond_8
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
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->r:Landroid/view/GestureDetector;

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

.method public onVideoPause(Lgn/e;)V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->a:Ljava/lang/String;

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
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 14
    .line 15
    iget-object p1, p1, Lwn/t;->n:Landroidx/appcompat/widget/AppCompatImageView;

    .line 16
    .line 17
    const-string v0, "ivPause"

    .line 18
    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 26
    .line 27
    iget-object p1, p1, Lwn/t;->w:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 28
    .line 29
    const-string v0, "seekBar"

    .line 30
    .line 31
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 38
    .line 39
    iget-object p1, p1, Lwn/t;->u:Landroid/widget/ProgressBar;

    .line 40
    .line 41
    const-string v0, "progressBar"

    .line 42
    .line 43
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->t:Lcom/transsion/postdetail/layer/b;

    .line 50
    .line 51
    if-eqz p1, :cond_0

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/b;->n()V

    .line 54
    .line 55
    .line 56
    :cond_0
    const/4 p1, 0x0

    .line 57
    invoke-virtual {p0, p1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/player/orplayer/e$a;->H(Lcom/transsion/player/orplayer/e;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onVideoStart(Lgn/e;)V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->a:Ljava/lang/String;

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
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->t:Lcom/transsion/postdetail/layer/b;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/b;->o()V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 21
    .line 22
    iget-object p1, p1, Lwn/t;->n:Landroidx/appcompat/widget/AppCompatImageView;

    .line 23
    .line 24
    const-string v0, "ivPause"

    .line 25
    .line 26
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 33
    .line 34
    iget-object p1, p1, Lwn/t;->w:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 35
    .line 36
    const-string v0, "seekBar"

    .line 37
    .line 38
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->setLoading(Z)V

    .line 46
    .line 47
    .line 48
    const/4 p1, 0x1

    .line 49
    invoke-virtual {p0, p1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->p:Lep/a;

    .line 53
    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    invoke-interface {p1}, Lep/a;->pause()V

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void
.end method

.method public final setData(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Landroidx/fragment/app/Fragment;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "fragment"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "commentId"

    .line 12
    .line 13
    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "pageFrom"

    .line 17
    .line 18
    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lcom/transsion/postdetail/layer/b;

    .line 22
    .line 23
    invoke-direct {v0}, Lcom/transsion/postdetail/layer/b;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->t:Lcom/transsion/postdetail/layer/b;

    .line 27
    .line 28
    invoke-virtual {v0, p5}, Lcom/transsion/postdetail/layer/b;->s(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->t:Lcom/transsion/postdetail/layer/b;

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0, p6}, Lcom/transsion/postdetail/layer/b;->r(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object p6, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->t:Lcom/transsion/postdetail/layer/b;

    .line 39
    .line 40
    if-eqz p6, :cond_2

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    const-string v0, ""

    .line 49
    .line 50
    :cond_1
    invoke-virtual {p6, v0, p1}, Lcom/transsion/postdetail/layer/b;->x(Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    iget-object p6, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->t:Lcom/transsion/postdetail/layer/b;

    .line 54
    .line 55
    if-eqz p6, :cond_4

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    goto :goto_0

    .line 74
    :cond_3
    const/4 v0, 0x0

    .line 75
    :goto_0
    invoke-virtual {p6, v0}, Lcom/transsion/postdetail/layer/b;->y(I)V

    .line 76
    .line 77
    .line 78
    :cond_4
    iput-object p2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->h:Landroidx/fragment/app/Fragment;

    .line 79
    .line 80
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 81
    .line 82
    .line 83
    move-result-object p4

    .line 84
    iput-object p4, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->i:Ljava/lang/Boolean;

    .line 85
    .line 86
    iput-object p5, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->k:Ljava/lang/String;

    .line 87
    .line 88
    iput-object p3, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->j:Ljava/lang/Integer;

    .line 89
    .line 90
    iput-boolean p7, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->K:Z

    .line 91
    .line 92
    iput-object p8, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->l:Ljava/lang/String;

    .line 93
    .line 94
    iput-object p9, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->H:Ljava/lang/String;

    .line 95
    .line 96
    iput-boolean p10, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->O:Z

    .line 97
    .line 98
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 99
    .line 100
    .line 101
    move-result-object p3

    .line 102
    invoke-virtual {p3, p0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/t;)V

    .line 103
    .line 104
    .line 105
    new-instance p3, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$setData$$inlined$viewModels$default$1;

    .line 106
    .line 107
    invoke-direct {p3, p2}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$setData$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 108
    .line 109
    .line 110
    const-class p4, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    .line 111
    .line 112
    invoke-static {p4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 113
    .line 114
    .line 115
    move-result-object p4

    .line 116
    new-instance p5, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$setData$$inlined$viewModels$default$2;

    .line 117
    .line 118
    invoke-direct {p5, p3}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$setData$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 119
    .line 120
    .line 121
    new-instance p6, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$setData$$inlined$viewModels$default$3;

    .line 122
    .line 123
    invoke-direct {p6, p3, p2}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$setData$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 124
    .line 125
    .line 126
    invoke-static {p2, p4, p5, p6}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 127
    .line 128
    .line 129
    move-result-object p3

    .line 130
    invoke-static {p3}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->Z(Lkotlin/Lazy;)Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    .line 131
    .line 132
    .line 133
    move-result-object p3

    .line 134
    iput-object p3, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->c:Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    .line 135
    .line 136
    new-instance p3, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$setData$$inlined$viewModels$default$4;

    .line 137
    .line 138
    invoke-direct {p3, p2}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$setData$$inlined$viewModels$default$4;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 139
    .line 140
    .line 141
    const-class p4, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    .line 142
    .line 143
    invoke-static {p4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 144
    .line 145
    .line 146
    move-result-object p4

    .line 147
    new-instance p5, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$setData$$inlined$viewModels$default$5;

    .line 148
    .line 149
    invoke-direct {p5, p3}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$setData$$inlined$viewModels$default$5;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 150
    .line 151
    .line 152
    new-instance p6, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$setData$$inlined$viewModels$default$6;

    .line 153
    .line 154
    invoke-direct {p6, p3, p2}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$setData$$inlined$viewModels$default$6;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 155
    .line 156
    .line 157
    invoke-static {p2, p4, p5, p6}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 158
    .line 159
    .line 160
    move-result-object p3

    .line 161
    invoke-static {p3}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->a0(Lkotlin/Lazy;)Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    .line 162
    .line 163
    .line 164
    move-result-object p3

    .line 165
    iput-object p3, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->d:Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    .line 166
    .line 167
    new-instance p3, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$setData$$inlined$viewModels$default$7;

    .line 168
    .line 169
    invoke-direct {p3, p2}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$setData$$inlined$viewModels$default$7;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 170
    .line 171
    .line 172
    const-class p4, Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    .line 173
    .line 174
    invoke-static {p4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 175
    .line 176
    .line 177
    move-result-object p4

    .line 178
    new-instance p5, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$setData$$inlined$viewModels$default$8;

    .line 179
    .line 180
    invoke-direct {p5, p3}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$setData$$inlined$viewModels$default$8;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 181
    .line 182
    .line 183
    new-instance p6, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$setData$$inlined$viewModels$default$9;

    .line 184
    .line 185
    invoke-direct {p6, p3, p2}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$setData$$inlined$viewModels$default$9;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 186
    .line 187
    .line 188
    invoke-static {p2, p4, p5, p6}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    invoke-static {p2}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b0(Lkotlin/Lazy;)Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    iput-object p2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->e:Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    .line 197
    .line 198
    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 199
    .line 200
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->p0(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 201
    .line 202
    .line 203
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->i0(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getStat()Lcom/transsion/moviedetailapi/bean/Stat;

    .line 207
    .line 208
    .line 209
    move-result-object p2

    .line 210
    const-wide/16 p3, 0x0

    .line 211
    .line 212
    if-eqz p2, :cond_5

    .line 213
    .line 214
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Stat;->getCommentCount()Ljava/lang/Long;

    .line 215
    .line 216
    .line 217
    move-result-object p2

    .line 218
    if-eqz p2, :cond_5

    .line 219
    .line 220
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 221
    .line 222
    .line 223
    move-result-wide p5

    .line 224
    goto :goto_1

    .line 225
    :cond_5
    move-wide p5, p3

    .line 226
    :goto_1
    invoke-direct {p0, p5, p6}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->e0(J)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getStat()Lcom/transsion/moviedetailapi/bean/Stat;

    .line 230
    .line 231
    .line 232
    move-result-object p2

    .line 233
    if-eqz p2, :cond_6

    .line 234
    .line 235
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Stat;->getShareCount()Ljava/lang/Long;

    .line 236
    .line 237
    .line 238
    move-result-object p2

    .line 239
    if-eqz p2, :cond_6

    .line 240
    .line 241
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 242
    .line 243
    .line 244
    move-result-wide p3

    .line 245
    :cond_6
    invoke-direct {p0, p3, p4}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->l0(J)V

    .line 246
    .line 247
    .line 248
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->o0(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 249
    .line 250
    .line 251
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->f0(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 252
    .line 253
    .line 254
    if-eqz p7, :cond_7

    .line 255
    .line 256
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lwn/t;

    .line 257
    .line 258
    iget-object p1, p1, Lwn/t;->v:Landroid/widget/Space;

    .line 259
    .line 260
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    instance-of p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 265
    .line 266
    if-eqz p2, :cond_7

    .line 267
    .line 268
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 269
    .line 270
    const/high16 p2, 0x41800000    # 16.0f

    .line 271
    .line 272
    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 273
    .line 274
    .line 275
    move-result p2

    .line 276
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 277
    .line 278
    :cond_7
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->m0()V

    .line 279
    .line 280
    .line 281
    return-void
.end method

.method public setOnSeekCompleteListener()V
    .locals 11

    .line 1
    invoke-static {p0}, Lcom/transsion/player/orplayer/e$a;->K(Lcom/transsion/player/orplayer/e;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    .line 9
    .line 10
    iget-wide v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->J:J

    .line 11
    .line 12
    const-wide/16 v2, 0x0

    .line 13
    .line 14
    cmp-long v4, v0, v2

    .line 15
    .line 16
    if-lez v4, :cond_1

    .line 17
    .line 18
    sget-object v5, Lwf/a;->a:Lwf/a$a;

    .line 19
    .line 20
    iget-object v6, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->a:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v4, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v7, "seek OnSeekComplete\uff0cnextSeekTo:"

    .line 28
    .line 29
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    filled-new-array {v0}, [Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    const/4 v9, 0x4

    .line 44
    const/4 v10, 0x0

    .line 45
    const/4 v8, 0x0

    .line 46
    invoke-static/range {v5 .. v10}, Lwf/a$a;->r(Lwf/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->m:Lcom/transsion/player/orplayer/f;

    .line 50
    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    iget-wide v4, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->J:J

    .line 54
    .line 55
    invoke-interface {v0, v4, v5}, Lcom/transsion/player/orplayer/f;->seekTo(J)V

    .line 56
    .line 57
    .line 58
    :cond_0
    iput-wide v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->J:J

    .line 59
    .line 60
    :cond_1
    return-void
.end method

.method public final setPagerLayoutManager(Lcom/transsion/shorttv/base/pager/PagerLayoutManager;)V
    .locals 1

    .line 1
    const-string v0, "pagerLayoutManager"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->o:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    .line 7
    .line 8
    return-void
.end method

.method public final setPlayer(Lcom/transsion/player/orplayer/f;Lcom/transsion/player/ui/ORPlayerView;)V
    .locals 1

    .line 1
    const-string v0, "orPlayer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "orPlayerView"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->m:Lcom/transsion/player/orplayer/f;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->n:Lcom/transsion/player/ui/ORPlayerView;

    .line 14
    .line 15
    iget-object p2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->t:Lcom/transsion/postdetail/layer/b;

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p2, p1}, Lcom/transsion/postdetail/layer/b;->v(Lcom/transsion/player/orplayer/f;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final setPosition(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->j:Ljava/lang/Integer;

    .line 2
    .line 3
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
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->t:Lcom/transsion/postdetail/layer/b;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/layer/b;->A(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final showCommentDialog()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->h:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v1, Lcom/transsion/postdetail/ui/dialog/ImmVideoCommentDialog;->m:Lcom/transsion/postdetail/ui/dialog/ImmVideoCommentDialog$a;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->l:Ljava/lang/String;

    .line 16
    .line 17
    const/16 v6, 0x8

    .line 18
    .line 19
    const/4 v7, 0x0

    .line 20
    const-string v4, "postdetail_video"

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    invoke-static/range {v1 .. v7}, Lcom/transsion/postdetail/ui/dialog/ImmVideoCommentDialog$a;->b(Lcom/transsion/postdetail/ui/dialog/ImmVideoCommentDialog$a;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/postdetail/ui/dialog/ImmVideoCommentDialog;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iput-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->u:Lcom/transsion/postdetail/ui/dialog/ImmVideoCommentDialog;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    const-string v2, "immComment"

    .line 32
    .line 33
    invoke-virtual {v1, v0, v2}, Lcom/transsion/baseui/dialog/BaseDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->u:Lcom/transsion/postdetail/ui/dialog/ImmVideoCommentDialog;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    new-instance v1, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$f;

    .line 41
    .line 42
    invoke-direct {v1, p0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$f;-><init>(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/transsion/postdetail/ui/dialog/ImmVideoCommentDialog;->A0(Lcom/transsion/postdetail/ui/fragment/CommentFragment$b;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    sget-object v0, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 51
    .line 52
    const-string v2, "postdetail_video"

    .line 53
    .line 54
    iget-object v3, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->H:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/postdetail/helper/a;->e(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final videoStartPrepare(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->H:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->t:Lcom/transsion/postdetail/layer/b;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/layer/b;->t(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->t:Lcom/transsion/postdetail/layer/b;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/b;->g()V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->t:Lcom/transsion/postdetail/layer/b;

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p1, v0, v0}, Lcom/transsion/postdetail/layer/b;->a(II)V

    .line 25
    .line 26
    .line 27
    :cond_2
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->t:Lcom/transsion/postdetail/layer/b;

    .line 28
    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->j:Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/transsion/postdetail/layer/b;->w(Ljava/lang/Integer;)V

    .line 34
    .line 35
    .line 36
    :cond_3
    return-void
.end method
