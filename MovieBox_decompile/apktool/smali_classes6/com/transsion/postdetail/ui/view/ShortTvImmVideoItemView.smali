.class public final Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "source.java"

# interfaces
.implements Lcom/transsion/player/orplayer/e;
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/lifecycle/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00f0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008#\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0008\u0007*\u0002\u00c4\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B!\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cB\u0011\u0008\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u000b\u0010\rB\u001b\u0008\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000fH\u0014\u00a2\u0006\u0004\u0008\u0012\u0010\u0011JE\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00152\u0008\u0010\u0017\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00182\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001b\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u001d\u0010#\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020!\u00a2\u0006\u0004\u0008#\u0010$J\u0015\u0010\'\u001a\u00020\u000f2\u0006\u0010&\u001a\u00020%\u00a2\u0006\u0004\u0008\'\u0010(J)\u0010.\u001a\u00020\u000f2\u0008\u0010*\u001a\u0004\u0018\u00010)2\u0008\u0010,\u001a\u0004\u0018\u00010+2\u0006\u0010-\u001a\u00020\t\u00a2\u0006\u0004\u0008.\u0010/J\u0017\u00102\u001a\u00020\u001b2\u0006\u00101\u001a\u000200H\u0016\u00a2\u0006\u0004\u00082\u00103J\u001f\u00107\u001a\u00020\u000f2\u0006\u00105\u001a\u0002042\u0006\u00101\u001a\u000206H\u0016\u00a2\u0006\u0004\u00087\u00108J\u000f\u00109\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u00089\u0010\u0011J\u0019\u0010<\u001a\u00020\u000f2\u0008\u0010;\u001a\u0004\u0018\u00010:H\u0016\u00a2\u0006\u0004\u0008<\u0010=J\r\u0010>\u001a\u00020\u000f\u00a2\u0006\u0004\u0008>\u0010\u0011J\u0015\u0010@\u001a\u00020\u000f2\u0006\u0010?\u001a\u00020\u0018\u00a2\u0006\u0004\u0008@\u0010AJ\u0015\u0010C\u001a\u00020\u000f2\u0006\u0010B\u001a\u00020\u0018\u00a2\u0006\u0004\u0008C\u0010AJ\u000f\u0010D\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008D\u0010\u0011J\u001f\u0010G\u001a\u00020\u000f2\u0006\u0010E\u001a\u00020\t2\u0006\u0010F\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008G\u0010HJ\u000f\u0010I\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008I\u0010\u0011J\u0019\u0010J\u001a\u00020\u000f2\u0008\u0010;\u001a\u0004\u0018\u00010:H\u0016\u00a2\u0006\u0004\u0008J\u0010=J\u0019\u0010K\u001a\u00020\u000f2\u0008\u0010;\u001a\u0004\u0018\u00010:H\u0016\u00a2\u0006\u0004\u0008K\u0010=J\u0019\u0010L\u001a\u00020\u000f2\u0008\u0010;\u001a\u0004\u0018\u00010:H\u0016\u00a2\u0006\u0004\u0008L\u0010=J!\u0010O\u001a\u00020\u000f2\u0006\u0010N\u001a\u00020M2\u0008\u0010;\u001a\u0004\u0018\u00010:H\u0016\u00a2\u0006\u0004\u0008O\u0010PJ\u0019\u0010Q\u001a\u00020\u000f2\u0008\u0010;\u001a\u0004\u0018\u00010:H\u0016\u00a2\u0006\u0004\u0008Q\u0010=J\u0019\u0010R\u001a\u00020\u000f2\u0008\u0010;\u001a\u0004\u0018\u00010:H\u0016\u00a2\u0006\u0004\u0008R\u0010=J!\u0010U\u001a\u00020\u000f2\u0006\u0010T\u001a\u00020S2\u0008\u0010;\u001a\u0004\u0018\u00010:H\u0016\u00a2\u0006\u0004\u0008U\u0010VJ\u000f\u0010W\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008W\u0010\u0011J\u0019\u0010X\u001a\u00020\u000f2\u0008\u0010;\u001a\u0004\u0018\u00010:H\u0016\u00a2\u0006\u0004\u0008X\u0010=J\u0019\u0010Z\u001a\u00020\u000f2\u0008\u0010Y\u001a\u0004\u0018\u00010\u0018H\u0016\u00a2\u0006\u0004\u0008Z\u0010AJ\u000f\u0010[\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008[\u0010\u0011J\u0019\u0010]\u001a\u00020\u000f2\u0008\u0010\\\u001a\u0004\u0018\u00010)H\u0016\u00a2\u0006\u0004\u0008]\u0010^J\u0019\u0010`\u001a\u00020\u000f2\u0008\u0010_\u001a\u0004\u0018\u00010\u0018H\u0002\u00a2\u0006\u0004\u0008`\u0010AJ\u0017\u0010a\u001a\u00020\u000f2\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008a\u0010\rJ\u0017\u0010b\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008b\u0010cJ\u000f\u0010d\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008d\u0010\u0011J\u000f\u0010e\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008e\u0010\u0011J/\u0010h\u001a\u00020\u000f2\u0008\u0010e\u001a\u0004\u0018\u00010\t2\u0008\u0010f\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010g\u001a\u0004\u0018\u00010\tH\u0002\u00a2\u0006\u0004\u0008h\u0010iJ\u0017\u0010k\u001a\u00020\u000f2\u0006\u0010j\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008k\u0010lJ\u0017\u0010m\u001a\u00020\u000f2\u0006\u0010N\u001a\u00020MH\u0002\u00a2\u0006\u0004\u0008m\u0010nJ\u0017\u0010\\\u001a\u00020\u000f2\u0006\u0010*\u001a\u00020)H\u0002\u00a2\u0006\u0004\u0008\\\u0010^J\u0019\u0010p\u001a\u00020\u000f2\u0008\u0010o\u001a\u0004\u0018\u00010\u0018H\u0002\u00a2\u0006\u0004\u0008p\u0010AJ\u000f\u0010q\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008q\u0010\u0011J\u0017\u0010s\u001a\u00020\u000f2\u0006\u0010r\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008s\u0010lR\u0014\u0010v\u001a\u00020\u00188\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008t\u0010uR\u0014\u0010z\u001a\u00020w8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008x\u0010yR\u0018\u0010~\u001a\u0004\u0018\u00010{8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008|\u0010}R\u001b\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u007f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0080\u0001\u0010\u0081\u0001R\u001c\u0010\u0086\u0001\u001a\u0005\u0018\u00010\u0083\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0084\u0001\u0010\u0085\u0001R\u001b\u0010\u0089\u0001\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0087\u0001\u0010\u0088\u0001R\u001a\u0010\u0016\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008a\u0001\u0010\u008b\u0001R\u001a\u0010\u008d\u0001\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008f\u0010\u008c\u0001R*\u0010\u0017\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u008e\u0001\u0010\u008f\u0001\u001a\u0006\u0008\u0090\u0001\u0010\u0091\u0001\"\u0006\u0008\u0092\u0001\u0010\u0093\u0001R\u0019\u0010\u0019\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0094\u0001\u0010uR\u001a\u0010 \u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0095\u0001\u0010\u0096\u0001R\u001a\u0010\"\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0097\u0001\u0010\u0098\u0001R\u001a\u0010&\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0099\u0001\u0010\u009a\u0001R\u001b\u0010\u009d\u0001\u001a\u0005\u0018\u00010\u009b\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008`\u0010\u009c\u0001R\u001b\u0010\u00a0\u0001\u001a\u0005\u0018\u00010\u009e\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008p\u0010\u009f\u0001R\"\u0010\u00a5\u0001\u001a\u0005\u0018\u00010\u00a1\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008a\u0010\u00a2\u0001\u001a\u0006\u0008\u00a3\u0001\u0010\u00a4\u0001R\u001b\u0010\u00a8\u0001\u001a\u0005\u0018\u00010\u00a6\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008q\u0010\u00a7\u0001R\u0019\u0010\u00ab\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a9\u0001\u0010\u00aa\u0001R\u0019\u0010\u00ad\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ac\u0001\u0010\u00aa\u0001R\u0018\u0010\u00ae\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008m\u0010\u00aa\u0001R\u0019\u0010\u00b1\u0001\u001a\u00020M8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00af\u0001\u0010\u00b0\u0001R\u0016\u0010\u00b3\u0001\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\\\u0010\u00b2\u0001R\u0016\u0010\u00b4\u0001\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008e\u0010\u00b2\u0001R\u0017\u0010\u00b6\u0001\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00b5\u0001\u0010\u00b2\u0001R\u0017\u0010\u00b8\u0001\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00b7\u0001\u0010\u00b2\u0001R\u0017\u0010\u00ba\u0001\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00b9\u0001\u0010\u00b2\u0001R\u0016\u0010\u00bb\u0001\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008d\u0010\u00b2\u0001R\u0017\u0010?\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00bc\u0001\u0010uR\u0018\u0010\u00c0\u0001\u001a\u00030\u00bd\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00be\u0001\u0010\u00bf\u0001R\u0018\u0010\u00c1\u0001\u001a\u00020M8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008h\u0010\u00b0\u0001R\u0018\u0010\u001c\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c2\u0001\u0010\u00aa\u0001R\u0018\u0010\u00c3\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008b\u0010\u00aa\u0001R\u0018\u0010\u00c7\u0001\u001a\u00030\u00c4\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00c5\u0001\u0010\u00c6\u0001R\u0019\u0010\u00c9\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c8\u0001\u0010\u00aa\u0001\u00a8\u0006\u00ca\u0001\u00b2\u0006\u000c\u0010~\u001a\u00020{8\nX\u008a\u0084\u0002\u00b2\u0006\r\u0010\u0082\u0001\u001a\u00020\u007f8\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;",
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
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "item",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "position",
        "",
        "basePostId",
        "baseItemType",
        "",
        "attachToMain",
        "setData",
        "(Lcom/transsion/moviedetailapi/bean/Subject;Landroidx/fragment/app/Fragment;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V",
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
        "Landroid/view/View;",
        "view",
        "Lcom/transsion/moviedetailapi/bean/Video;",
        "video",
        "maxHeight",
        "addVideoView",
        "(Landroid/view/View;Lcom/transsion/moviedetailapi/bean/Video;I)V",
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
        "pageFrom",
        "videoStartPrepare",
        "(Ljava/lang/String;)V",
        "url",
        "setVideoUrl",
        "onSetDataSource",
        "width",
        "height",
        "onVideoSizeChanged",
        "(II)V",
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
        "uuid",
        "onMediaItemTransition",
        "setOnSeekCompleteListener",
        "v",
        "onClick",
        "(Landroid/view/View;)V",
        "type",
        "n",
        "p",
        "F",
        "(Lcom/transsion/moviedetailapi/bean/Subject;)V",
        "A",
        "w",
        "h",
        "rootHeight",
        "D",
        "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V",
        "show",
        "setLoading",
        "(Z)V",
        "t",
        "(J)V",
        "id",
        "o",
        "q",
        "visible",
        "setContentVisibility",
        "a",
        "Ljava/lang/String;",
        "TAG",
        "Lwn/g0;",
        "b",
        "Lwn/g0;",
        "viewBinding",
        "Lcom/transsion/postdetail/viewmodel/w;",
        "c",
        "Lcom/transsion/postdetail/viewmodel/w;",
        "videoDetailModel",
        "Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;",
        "d",
        "Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;",
        "shortTvPlayListViewModel",
        "Lcom/transsion/share/share/ShareDialogFragment;",
        "e",
        "Lcom/transsion/share/share/ShareDialogFragment;",
        "mShareDialog",
        "f",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "data",
        "g",
        "Landroidx/fragment/app/Fragment;",
        "Ljava/lang/Boolean;",
        "videoLoadMore",
        "i",
        "Ljava/lang/Integer;",
        "getPosition",
        "()Ljava/lang/Integer;",
        "setPosition",
        "(Ljava/lang/Integer;)V",
        "j",
        "k",
        "Lcom/transsion/player/orplayer/f;",
        "l",
        "Lcom/transsion/player/ui/ORPlayerView;",
        "m",
        "Lcom/transsion/shorttv/base/pager/PagerLayoutManager;",
        "Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;",
        "Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;",
        "guideView",
        "Landroid/view/GestureDetector;",
        "Landroid/view/GestureDetector;",
        "gestureDetector",
        "Lqx/a;",
        "Lkotlin/Lazy;",
        "getLoginApi",
        "()Lqx/a;",
        "loginApi",
        "Lcom/transsion/postdetail/layer/b;",
        "Lcom/transsion/postdetail/layer/b;",
        "dotLayer",
        "r",
        "Z",
        "isClickPause",
        "s",
        "isHorizontalDragging",
        "isPageHide",
        "u",
        "J",
        "currentSaveProgress",
        "I",
        "resImgLargeWidth",
        "resImgLargeHeight",
        "x",
        "resImgSmallWidth",
        "y",
        "resImgSmallHeight",
        "z",
        "screenHeight",
        "dp170",
        "B",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "C",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "isSeekToFinish",
        "nextSeekTo",
        "E",
        "isPageRelease",
        "com/transsion/postdetail/ui/view/ShortTvImmVideoItemView$b",
        "G",
        "Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$b;",
        "favoriteResultObserver",
        "H",
        "isPrepare",
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
.field private final A:I

