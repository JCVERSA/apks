.class public abstract Lcom/transsion/postdetail/ui/view/PostBaseItemView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\"\n\u0002\u0018\u0002\n\u0002\u0008\u0015\u0008&\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B#\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0012J\u0017\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0012J\u001f\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0017\u0010\u001a\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u0012J\u001f\u0010\u001d\u001a\u00020\u000c2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0017\u0010\u001f\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u001f\u0010\u0012J\u0017\u0010 \u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008 \u0010\u0012J\u0017\u0010!\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008!\u0010\u0012J\u001d\u0010$\u001a\u00020\u000c2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\"H\u0002\u00a2\u0006\u0004\u0008$\u0010%J\'\u0010(\u001a\u00020\u000c2\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\"2\u0008\u0010\'\u001a\u0004\u0018\u00010\u000fH\u0002\u00a2\u0006\u0004\u0008(\u0010)J\'\u0010+\u001a\u00020\u000c2\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\"2\u0008\u0010\'\u001a\u0004\u0018\u00010\u000fH\u0002\u00a2\u0006\u0004\u0008+\u0010)J\'\u0010-\u001a\u00020\u000c2\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\"2\u0008\u0010\'\u001a\u0004\u0018\u00010\u000fH\u0002\u00a2\u0006\u0004\u0008-\u0010)J\'\u0010/\u001a\u00020\u000c2\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\"2\u0008\u0010\'\u001a\u0004\u0018\u00010\u000fH\u0002\u00a2\u0006\u0004\u0008/\u0010)J\u001d\u00101\u001a\u00020\u000c2\u000c\u00100\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\"H\u0002\u00a2\u0006\u0004\u00081\u0010%J\u000f\u00102\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u00082\u0010\u000eJ\u0011\u00104\u001a\u0004\u0018\u000103H\u0004\u00a2\u0006\u0004\u00084\u00105J\u0017\u00108\u001a\u00020\u000c2\u0008\u00107\u001a\u0004\u0018\u000106\u00a2\u0006\u0004\u00088\u00109J!\u0010<\u001a\u00020\u000c2\u0008\u0010:\u001a\u0004\u0018\u00010\u001b2\u0008\u0010;\u001a\u0004\u0018\u00010\u001b\u00a2\u0006\u0004\u0008<\u0010=J\u0015\u0010>\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008>\u0010\u0012J\u0015\u0010A\u001a\u00020\u000c2\u0006\u0010@\u001a\u00020?\u00a2\u0006\u0004\u0008A\u0010BJ!\u0010E\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000f2\u0008\u0008\u0002\u0010D\u001a\u00020CH\u0016\u00a2\u0006\u0004\u0008E\u0010FJ\u001f\u0010I\u001a\u00020\u000c2\u0006\u0010G\u001a\u00020C2\u0006\u0010H\u001a\u00020CH\u0016\u00a2\u0006\u0004\u0008I\u0010JJ\u0017\u0010K\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008K\u0010\u0012J\u0015\u0010N\u001a\u00020\u000c2\u0006\u0010M\u001a\u00020L\u00a2\u0006\u0004\u0008N\u0010OJ\u0087\u0001\u0010Q\u001a\u00020\u000c2\u0008\u0010\'\u001a\u0004\u0018\u00010\u000f2\u000e\u0008\u0002\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\"2\u000e\u0008\u0002\u0010.\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\"2\u000e\u0008\u0002\u00100\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\"2\u000e\u0008\u0002\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\"2\u000e\u0008\u0002\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\"2\u000e\u0008\u0002\u0010P\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\"2\u000e\u0008\u0002\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\"\u00a2\u0006\u0004\u0008Q\u0010RJ\'\u0010S\u001a\u00020\u000c2\u000c\u0010P\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\"2\u0008\u0010\'\u001a\u0004\u0018\u00010\u000fH\u0014\u00a2\u0006\u0004\u0008S\u0010)J\r\u0010T\u001a\u00020\u000c\u00a2\u0006\u0004\u0008T\u0010\u000eJ\u0015\u0010V\u001a\u00020\u000c2\u0006\u0010U\u001a\u00020C\u00a2\u0006\u0004\u0008V\u0010WJ\u0017\u0010X\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008X\u0010\u0012J\u001d\u0010Z\u001a\u00020\u000c2\u0006\u0010Y\u001a\u00020C2\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008Z\u0010[J\u0017\u0010\\\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000fH&\u00a2\u0006\u0004\u0008\\\u0010\u0012J\u0017\u0010]\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000fH&\u00a2\u0006\u0004\u0008]\u0010\u0012R\u001a\u0010b\u001a\u00020\t8\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008^\u0010_\u001a\u0004\u0008`\u0010aR\u001a\u0010e\u001a\u00020\t8\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008c\u0010_\u001a\u0004\u0008d\u0010aR\u001a\u0010h\u001a\u00020\t8\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008f\u0010_\u001a\u0004\u0008g\u0010aR\u0014\u0010j\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008i\u0010_R\u0014\u0010l\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008k\u0010_R\u0014\u0010n\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008m\u0010_R\u001a\u0010t\u001a\u00020o8\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008p\u0010q\u001a\u0004\u0008r\u0010sR\u0018\u0010@\u001a\u0004\u0018\u00010?8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008u\u0010vR\u0018\u0010y\u001a\u0004\u0018\u0001068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008w\u0010xR\u0016\u0010U\u001a\u00020C8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008z\u0010-R%\u0010:\u001a\u0004\u0018\u00010\u001b8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0013\n\u0004\u0008{\u0010|\u001a\u0004\u0008}\u0010~\"\u0005\u0008\u007f\u0010\u0080\u0001R(\u0010;\u001a\u0004\u0018\u00010\u001b8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0016\n\u0005\u0008\u0081\u0001\u0010|\u001a\u0005\u0008\u0082\u0001\u0010~\"\u0006\u0008\u0083\u0001\u0010\u0080\u0001\u00a8\u0006\u0084\u0001"
    }
    d2 = {
        "Lcom/transsion/postdetail/ui/view/PostBaseItemView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "res",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "D",
        "()V",
        "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;",
        "item",
        "setBottomDownLoadStatus",
        "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V",
        "setPostContent",
        "setPostContentDes",
        "setHotComment",
        "Lcom/transsion/moviedetailapi/bean/CommentBean;",
        "hotComment",
        "C",
        "(Lcom/transsion/moviedetailapi/bean/CommentBean;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V",
        "E",
        "",
        "moduleName",
        "F",
        "(Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V",
        "setBottomBarContent",
        "setPostImage",
        "setPostVideo",
        "Lkotlin/Function0;",
        "onCLickHeader",
        "V",
        "(Lkotlin/jvm/functions/Function0;)V",
        "onCLickGroup",
        "postSubjectItem",
        "b0",
        "(Lkotlin/jvm/functions/Function0;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V",
        "onCLickSubject",
        "f0",
        "onCLickLike",
        "Z",
        "onCLickComment",
        "R",
        "onCLickShare",
        "d0",
        "onAttachedToWindow",
        "Landroidx/fragment/app/FragmentActivity;",
        "B",
        "()Landroidx/fragment/app/FragmentActivity;",
        "Lcom/transsion/postdetail/viewmodel/CommentViewModel;",
        "viewModel",
        "setCommentViewModel",
        "(Lcom/transsion/postdetail/viewmodel/CommentViewModel;)V",
        "pageName",
        "pageFrom",
        "setPage",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "setData",
        "Landroidx/recyclerview/widget/RecyclerView$s;",
        "rvPool",
        "setRecycledViewPool",
        "(Landroidx/recyclerview/widget/RecyclerView$s;)V",
        "",
        "showDistance",
        "setHeaderPostData",
        "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Z)V",
        "isShowSubject",
        "isShowRoom",
        "setBottomSubjectAndRoomVisibility",
        "(ZZ)V",
        "setBottomSubjectModuleData",
        "",
        "count",
        "setCommentCount",
        "(J)V",
        "onClickDownload",
        "setBottomBarClick",
        "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V",
        "T",
        "setContentMaxLine",
        "isDetail",
        "setIsDetail",
        "(Z)V",
        "setBottomRoomModuleData",
        "like",
        "refreshLike",
        "(ZLcom/transsion/moviedetailapi/bean/PostSubjectItem;)V",
        "setHeaderData",
        "setSubjectAndRoomContent",
        "a",
        "I",
        "getDp36",
        "()I",
        "dp36",
        "b",
        "getDp16",
        "dp16",
        "c",
        "getDp32",
        "dp32",
        "d",
        "rootWidth",
        "e",
        "dp78",
        "f",
        "dp280",
        "Lwn/s;",
        "g",
        "Lwn/s;",
        "getViewBinding",
        "()Lwn/s;",
        "viewBinding",
        "h",
        "Landroidx/recyclerview/widget/RecyclerView$s;",
        "i",
        "Lcom/transsion/postdetail/viewmodel/CommentViewModel;",
        "mCommentViewModel",
        "j",
        "k",
        "Ljava/lang/String;",
        "getPageName",
        "()Ljava/lang/String;",
        "setPageName",
        "(Ljava/lang/String;)V",
        "l",
        "getPageFrom",
        "setPageFrom",
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
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:Lwn/s;

.field private h:Landroidx/recyclerview/widget/RecyclerView$s;

.field private i:Lcom/transsion/postdetail/viewmodel/CommentViewModel;

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x24

    .line 4
    invoke-static {p1}, Llj/a;->b(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->a:I

    const/16 p1, 0x10

    .line 5
    invoke-static {p1}, Llj/a;->b(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->b:I

    const/16 p1, 0x20

    .line 6
    invoke-static {p1}, Llj/a;->b(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->c:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "getContext(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/transsion/baseui/util/b;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x12c

    invoke-static {p1}, Llj/a;->b(I)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result p1

    const/16 p2, 0x48

    invoke-static {p2}, Llj/a;->b(I)I

    move-result p2

    sub-int/2addr p1, p2

    :goto_0
    iput p1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->d:I

    const/16 p1, 0x4e

    .line 8
    invoke-static {p1}, Llj/a;->b(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->e:I

    const/16 p1, 0x118

    .line 9
    invoke-static {p1}, Llj/a;->b(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->f:I

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/transsion/postdetail/R$layout;->item_provider_room_post_base_layout:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 p1, 0x4

    .line 11
    invoke-static {p1}, Llj/a;->b(I)I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p2, p2, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 12
    invoke-static {p0}, Lwn/s;->a(Landroid/view/View;)Lwn/s;

    move-result-object p1

    const-string p2, "bind(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    return-void
.end method

.method public static synthetic A(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->e0(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final C(Lcom/transsion/moviedetailapi/bean/CommentBean;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
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
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 28
    .line 29
    iget-object v2, v2, Lwn/s;->h:Landroidx/appcompat/widget/AppCompatImageView;

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
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 80
    .line 81
    iget-object v1, v1, Lwn/s;->s:Landroidx/appcompat/widget/AppCompatTextView;

    .line 82
    .line 83
    if-eqz v1, :cond_4

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getLikeCnt()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-nez v2, :cond_3

    .line 90
    .line 91
    const-string v2, ""

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getLikeCnt()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    int-to-long v4, v2

    .line 99
    invoke-static {v4, v5}, Lcom/transsion/baseui/util/j;->a(J)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    .line 105
    .line 106
    :cond_4
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getCommentId()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    if-eqz v1, :cond_7

    .line 111
    .line 112
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->i:Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    .line 113
    .line 114
    if-nez v2, :cond_5

    .line 115
    .line 116
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->D()V

    .line 117
    .line 118
    .line 119
    :cond_5
    new-instance v2, Lcom/transsion/postdetail/bean/CommentLikeBody;

    .line 120
    .line 121
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-direct {v2, v1, v4}, Lcom/transsion/postdetail/bean/CommentLikeBody;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    .line 127
    .line 128
    if-eqz v0, :cond_6

    .line 129
    .line 130
    const-string v4, "dislike_hot_comment"

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_6
    const-string v4, "like_hot_comment"

    .line 134
    .line 135
    :goto_2
    invoke-direct {p0, v4, p2}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->F(Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 136
    .line 137
    .line 138
    new-instance p2, Lrm/b;

    .line 139
    .line 140
    xor-int/2addr v0, v3

    .line 141
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getLikeCnt()I

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    invoke-direct {p2, v0, v1, p1}, Lrm/b;-><init>(ZLjava/lang/String;I)V

    .line 146
    .line 147
    .line 148
    sget-object p1, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 149
    .line 150
    const-class v0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 151
    .line 152
    invoke-virtual {p1, v0}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    check-cast p1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 157
    .line 158
    const-class v0, Lrm/b;

    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    const-string v1, "getName(...)"

    .line 165
    .line 166
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    const-wide/16 v3, 0x0

    .line 170
    .line 171
    invoke-virtual {p1, v0, p2, v3, v4}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 172
    .line 173
    .line 174
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->i:Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    .line 175
    .line 176
    if-eqz p1, :cond_7

    .line 177
    .line 178
    invoke-virtual {p1, v2}, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->q(Lcom/transsion/postdetail/bean/CommentLikeBody;)V

    .line 179
    .line 180
    .line 181
    :cond_7
    return-void
.end method

.method private final D()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->i:Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    instance-of v1, v0, Landroidx/lifecycle/y0;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    check-cast v0, Landroidx/lifecycle/y0;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    move-object v0, v2

    .line 19
    :goto_0
    if-nez v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->B()Landroidx/fragment/app/FragmentActivity;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    instance-of v1, v0, Landroidx/lifecycle/y0;

    .line 26
    .line 27
    if-eqz v1, :cond_3

    .line 28
    .line 29
    :cond_2
    move-object v2, v0

    .line 30
    :cond_3
    if-eqz v2, :cond_4

    .line 31
    .line 32
    new-instance v0, Landroidx/lifecycle/v0;

    .line 33
    .line 34
    invoke-direct {v0, v2}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    .line 35
    .line 36
    .line 37
    const-class v1, Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->i:Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    .line 46
    .line 47
    :cond_4
    return-void
.end method

.method private final E(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
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
    iget-object v3, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->l:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->k:Ljava/lang/String;

    .line 228
    .line 229
    if-eqz v0, :cond_d

    .line 230
    .line 231
    sget-object v1, Lqi/h;->a:Lqi/h;

    .line 232
    .line 233
    invoke-virtual {v1, v0, p1}, Lqi/h;->z(Ljava/lang/String;Ljava/util/Map;)V

    .line 234
    .line 235
    .line 236
    :cond_d
    return-void
.end method

.method private final F(Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
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
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->l:Ljava/lang/String;

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
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->l:Ljava/lang/String;

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
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->k:Ljava/lang/String;

    .line 119
    .line 120
    if-eqz p1, :cond_a

    .line 121
    .line 122
    sget-object p2, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    .line 123
    .line 124
    invoke-virtual {p2, p1, v0}, Lcom/transsion/baselib/helper/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    .line 125
    .line 126
    .line 127
    :cond_a
    return-void
.end method

.method private static final G()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final H()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final I()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final J()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final K()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final L()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final M()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final N(Lcom/transsion/postdetail/ui/view/PostBaseItemView;Lcom/transsion/moviedetailapi/bean/CommentBean;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->C(Lcom/transsion/moviedetailapi/bean/CommentBean;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final O(Lcom/transsion/moviedetailapi/bean/CommentBean;Lcom/transsion/postdetail/ui/view/PostBaseItemView;Lrm/b;)Lkotlin/Unit;
    .locals 7

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
    if-eqz v0, :cond_2

    .line 19
    .line 20
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 21
    .line 22
    invoke-virtual {p2}, Lrm/b;->a()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v3, "commentId="

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    filled-new-array {v0}, [Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    const/4 v5, 0x4

    .line 48
    const/4 v6, 0x0

    .line 49
    const-string v2, "hotCommentLikeEvent"

    .line 50
    .line 51
    const/4 v4, 0x0

    .line 52
    invoke-static/range {v1 .. v6}, Lwf/a$a;->r(Lwf/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Lrm/b;->c()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p0, v0}, Lcom/transsion/moviedetailapi/bean/CommentBean;->setLikeStatu(Ljava/lang/Boolean;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2}, Lrm/b;->b()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    invoke-virtual {p0, v0}, Lcom/transsion/moviedetailapi/bean/CommentBean;->setLikeCnt(I)V

    .line 71
    .line 72
    .line 73
    iget-object p0, p1, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 74
    .line 75
    iget-object p0, p0, Lwn/s;->s:Landroidx/appcompat/widget/AppCompatTextView;

    .line 76
    .line 77
    if-eqz p0, :cond_1

    .line 78
    .line 79
    invoke-virtual {p2}, Lrm/b;->b()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_0

    .line 84
    .line 85
    const-string v0, ""

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p2}, Lrm/b;->b()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    int-to-long v0, v0

    .line 93
    invoke-static {v0, v1}, Lcom/transsion/baseui/util/j;->a(J)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    .line 99
    .line 100
    :cond_1
    iget-object p0, p1, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 101
    .line 102
    iget-object p0, p0, Lwn/s;->h:Landroidx/appcompat/widget/AppCompatImageView;

    .line 103
    .line 104
    if-eqz p0, :cond_2

    .line 105
    .line 106
    invoke-virtual {p2}, Lrm/b;->c()Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 111
    .line 112
    .line 113
    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 114
    .line 115
    return-object p0
.end method

.method private static final P(Lcom/transsion/postdetail/ui/view/PostBaseItemView;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 2
    .line 3
    iget-object v0, p0, Lwn/s;->u:Landroidx/appcompat/widget/AppCompatTextView;

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    const/4 v4, 0x4

    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v2, 0x3

    .line 11
    const/4 v3, 0x0

    .line 12
    move-object v1, p1

    .line 13
    invoke-static/range {v0 .. v5}, Lcom/transsion/baseui/util/l;->h(Landroid/widget/TextView;Ljava/lang/CharSequence;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private static final Q(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/postdetail/ui/view/PostBaseItemView;Z)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Media;->getFirstFrame()Lcom/transsion/moviedetailapi/bean/FirstFrame;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_5

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/FirstFrame;->getUrl()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_5

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getBuiltIn()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {p0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    new-instance v4, Lcom/transsion/postdetail/ui/view/PostBaseItemView$setPostVideo$2$1$1;

    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    invoke-direct {v4, p1, v0, p0}, Lcom/transsion/postdetail/ui/view/PostBaseItemView$setPostVideo$2$1$1;-><init>(Lcom/transsion/postdetail/ui/view/PostBaseItemView;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 37
    .line 38
    .line 39
    const/4 v5, 0x3

    .line 40
    const/4 v6, 0x0

    .line 41
    const/4 v2, 0x0

    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_0
    sget-object v1, Lni/f;->a:Lni/f$a;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const-string v3, "getContext(...)"

    .line 54
    .line 55
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1, v0}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const/16 v1, 0x118

    .line 67
    .line 68
    if-eqz p2, :cond_1

    .line 69
    .line 70
    invoke-static {v1}, Llj/a;->b(I)I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    const/16 v2, 0xa2

    .line 76
    .line 77
    invoke-static {v2}, Llj/a;->b(I)I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    :goto_0
    invoke-virtual {v0, v2}, Lni/f$b;->c(I)Lni/f$b;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    if-eqz p2, :cond_2

    .line 86
    .line 87
    const/16 p2, 0xda

    .line 88
    .line 89
    invoke-static {p2}, Llj/a;->b(I)I

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    goto :goto_1

    .line 94
    :cond_2
    invoke-static {v1}, Llj/a;->b(I)I

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    :goto_1
    invoke-virtual {v0, p2}, Lni/f$b;->m(I)Lni/f$b;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    if-eqz p0, :cond_3

    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/Media;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    if-eqz p0, :cond_3

    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    if-nez p0, :cond_4

    .line 119
    .line 120
    :cond_3
    const-string p0, ""

    .line 121
    .line 122
    :cond_4
    invoke-virtual {p2, p0}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    iget-object p1, p1, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 127
    .line 128
    iget-object p1, p1, Lwn/s;->o:Lwn/b0;

    .line 129
    .line 130
    iget-object p1, p1, Lwn/b0;->d:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 131
    .line 132
    const-string p2, "ivCover"

    .line 133
    .line 134
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, p1}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 138
    .line 139
    .line 140
    :cond_5
    :goto_2
    return-void
.end method

.method private final R(Lkotlin/jvm/functions/Function0;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 2
    .line 3
    iget-object p2, p2, Lwn/s;->D:Landroid/view/View;

    .line 4
    .line 5
    new-instance v0, Lcom/transsion/postdetail/ui/view/q0;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Lcom/transsion/postdetail/ui/view/q0;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private static final S(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final U(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final V(Lkotlin/jvm/functions/Function0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 2
    .line 3
    iget-object v0, v0, Lwn/s;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 4
    .line 5
    new-instance v1, Lcom/transsion/postdetail/ui/view/l0;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Lcom/transsion/postdetail/ui/view/l0;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 14
    .line 15
    iget-object v0, v0, Lwn/s;->e:Landroid/widget/FrameLayout;

    .line 16
    .line 17
    new-instance v1, Lcom/transsion/postdetail/ui/view/m0;

    .line 18
    .line 19
    invoke-direct {v1, p1}, Lcom/transsion/postdetail/ui/view/m0;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 26
    .line 27
    iget-object v0, v0, Lwn/s;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 28
    .line 29
    new-instance v1, Lcom/transsion/postdetail/ui/view/n0;

    .line 30
    .line 31
    invoke-direct {v1, p1}, Lcom/transsion/postdetail/ui/view/n0;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method private static final W(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final X(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final Y(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final Z(Lkotlin/jvm/functions/Function0;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 2
    .line 3
    iget-object v0, v0, Lwn/s;->F:Landroid/view/View;

    .line 4
    .line 5
    new-instance v1, Lcom/transsion/postdetail/ui/view/j0;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Lcom/transsion/postdetail/ui/view/j0;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    invoke-direct {p0, p2}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->setBottomBarContent(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method private static final a0(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
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
    const-wide/16 v1, 0x7d0

    .line 8
    .line 9
    invoke-virtual {v0, p1, v1, v2}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method private final b0(Lkotlin/jvm/functions/Function0;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 2
    .line 3
    iget-object p2, p2, Lwn/s;->n:Lwn/z;

    .line 4
    .line 5
    iget-object p2, p2, Lwn/z;->f:Landroid/widget/LinearLayout;

    .line 6
    .line 7
    new-instance v0, Lcom/transsion/postdetail/ui/view/e0;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Lcom/transsion/postdetail/ui/view/e0;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private static final c0(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final d0(Lkotlin/jvm/functions/Function0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lwn/s;->G:Landroid/view/View;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v1, Lcom/transsion/postdetail/ui/view/s0;

    .line 10
    .line 11
    invoke-direct {v1, p1}, Lcom/transsion/postdetail/ui/view/s0;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private static final e0(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final f0(Lkotlin/jvm/functions/Function0;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 2
    .line 3
    iget-object p2, p2, Lwn/s;->n:Lwn/z;

    .line 4
    .line 5
    iget-object p2, p2, Lwn/z;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    .line 7
    new-instance v0, Lcom/transsion/postdetail/ui/view/p0;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Lcom/transsion/postdetail/ui/view/p0;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private static final g0(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic h()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->J()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic i(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->Y(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic j()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->K()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic k(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->W(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic l(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->U(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic m(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->S(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->L()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic o(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/postdetail/ui/view/PostBaseItemView;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->Q(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/postdetail/ui/view/PostBaseItemView;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic p(Lcom/transsion/postdetail/ui/view/PostBaseItemView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->P(Lcom/transsion/postdetail/ui/view/PostBaseItemView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic q(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->a0(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic r(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->c0(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic s()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->I()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic setBottomBarClick$default(Lcom/transsion/postdetail/ui/view/PostBaseItemView;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 7

    .line 1
    move/from16 v0, p9

    .line 2
    .line 3
    if-nez p10, :cond_7

    .line 4
    .line 5
    and-int/lit8 v1, v0, 0x2

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Lcom/transsion/postdetail/ui/view/v0;

    .line 10
    .line 11
    invoke-direct {v1}, Lcom/transsion/postdetail/ui/view/v0;-><init>()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v1, p2

    .line 16
    :goto_0
    and-int/lit8 v2, v0, 0x4

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    new-instance v2, Lcom/transsion/postdetail/ui/view/w0;

    .line 21
    .line 22
    invoke-direct {v2}, Lcom/transsion/postdetail/ui/view/w0;-><init>()V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move-object v2, p3

    .line 27
    :goto_1
    and-int/lit8 v3, v0, 0x8

    .line 28
    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    new-instance v3, Lcom/transsion/postdetail/ui/view/x0;

    .line 32
    .line 33
    invoke-direct {v3}, Lcom/transsion/postdetail/ui/view/x0;-><init>()V

    .line 34
    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_2
    move-object v3, p4

    .line 38
    :goto_2
    and-int/lit8 v4, v0, 0x10

    .line 39
    .line 40
    if-eqz v4, :cond_3

    .line 41
    .line 42
    new-instance v4, Lcom/transsion/postdetail/ui/view/f0;

    .line 43
    .line 44
    invoke-direct {v4}, Lcom/transsion/postdetail/ui/view/f0;-><init>()V

    .line 45
    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_3
    move-object v4, p5

    .line 49
    :goto_3
    and-int/lit8 v5, v0, 0x20

    .line 50
    .line 51
    if-eqz v5, :cond_4

    .line 52
    .line 53
    new-instance v5, Lcom/transsion/postdetail/ui/view/g0;

    .line 54
    .line 55
    invoke-direct {v5}, Lcom/transsion/postdetail/ui/view/g0;-><init>()V

    .line 56
    .line 57
    .line 58
    goto :goto_4

    .line 59
    :cond_4
    move-object v5, p6

    .line 60
    :goto_4
    and-int/lit8 v6, v0, 0x40

    .line 61
    .line 62
    if-eqz v6, :cond_5

    .line 63
    .line 64
    new-instance v6, Lcom/transsion/postdetail/ui/view/h0;

    .line 65
    .line 66
    invoke-direct {v6}, Lcom/transsion/postdetail/ui/view/h0;-><init>()V

    .line 67
    .line 68
    .line 69
    goto :goto_5

    .line 70
    :cond_5
    move-object v6, p7

    .line 71
    :goto_5
    and-int/lit16 v0, v0, 0x80

    .line 72
    .line 73
    if-eqz v0, :cond_6

    .line 74
    .line 75
    new-instance v0, Lcom/transsion/postdetail/ui/view/i0;

    .line 76
    .line 77
    invoke-direct {v0}, Lcom/transsion/postdetail/ui/view/i0;-><init>()V

    .line 78
    .line 79
    .line 80
    goto :goto_6

    .line 81
    :cond_6
    move-object v0, p8

    .line 82
    :goto_6
    move-object p2, p0

    .line 83
    move-object p3, p1

    .line 84
    move-object p4, v1

    .line 85
    move-object p5, v2

    .line 86
    move-object p6, v3

    .line 87
    move-object p7, v4

    .line 88
    move-object p8, v5

    .line 89
    move-object/from16 p9, v6

    .line 90
    .line 91
    move-object/from16 p10, v0

    .line 92
    .line 93
    invoke-virtual/range {p2 .. p10}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->setBottomBarClick(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 98
    .line 99
    const-string v1, "Super calls with default arguments not supported in this target, function: setBottomBarClick"

    .line 100
    .line 101
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw v0
.end method

.method private final setBottomBarContent(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 2
    .line 3
    iget-object v0, v0, Lwn/s;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getStat()Lcom/transsion/moviedetailapi/bean/Stat;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Stat;->getLikeCount()Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v1, v2

    .line 18
    :goto_0
    const-string v3, ""

    .line 19
    .line 20
    const-wide/16 v4, 0x0

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 25
    .line 26
    .line 27
    move-result-wide v6

    .line 28
    cmp-long v6, v6, v4

    .line 29
    .line 30
    if-nez v6, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 34
    .line 35
    .line 36
    move-result-wide v6

    .line 37
    invoke-static {v6, v7}, Lcom/transsion/baseui/util/j;->a(J)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    :goto_1
    move-object v1, v3

    .line 43
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getHasLike()Ljava/lang/Boolean;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 51
    .line 52
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    const/4 v6, 0x0

    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    sget v1, Lcom/tn/lib/widget/R$drawable;->ic_post_like_select:I

    .line 60
    .line 61
    invoke-virtual {v0, v1, v6, v6, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 62
    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_3
    sget v1, Lcom/tn/lib/widget/R$drawable;->ic_post_like:I

    .line 66
    .line 67
    invoke-virtual {v0, v1, v6, v6, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 68
    .line 69
    .line 70
    :goto_3
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getStat()Lcom/transsion/moviedetailapi/bean/Stat;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Stat;->getCommentCount()Ljava/lang/Long;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    goto :goto_4

    .line 81
    :cond_4
    move-object v0, v2

    .line 82
    :goto_4
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 83
    .line 84
    iget-object v1, v1, Lwn/s;->t:Landroidx/appcompat/widget/AppCompatTextView;

    .line 85
    .line 86
    if-eqz v0, :cond_6

    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 89
    .line 90
    .line 91
    move-result-wide v6

    .line 92
    cmp-long v6, v6, v4

    .line 93
    .line 94
    if-nez v6, :cond_5

    .line 95
    .line 96
    goto :goto_5

    .line 97
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 98
    .line 99
    .line 100
    move-result-wide v6

    .line 101
    invoke-static {v6, v7}, Lcom/transsion/baseui/util/j;->a(J)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    goto :goto_6

    .line 106
    :cond_6
    :goto_5
    move-object v0, v3

    .line 107
    :goto_6
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getStat()Lcom/transsion/moviedetailapi/bean/Stat;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    if-eqz p1, :cond_7

    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Stat;->getShareCount()Ljava/lang/Long;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    :cond_7
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 121
    .line 122
    iget-object p1, p1, Lwn/s;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 123
    .line 124
    if-eqz p1, :cond_a

    .line 125
    .line 126
    if-eqz v2, :cond_9

    .line 127
    .line 128
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 129
    .line 130
    .line 131
    move-result-wide v0

    .line 132
    cmp-long v0, v0, v4

    .line 133
    .line 134
    if-nez v0, :cond_8

    .line 135
    .line 136
    goto :goto_7

    .line 137
    :cond_8
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 138
    .line 139
    .line 140
    move-result-wide v0

    .line 141
    invoke-static {v0, v1}, Lcom/transsion/baseui/util/j;->a(J)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    :cond_9
    :goto_7
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    .line 147
    .line 148
    :cond_a
    return-void
.end method

.method private final setBottomDownLoadStatus(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Media;->getMediaType()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v1

    .line 14
    :goto_0
    sget-object v2, Lcom/transsion/moviedetailapi/bean/MediaType;->VIDEO:Lcom/transsion/moviedetailapi/bean/MediaType;

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/MediaType;->getValue()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_5

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Media;->getMediaType()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move-object v0, v1

    .line 38
    :goto_1
    sget-object v2, Lcom/transsion/moviedetailapi/bean/MediaType;->IMAGE:Lcom/transsion/moviedetailapi/bean/MediaType;

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/MediaType;->getValue()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_5

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Media;->getMediaType()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    :cond_2
    sget-object p1, Lcom/transsion/moviedetailapi/bean/MediaType;->IMAGE_SINGLE:Lcom/transsion/moviedetailapi/bean/MediaType;

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/MediaType;->getValue()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_3
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 74
    .line 75
    iget-object p1, p1, Lwn/s;->E:Landroid/view/View;

    .line 76
    .line 77
    if-eqz p1, :cond_4

    .line 78
    .line 79
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 80
    .line 81
    .line 82
    :cond_4
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 83
    .line 84
    iget-object p1, p1, Lwn/s;->j:Landroidx/appcompat/widget/AppCompatImageView;

    .line 85
    .line 86
    if-eqz p1, :cond_7

    .line 87
    .line 88
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 89
    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 93
    .line 94
    iget-object p1, p1, Lwn/s;->E:Landroid/view/View;

    .line 95
    .line 96
    if-eqz p1, :cond_6

    .line 97
    .line 98
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 99
    .line 100
    .line 101
    :cond_6
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 102
    .line 103
    iget-object p1, p1, Lwn/s;->j:Landroidx/appcompat/widget/AppCompatImageView;

    .line 104
    .line 105
    if-eqz p1, :cond_7

    .line 106
    .line 107
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 108
    .line 109
    .line 110
    :cond_7
    :goto_3
    return-void
.end method

.method public static synthetic setHeaderPostData$default(Lcom/transsion/postdetail/ui/view/PostBaseItemView;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p4, :cond_1

    .line 2
    .line 3
    and-int/lit8 p3, p3, 0x2

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->setHeaderPostData(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Z)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: setHeaderPostData"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method private final setHotComment(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getHotComment()Lcom/transsion/moviedetailapi/bean/CommentBean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getContent()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-eqz v1, :cond_10

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    goto/16 :goto_4

    .line 22
    .line 23
    :cond_1
    instance-of v2, p0, Lcom/transsion/postdetail/ui/view/PostDetailItemView;

    .line 24
    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    goto/16 :goto_4

    .line 28
    .line 29
    :cond_2
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->E(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 33
    .line 34
    iget-object v2, v2, Lwn/s;->b:Lcom/noober/background/view/BLConstraintLayout;

    .line 35
    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    invoke-static {v2}, Luf/c;->k(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    :cond_3
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 42
    .line 43
    iget-object v2, v2, Lwn/s;->q:Landroidx/appcompat/widget/AppCompatTextView;

    .line 44
    .line 45
    if-eqz v2, :cond_4

    .line 46
    .line 47
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    :cond_4
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getAvatarUrl()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const-string v2, ""

    .line 55
    .line 56
    if-nez v1, :cond_5

    .line 57
    .line 58
    move-object v1, v2

    .line 59
    :cond_5
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    const-string v4, "getContext(...)"

    .line 64
    .line 65
    const/16 v5, 0x14

    .line 66
    .line 67
    if-lez v3, :cond_6

    .line 68
    .line 69
    iget-object v3, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 70
    .line 71
    iget-object v3, v3, Lwn/s;->f:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 72
    .line 73
    if-eqz v3, :cond_6

    .line 74
    .line 75
    sget-object v6, Lni/f;->a:Lni/f$a;

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v6, v7}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    invoke-virtual {v6, v1}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-static {v5}, Llj/a;->b(I)I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    invoke-virtual {v1, v6}, Lni/f$b;->m(I)Lni/f$b;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-static {v5}, Llj/a;->b(I)I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    invoke-virtual {v1, v6}, Lni/f$b;->c(I)Lni/f$b;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v1, v3}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 109
    .line 110
    .line 111
    :cond_6
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getImageList()Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    check-cast v1, Ljava/util/Collection;

    .line 116
    .line 117
    if-eqz v1, :cond_a

    .line 118
    .line 119
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_7

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_7
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 127
    .line 128
    iget-object v1, v1, Lwn/s;->c:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 129
    .line 130
    if-eqz v1, :cond_b

    .line 131
    .line 132
    const/4 v3, 0x0

    .line 133
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 134
    .line 135
    .line 136
    sget-object v6, Lni/f;->a:Lni/f$a;

    .line 137
    .line 138
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v6, v7}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getImageList()Ljava/util/List;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    check-cast v3, Lcom/transsion/moviedetailapi/bean/Cover;

    .line 161
    .line 162
    if-eqz v3, :cond_8

    .line 163
    .line 164
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    if-nez v3, :cond_9

    .line 169
    .line 170
    :cond_8
    move-object v3, v2

    .line 171
    :cond_9
    invoke-virtual {v4, v3}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-static {v5}, Llj/a;->b(I)I

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    invoke-virtual {v3, v4}, Lni/f$b;->m(I)Lni/f$b;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    invoke-static {v5}, Llj/a;->b(I)I

    .line 184
    .line 185
    .line 186
    move-result v4

    .line 187
    invoke-virtual {v3, v4}, Lni/f$b;->c(I)Lni/f$b;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    invoke-virtual {v3, v1}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 192
    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_a
    :goto_1
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 196
    .line 197
    iget-object v1, v1, Lwn/s;->c:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 198
    .line 199
    if-eqz v1, :cond_b

    .line 200
    .line 201
    invoke-static {v1}, Luf/c;->g(Landroid/view/View;)V

    .line 202
    .line 203
    .line 204
    :cond_b
    :goto_2
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 205
    .line 206
    iget-object v1, v1, Lwn/s;->s:Landroidx/appcompat/widget/AppCompatTextView;

    .line 207
    .line 208
    if-eqz v1, :cond_d

    .line 209
    .line 210
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getLikeCnt()I

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    if-nez v3, :cond_c

    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_c
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getLikeCnt()I

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    int-to-long v2, v2

    .line 222
    invoke-static {v2, v3}, Lcom/transsion/baseui/util/j;->a(J)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    .line 228
    .line 229
    :cond_d
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 230
    .line 231
    iget-object v1, v1, Lwn/s;->h:Landroidx/appcompat/widget/AppCompatImageView;

    .line 232
    .line 233
    if-eqz v1, :cond_e

    .line 234
    .line 235
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getLikeStatu()Ljava/lang/Boolean;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 240
    .line 241
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 246
    .line 247
    .line 248
    :cond_e
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 249
    .line 250
    iget-object v1, v1, Lwn/s;->B:Landroid/view/View;

    .line 251
    .line 252
    if-eqz v1, :cond_f

    .line 253
    .line 254
    new-instance v2, Lcom/transsion/postdetail/ui/view/t0;

    .line 255
    .line 256
    invoke-direct {v2, p0, v0, p1}, Lcom/transsion/postdetail/ui/view/t0;-><init>(Lcom/transsion/postdetail/ui/view/PostBaseItemView;Lcom/transsion/moviedetailapi/bean/CommentBean;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    .line 261
    .line 262
    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    const-string v1, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    .line 267
    .line 268
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    move-object v3, p1

    .line 272
    check-cast v3, Landroidx/appcompat/app/AppCompatActivity;

    .line 273
    .line 274
    new-instance v8, Lcom/transsion/postdetail/ui/view/u0;

    .line 275
    .line 276
    invoke-direct {v8, v0, p0}, Lcom/transsion/postdetail/ui/view/u0;-><init>(Lcom/transsion/moviedetailapi/bean/CommentBean;Lcom/transsion/postdetail/ui/view/PostBaseItemView;)V

    .line 277
    .line 278
    .line 279
    sget-object p1, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 280
    .line 281
    const-class v0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 282
    .line 283
    invoke-virtual {p1, v0}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    move-object v2, p1

    .line 288
    check-cast v2, Lcom/transsnet/flow/event/FlowEventBus;

    .line 289
    .line 290
    const-class p1, Lrm/b;

    .line 291
    .line 292
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v4

    .line 296
    const-string p1, "getName(...)"

    .line 297
    .line 298
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    sget-object v5, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 302
    .line 303
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    invoke-virtual {p1}, Lkotlinx/coroutines/a2;->p()Lkotlinx/coroutines/a2;

    .line 308
    .line 309
    .line 310
    move-result-object v6

    .line 311
    const/4 v7, 0x0

    .line 312
    invoke-virtual/range {v2 .. v8}, Lcom/transsnet/flow/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    .line 313
    .line 314
    .line 315
    return-void

    .line 316
    :cond_10
    :goto_4
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 317
    .line 318
    iget-object p1, p1, Lwn/s;->b:Lcom/noober/background/view/BLConstraintLayout;

    .line 319
    .line 320
    if-eqz p1, :cond_11

    .line 321
    .line 322
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 323
    .line 324
    .line 325
    :cond_11
    return-void
.end method

.method private final setPostContent(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->setPostContentDes(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Media;->getMediaType()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    sget-object v1, Lcom/transsion/moviedetailapi/bean/MediaType;->TEXT:Lcom/transsion/moviedetailapi/bean/MediaType;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/MediaType;->getValue()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const-string v2, "flContent"

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 31
    .line 32
    iget-object v0, v0, Lwn/s;->d:Landroid/widget/FrameLayout;

    .line 33
    .line 34
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    goto/16 :goto_4

    .line 41
    .line 42
    :cond_1
    sget-object v1, Lcom/transsion/moviedetailapi/bean/MediaType;->IMAGE:Lcom/transsion/moviedetailapi/bean/MediaType;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/MediaType;->getValue()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_5

    .line 53
    .line 54
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 55
    .line 56
    iget-object v0, v0, Lwn/s;->d:Landroid/widget/FrameLayout;

    .line 57
    .line 58
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const/4 v2, 0x0

    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Media;->getImage()Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    if-eqz v1, :cond_2

    .line 73
    .line 74
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    move v1, v2

    .line 80
    :goto_1
    if-lez v1, :cond_3

    .line 81
    .line 82
    const/4 v1, 0x1

    .line 83
    goto :goto_2

    .line 84
    :cond_3
    move v1, v2

    .line 85
    :goto_2
    if-eqz v1, :cond_4

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_4
    const/16 v2, 0x8

    .line 89
    .line 90
    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 91
    .line 92
    .line 93
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->setPostImage(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 94
    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_5
    sget-object v1, Lcom/transsion/moviedetailapi/bean/MediaType;->AUDIO:Lcom/transsion/moviedetailapi/bean/MediaType;

    .line 98
    .line 99
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/MediaType;->getValue()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_6

    .line 108
    .line 109
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 110
    .line 111
    iget-object v0, v0, Lwn/s;->d:Landroid/widget/FrameLayout;

    .line 112
    .line 113
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 117
    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_6
    sget-object v1, Lcom/transsion/moviedetailapi/bean/MediaType;->VIDEO:Lcom/transsion/moviedetailapi/bean/MediaType;

    .line 121
    .line 122
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/MediaType;->getValue()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_7

    .line 131
    .line 132
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 133
    .line 134
    iget-object v0, v0, Lwn/s;->d:Landroid/widget/FrameLayout;

    .line 135
    .line 136
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 140
    .line 141
    .line 142
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->setPostVideo(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 143
    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_7
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 147
    .line 148
    iget-object v0, v0, Lwn/s;->d:Landroid/widget/FrameLayout;

    .line 149
    .line 150
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 154
    .line 155
    .line 156
    :goto_4
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->setHotComment(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 157
    .line 158
    .line 159
    return-void
.end method

.method private final setPostContentDes(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getContent()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, ""

    .line 6
    .line 7
    const-string v2, "tvPostContent"

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getContent()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move-object v1, p1

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getTitle()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_5

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_3

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_3
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getTitle()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-nez p1, :cond_1

    .line 45
    .line 46
    :goto_1
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 47
    .line 48
    iget-object p1, p1, Lwn/s;->u:Landroidx/appcompat/widget/AppCompatTextView;

    .line 49
    .line 50
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 54
    .line 55
    .line 56
    iget-boolean p1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->j:Z

    .line 57
    .line 58
    if-eqz p1, :cond_4

    .line 59
    .line 60
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 61
    .line 62
    iget-object p1, p1, Lwn/s;->u:Landroidx/appcompat/widget/AppCompatTextView;

    .line 63
    .line 64
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    const/4 v0, 0x0

    .line 68
    invoke-static {p1, v1, v0}, Lcom/transsion/baseui/util/l;->e(Landroid/widget/TextView;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function2;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_4
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 73
    .line 74
    iget-object p1, p1, Lwn/s;->u:Landroidx/appcompat/widget/AppCompatTextView;

    .line 75
    .line 76
    new-instance v0, Lcom/transsion/postdetail/ui/view/o0;

    .line 77
    .line 78
    invoke-direct {v0, p0, v1}, Lcom/transsion/postdetail/ui/view/o0;-><init>(Lcom/transsion/postdetail/ui/view/PostBaseItemView;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 86
    .line 87
    iget-object p1, p1, Lwn/s;->u:Landroidx/appcompat/widget/AppCompatTextView;

    .line 88
    .line 89
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method private final setPostImage(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Media;->getImage()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v1

    .line 20
    :goto_0
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 21
    .line 22
    iget-object v2, v2, Lwn/s;->o:Lwn/b0;

    .line 23
    .line 24
    iget-object v2, v2, Lwn/b0;->c:Landroidx/cardview/widget/CardView;

    .line 25
    .line 26
    const-string v3, "flVideo"

    .line 27
    .line 28
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v2}, Luf/c;->g(Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    const-string v2, "recyclerViewPost"

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 39
    .line 40
    iget-object p1, p1, Lwn/s;->p:Lcom/tn/lib/view/NoScrollRecyclerView2;

    .line 41
    .line 42
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    iget-object v3, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 50
    .line 51
    iget-object v3, v3, Lwn/s;->p:Lcom/tn/lib/view/NoScrollRecyclerView2;

    .line 52
    .line 53
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v3}, Luf/c;->k(Landroid/view/View;)V

    .line 57
    .line 58
    .line 59
    const/4 v2, 0x1

    .line 60
    const/4 v3, 0x3

    .line 61
    if-eq v0, v2, :cond_2

    .line 62
    .line 63
    const/4 v2, 0x2

    .line 64
    if-eq v0, v2, :cond_2

    .line 65
    .line 66
    const/4 v4, 0x4

    .line 67
    if-eq v0, v4, :cond_2

    .line 68
    .line 69
    move v2, v3

    .line 70
    :cond_2
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-eqz v0, :cond_5

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Media;->getImage()Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    if-eqz v0, :cond_5

    .line 81
    .line 82
    new-instance v4, Lcom/transsion/postdetail/ui/adapter/RoomPostContentImageAdapter;

    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    const-string v6, "getContext(...)"

    .line 89
    .line 90
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-static {v5}, Lcom/transsion/baseui/util/b;->a(Landroid/content/Context;)Z

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    iget-object v8, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->k:Ljava/lang/String;

    .line 98
    .line 99
    iget-object v9, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->l:Ljava/lang/String;

    .line 100
    .line 101
    move-object v5, v4

    .line 102
    move v6, v2

    .line 103
    move-object v10, p1

    .line 104
    invoke-direct/range {v5 .. v10}, Lcom/transsion/postdetail/ui/adapter/RoomPostContentImageAdapter;-><init>(IZLjava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 105
    .line 106
    .line 107
    new-instance p1, Lcom/transsion/postdetail/ui/view/PostBaseItemView$a;

    .line 108
    .line 109
    invoke-direct {p1}, Lcom/transsion/postdetail/ui/view/PostBaseItemView$a;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->R0(Landroidx/recyclerview/widget/DiffUtil$e;)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 116
    .line 117
    iget-object p1, p1, Lwn/s;->p:Lcom/tn/lib/view/NoScrollRecyclerView2;

    .line 118
    .line 119
    iget-object v5, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->h:Landroidx/recyclerview/widget/RecyclerView$s;

    .line 120
    .line 121
    if-eqz v5, :cond_3

    .line 122
    .line 123
    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$s;)V

    .line 124
    .line 125
    .line 126
    :cond_3
    new-instance v5, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;

    .line 127
    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    invoke-direct {v5, v6, v2}, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    if-nez v2, :cond_4

    .line 143
    .line 144
    new-instance v2, Ltf/a;

    .line 145
    .line 146
    invoke-static {v3}, Llj/a;->b(I)I

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    invoke-static {v3}, Llj/a;->b(I)I

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    invoke-direct {v2, v5, v3, v1, v1}, Ltf/a;-><init>(IIII)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 158
    .line 159
    .line 160
    :cond_4
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 161
    .line 162
    .line 163
    check-cast v0, Ljava/util/Collection;

    .line 164
    .line 165
    invoke-virtual {v4, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 166
    .line 167
    .line 168
    :cond_5
    return-void
.end method

.method private final setPostVideo(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 2
    .line 3
    iget-object v0, v0, Lwn/s;->p:Lcom/tn/lib/view/NoScrollRecyclerView2;

    .line 4
    .line 5
    const-string v1, "recyclerViewPost"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 14
    .line 15
    iget-object v0, v0, Lwn/s;->o:Lwn/b0;

    .line 16
    .line 17
    iget-object v0, v0, Lwn/b0;->c:Landroidx/cardview/widget/CardView;

    .line 18
    .line 19
    const-string v1, "flVideo"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 28
    .line 29
    iget-object v0, v0, Lwn/s;->o:Lwn/b0;

    .line 30
    .line 31
    iget-object v0, v0, Lwn/b0;->d:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 32
    .line 33
    const-string v1, "ivCover"

    .line 34
    .line 35
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 42
    .line 43
    iget-object v0, v0, Lwn/s;->o:Lwn/b0;

    .line 44
    .line 45
    iget-object v0, v0, Lwn/b0;->f:Lcom/noober/background/view/BLTextView;

    .line 46
    .line 47
    const-string v1, "tvVideoDuration"

    .line 48
    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 56
    .line 57
    iget-object v0, v0, Lwn/s;->o:Lwn/b0;

    .line 58
    .line 59
    iget-object v0, v0, Lwn/b0;->e:Landroidx/appcompat/widget/AppCompatImageView;

    .line 60
    .line 61
    const-string v1, "ivVideoPlay"

    .line 62
    .line 63
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 70
    .line 71
    iget-object v0, v0, Lwn/s;->o:Lwn/b0;

    .line 72
    .line 73
    iget-object v0, v0, Lwn/b0;->b:Landroid/widget/FrameLayout;

    .line 74
    .line 75
    const-string v1, "flPlayer"

    .line 76
    .line 77
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    const/4 v1, 0x0

    .line 85
    const/4 v2, 0x0

    .line 86
    if-eqz v0, :cond_1

    .line 87
    .line 88
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 89
    .line 90
    iget-object v0, v0, Lwn/s;->o:Lwn/b0;

    .line 91
    .line 92
    iget-object v0, v0, Lwn/b0;->b:Landroid/widget/FrameLayout;

    .line 93
    .line 94
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    instance-of v3, v0, Lcom/transsion/postdetail/video/PostFeedVideoView;

    .line 99
    .line 100
    if-eqz v3, :cond_0

    .line 101
    .line 102
    check-cast v0, Lcom/transsion/postdetail/video/PostFeedVideoView;

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_0
    move-object v0, v1

    .line 106
    :goto_0
    if-eqz v0, :cond_1

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/transsion/postdetail/video/PostFeedVideoView;->removePlayer()V

    .line 109
    .line 110
    .line 111
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    if-eqz v0, :cond_2

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Media;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    if-eqz v0, :cond_2

    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Cover;->getWidth()Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    if-eqz v0, :cond_2

    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    goto :goto_1

    .line 134
    :cond_2
    move v0, v2

    .line 135
    :goto_1
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    if-eqz v3, :cond_3

    .line 140
    .line 141
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Media;->getFirstFrame()Lcom/transsion/moviedetailapi/bean/FirstFrame;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    if-eqz v3, :cond_3

    .line 146
    .line 147
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/FirstFrame;->getWidth()Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    if-eqz v3, :cond_3

    .line 152
    .line 153
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    goto :goto_2

    .line 158
    :cond_3
    move v3, v2

    .line 159
    :goto_2
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    if-eqz v4, :cond_4

    .line 164
    .line 165
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Media;->getVideo()Ljava/util/List;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    if-eqz v4, :cond_4

    .line 170
    .line 171
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    check-cast v4, Lcom/transsion/moviedetailapi/bean/Video;

    .line 176
    .line 177
    if-eqz v4, :cond_4

    .line 178
    .line 179
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Video;->getWidth()Ljava/lang/Integer;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    if-eqz v4, :cond_4

    .line 184
    .line 185
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 186
    .line 187
    .line 188
    move-result v4

    .line 189
    goto :goto_3

    .line 190
    :cond_4
    move v4, v2

    .line 191
    :goto_3
    if-lez v0, :cond_5

    .line 192
    .line 193
    move v5, v0

    .line 194
    goto :goto_4

    .line 195
    :cond_5
    if-lez v3, :cond_6

    .line 196
    .line 197
    move v5, v3

    .line 198
    goto :goto_4

    .line 199
    :cond_6
    if-lez v4, :cond_7

    .line 200
    .line 201
    move v5, v4

    .line 202
    goto :goto_4

    .line 203
    :cond_7
    move v5, v2

    .line 204
    :goto_4
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    if-eqz v6, :cond_8

    .line 209
    .line 210
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Media;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 211
    .line 212
    .line 213
    move-result-object v6

    .line 214
    if-eqz v6, :cond_8

    .line 215
    .line 216
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Cover;->getHeight()Ljava/lang/Integer;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    if-eqz v6, :cond_8

    .line 221
    .line 222
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 223
    .line 224
    .line 225
    move-result v6

    .line 226
    goto :goto_5

    .line 227
    :cond_8
    move v6, v2

    .line 228
    :goto_5
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 229
    .line 230
    .line 231
    move-result-object v7

    .line 232
    if-eqz v7, :cond_9

    .line 233
    .line 234
    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/Media;->getFirstFrame()Lcom/transsion/moviedetailapi/bean/FirstFrame;

    .line 235
    .line 236
    .line 237
    move-result-object v7

    .line 238
    if-eqz v7, :cond_9

    .line 239
    .line 240
    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/FirstFrame;->getHeight()Ljava/lang/Integer;

    .line 241
    .line 242
    .line 243
    move-result-object v7

    .line 244
    if-eqz v7, :cond_9

    .line 245
    .line 246
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 247
    .line 248
    .line 249
    move-result v7

    .line 250
    goto :goto_6

    .line 251
    :cond_9
    move v7, v2

    .line 252
    :goto_6
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 253
    .line 254
    .line 255
    move-result-object v8

    .line 256
    if-eqz v8, :cond_a

    .line 257
    .line 258
    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/bean/Media;->getVideo()Ljava/util/List;

    .line 259
    .line 260
    .line 261
    move-result-object v8

    .line 262
    if-eqz v8, :cond_a

    .line 263
    .line 264
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v8

    .line 268
    check-cast v8, Lcom/transsion/moviedetailapi/bean/Video;

    .line 269
    .line 270
    if-eqz v8, :cond_a

    .line 271
    .line 272
    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/bean/Video;->getHeight()Ljava/lang/Integer;

    .line 273
    .line 274
    .line 275
    move-result-object v8

    .line 276
    if-eqz v8, :cond_a

    .line 277
    .line 278
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 279
    .line 280
    .line 281
    move-result v8

    .line 282
    goto :goto_7

    .line 283
    :cond_a
    move v8, v2

    .line 284
    :goto_7
    if-lez v0, :cond_b

    .line 285
    .line 286
    goto :goto_8

    .line 287
    :cond_b
    if-lez v3, :cond_c

    .line 288
    .line 289
    move v6, v7

    .line 290
    goto :goto_8

    .line 291
    :cond_c
    if-lez v4, :cond_d

    .line 292
    .line 293
    move v6, v8

    .line 294
    goto :goto_8

    .line 295
    :cond_d
    move v6, v2

    .line 296
    :goto_8
    const/4 v0, 0x1

    .line 297
    if-le v6, v5, :cond_e

    .line 298
    .line 299
    move v3, v0

    .line 300
    goto :goto_9

    .line 301
    :cond_e
    move v3, v2

    .line 302
    :goto_9
    iget-object v4, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 303
    .line 304
    iget-object v4, v4, Lwn/s;->o:Lwn/b0;

    .line 305
    .line 306
    iget-object v4, v4, Lwn/b0;->c:Landroidx/cardview/widget/CardView;

    .line 307
    .line 308
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 309
    .line 310
    .line 311
    move-result-object v4

    .line 312
    const-string v7, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    .line 313
    .line 314
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 318
    .line 319
    div-int v7, v5, v6

    .line 320
    .line 321
    if-ge v7, v0, :cond_f

    .line 322
    .line 323
    iget v0, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->d:I

    .line 324
    .line 325
    const/16 v7, 0x26

    .line 326
    .line 327
    invoke-static {v7}, Llj/a;->b(I)I

    .line 328
    .line 329
    .line 330
    move-result v7

    .line 331
    sub-int/2addr v0, v7

    .line 332
    goto :goto_a

    .line 333
    :cond_f
    iget v0, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->d:I

    .line 334
    .line 335
    :goto_a
    iput v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 336
    .line 337
    mul-int/2addr v6, v0

    .line 338
    div-int/2addr v6, v5

    .line 339
    mul-int/lit8 v5, v0, 0x24

    .line 340
    .line 341
    div-int/lit8 v5, v5, 0x1a

    .line 342
    .line 343
    if-le v6, v5, :cond_10

    .line 344
    .line 345
    mul-int/lit8 v0, v0, 0x24

    .line 346
    .line 347
    div-int/lit8 v6, v0, 0x1a

    .line 348
    .line 349
    :cond_10
    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 350
    .line 351
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 352
    .line 353
    iget-object v0, v0, Lwn/s;->o:Lwn/b0;

    .line 354
    .line 355
    iget-object v0, v0, Lwn/b0;->c:Landroidx/cardview/widget/CardView;

    .line 356
    .line 357
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 358
    .line 359
    .line 360
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 361
    .line 362
    iget-object v0, v0, Lwn/s;->o:Lwn/b0;

    .line 363
    .line 364
    iget-object v0, v0, Lwn/b0;->c:Landroidx/cardview/widget/CardView;

    .line 365
    .line 366
    new-instance v4, Lcom/transsion/postdetail/ui/view/k0;

    .line 367
    .line 368
    invoke-direct {v4, p1, p0, v3}, Lcom/transsion/postdetail/ui/view/k0;-><init>(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/postdetail/ui/view/PostBaseItemView;Z)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v0, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 372
    .line 373
    .line 374
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 375
    .line 376
    iget-object v0, v0, Lwn/s;->o:Lwn/b0;

    .line 377
    .line 378
    iget-object v0, v0, Lwn/b0;->f:Lcom/noober/background/view/BLTextView;

    .line 379
    .line 380
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 381
    .line 382
    .line 383
    move-result-object p1

    .line 384
    if-eqz p1, :cond_11

    .line 385
    .line 386
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Media;->getVideo()Ljava/util/List;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    :cond_11
    if-eqz v1, :cond_12

    .line 391
    .line 392
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 393
    .line 394
    .line 395
    move-result p1

    .line 396
    goto :goto_b

    .line 397
    :cond_12
    move p1, v2

    .line 398
    :goto_b
    if-lez p1, :cond_15

    .line 399
    .line 400
    if-eqz v1, :cond_13

    .line 401
    .line 402
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object p1

    .line 406
    check-cast p1, Lcom/transsion/moviedetailapi/bean/Video;

    .line 407
    .line 408
    if-eqz p1, :cond_13

    .line 409
    .line 410
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Video;->getDuration()Ljava/lang/Integer;

    .line 411
    .line 412
    .line 413
    move-result-object p1

    .line 414
    if-eqz p1, :cond_13

    .line 415
    .line 416
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 417
    .line 418
    .line 419
    move-result v2

    .line 420
    :cond_13
    if-lez v2, :cond_14

    .line 421
    .line 422
    int-to-long v1, v2

    .line 423
    invoke-static {v1, v2}, Lcom/transsion/baseui/util/TimeUtilKt;->p(J)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object p1

    .line 427
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    .line 429
    .line 430
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 431
    .line 432
    .line 433
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 434
    .line 435
    .line 436
    goto :goto_c

    .line 437
    :cond_14
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 438
    .line 439
    .line 440
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 441
    .line 442
    .line 443
    goto :goto_c

    .line 444
    :cond_15
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 445
    .line 446
    .line 447
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 448
    .line 449
    .line 450
    :goto_c
    return-void
.end method

.method public static synthetic t(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g0(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic u()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->G()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic v()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->M()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic w(Lcom/transsion/postdetail/ui/view/PostBaseItemView;Lcom/transsion/moviedetailapi/bean/CommentBean;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->N(Lcom/transsion/postdetail/ui/view/PostBaseItemView;Lcom/transsion/moviedetailapi/bean/CommentBean;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic x(Lcom/transsion/moviedetailapi/bean/CommentBean;Lcom/transsion/postdetail/ui/view/PostBaseItemView;Lrm/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->O(Lcom/transsion/moviedetailapi/bean/CommentBean;Lcom/transsion/postdetail/ui/view/PostBaseItemView;Lrm/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic y(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->X(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic z()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->H()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method protected final B()Landroidx/fragment/app/FragmentActivity;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    return-object v0
.end method

.method protected T(Lkotlin/jvm/functions/Function0;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 1

    .line 1
    const-string p2, "onClickDownload"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 7
    .line 8
    iget-object p2, p2, Lwn/s;->E:Landroid/view/View;

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/transsion/postdetail/ui/view/r0;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Lcom/transsion/postdetail/ui/view/r0;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method protected final getDp16()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->b:I

    .line 2
    .line 3
    return v0
.end method

.method protected final getDp32()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->c:I

    .line 2
    .line 3
    return v0
.end method

.method protected final getDp36()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->a:I

    .line 2
    .line 3
    return v0
.end method

.method protected final getPageFrom()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final getPageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final getViewBinding()Lwn/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 2
    .line 3
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->D()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final refreshLike(ZLcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 5

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 7
    .line 8
    iget-object v0, v0, Lwn/s;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getStat()Lcom/transsion/moviedetailapi/bean/Stat;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Stat;->getLikeCount()Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p2, 0x0

    .line 22
    :goto_0
    if-eqz p2, :cond_2

    .line 23
    .line 24
    const-wide/16 v1, 0x0

    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    cmp-long v1, v3, v1

    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 36
    .line 37
    .line 38
    move-result-wide v1

    .line 39
    invoke-static {v1, v2}, Lcom/transsion/baseui/util/j;->a(J)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    :goto_1
    const-string p2, ""

    .line 45
    .line 46
    :goto_2
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    const/4 p2, 0x0

    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    sget p1, Lcom/tn/lib/widget/R$drawable;->ic_post_like_select:I

    .line 53
    .line 54
    invoke-virtual {v0, p1, p2, p2, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 55
    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_3
    sget p1, Lcom/tn/lib/widget/R$drawable;->ic_post_like:I

    .line 59
    .line 60
    invoke-virtual {v0, p1, p2, p2, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 61
    .line 62
    .line 63
    :goto_3
    return-void
.end method

.method public final setBottomBarClick(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "onCLickLike"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "onCLickComment"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "onCLickShare"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "onCLickSubject"

    .line 17
    .line 18
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "onCLickGroup"

    .line 22
    .line 23
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "onClickDownload"

    .line 27
    .line 28
    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "onCLickHeader"

    .line 32
    .line 33
    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, p2, p1}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->Z(Lkotlin/jvm/functions/Function0;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, p3, p1}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->R(Lkotlin/jvm/functions/Function0;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, p4}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->d0(Lkotlin/jvm/functions/Function0;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p7, p1}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->T(Lkotlin/jvm/functions/Function0;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, p5, p1}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->f0(Lkotlin/jvm/functions/Function0;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, p6, p1}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->b0(Lkotlin/jvm/functions/Function0;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, p8}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->V(Lkotlin/jvm/functions/Function0;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public setBottomRoomModuleData(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 9

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 7
    .line 8
    iget-object v0, v0, Lwn/s;->n:Lwn/z;

    .line 9
    .line 10
    iget-object v0, v0, Lwn/z;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Group;->getName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v1, v2

    .line 25
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getBuiltIn()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    new-instance v6, Lcom/transsion/postdetail/ui/view/PostBaseItemView$setBottomRoomModuleData$1;

    .line 43
    .line 44
    invoke-direct {v6, p1, p0, v2}, Lcom/transsion/postdetail/ui/view/PostBaseItemView$setBottomRoomModuleData$1;-><init>(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/postdetail/ui/view/PostBaseItemView;Lkotlin/coroutines/Continuation;)V

    .line 45
    .line 46
    .line 47
    const/4 v7, 0x3

    .line 48
    const/4 v8, 0x0

    .line 49
    const/4 v4, 0x0

    .line 50
    const/4 v5, 0x0

    .line 51
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_1
    sget-object v0, Lni/f;->a:Lni/f$a;

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const-string v3, "getContext(...)"

    .line 62
    .line 63
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    if-eqz v1, :cond_2

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Group;->getAvatar()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    if-nez v1, :cond_5

    .line 81
    .line 82
    :cond_2
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-eqz p1, :cond_3

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Group;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    if-eqz p1, :cond_3

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    :cond_3
    if-nez v2, :cond_4

    .line 99
    .line 100
    const-string v1, ""

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_4
    move-object v1, v2

    .line 104
    :cond_5
    :goto_1
    invoke-virtual {v0, v1}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    iget v0, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->c:I

    .line 109
    .line 110
    invoke-virtual {p1, v0}, Lni/f$b;->m(I)Lni/f$b;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iget v0, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->c:I

    .line 115
    .line 116
    invoke-virtual {p1, v0}, Lni/f$b;->c(I)Lni/f$b;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 121
    .line 122
    iget-object v0, v0, Lwn/s;->n:Lwn/z;

    .line 123
    .line 124
    iget-object v0, v0, Lwn/z;->c:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 125
    .line 126
    const-string v1, "ivRoomCover"

    .line 127
    .line 128
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v0}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 132
    .line 133
    .line 134
    :goto_2
    return-void
.end method

.method public setBottomSubjectAndRoomVisibility(ZZ)V
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
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 21
    .line 22
    iget-object p1, p1, Lwn/s;->n:Lwn/z;

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
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 40
    .line 41
    iget-object p1, p1, Lwn/s;->n:Lwn/z;

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
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 52
    .line 53
    iget-object p1, p1, Lwn/s;->n:Lwn/z;

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
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 64
    .line 65
    iget-object p1, p1, Lwn/s;->n:Lwn/z;

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
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 82
    .line 83
    iget-object p1, p1, Lwn/s;->n:Lwn/z;

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
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 96
    .line 97
    iget-object p1, p1, Lwn/s;->n:Lwn/z;

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
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 108
    .line 109
    iget-object p1, p1, Lwn/s;->n:Lwn/z;

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
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 125
    .line 126
    iget-object p1, p1, Lwn/s;->n:Lwn/z;

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
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 141
    .line 142
    iget-object p1, p1, Lwn/s;->n:Lwn/z;

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
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 160
    .line 161
    iget-object p1, p1, Lwn/s;->n:Lwn/z;

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
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 172
    .line 173
    iget-object p1, p1, Lwn/s;->n:Lwn/z;

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
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 184
    .line 185
    iget-object p1, p1, Lwn/s;->n:Lwn/z;

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

.method public setBottomSubjectModuleData(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 11

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getBuiltIn()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const-string v2, ""

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    new-instance v6, Lcom/transsion/postdetail/ui/view/PostBaseItemView$setBottomSubjectModuleData$1;

    .line 24
    .line 25
    invoke-direct {v6, p1, p0, v1}, Lcom/transsion/postdetail/ui/view/PostBaseItemView$setBottomSubjectModuleData$1;-><init>(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/postdetail/ui/view/PostBaseItemView;Lkotlin/coroutines/Continuation;)V

    .line 26
    .line 27
    .line 28
    const/4 v7, 0x3

    .line 29
    const/4 v8, 0x0

    .line 30
    const/4 v4, 0x0

    .line 31
    const/4 v5, 0x0

    .line 32
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    sget-object v0, Lni/f;->a:Lni/f$a;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const-string v4, "getContext(...)"

    .line 43
    .line 44
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v3}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    if-eqz v3, :cond_1

    .line 56
    .line 57
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    if-eqz v3, :cond_1

    .line 62
    .line 63
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    if-nez v3, :cond_2

    .line 68
    .line 69
    :cond_1
    move-object v3, v2

    .line 70
    :cond_2
    invoke-virtual {v0, v3}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget v3, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->c:I

    .line 75
    .line 76
    invoke-virtual {v0, v3}, Lni/f$b;->m(I)Lni/f$b;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iget v3, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->c:I

    .line 81
    .line 82
    invoke-virtual {v0, v3}, Lni/f$b;->c(I)Lni/f$b;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    if-eqz v3, :cond_3

    .line 91
    .line 92
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    if-eqz v3, :cond_3

    .line 97
    .line 98
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    if-nez v3, :cond_4

    .line 103
    .line 104
    :cond_3
    move-object v3, v2

    .line 105
    :cond_4
    invoke-virtual {v0, v3}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iget-object v3, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 110
    .line 111
    iget-object v3, v3, Lwn/s;->n:Lwn/z;

    .line 112
    .line 113
    iget-object v3, v3, Lwn/z;->d:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 114
    .line 115
    const-string v4, "ivSubjectCover"

    .line 116
    .line 117
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v3}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 121
    .line 122
    .line 123
    :goto_0
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 124
    .line 125
    iget-object v0, v0, Lwn/s;->n:Lwn/z;

    .line 126
    .line 127
    iget-object v0, v0, Lwn/z;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    if-eqz v3, :cond_5

    .line 134
    .line 135
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    if-eqz v3, :cond_5

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_5
    move-object v3, v2

    .line 143
    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    if-eqz v0, :cond_6

    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    goto :goto_2

    .line 157
    :cond_6
    move-object v0, v1

    .line 158
    :goto_2
    invoke-static {v0}, Lcom/transsion/moviedetailapi/h;->a(Ljava/lang/Integer;)I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    iget-object v3, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 163
    .line 164
    iget-object v3, v3, Lwn/s;->n:Lwn/z;

    .line 165
    .line 166
    iget-object v3, v3, Lwn/z;->e:Landroidx/appcompat/widget/AppCompatImageView;

    .line 167
    .line 168
    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    if-eqz v0, :cond_7

    .line 176
    .line 177
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getReleaseDate()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    goto :goto_3

    .line 182
    :cond_7
    move-object v0, v1

    .line 183
    :goto_3
    const-string v3, "yyyy-MM-dd"

    .line 184
    .line 185
    invoke-static {v0, v3}, Lcom/blankj/utilcode/util/c0;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 194
    .line 195
    .line 196
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 197
    .line 198
    iget-object v0, v0, Lwn/s;->n:Lwn/z;

    .line 199
    .line 200
    iget-object v0, v0, Lwn/z;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 201
    .line 202
    const/4 v4, 0x1

    .line 203
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    if-eqz v0, :cond_8

    .line 219
    .line 220
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getGenre()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    :cond_8
    if-eqz v1, :cond_b

    .line 225
    .line 226
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    if-nez v0, :cond_9

    .line 231
    .line 232
    goto :goto_4

    .line 233
    :cond_9
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    if-eqz p1, :cond_b

    .line 238
    .line 239
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getGenre()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    if-eqz v5, :cond_b

    .line 244
    .line 245
    const-string p1, ", "

    .line 246
    .line 247
    filled-new-array {p1}, [Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v6

    .line 251
    const/4 v9, 0x6

    .line 252
    const/4 v10, 0x0

    .line 253
    const/4 v7, 0x0

    .line 254
    const/4 v8, 0x0

    .line 255
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    if-eqz p1, :cond_b

    .line 260
    .line 261
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    check-cast p1, Ljava/lang/String;

    .line 266
    .line 267
    if-nez p1, :cond_a

    .line 268
    .line 269
    goto :goto_4

    .line 270
    :cond_a
    move-object v2, p1

    .line 271
    :cond_b
    :goto_4
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 272
    .line 273
    iget-object p1, p1, Lwn/s;->n:Lwn/z;

    .line 274
    .line 275
    iget-object p1, p1, Lwn/z;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 276
    .line 277
    const-string v0, "tvSubjectGenre"

    .line 278
    .line 279
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    const/4 v3, 0x0

    .line 287
    if-lez v1, :cond_c

    .line 288
    .line 289
    move v1, v4

    .line 290
    goto :goto_5

    .line 291
    :cond_c
    move v1, v3

    .line 292
    :goto_5
    const/16 v5, 0x8

    .line 293
    .line 294
    if-eqz v1, :cond_d

    .line 295
    .line 296
    move v1, v3

    .line 297
    goto :goto_6

    .line 298
    :cond_d
    move v1, v5

    .line 299
    :goto_6
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 300
    .line 301
    .line 302
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 303
    .line 304
    iget-object p1, p1, Lwn/s;->n:Lwn/z;

    .line 305
    .line 306
    iget-object p1, p1, Lwn/z;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 307
    .line 308
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    if-lez v0, :cond_e

    .line 316
    .line 317
    goto :goto_7

    .line 318
    :cond_e
    move v4, v3

    .line 319
    :goto_7
    if-eqz v4, :cond_f

    .line 320
    .line 321
    goto :goto_8

    .line 322
    :cond_f
    move v3, v5

    .line 323
    :goto_8
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 324
    .line 325
    .line 326
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 327
    .line 328
    iget-object p1, p1, Lwn/s;->n:Lwn/z;

    .line 329
    .line 330
    iget-object p1, p1, Lwn/z;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 331
    .line 332
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    .line 334
    .line 335
    return-void
.end method

.method public final setCommentCount(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, v0, Lwn/s;->t:Landroidx/appcompat/widget/AppCompatTextView;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const-wide/16 v1, 0x0

    .line 10
    .line 11
    cmp-long v1, p1, v1

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const-string p1, ""

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {p1, p2}, Lcom/transsion/baseui/util/j;->a(J)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public final setCommentViewModel(Lcom/transsion/postdetail/viewmodel/CommentViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->i:Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    .line 2
    .line 3
    return-void
.end method

.method public final setContentMaxLine()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 2
    .line 3
    iget-object v0, v0, Lwn/s;->u:Landroidx/appcompat/widget/AppCompatTextView;

    .line 4
    .line 5
    const v1, 0x7fffffff

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setData(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 1

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->setBottomDownLoadStatus(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->setHeaderData(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->setPostContent(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->setSubjectAndRoomContent(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->setBottomBarContent(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public abstract setHeaderData(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
.end method

.method public setHeaderPostData(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Z)V
    .locals 8

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getBuiltIn()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const-string v1, ""

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    new-instance v5, Lcom/transsion/postdetail/ui/view/PostBaseItemView$setHeaderPostData$1;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-direct {v5, p1, p0, v0}, Lcom/transsion/postdetail/ui/view/PostBaseItemView$setHeaderPostData$1;-><init>(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/postdetail/ui/view/PostBaseItemView;Lkotlin/coroutines/Continuation;)V

    .line 26
    .line 27
    .line 28
    const/4 v6, 0x3

    .line 29
    const/4 v7, 0x0

    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    sget-object v0, Lni/f;->a:Lni/f$a;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const-string v3, "getContext(...)"

    .line 43
    .line 44
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getUser()Lcom/transsion/moviedetailapi/bean/User;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/User;->getAvatar()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    if-nez v2, :cond_2

    .line 62
    .line 63
    :cond_1
    move-object v2, v1

    .line 64
    :cond_2
    invoke-virtual {v0, v2}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iget v2, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->b:I

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Lni/f$b;->m(I)Lni/f$b;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget v2, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->b:I

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Lni/f$b;->c(I)Lni/f$b;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 81
    .line 82
    iget-object v2, v2, Lwn/s;->m:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 83
    .line 84
    const-string v3, "ivUserAvatar2"

    .line 85
    .line 86
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v2}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 90
    .line 91
    .line 92
    :goto_0
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 93
    .line 94
    iget-object v0, v0, Lwn/s;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getUser()Lcom/transsion/moviedetailapi/bean/User;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    if-eqz v2, :cond_3

    .line 101
    .line 102
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/User;->getNickname()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    if-eqz v2, :cond_3

    .line 107
    .line 108
    move-object v1, v2

    .line 109
    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 113
    .line 114
    iget-object v0, v0, Lwn/s;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getCreatedAt()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    if-eqz v1, :cond_4

    .line 121
    .line 122
    invoke-static {v1}, Lkotlin/text/StringsKt;->x(Ljava/lang/String;)Ljava/lang/Long;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    if-eqz v1, :cond_4

    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 129
    .line 130
    .line 131
    move-result-wide v1

    .line 132
    goto :goto_1

    .line 133
    :cond_4
    const-wide/16 v1, 0x0

    .line 134
    .line 135
    :goto_1
    invoke-static {v1, v2}, Lcom/transsion/postdetail/util/m;->b(J)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 143
    .line 144
    iget-object v0, v0, Lwn/s;->C:Landroid/view/View;

    .line 145
    .line 146
    const-string v1, "vLocationLine"

    .line 147
    .line 148
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPoiName()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    const-string v1, "tvUserNameOrLocation"

    .line 159
    .line 160
    const-string v2, "ivLocationIcon"

    .line 161
    .line 162
    if-eqz v0, :cond_8

    .line 163
    .line 164
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-nez v0, :cond_5

    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_5
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 172
    .line 173
    iget-object v0, v0, Lwn/s;->z:Landroidx/appcompat/widget/AppCompatTextView;

    .line 174
    .line 175
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 179
    .line 180
    .line 181
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 182
    .line 183
    iget-object v0, v0, Lwn/s;->i:Landroidx/appcompat/widget/AppCompatImageView;

    .line 184
    .line 185
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getDistanceStr()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    if-eqz v0, :cond_7

    .line 196
    .line 197
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-nez v0, :cond_6

    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_6
    if-eqz p2, :cond_7

    .line 205
    .line 206
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPoiName()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p2

    .line 210
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getDistanceStr()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const-string p2, " "

    .line 223
    .line 224
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    goto :goto_3

    .line 235
    :cond_7
    :goto_2
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPoiName()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    :goto_3
    iget-object p2, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 240
    .line 241
    iget-object p2, p2, Lwn/s;->z:Landroidx/appcompat/widget/AppCompatTextView;

    .line 242
    .line 243
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    .line 245
    .line 246
    goto :goto_5

    .line 247
    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 248
    .line 249
    iget-object p1, p1, Lwn/s;->i:Landroidx/appcompat/widget/AppCompatImageView;

    .line 250
    .line 251
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 255
    .line 256
    .line 257
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->g:Lwn/s;

    .line 258
    .line 259
    iget-object p1, p1, Lwn/s;->z:Landroidx/appcompat/widget/AppCompatTextView;

    .line 260
    .line 261
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 265
    .line 266
    .line 267
    :goto_5
    return-void
.end method

.method public final setIsDetail(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->j:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setPage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->k:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->l:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method

.method protected final setPageFrom(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method protected final setPageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$s;)V
    .locals 1

    .line 1
    const-string v0, "rvPool"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->h:Landroidx/recyclerview/widget/RecyclerView$s;

    .line 7
    .line 8
    return-void
.end method

.method public abstract setSubjectAndRoomContent(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
.end method