.field private B:Ljava/lang/String;

.field private final C:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private D:J

.field private E:Z

.field private F:Z

.field private final G:Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$b;

.field private H:Z

.field private final a:Ljava/lang/String;

.field private final b:Lwn/g0;

.field private c:Lcom/transsion/postdetail/viewmodel/w;

.field private d:Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

.field private e:Lcom/transsion/share/share/ShareDialogFragment;

.field private f:Lcom/transsion/moviedetailapi/bean/Subject;

.field private g:Landroidx/fragment/app/Fragment;

.field private h:Ljava/lang/Boolean;

.field private i:Ljava/lang/Integer;

.field private j:Ljava/lang/String;

.field private k:Lcom/transsion/player/orplayer/f;

.field private l:Lcom/transsion/player/ui/ORPlayerView;

.field private m:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

.field private n:Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;

.field private o:Landroid/view/GestureDetector;

.field private final p:Lkotlin/Lazy;

.field private q:Lcom/transsion/postdetail/layer/b;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:J

.field private final v:I

.field private final w:I

.field private final x:I

.field private final y:I

.field private final z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    iput-object p2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->a:Ljava/lang/String;

    .line 3
    new-instance p2, Lcom/transsion/postdetail/ui/view/y1;

    invoke-direct {p2}, Lcom/transsion/postdetail/ui/view/y1;-><init>()V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->p:Lkotlin/Lazy;

    .line 4
    invoke-static {}, Lcom/blankj/utilcode/util/y;->c()I

    move-result p2

    iput p2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->z:I

    const/high16 p2, 0x432a0000    # 170.0f

    .line 5
    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p2

    iput p2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->A:I

    .line 6
    const-string p2, ""

    iput-object p2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->B:Ljava/lang/String;

    .line 7
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    iput-boolean p3, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->E:Z

    .line 9
    new-instance p2, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$b;

    invoke-direct {p2, p0}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$b;-><init>(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)V

    iput-object p2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->G:Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$b;

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/transsion/postdetail/R$layout;->layout_short_tv_immersion_video_item_view:I

    invoke-static {p2, p3, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 11
    invoke-static {p0}, Lwn/g0;->a(Landroid/view/View;)Lwn/g0;

    move-result-object p2

    const-string p3, "bind(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 12
    iget-object p3, p2, Lwn/g0;->s:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object p3, p2, Lwn/g0;->i:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object p3, p2, Lwn/g0;->k:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object p3, p2, Lwn/g0;->u:Lcom/noober/background/view/BLTextView;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object p3, p2, Lwn/g0;->g:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object p3, p2, Lwn/g0;->j:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object p3, p2, Lwn/g0;->v:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object p3, p2, Lwn/g0;->q:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 p3, 0x42400000    # 48.0f

    .line 20
    invoke-static {p3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p3

    iput p3, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->v:I

    const/high16 p3, 0x42800000    # 64.0f

    .line 21
    invoke-static {p3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p3

    iput p3, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->w:I

    const/high16 p3, 0x41c00000    # 24.0f

    .line 22
    invoke-static {p3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p3

    iput p3, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->x:I

    const/high16 p3, 0x42000000    # 32.0f

    .line 23
    invoke-static {p3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p3

    iput p3, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->y:I

    .line 24
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->p(Landroid/content/Context;)V

    .line 25
    sget-object p1, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->k:Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$a;

    invoke-virtual {p1}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$a;->a()Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->m()I

    move-result p1

    if-lez p1, :cond_0

    .line 26
    iget-object p1, p2, Lwn/g0;->n:Landroid/widget/Space;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const-string p3, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 27
    iget p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const/high16 v0, 0x420c0000    # 35.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    if-ge p3, v0, :cond_0

    .line 28
    iget p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    add-int/2addr p3, v0

    iput p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 29
    iget-object p2, p2, Lwn/g0;->n:Landroid/widget/Space;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private final A()V
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 4
    .line 5
    iget-object v2, v2, Lwn/g0;->k:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 6
    .line 7
    const-string v3, "ivVideoAvatar"

    .line 8
    .line 9
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v2}, Luf/c;->g(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 16
    .line 17
    iget-object v2, v2, Lwn/g0;->g:Landroidx/appcompat/widget/AppCompatImageView;

    .line 18
    .line 19
    const-string v3, "ivDownload"

    .line 20
    .line 21
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v2}, Luf/c;->k(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 28
    .line 29
    iget-object v2, v2, Lwn/g0;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 30
    .line 31
    const-string v3, "tvTitle"

    .line 32
    .line 33
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v2}, Luf/c;->k(Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 40
    .line 41
    iget-object v2, v2, Lwn/g0;->u:Lcom/noober/background/view/BLTextView;

    .line 42
    .line 43
    const-string v3, "tvShortTvEp"

    .line 44
    .line 45
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v2}, Luf/c;->k(Landroid/view/View;)V

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 52
    .line 53
    iget-object v2, v2, Lwn/g0;->j:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 54
    .line 55
    const-string v3, "ivShortCover"

    .line 56
    .line 57
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v2}, Luf/c;->k(Landroid/view/View;)V

    .line 61
    .line 62
    .line 63
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 64
    .line 65
    iget-object v2, v2, Lwn/g0;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 66
    .line 67
    iget-object v4, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 68
    .line 69
    const/4 v5, 0x0

    .line 70
    if-eqz v4, :cond_0

    .line 71
    .line 72
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    move-object v4, v5

    .line 78
    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    .line 81
    sget-object v2, Lcom/transsion/postdetail/util/s;->a:Lcom/transsion/postdetail/util/s;

    .line 82
    .line 83
    iget-object v4, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 84
    .line 85
    if-eqz v4, :cond_1

    .line 86
    .line 87
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Subject;->getTotalEpisode()I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    goto :goto_1

    .line 92
    :cond_1
    move v4, v1

    .line 93
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-virtual {v2, v4}, Lcom/transsion/postdetail/util/s;->a(Ljava/lang/Integer;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    iget-object v4, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 102
    .line 103
    iget-object v4, v4, Lwn/g0;->q:Landroidx/appcompat/widget/AppCompatTextView;

    .line 104
    .line 105
    iget-object v6, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 106
    .line 107
    if-eqz v6, :cond_2

    .line 108
    .line 109
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Subject;->getDescription()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    goto :goto_2

    .line 114
    :cond_2
    move-object v6, v5

    .line 115
    :goto_2
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    .line 117
    .line 118
    iget-object v4, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 119
    .line 120
    iget-object v4, v4, Lwn/g0;->u:Lcom/noober/background/view/BLTextView;

    .line 121
    .line 122
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    sget v7, Lcom/transsion/postdetail/R$string;->short_tv_play_all:I

    .line 127
    .line 128
    new-array v8, v0, [Ljava/lang/Object;

    .line 129
    .line 130
    aput-object v2, v8, v1

    .line 131
    .line 132
    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    .line 138
    .line 139
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 140
    .line 141
    iget-object v2, v2, Lwn/g0;->u:Lcom/noober/background/view/BLTextView;

    .line 142
    .line 143
    invoke-static {v2}, Lcom/transsion/baseui/widget/jumpingbeans/a;->a(Landroid/widget/TextView;)Lcom/transsion/baseui/widget/jumpingbeans/a$a;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    iget-object v4, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 148
    .line 149
    iget-object v4, v4, Lwn/g0;->u:Lcom/noober/background/view/BLTextView;

    .line 150
    .line 151
    invoke-virtual {v4}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    invoke-virtual {v2, v1, v4}, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->e(II)Lcom/transsion/baseui/widget/jumpingbeans/a$a;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {v1, v0}, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->g(Z)Lcom/transsion/baseui/widget/jumpingbeans/a$a;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    const/16 v2, 0x64

    .line 172
    .line 173
    invoke-virtual {v1, v2}, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->i(I)Lcom/transsion/baseui/widget/jumpingbeans/a$a;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    const v2, 0x3d4ccccd    # 0.05f

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v2}, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->f(F)Lcom/transsion/baseui/widget/jumpingbeans/a$a;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    const/16 v2, 0x2710

    .line 185
    .line 186
    invoke-virtual {v1, v2}, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->h(I)Lcom/transsion/baseui/widget/jumpingbeans/a$a;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {v1}, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->a()Lcom/transsion/baseui/widget/jumpingbeans/a;

    .line 191
    .line 192
    .line 193
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 194
    .line 195
    iget-object v1, v1, Lwn/g0;->j:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 196
    .line 197
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 198
    .line 199
    if-eqz v1, :cond_3

    .line 200
    .line 201
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getBuiltIn()Z

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    if-ne v1, v0, :cond_3

    .line 206
    .line 207
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    new-instance v9, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$updateShortTVInfo$1;

    .line 216
    .line 217
    invoke-direct {v9, p0, v5}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$updateShortTVInfo$1;-><init>(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;Lkotlin/coroutines/Continuation;)V

    .line 218
    .line 219
    .line 220
    const/4 v10, 0x3

    .line 221
    const/4 v11, 0x0

    .line 222
    const/4 v7, 0x0

    .line 223
    const/4 v8, 0x0

    .line 224
    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 225
    .line 226
    .line 227
    goto :goto_3

    .line 228
    :cond_3
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 229
    .line 230
    if-eqz v1, :cond_8

    .line 231
    .line 232
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    if-eqz v1, :cond_8

    .line 237
    .line 238
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    if-eqz v1, :cond_8

    .line 243
    .line 244
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->g:Landroidx/fragment/app/Fragment;

    .line 245
    .line 246
    if-eqz v2, :cond_8

    .line 247
    .line 248
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    if-nez v2, :cond_4

    .line 253
    .line 254
    goto :goto_3

    .line 255
    :cond_4
    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    .line 256
    .line 257
    .line 258
    move-result v4

    .line 259
    if-ne v4, v0, :cond_5

    .line 260
    .line 261
    goto :goto_3

    .line 262
    :cond_5
    sget-object v4, Lni/f;->a:Lni/f$a;

    .line 263
    .line 264
    invoke-virtual {v4, v2}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    invoke-virtual {v2, v1}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    const/high16 v2, 0x41a80000    # 21.0f

    .line 273
    .line 274
    invoke-static {v2}, Lcom/blankj/utilcode/util/i;->e(F)I

    .line 275
    .line 276
    .line 277
    move-result v2

    .line 278
    invoke-virtual {v1, v2}, Lni/f$b;->m(I)Lni/f$b;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    const/high16 v2, 0x41f00000    # 30.0f

    .line 283
    .line 284
    invoke-static {v2}, Lcom/blankj/utilcode/util/i;->e(F)I

    .line 285
    .line 286
    .line 287
    move-result v2

    .line 288
    invoke-virtual {v1, v2}, Lni/f$b;->c(I)Lni/f$b;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 293
    .line 294
    if-eqz v2, :cond_6

    .line 295
    .line 296
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    if-eqz v2, :cond_6

    .line 301
    .line 302
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    if-nez v2, :cond_7

    .line 307
    .line 308
    :cond_6
    const-string v2, ""

    .line 309
    .line 310
    :cond_7
    invoke-virtual {v1, v2}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    invoke-virtual {v1, v0}, Lni/f$b;->h(Z)Lni/f$b;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 319
    .line 320
    iget-object v1, v1, Lwn/g0;->j:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 321
    .line 322
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0, v1}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 326
    .line 327
    .line 328
    :cond_8
    :goto_3
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 329
    .line 330
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 331
    .line 332
    .line 333
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 334
    .line 335
    if-eqz v1, :cond_9

    .line 336
    .line 337
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getShortTVFavInfo()Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;

    .line 338
    .line 339
    .line 340
    move-result-object v5

    .line 341
    :cond_9
    iput-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 342
    .line 343
    const-string v1, "0"

    .line 344
    .line 345
    if-nez v5, :cond_a

    .line 346
    .line 347
    new-instance v2, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;

    .line 348
    .line 349
    const/4 v10, 0x7

    .line 350
    const/4 v11, 0x0

    .line 351
    const/4 v7, 0x0

    .line 352
    const/4 v8, 0x0

    .line 353
    const/4 v9, 0x0

    .line 354
    move-object v6, v2

    .line 355
    invoke-direct/range {v6 .. v11}, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v2, v1}, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;->setFavoriteNum(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    iput-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 362
    .line 363
    iget-object v3, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 364
    .line 365
    if-eqz v3, :cond_a

    .line 366
    .line 367
    invoke-virtual {v3, v2}, Lcom/transsion/moviedetailapi/bean/Subject;->setShortTVFavInfo(Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;)V

    .line 368
    .line 369
    .line 370
    :cond_a
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 371
    .line 372
    iget-object v2, v2, Lwn/g0;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 373
    .line 374
    const-string v3, "tvFavorite"

    .line 375
    .line 376
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    invoke-static {v2}, Luf/c;->k(Landroid/view/View;)V

    .line 380
    .line 381
    .line 382
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 383
    .line 384
    iget-object v2, v2, Lwn/g0;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 385
    .line 386
    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 387
    .line 388
    check-cast v3, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;

    .line 389
    .line 390
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;->getHasFavorite()Z

    .line 391
    .line 392
    .line 393
    move-result v3

    .line 394
    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 395
    .line 396
    .line 397
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 398
    .line 399
    iget-object v2, v2, Lwn/g0;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 400
    .line 401
    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 402
    .line 403
    check-cast v3, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;

    .line 404
    .line 405
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;->getFavoriteNum()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v3

    .line 409
    if-nez v3, :cond_b

    .line 410
    .line 411
    goto :goto_4

    .line 412
    :cond_b
    move-object v1, v3

    .line 413
    :goto_4
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 414
    .line 415
    .line 416
    move-result-wide v3

    .line 417
    invoke-static {v3, v4}, Lcom/transsion/baseui/util/j;->a(J)Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    .line 423
    .line 424
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 425
    .line 426
    iget-object v1, v1, Lwn/g0;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 427
    .line 428
    new-instance v2, Lcom/transsion/postdetail/ui/view/v1;

    .line 429
    .line 430
    invoke-direct {v2, p0, v0}, Lcom/transsion/postdetail/ui/view/v1;-><init>(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    const-string v1, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    .line 441
    .line 442
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    move-object v3, v0

    .line 446
    check-cast v3, Landroidx/appcompat/app/AppCompatActivity;

    .line 447
    .line 448
    new-instance v8, Lcom/transsion/postdetail/ui/view/w1;

    .line 449
    .line 450
    invoke-direct {v8, p0}, Lcom/transsion/postdetail/ui/view/w1;-><init>(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)V

    .line 451
    .line 452
    .line 453
    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 454
    .line 455
    const-class v1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 456
    .line 457
    invoke-virtual {v0, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    move-object v2, v0

    .line 462
    check-cast v2, Lcom/transsnet/flow/event/FlowEventBus;

    .line 463
    .line 464
    const-class v0, Lhx/c;

    .line 465
    .line 466
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v4

    .line 470
    const-string v0, "getName(...)"

    .line 471
    .line 472
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    sget-object v5, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 476
    .line 477
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    invoke-virtual {v0}, Lkotlinx/coroutines/a2;->p()Lkotlinx/coroutines/a2;

    .line 482
    .line 483
    .line 484
    move-result-object v6

    .line 485
    const/4 v7, 0x0

    .line 486
    invoke-virtual/range {v2 .. v8}, Lcom/transsnet/flow/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    .line 487
    .line 488
    .line 489
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 490
    .line 491
    if-eqz v0, :cond_c

    .line 492
    .line 493
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getShortTVFirstEp()Lcom/transsion/moviedetailapi/bean/ShortTVItem;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    if-eqz v0, :cond_c

    .line 498
    .line 499
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/ShortTVItem;->getVideo()Lcom/transsion/moviedetailapi/bean/Media;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    if-eqz v0, :cond_c

    .line 504
    .line 505
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Media;->getVideoAddress()Lcom/transsion/moviedetailapi/bean/Video;

    .line 506
    .line 507
    .line 508
    move-result-object v0

    .line 509
    if-eqz v0, :cond_c

    .line 510
    .line 511
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Video;->getWidth()Ljava/lang/Integer;

    .line 512
    .line 513
    .line 514
    move-result-object v2

    .line 515
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Video;->getHeight()Ljava/lang/Integer;

    .line 516
    .line 517
    .line 518
    move-result-object v3

    .line 519
    const/4 v5, 0x4

    .line 520
    const/4 v6, 0x0

    .line 521
    const/4 v4, 0x0

    .line 522
    move-object v1, p0

    .line 523
    invoke-static/range {v1 .. v6}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->E(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 524
    .line 525
    .line 526
    :cond_c
    return-void
.end method

.method private static final B(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/transsion/postdetail/shorttv/k;->a:Lcom/transsion/postdetail/shorttv/k;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p2, v1

    .line 14
    :goto_0
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :cond_1
    move-object v2, v1

    .line 23
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p1, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;->getHasFavorite()Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    const/16 v7, 0x20

    .line 32
    .line 33
    const/4 v8, 0x0

    .line 34
    const-string v3, ""

    .line 35
    .line 36
    const-string v5, "shorttv_detail_video"

    .line 37
    .line 38
    const/4 v6, 0x0

    .line 39
    move-object v1, p2

    .line 40
    invoke-static/range {v0 .. v8}, Lcom/transsion/postdetail/shorttv/k;->d(Lcom/transsion/postdetail/shorttv/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 44
    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    iget-object p0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->d:Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    .line 48
    .line 49
    if-eqz p0, :cond_2

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->d(Lcom/transsion/moviedetailapi/bean/Subject;)V

    .line 52
    .line 53
    .line 54
    :cond_2
    return-void
.end method

.method private static final C(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;Lhx/c;)Lkotlin/Unit;
    .locals 4

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
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

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
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getShortTVFavInfo()Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    invoke-virtual {v1, p1}, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;->update(Lhx/c;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 44
    .line 45
    iget-object v1, v1, Lwn/g0;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 46
    .line 47
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 48
    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getShortTVFavInfo()Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    if-eqz v2, :cond_3

    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;->getFavoriteNum()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    if-nez v2, :cond_4

    .line 62
    .line 63
    :cond_3
    const-string v2, "0"

    .line 64
    .line 65
    :cond_4
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 66
    .line 67
    .line 68
    move-result-wide v2

    .line 69
    invoke-static {v2, v3}, Lcom/transsion/baseui/util/j;->a(J)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    iget-object p0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 77
    .line 78
    iget-object p0, p0, Lwn/g0;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 79
    .line 80
    invoke-virtual {p1}, Lhx/c;->a()Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :catch_0
    sget-object p0, Lwf/a;->a:Lwf/a$a;

    .line 89
    .line 90
    const/4 p1, 0x0

    .line 91
    const/4 v1, 0x2

    .line 92
    const-string v2, " callback change data fail"

    .line 93
    .line 94
    invoke-static {p0, v2, p1, v1, v0}, Lwf/a$a;->g(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 98
    .line 99
    return-object p0
.end method

.method private final D(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 5

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    if-eqz p3, :cond_5

    .line 4
    .line 5
    if-eqz p2, :cond_5

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 15
    .line 16
    iget-object v0, v0, Lwn/g0;->d:Landroid/widget/FrameLayout;

    .line 17
    .line 18
    const-string v1, "flContainer"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_4

    .line 28
    .line 29
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 30
    .line 31
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    mul-int/2addr v3, v2

    .line 40
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    div-int/2addr v3, v2

    .line 45
    const/4 v2, 0x1

    .line 46
    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->s(II)Lkotlin/ranges/IntRange;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    invoke-virtual {v2, v4}, Lkotlin/ranges/IntRange;->o(I)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_1

    .line 59
    .line 60
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    mul-int/2addr v2, p1

    .line 69
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    div-int/2addr v2, p1

    .line 74
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    goto :goto_0

    .line 79
    :cond_1
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    :goto_0
    iget p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 84
    .line 85
    if-ne v2, p1, :cond_2

    .line 86
    .line 87
    iget p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 88
    .line 89
    if-eq v3, p1, :cond_3

    .line 90
    .line 91
    :cond_2
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 92
    .line 93
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 94
    .line 95
    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    .line 100
    .line 101
    const-string p2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    .line 102
    .line 103
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p1

    .line 107
    :cond_5
    :goto_1
    return-void
.end method

.method static synthetic E(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_1

    .line 4
    .line 5
    iget-object p3, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 6
    .line 7
    invoke-virtual {p3}, Lwn/g0;->getRoot()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    check-cast p3, Landroid/view/ViewGroup;

    .line 16
    .line 17
    if-eqz p3, :cond_0

    .line 18
    .line 19
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p3, 0x0

    .line 29
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->D(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private final F(Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 13

    .line 1
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getBuiltIn()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v4, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$updateVideoInfo$1;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-direct {v4, p1, p0, v0}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$updateVideoInfo$1;-><init>(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;Lkotlin/coroutines/Continuation;)V

    .line 19
    .line 20
    .line 21
    const/4 v5, 0x3

    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 26
    .line 27
    .line 28
    sget-object v7, Lwf/a;->a:Lwf/a$a;

    .line 29
    .line 30
    iget-object v8, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->a:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getShortTVFirstEp()Lcom/transsion/moviedetailapi/bean/ShortTVItem;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/ShortTVItem;->getVideo()Lcom/transsion/moviedetailapi/bean/Media;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Media;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_0

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v1, "set info - cover = "

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v9

    .line 71
    const/4 v11, 0x4

    .line 72
    const/4 v12, 0x0

    .line 73
    const/4 v10, 0x0

    .line 74
    invoke-static/range {v7 .. v12}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getShortTVFirstEp()Lcom/transsion/moviedetailapi/bean/ShortTVItem;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-eqz p1, :cond_4

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/ShortTVItem;->getVideo()Lcom/transsion/moviedetailapi/bean/Media;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    if-eqz p1, :cond_4

    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Media;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    if-eqz p1, :cond_4

    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    if-eqz v1, :cond_4

    .line 101
    .line 102
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->g:Landroidx/fragment/app/Fragment;

    .line 103
    .line 104
    if-eqz p1, :cond_4

    .line 105
    .line 106
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    if-nez p1, :cond_2

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    const/4 v2, 0x1

    .line 118
    if-ne v0, v2, :cond_3

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_3
    sget-object v0, Lni/f;->a:Lni/f$a;

    .line 122
    .line 123
    sget-object v2, Lsm/b;->e:Lsm/b$a;

    .line 124
    .line 125
    invoke-virtual {v2}, Lsm/b$a;->a()I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    const/16 v5, 0xc

    .line 130
    .line 131
    const/4 v6, 0x0

    .line 132
    const/4 v3, 0x0

    .line 133
    const/4 v4, 0x0

    .line 134
    invoke-static/range {v0 .. v6}, Lni/f$a;->e(Lni/f$a;Ljava/lang/String;IZZILjava/lang/Object;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 147
    .line 148
    iget-object v0, v0, Lwn/g0;->f:Landroidx/appcompat/widget/AppCompatImageView;

    .line 149
    .line 150
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 151
    .line 152
    .line 153
    :cond_4
    :goto_0
    return-void
.end method

.method public static final synthetic access$favoriteResultToast(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->n(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$finishAfterReport(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->o(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getData$p(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)Lcom/transsion/moviedetailapi/bean/Subject;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getOrPlayer$p(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)Lcom/transsion/player/orplayer/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->k:Lcom/transsion/player/orplayer/f;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getPagerLayoutManager$p(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)Lcom/transsion/shorttv/base/pager/PagerLayoutManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->m:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getViewBinding$p(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)Lwn/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$isHorizontalDragging$p(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->s:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$isSeekToFinish$p(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$onSingleClick(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->w()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setContentVisibility(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->setContentVisibility(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setHorizontalDragging$p(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->s:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setNextSeekTo$p(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->D:J

    .line 2
    .line 3
    return-void
.end method

.method private final getLoginApi()Lqx/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->p:Lkotlin/Lazy;

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

.method public static synthetic h(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->r(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic i(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->u(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic j(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;Lhx/c;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->C(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;Lhx/c;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->B(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic l()Lqx/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->s()Lqx/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic m(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->x(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final n(Ljava/lang/String;)V
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

.method private final o(Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->i:Ljava/lang/Integer;

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
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->c:Lcom/transsion/postdetail/viewmodel/w;

    .line 35
    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/transsion/postdetail/viewmodel/w;->o()Landroidx/lifecycle/b0;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->i:Ljava/lang/Integer;

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method

.method private final p(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/view/GestureDetector;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$c;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$c;-><init>(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->o:Landroid/view/GestureDetector;

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private final q()V
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
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 8
    .line 9
    iget-object v2, v2, Lwn/g0;->x:Lcom/transsion/postdetail/ui/view/VideoProgressDragGestureView;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Lcom/transsion/baseui/widget/f;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$d;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$d;-><init>(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/transsion/baseui/widget/f;->s(Lcom/transsion/baseui/widget/f$a;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 23
    .line 24
    iget-object v0, v0, Lwn/g0;->o:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 25
    .line 26
    new-instance v1, Lcom/transsion/postdetail/ui/view/a2;

    .line 27
    .line 28
    invoke-direct {v1}, Lcom/transsion/postdetail/ui/view/a2;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private static final r(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method private static final s()Lqx/a;
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

.method private final setContentVisibility(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 2
    .line 3
    iget-object v0, v0, Lwn/g0;->e:Landroidx/constraintlayout/widget/Group;

    .line 4
    .line 5
    const-string v1, "groupContent"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/16 p1, 0x8

    .line 15
    .line 16
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static synthetic setData$default(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;Lcom/transsion/moviedetailapi/bean/Subject;Landroidx/fragment/app/Fragment;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 7

    .line 1
    and-int/lit8 p7, p7, 0x20

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    const/4 p6, 0x0

    .line 6
    :cond_0
    move v6, p6

    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v2, p2

    .line 10
    move-object v3, p3

    .line 11
    move-object v4, p4

    .line 12
    move-object v5, p5

    .line 13
    invoke-virtual/range {v0 .. v6}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->setData(Lcom/transsion/moviedetailapi/bean/Subject;Landroidx/fragment/app/Fragment;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private final setLoading(Z)V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "setLoading:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, "  "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const/4 v4, 0x4

    .line 29
    const/4 v5, 0x0

    .line 30
    const-string v1, "yy"

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-static/range {v0 .. v5}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "progressBar"

    .line 37
    .line 38
    const-string v1, "clLoading"

    .line 39
    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 43
    .line 44
    iget-object p1, p1, Lwn/g0;->c:Lcom/transsion/postdetail/ui/view/ClipLoading;

    .line 45
    .line 46
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 53
    .line 54
    iget-object p1, p1, Lwn/g0;->m:Landroid/widget/ProgressBar;

    .line 55
    .line 56
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 63
    .line 64
    iget-object p1, p1, Lwn/g0;->c:Lcom/transsion/postdetail/ui/view/ClipLoading;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/transsion/postdetail/ui/view/ClipLoading;->start()V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 71
    .line 72
    iget-object p1, p1, Lwn/g0;->m:Landroid/widget/ProgressBar;

    .line 73
    .line 74
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 81
    .line 82
    iget-object p1, p1, Lwn/g0;->c:Lcom/transsion/postdetail/ui/view/ClipLoading;

    .line 83
    .line 84
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 91
    .line 92
    iget-object p1, p1, Lwn/g0;->c:Lcom/transsion/postdetail/ui/view/ClipLoading;

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/transsion/postdetail/ui/view/ClipLoading;->stop()V

    .line 95
    .line 96
    .line 97
    :goto_0
    return-void
.end method

.method private final t(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->h:Ljava/lang/Boolean;

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
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->k:Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$a;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$a;->a()Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->s()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const-wide/16 v1, 0x3e8

    .line 24
    .line 25
    cmp-long p1, p1, v1

    .line 26
    .line 27
    if-ltz p1, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$a;->a()Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->A()V

    .line 34
    .line 35
    .line 36
    sget-object p1, Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;->Companion:Lcom/transsion/postdetail/ui/view/ImmVideoGuideView$a;

    .line 37
    .line 38
    invoke-virtual {p1, p0}, Lcom/transsion/postdetail/ui/view/ImmVideoGuideView$a;->a(Landroid/view/ViewGroup;)Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    new-instance p2, Lcom/transsion/postdetail/ui/view/z1;

    .line 43
    .line 44
    invoke-direct {p2, p0}, Lcom/transsion/postdetail/ui/view/z1;-><init>(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)V

    .line 45
    .line 46
    .line 47
    const-wide/16 v0, 0x1388

    .line 48
    .line 49
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->n:Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;

    .line 53
    .line 54
    :cond_0
    return-void
.end method

.method private static final u(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->n:Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;

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

.method private final v(Landroid/view/View;)V
    .locals 16

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
    iget-object v2, v1, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->e:Lcom/transsion/share/share/ShareDialogFragment;

    .line 21
    .line 22
    if-nez v2, :cond_5

    .line 23
    .line 24
    invoke-direct/range {p0 .. p0}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->getLoginApi()Lqx/a;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    invoke-interface {v2}, Lqx/a;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    .line 31
    .line 32
    .line 33
    :cond_1
    sget-object v3, Lcom/transsion/share/share/ShareDialogFragment;->s:Lcom/transsion/share/share/ShareDialogFragment$a;

    .line 34
    .line 35
    sget-object v4, Lcom/transsion/share/bean/PostType;->SHORT_TV_TYPE:Lcom/transsion/share/bean/PostType;

    .line 36
    .line 37
    iget-object v2, v1, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    move-object v2, v5

    .line 48
    :goto_0
    sget-object v6, Lcom/transsion/usercenterapi/ReportType;->SUBJECT:Lcom/transsion/usercenterapi/ReportType;

    .line 49
    .line 50
    invoke-virtual {v6}, Lcom/transsion/usercenterapi/ReportType;->getValue()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    iget-object v6, v1, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 55
    .line 56
    if-eqz v6, :cond_3

    .line 57
    .line 58
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    move-object v8, v6

    .line 63
    goto :goto_1

    .line 64
    :cond_3
    move-object v8, v5

    .line 65
    :goto_1
    iget-object v6, v1, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 66
    .line 67
    if-eqz v6, :cond_4

    .line 68
    .line 69
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    :cond_4
    move-object v14, v5

    .line 74
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    sget v6, Lcom/transsion/postdetail/R$string;->save_video:I

    .line 79
    .line 80
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v15

    .line 84
    const-string v6, ""

    .line 85
    .line 86
    const-string v9, ""

    .line 87
    .line 88
    const/4 v10, 0x0

    .line 89
    const/4 v11, 0x0

    .line 90
    const/4 v12, 0x0

    .line 91
    const-string v13, "postdetail"

    .line 92
    .line 93
    move-object v5, v2

    .line 94
    invoke-virtual/range {v3 .. v15}, Lcom/transsion/share/share/ShareDialogFragment$a;->a(Lcom/transsion/share/bean/PostType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/share/share/ShareDialogFragment;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    iput-object v2, v1, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->e:Lcom/transsion/share/share/ShareDialogFragment;

    .line 99
    .line 100
    if-eqz v2, :cond_5

    .line 101
    .line 102
    new-instance v3, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$e;

    .line 103
    .line 104
    invoke-direct {v3, v1}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$e;-><init>(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v3}, Lcom/transsion/share/share/ShareDialogFragment;->G0(Lcom/transsion/share/share/a;)V

    .line 108
    .line 109
    .line 110
    :cond_5
    :try_start_0
    iget-object v2, v1, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->g:Landroidx/fragment/app/Fragment;

    .line 111
    .line 112
    if-eqz v2, :cond_8

    .line 113
    .line 114
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    const/4 v3, 0x1

    .line 119
    if-ne v2, v3, :cond_8

    .line 120
    .line 121
    iget-object v2, v1, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->g:Landroidx/fragment/app/Fragment;

    .line 122
    .line 123
    if-eqz v2, :cond_8

    .line 124
    .line 125
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    if-eqz v2, :cond_8

    .line 130
    .line 131
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->g0()Z

    .line 132
    .line 133
    .line 134
    iget-object v4, v1, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->e:Lcom/transsion/share/share/ShareDialogFragment;

    .line 135
    .line 136
    if-eqz v4, :cond_6

    .line 137
    .line 138
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    if-ne v4, v3, :cond_6

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :catch_0
    move-exception v0

    .line 146
    goto :goto_3

    .line 147
    :cond_6
    invoke-virtual {v2, v0}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    if-eqz v3, :cond_7

    .line 152
    .line 153
    :goto_2
    return-void

    .line 154
    :cond_7
    iget-object v3, v1, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->e:Lcom/transsion/share/share/ShareDialogFragment;

    .line 155
    .line 156
    if-eqz v3, :cond_8

    .line 157
    .line 158
    invoke-virtual {v3, v2, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .line 160
    .line 161
    goto :goto_4

    .line 162
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 163
    .line 164
    .line 165
    :cond_8
    :goto_4
    return-void
.end method

.method private final w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 2
    .line 3
    iget-object v0, v0, Lwn/g0;->c:Lcom/transsion/postdetail/ui/view/ClipLoading;

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
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->k:Lcom/transsion/player/orplayer/f;

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
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q:Lcom/transsion/postdetail/layer/b;

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
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->k:Lcom/transsion/player/orplayer/f;

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
    iput-boolean v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->r:Z

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q:Lcom/transsion/postdetail/layer/b;

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
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->k:Lcom/transsion/player/orplayer/f;

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
    iput-boolean v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->r:Z

    .line 61
    .line 62
    :goto_0
    return-void
.end method

.method private static final x(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->g:Landroidx/fragment/app/Fragment;

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
    iget-object p0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->k:Lcom/transsion/player/orplayer/f;

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

.method private static final y(Lkotlin/Lazy;)Lcom/transsion/postdetail/viewmodel/w;
    .locals 0

    .line 1
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/transsion/postdetail/viewmodel/w;

    .line 6
    .line 7
    return-object p0
.end method

.method private static final z(Lkotlin/Lazy;)Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;
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


# virtual methods
.method public final addVideoView(Landroid/view/View;Lcom/transsion/moviedetailapi/bean/Video;I)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 11
    .line 12
    iget-object v1, v1, Lwn/g0;->d:Landroid/widget/FrameLayout;

    .line 13
    .line 14
    invoke-virtual {v1, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    .line 16
    .line 17
    if-eqz p2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Video;->getWidth()Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Video;->getHeight()Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->D(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public final app2Background()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q:Lcom/transsion/postdetail/layer/b;

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

.method public final getPosition()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->i:Ljava/lang/Integer;

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
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->g:Landroidx/fragment/app/Fragment;

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
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->G:Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$b;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->d:Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->f()Landroidx/lifecycle/b0;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/String;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v2, 0x0

    .line 34
    :goto_0
    invoke-virtual {v1, v2}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$b;->b(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->d:Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->f()Landroidx/lifecycle/b0;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->G:Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$b;

    .line 48
    .line 49
    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 50
    .line 51
    .line 52
    :cond_1
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
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v1, v0

    .line 14
    :goto_0
    sget v2, Lcom/transsion/postdetail/R$id;->iv_share:I

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-ne v3, v2, :cond_2

    .line 24
    .line 25
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->v(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    goto/16 :goto_7

    .line 29
    .line 30
    :cond_2
    :goto_1
    sget v2, Lcom/transsion/postdetail/R$id;->tv_short_tv_ep:I

    .line 31
    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-ne v3, v2, :cond_4

    .line 40
    .line 41
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->g:Landroidx/fragment/app/Fragment;

    .line 42
    .line 43
    if-eqz p1, :cond_d

    .line 44
    .line 45
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    goto/16 :goto_7

    .line 49
    .line 50
    :cond_4
    :goto_2
    sget v2, Lcom/transsion/postdetail/R$id;->iv_download:I

    .line 51
    .line 52
    if-nez v1, :cond_5

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eq v3, v2, :cond_9

    .line 60
    .line 61
    :goto_3
    sget v2, Lcom/transsion/postdetail/R$id;->iv_short_cover:I

    .line 62
    .line 63
    if-nez v1, :cond_6

    .line 64
    .line 65
    goto :goto_4

    .line 66
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eq v3, v2, :cond_9

    .line 71
    .line 72
    :goto_4
    sget v2, Lcom/transsion/postdetail/R$id;->tv_title:I

    .line 73
    .line 74
    if-nez v1, :cond_7

    .line 75
    .line 76
    goto :goto_5

    .line 77
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-eq v3, v2, :cond_9

    .line 82
    .line 83
    :goto_5
    sget v2, Lcom/transsion/postdetail/R$id;->tv_desc:I

    .line 84
    .line 85
    if-nez v1, :cond_8

    .line 86
    .line 87
    goto :goto_7

    .line 88
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-ne v1, v2, :cond_d

    .line 93
    .line 94
    :cond_9
    sget-object v1, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    const-string v3, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    .line 105
    .line 106
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    move-object v3, v1

    .line 110
    check-cast v3, Landroidx/fragment/app/FragmentActivity;

    .line 111
    .line 112
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 113
    .line 114
    if-eqz v1, :cond_a

    .line 115
    .line 116
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    :cond_a
    move-object v6, v0

    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    sget v1, Lcom/transsion/postdetail/R$id;->iv_download:I

    .line 126
    .line 127
    const/4 v4, 0x0

    .line 128
    const/4 v5, 0x1

    .line 129
    if-ne v0, v1, :cond_b

    .line 130
    .line 131
    move v8, v5

    .line 132
    goto :goto_6

    .line 133
    :cond_b
    move v8, v4

    .line 134
    :goto_6
    iget-object v9, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 135
    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    sget v0, Lcom/transsion/postdetail/R$id;->iv_download:I

    .line 141
    .line 142
    if-eq p1, v0, :cond_c

    .line 143
    .line 144
    move v4, v5

    .line 145
    :cond_c
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 146
    .line 147
    .line 148
    move-result-object v11

    .line 149
    const/16 v12, 0x80

    .line 150
    .line 151
    const/4 v13, 0x0

    .line 152
    const-string v4, "shorttv_detail_video"

    .line 153
    .line 154
    const-string v5, ""

    .line 155
    .line 156
    const-string v7, "download_subject"

    .line 157
    .line 158
    const/4 v10, 0x0

    .line 159
    invoke-static/range {v2 .. v13}, Lcom/transsnet/downloader/DownloadManagerApi;->e0(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    :cond_d
    :goto_7
    return-void
.end method

.method public onCompletion(Lgn/e;)V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->a:Ljava/lang/String;

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
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 18
    .line 19
    if-eqz p1, :cond_4

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-ne p1, v0, :cond_4

    .line 39
    .line 40
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->g:Landroidx/fragment/app/Fragment;

    .line 41
    .line 42
    if-eqz p1, :cond_4

    .line 43
    .line 44
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_4

    .line 49
    .line 50
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 51
    .line 52
    if-eqz p1, :cond_4

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getDeleted()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_4

    .line 59
    .line 60
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q:Lcom/transsion/postdetail/layer/b;

    .line 61
    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    invoke-virtual {v0, v1}, Lcom/transsion/postdetail/layer/b;->d(Z)V

    .line 66
    .line 67
    .line 68
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getTrailer()Lcom/transsion/moviedetailapi/bean/Trailer;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Trailer;->getVideoAddress()Lcom/transsion/moviedetailapi/bean/PreVideoAddress;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    goto :goto_0

    .line 79
    :cond_2
    const/4 v0, 0x0

    .line 80
    :goto_0
    if-nez v0, :cond_3

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getShortTVFirstEp()Lcom/transsion/moviedetailapi/bean/ShortTVItem;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-eqz p1, :cond_3

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/ShortTVItem;->getEp()I

    .line 89
    .line 90
    .line 91
    :cond_3
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->k:Lcom/transsion/player/orplayer/f;

    .line 92
    .line 93
    if-eqz p1, :cond_4

    .line 94
    .line 95
    const-wide/16 v0, 0x0

    .line 96
    .line 97
    invoke-interface {p1, v0, v1}, Lcom/transsion/player/orplayer/f;->seekTo(J)V

    .line 98
    .line 99
    .line 100
    :cond_4
    :goto_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->d:Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

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
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->d:Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

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
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->G:Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$b;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->o(Landroidx/lifecycle/c0;)V

    .line 31
    .line 32
    .line 33
    :cond_1
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
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q:Lcom/transsion/postdetail/layer/b;

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
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->setLoading(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onLoadingEnd(Lgn/e;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q:Lcom/transsion/postdetail/layer/b;

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
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->setLoading(Z)V

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
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q:Lcom/transsion/postdetail/layer/b;

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
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->p(Lcom/transsion/player/orplayer/e;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 5
    .line 6
    if-eqz p1, :cond_4

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-ne p1, v0, :cond_4

    .line 26
    .line 27
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->g:Landroidx/fragment/app/Fragment;

    .line 28
    .line 29
    if-eqz p1, :cond_4

    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_4

    .line 36
    .line 37
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 38
    .line 39
    if-eqz p1, :cond_4

    .line 40
    .line 41
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q:Lcom/transsion/postdetail/layer/b;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-virtual {v0, v1}, Lcom/transsion/postdetail/layer/b;->d(Z)V

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getTrailer()Lcom/transsion/moviedetailapi/bean/Trailer;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Trailer;->getVideoAddress()Lcom/transsion/moviedetailapi/bean/PreVideoAddress;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    const/4 v0, 0x0

    .line 61
    :goto_0
    if-nez v0, :cond_3

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getShortTVFirstEp()Lcom/transsion/moviedetailapi/bean/ShortTVItem;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-eqz p1, :cond_3

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/ShortTVItem;->getEp()I

    .line 70
    .line 71
    .line 72
    :cond_3
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->k:Lcom/transsion/player/orplayer/f;

    .line 73
    .line 74
    if-eqz p1, :cond_4

    .line 75
    .line 76
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->pause()V

    .line 77
    .line 78
    .line 79
    :cond_4
    :goto_1
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
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    iput-wide v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->D:J

    .line 15
    .line 16
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q:Lcom/transsion/postdetail/layer/b;

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
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->a:Ljava/lang/String;

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
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    iput-wide v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->D:J

    .line 10
    .line 11
    return-void
.end method

.method public onPlayerReset()V
    .locals 14

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->a:Ljava/lang/String;

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
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->H:Z

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    iput-boolean v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->F:Z

    .line 18
    .line 19
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 22
    .line 23
    .line 24
    const-wide/16 v2, 0x0

    .line 25
    .line 26
    iput-wide v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->D:J

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 29
    .line 30
    .line 31
    iput-boolean v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->r:Z

    .line 32
    .line 33
    iget-object v4, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q:Lcom/transsion/postdetail/layer/b;

    .line 34
    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    invoke-static {v4, v0, v1, v5}, Lcom/transsion/postdetail/layer/b;->e(Lcom/transsion/postdetail/layer/b;ZILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getShortTVFirstEp()Lcom/transsion/moviedetailapi/bean/ShortTVItem;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/ShortTVItem;->getVideo()Lcom/transsion/moviedetailapi/bean/Media;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Media;->getVideoAddress()Lcom/transsion/moviedetailapi/bean/Video;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Video;->getUrl()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    sget-object v1, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->k:Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$a;

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$a;->a()Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->o()Ljava/util/Map;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    iget-object v4, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 79
    .line 80
    iget-object v4, v4, Lwn/g0;->m:Landroid/widget/ProgressBar;

    .line 81
    .line 82
    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getProgress()I

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    int-to-long v6, v4

    .line 87
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Ljava/lang/Long;

    .line 96
    .line 97
    :cond_1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->k:Lcom/transsion/player/orplayer/f;

    .line 98
    .line 99
    if-eqz v0, :cond_2

    .line 100
    .line 101
    invoke-interface {v0, p0}, Lcom/transsion/player/orplayer/f;->removePlayerListener(Lcom/transsion/player/orplayer/e;)V

    .line 102
    .line 103
    .line 104
    :cond_2
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 105
    .line 106
    if-eqz v0, :cond_4

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getDeleted()Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_4

    .line 113
    .line 114
    sget-object v1, Lcom/transsion/postdetail/control/a;->o:Lcom/transsion/postdetail/control/a$a;

    .line 115
    .line 116
    invoke-virtual {v1, v0}, Lcom/transsion/postdetail/control/a$a;->a(Lcom/transsion/moviedetailapi/bean/Subject;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    if-eqz v8, :cond_4

    .line 121
    .line 122
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->k:Lcom/transsion/player/orplayer/f;

    .line 123
    .line 124
    if-eqz v1, :cond_4

    .line 125
    .line 126
    new-instance v4, Lgn/e;

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getShortTVFirstEp()Lcom/transsion/moviedetailapi/bean/ShortTVItem;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    if-eqz v0, :cond_3

    .line 133
    .line 134
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/ShortTVItem;->getId()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    move-object v7, v0

    .line 139
    goto :goto_0

    .line 140
    :cond_3
    move-object v7, v5

    .line 141
    :goto_0
    const/16 v12, 0x18

    .line 142
    .line 143
    const/4 v13, 0x0

    .line 144
    const/4 v9, 0x0

    .line 145
    const/4 v10, 0x0

    .line 146
    const/4 v11, 0x0

    .line 147
    move-object v6, v4

    .line 148
    invoke-direct/range {v6 .. v13}, Lgn/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/transsion/player/enum/PlayMimeType;Lcom/transsion/player/mediasession/MediaItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 149
    .line 150
    .line 151
    invoke-interface {v1, v4}, Lcom/transsion/player/orplayer/f;->removeDataSource(Lgn/e;)Z

    .line 152
    .line 153
    .line 154
    :cond_4
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 155
    .line 156
    iget-object v0, v0, Lwn/g0;->f:Landroidx/appcompat/widget/AppCompatImageView;

    .line 157
    .line 158
    const-string v1, "ivCover"

    .line 159
    .line 160
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 164
    .line 165
    .line 166
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 167
    .line 168
    iget-object v0, v0, Lwn/g0;->h:Landroidx/appcompat/widget/AppCompatImageView;

    .line 169
    .line 170
    const-string v1, "ivPause"

    .line 171
    .line 172
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 176
    .line 177
    .line 178
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 179
    .line 180
    iget-object v0, v0, Lwn/g0;->o:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 181
    .line 182
    const-string v1, "seekBar"

    .line 183
    .line 184
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 188
    .line 189
    .line 190
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->n:Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;

    .line 191
    .line 192
    if-eqz v0, :cond_5

    .line 193
    .line 194
    invoke-virtual {v0}, Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;->removeGuide()V

    .line 195
    .line 196
    .line 197
    :cond_5
    iput-object v5, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->k:Lcom/transsion/player/orplayer/f;

    .line 198
    .line 199
    iput-object v5, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->l:Lcom/transsion/player/ui/ORPlayerView;

    .line 200
    .line 201
    iput-object v5, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->m:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    .line 202
    .line 203
    iput-wide v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->u:J

    .line 204
    .line 205
    return-void
.end method

.method public onPrepare(Lgn/e;)V
    .locals 11

    .line 1
    iget-boolean p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->H:Z

    .line 2
    .line 3
    if-nez p1, :cond_4

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->H:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->k:Lcom/transsion/player/orplayer/f;

    .line 9
    .line 10
    const/4 v1, 0x0

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
    long-to-int v0, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v1

    .line 20
    :goto_0
    sget-object v8, Lwf/a;->a:Lwf/a$a;

    .line 21
    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v3, "shorttv.here.duration: "

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const/4 v3, 0x2

    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-static {v8, v2, v1, v3, v4}, Lwf/a$a;->g(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 45
    .line 46
    iget-object v1, v1, Lwn/g0;->m:Landroid/widget/ProgressBar;

    .line 47
    .line 48
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 52
    .line 53
    iget-object v1, v1, Lwn/g0;->o:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 54
    .line 55
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getShortTVFirstEp()Lcom/transsion/moviedetailapi/bean/ShortTVItem;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/ShortTVItem;->getVideo()Lcom/transsion/moviedetailapi/bean/Media;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Media;->getVideoAddress()Lcom/transsion/moviedetailapi/bean/Video;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    if-eqz v0, :cond_2

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Video;->getUrl()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    if-eqz v0, :cond_2

    .line 85
    .line 86
    sget-object v1, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->k:Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$a;

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$a;->a()Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v1}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->o()Ljava/util/Map;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Ljava/lang/Long;

    .line 101
    .line 102
    const-wide/16 v9, 0x0

    .line 103
    .line 104
    if-eqz v0, :cond_1

    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 107
    .line 108
    .line 109
    move-result-wide v0

    .line 110
    goto :goto_1

    .line 111
    :cond_1
    move-wide v0, v9

    .line 112
    :goto_1
    iget-object v3, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->a:Ljava/lang/String;

    .line 113
    .line 114
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 115
    .line 116
    iget-object v2, v2, Lwn/g0;->m:Landroid/widget/ProgressBar;

    .line 117
    .line 118
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string v5, "player- onPrepare, duration = "

    .line 128
    .line 129
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v2, ", progress = "

    .line 136
    .line 137
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    const/4 v6, 0x4

    .line 148
    const/4 v7, 0x0

    .line 149
    const/4 v5, 0x0

    .line 150
    move-object v2, v8

    .line 151
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    cmp-long v2, v0, v9

    .line 155
    .line 156
    if-ltz v2, :cond_2

    .line 157
    .line 158
    iput-wide v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->u:J

    .line 159
    .line 160
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 161
    .line 162
    iget-object v2, v2, Lwn/g0;->m:Landroid/widget/ProgressBar;

    .line 163
    .line 164
    long-to-int v3, v0

    .line 165
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 166
    .line 167
    .line 168
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 169
    .line 170
    iget-object v2, v2, Lwn/g0;->o:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 171
    .line 172
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 173
    .line 174
    .line 175
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->k:Lcom/transsion/player/orplayer/f;

    .line 176
    .line 177
    if-eqz v2, :cond_2

    .line 178
    .line 179
    invoke-interface {v2, v0, v1}, Lcom/transsion/player/orplayer/f;->seekTo(J)V

    .line 180
    .line 181
    .line 182
    :cond_2
    iget-boolean v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->r:Z

    .line 183
    .line 184
    if-nez v0, :cond_3

    .line 185
    .line 186
    iget-boolean v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->t:Z

    .line 187
    .line 188
    if-nez v0, :cond_3

    .line 189
    .line 190
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->g:Landroidx/fragment/app/Fragment;

    .line 191
    .line 192
    if-eqz v0, :cond_3

    .line 193
    .line 194
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    if-ne v0, p1, :cond_3

    .line 199
    .line 200
    iget-object v3, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->a:Ljava/lang/String;

    .line 201
    .line 202
    const/4 v6, 0x4

    .line 203
    const/4 v7, 0x0

    .line 204
    const-string v4, "player- onPrepare\uff0c play~"

    .line 205
    .line 206
    const/4 v5, 0x0

    .line 207
    move-object v2, v8

    .line 208
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->k:Lcom/transsion/player/orplayer/f;

    .line 212
    .line 213
    if-eqz v0, :cond_3

    .line 214
    .line 215
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->play()V

    .line 216
    .line 217
    .line 218
    :cond_3
    invoke-virtual {p0, p1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 219
    .line 220
    .line 221
    :cond_4
    return-void
.end method

.method public onProgress(JLgn/e;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->s:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    sget-object v0, Leo/b;->a:Leo/b;

    .line 16
    .line 17
    invoke-virtual {v0}, Leo/b;->b()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    if-eqz p3, :cond_3

    .line 24
    .line 25
    invoke-virtual {p3}, Lgn/e;->e()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getShortTVFirstEp()Lcom/transsion/moviedetailapi/bean/ShortTVItem;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/ShortTVItem;->getId()Ljava/lang/String;

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
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    if-nez p3, :cond_3

    .line 50
    .line 51
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->a:Ljava/lang/String;

    .line 54
    .line 55
    const/4 v4, 0x4

    .line 56
    const/4 v5, 0x0

    .line 57
    const-string v2, "onProgress- vid \u4e0d\u540c, return"

    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_3
    iget-object p3, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q:Lcom/transsion/postdetail/layer/b;

    .line 65
    .line 66
    if-eqz p3, :cond_4

    .line 67
    .line 68
    invoke-virtual {p3, p1, p2}, Lcom/transsion/postdetail/layer/b;->l(J)V

    .line 69
    .line 70
    .line 71
    :cond_4
    iget-object p3, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 72
    .line 73
    iget-object p3, p3, Lwn/g0;->m:Landroid/widget/ProgressBar;

    .line 74
    .line 75
    long-to-int v0, p1

    .line 76
    invoke-virtual {p3, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 77
    .line 78
    .line 79
    iget-object p3, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 80
    .line 81
    iget-object p3, p3, Lwn/g0;->o:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 82
    .line 83
    invoke-virtual {p3, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 84
    .line 85
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->t(J)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public onRenderFirstFrame()V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->a:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 14
    .line 15
    iget-object v0, v0, Lwn/g0;->f:Landroidx/appcompat/widget/AppCompatImageView;

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
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q:Lcom/transsion/postdetail/layer/b;

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
    invoke-direct {p0, v0}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->setLoading(Z)V

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
    iput-boolean v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->F:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    iput-wide v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->D:J

    .line 13
    .line 14
    invoke-direct {p0, v1}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->setLoading(Z)V

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
    sget-object p1, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$a;->a:[I

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
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->g:Landroidx/fragment/app/Fragment;

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
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q:Lcom/transsion/postdetail/layer/b;

    .line 47
    .line 48
    if-eqz p1, :cond_6

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
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 56
    .line 57
    if-eqz p1, :cond_6

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getShortTVFirstEp()Lcom/transsion/moviedetailapi/bean/ShortTVItem;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_6

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/ShortTVItem;->getVideo()Lcom/transsion/moviedetailapi/bean/Media;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-eqz p1, :cond_6

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Media;->getVideoAddress()Lcom/transsion/moviedetailapi/bean/Video;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-eqz p1, :cond_6

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Video;->getUrl()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-eqz p1, :cond_6

    .line 82
    .line 83
    sget-object p2, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->k:Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$a;

    .line 84
    .line 85
    invoke-virtual {p2}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$a;->a()Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-virtual {p2}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->o()Ljava/util/Map;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 94
    .line 95
    iget-object v0, v0, Lwn/g0;->m:Landroid/widget/ProgressBar;

    .line 96
    .line 97
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    int-to-long v0, v0

    .line 102
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Ljava/lang/Long;

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_3
    const/4 p1, 0x0

    .line 114
    iput-boolean p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->t:Z

    .line 115
    .line 116
    iget-boolean p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->r:Z

    .line 117
    .line 118
    if-nez p1, :cond_6

    .line 119
    .line 120
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->g:Landroidx/fragment/app/Fragment;

    .line 121
    .line 122
    if-eqz p1, :cond_4

    .line 123
    .line 124
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-nez p1, :cond_4

    .line 129
    .line 130
    new-instance p1, Lcom/transsion/postdetail/ui/view/x1;

    .line 131
    .line 132
    invoke-direct {p1, p0}, Lcom/transsion/postdetail/ui/view/x1;-><init>(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_4
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->k:Lcom/transsion/player/orplayer/f;

    .line 140
    .line 141
    if-eqz p1, :cond_6

    .line 142
    .line 143
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->play()V

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_5
    iput-boolean p2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->t:Z

    .line 148
    .line 149
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 150
    .line 151
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->a:Ljava/lang/String;

    .line 152
    .line 153
    const/4 v4, 0x4

    .line 154
    const/4 v5, 0x0

    .line 155
    const-string v2, "player- onPause"

    .line 156
    .line 157
    const/4 v3, 0x0

    .line 158
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->k:Lcom/transsion/player/orplayer/f;

    .line 162
    .line 163
    if-eqz p1, :cond_6

    .line 164
    .line 165
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->pause()V

    .line 166
    .line 167
    .line 168
    :cond_6
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
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->o:Landroid/view/GestureDetector;

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
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->a:Ljava/lang/String;

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
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 14
    .line 15
    iget-object p1, p1, Lwn/g0;->h:Landroidx/appcompat/widget/AppCompatImageView;

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
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 26
    .line 27
    iget-object p1, p1, Lwn/g0;->o:Landroidx/appcompat/widget/AppCompatSeekBar;

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
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 38
    .line 39
    iget-object p1, p1, Lwn/g0;->m:Landroid/widget/ProgressBar;

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
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q:Lcom/transsion/postdetail/layer/b;

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
    .locals 6

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/player/orplayer/e$a;->H(Lcom/transsion/player/orplayer/e;II)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v4, 0x4

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    move-object v0, p0

    .line 16
    invoke-static/range {v0 .. v5}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->E(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onVideoStart(Lgn/e;)V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->a:Ljava/lang/String;

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
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q:Lcom/transsion/postdetail/layer/b;

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
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 21
    .line 22
    iget-object p1, p1, Lwn/g0;->h:Landroidx/appcompat/widget/AppCompatImageView;

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
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 33
    .line 34
    iget-object p1, p1, Lwn/g0;->o:Landroidx/appcompat/widget/AppCompatSeekBar;

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
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->setLoading(Z)V

    .line 46
    .line 47
    .line 48
    const/4 p1, 0x1

    .line 49
    invoke-virtual {p0, p1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final setData(Lcom/transsion/moviedetailapi/bean/Subject;Landroidx/fragment/app/Fragment;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 44

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
    move-object/from16 v3, p4

    .line 8
    .line 9
    move/from16 v4, p6

    .line 10
    .line 11
    const-string v5, "item"

    .line 12
    .line 13
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v5, "fragment"

    .line 17
    .line 18
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v5, Lcom/transsion/postdetail/layer/b;

    .line 22
    .line 23
    invoke-direct {v5}, Lcom/transsion/postdetail/layer/b;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v5, v0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q:Lcom/transsion/postdetail/layer/b;

    .line 27
    .line 28
    invoke-virtual {v5, v3}, Lcom/transsion/postdetail/layer/b;->s(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v5, v0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q:Lcom/transsion/postdetail/layer/b;

    .line 32
    .line 33
    if-eqz v5, :cond_0

    .line 34
    .line 35
    move-object/from16 v6, p5

    .line 36
    .line 37
    invoke-virtual {v5, v6}, Lcom/transsion/postdetail/layer/b;->r(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v5, v0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q:Lcom/transsion/postdetail/layer/b;

    .line 41
    .line 42
    if-eqz v5, :cond_1

    .line 43
    .line 44
    sget-object v6, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    .line 45
    .line 46
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    invoke-virtual {v5, v6}, Lcom/transsion/postdetail/layer/b;->y(I)V

    .line 51
    .line 52
    .line 53
    :cond_1
    new-instance v5, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 54
    .line 55
    move-object v7, v5

    .line 56
    const/16 v42, 0x1

    .line 57
    .line 58
    const/16 v43, 0x0

    .line 59
    .line 60
    const/4 v8, 0x0

    .line 61
    const/4 v9, 0x0

    .line 62
    const/4 v10, 0x0

    .line 63
    const/4 v11, 0x0

    .line 64
    const/4 v12, 0x0

    .line 65
    const/4 v13, 0x0

    .line 66
    const/4 v14, 0x0

    .line 67
    const/4 v15, 0x0

    .line 68
    const/16 v16, 0x0

    .line 69
    .line 70
    const/16 v17, 0x0

    .line 71
    .line 72
    const/16 v18, 0x0

    .line 73
    .line 74
    const/16 v19, 0x0

    .line 75
    .line 76
    const/16 v20, 0x0

    .line 77
    .line 78
    const/16 v21, 0x0

    .line 79
    .line 80
    const/16 v22, 0x0

    .line 81
    .line 82
    const/16 v23, 0x0

    .line 83
    .line 84
    const/16 v24, 0x0

    .line 85
    .line 86
    const/16 v25, 0x0

    .line 87
    .line 88
    const/16 v26, 0x0

    .line 89
    .line 90
    const/16 v27, 0x0

    .line 91
    .line 92
    const/16 v28, 0x0

    .line 93
    .line 94
    const/16 v29, 0x0

    .line 95
    .line 96
    const/16 v30, 0x0

    .line 97
    .line 98
    const/16 v31, 0x0

    .line 99
    .line 100
    const/16 v32, 0x0

    .line 101
    .line 102
    const/16 v33, 0x0

    .line 103
    .line 104
    const/16 v34, 0x0

    .line 105
    .line 106
    const/16 v35, 0x0

    .line 107
    .line 108
    const/16 v36, 0x0

    .line 109
    .line 110
    const/16 v37, 0x0

    .line 111
    .line 112
    const/16 v38, 0x0

    .line 113
    .line 114
    const/16 v39, 0x0

    .line 115
    .line 116
    const/16 v40, 0x0

    .line 117
    .line 118
    const/16 v41, -0x1

    .line 119
    .line 120
    invoke-direct/range {v7 .. v43}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Group;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/transsion/moviedetailapi/bean/Link;Lcom/transsion/moviedetailapi/bean/Media;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Stat;Ljava/lang/Integer;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/User;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;ZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;ZZZZLcom/transsion/moviedetailapi/bean/CommentBean;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v5, v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->setSubject(Lcom/transsion/moviedetailapi/bean/Subject;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    invoke-virtual {v5, v6}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->setOps(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const-string v6, "7"

    .line 134
    .line 135
    invoke-virtual {v5, v6}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->setItemType(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget-object v6, v0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q:Lcom/transsion/postdetail/layer/b;

    .line 139
    .line 140
    if-eqz v6, :cond_2

    .line 141
    .line 142
    const-string v7, ""

    .line 143
    .line 144
    invoke-virtual {v6, v7, v5}, Lcom/transsion/postdetail/layer/b;->x(Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 145
    .line 146
    .line 147
    :cond_2
    iput-object v2, v0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->g:Landroidx/fragment/app/Fragment;

    .line 148
    .line 149
    iget-object v5, v0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->h:Ljava/lang/Boolean;

    .line 150
    .line 151
    iput-object v5, v0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->h:Ljava/lang/Boolean;

    .line 152
    .line 153
    iput-object v3, v0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->j:Ljava/lang/String;

    .line 154
    .line 155
    move-object/from16 v3, p3

    .line 156
    .line 157
    iput-object v3, v0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->i:Ljava/lang/Integer;

    .line 158
    .line 159
    iput-boolean v4, v0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->E:Z

    .line 160
    .line 161
    invoke-virtual/range {p2 .. p2}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    invoke-virtual {v3, v0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/t;)V

    .line 166
    .line 167
    .line 168
    new-instance v3, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$setData$$inlined$viewModels$default$1;

    .line 169
    .line 170
    invoke-direct {v3, v2}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$setData$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 171
    .line 172
    .line 173
    const-class v5, Lcom/transsion/postdetail/viewmodel/w;

    .line 174
    .line 175
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    new-instance v6, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$setData$$inlined$viewModels$default$2;

    .line 180
    .line 181
    invoke-direct {v6, v3}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$setData$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 182
    .line 183
    .line 184
    new-instance v7, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$setData$$inlined$viewModels$default$3;

    .line 185
    .line 186
    invoke-direct {v7, v3, v2}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$setData$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 187
    .line 188
    .line 189
    invoke-static {v2, v5, v6, v7}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    invoke-static {v3}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->y(Lkotlin/Lazy;)Lcom/transsion/postdetail/viewmodel/w;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    iput-object v3, v0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->c:Lcom/transsion/postdetail/viewmodel/w;

    .line 198
    .line 199
    new-instance v3, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$setData$$inlined$viewModels$default$4;

    .line 200
    .line 201
    invoke-direct {v3, v2}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$setData$$inlined$viewModels$default$4;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 202
    .line 203
    .line 204
    const-class v5, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    .line 205
    .line 206
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    new-instance v6, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$setData$$inlined$viewModels$default$5;

    .line 211
    .line 212
    invoke-direct {v6, v3}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$setData$$inlined$viewModels$default$5;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 213
    .line 214
    .line 215
    new-instance v7, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$setData$$inlined$viewModels$default$6;

    .line 216
    .line 217
    invoke-direct {v7, v3, v2}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$setData$$inlined$viewModels$default$6;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 218
    .line 219
    .line 220
    invoke-static {v2, v5, v6, v7}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    invoke-static {v2}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->z(Lkotlin/Lazy;)Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    iput-object v2, v0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->d:Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    .line 229
    .line 230
    iput-object v1, v0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 231
    .line 232
    invoke-direct/range {p0 .. p1}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->F(Lcom/transsion/moviedetailapi/bean/Subject;)V

    .line 233
    .line 234
    .line 235
    if-eqz v4, :cond_3

    .line 236
    .line 237
    iget-object v1, v0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lwn/g0;

    .line 238
    .line 239
    iget-object v1, v1, Lwn/g0;->n:Landroid/widget/Space;

    .line 240
    .line 241
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    instance-of v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 246
    .line 247
    if-eqz v2, :cond_3

    .line 248
    .line 249
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 250
    .line 251
    const/high16 v2, 0x41800000    # 16.0f

    .line 252
    .line 253
    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 258
    .line 259
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->A()V

    .line 260
    .line 261
    .line 262
    return-void
.end method

.method public setOnSeekCompleteListener()V
    .locals 11

    .line 1
    invoke-static {p0}, Lcom/transsion/player/orplayer/e$a;->K(Lcom/transsion/player/orplayer/e;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    .line 9
    .line 10
    iget-wide v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->D:J

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
    iget-object v6, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->a:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->k:Lcom/transsion/player/orplayer/f;

    .line 50
    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    iget-wide v4, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->D:J

    .line 54
    .line 55
    invoke-interface {v0, v4, v5}, Lcom/transsion/player/orplayer/f;->seekTo(J)V

    .line 56
    .line 57
    .line 58
    :cond_0
    iput-wide v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->D:J

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
    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->m:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

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
    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->k:Lcom/transsion/player/orplayer/f;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->l:Lcom/transsion/player/ui/ORPlayerView;

    .line 14
    .line 15
    iget-object p2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q:Lcom/transsion/postdetail/layer/b;

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
    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->i:Ljava/lang/Integer;

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
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q:Lcom/transsion/postdetail/layer/b;

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
    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->B:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q:Lcom/transsion/postdetail/layer/b;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/layer/b;->t(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q:Lcom/transsion/postdetail/layer/b;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/b;->g()V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q:Lcom/transsion/postdetail/layer/b;

    .line 23
    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p1, v0, v0}, Lcom/transsion/postdetail/layer/b;->a(II)V

    .line 28
    .line 29
    .line 30
    :cond_2
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q:Lcom/transsion/postdetail/layer/b;

    .line 31
    .line 32
    if-eqz p1, :cond_3

    .line 33
    .line 34
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->i:Ljava/lang/Integer;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lcom/transsion/postdetail/layer/b;->w(Ljava/lang/Integer;)V

    .line 37
    .line 38
    .line 39
    :cond_3
    return-void
.end method
