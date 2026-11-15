.class public final Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;
.super Lcom/transsion/baseui/fragment/PageStatusFragment;
.source "source.java"

# interfaces
.implements Lcom/tn/lib/widget/dialog/TRDialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/ui/fragment/PostDetailFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/PageStatusFragment<",
        "Lwn/n;",
        ">;",
        "Lcom/tn/lib/widget/dialog/TRDialogListener;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u001d\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 i2\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001jB\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0005J\u0017\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u0005J\u000f\u0010\r\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0005J\u0019\u0010\u0010\u001a\u00020\u00062\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0005J\u000f\u0010\u0013\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0005J\u0017\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0011J\u000f\u0010\u0017\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0005J\u000f\u0010\u001a\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u0005J\u000f\u0010\u001b\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u0005J\u000f\u0010\u001c\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u0005J\u000f\u0010\u001d\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u0005J\u000f\u0010\u001e\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u0005J\u000f\u0010\u001f\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u001f\u0010\u0005J\u000f\u0010 \u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008 \u0010\u0005J\u0017\u0010#\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020!H\u0016\u00a2\u0006\u0004\u0008#\u0010$J\u000f\u0010%\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008%\u0010\u0018J\u000f\u0010\'\u001a\u00020&H\u0016\u00a2\u0006\u0004\u0008\'\u0010(J\u000f\u0010)\u001a\u00020&H\u0016\u00a2\u0006\u0004\u0008)\u0010(J\u000f\u0010+\u001a\u00020*H\u0016\u00a2\u0006\u0004\u0008+\u0010,J\u000f\u0010-\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008-\u0010\u0005J\u0017\u00100\u001a\u00020\u00062\u0006\u0010/\u001a\u00020.H\u0016\u00a2\u0006\u0004\u00080\u00101J\u0017\u00102\u001a\u00020\u00062\u0006\u0010/\u001a\u00020.H\u0016\u00a2\u0006\u0004\u00082\u00101J1\u00109\u001a\u00020\u00062\u0006\u00104\u001a\u0002032\u0010\u00106\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u0016052\u0006\u00108\u001a\u000207H\u0016\u00a2\u0006\u0004\u00089\u0010:J\u000f\u0010;\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008;\u0010\u0005J\u000f\u0010<\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008<\u0010\u0005J\u000f\u0010=\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008=\u0010\u0005J\u000f\u0010>\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008>\u0010\u0005J\u000f\u0010?\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008?\u0010\u0005J\u000f\u0010@\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008@\u0010\u0005J\u0017\u0010A\u001a\u00020\u00062\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008A\u0010\u0011J\u0017\u0010B\u001a\u00020\u00062\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008B\u0010\u0011J\u0017\u0010C\u001a\u00020\u00062\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008C\u0010\u0011R\u0018\u0010D\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008D\u0010ER$\u0010F\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008F\u0010E\u001a\u0004\u0008G\u0010\u0018\"\u0004\u0008H\u0010IR\u0016\u0010J\u001a\u00020&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008J\u0010KR$\u0010L\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008L\u0010E\u001a\u0004\u0008M\u0010\u0018\"\u0004\u0008N\u0010IR\u0018\u0010O\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008O\u0010ER$\u0010P\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008P\u0010Q\u001a\u0004\u0008R\u0010S\"\u0004\u0008T\u0010\u0011R\u0018\u0010V\u001a\u0004\u0018\u00010U8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008V\u0010WR\u001b\u0010]\u001a\u00020X8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008Y\u0010Z\u001a\u0004\u0008[\u0010\\R\u001d\u0010b\u001a\u0004\u0018\u00010^8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008_\u0010Z\u001a\u0004\u0008`\u0010aR\u0018\u0010d\u001a\u0004\u0018\u00010c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008d\u0010eR\u0018\u0010g\u001a\u0004\u0018\u00010f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008g\u0010h\u00a8\u0006k"
    }
    d2 = {
        "Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;",
        "Lcom/transsion/baseui/fragment/PageStatusFragment;",
        "Lwn/n;",
        "Lcom/tn/lib/widget/dialog/TRDialogListener;",
        "<init>",
        "()V",
        "",
        "initView",
        "",
        "commentCount",
        "updateCommentCount",
        "(J)V",
        "loadData",
        "updatePostDetail",
        "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;",
        "postItem",
        "onDownloadClick",
        "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V",
        "requestPermission",
        "showSettingDialog",
        "item",
        "setPTParams",
        "",
        "getPageName",
        "()Ljava/lang/String;",
        "observeLike",
        "updateOperationViewState",
        "clickLike",
        "showCommentsDialog",
        "doShare",
        "clickDownload",
        "localLogPause",
        "receiveArguments",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "getViewBinding",
        "(Landroid/view/LayoutInflater;)Lwn/n;",
        "getPageStateLayoutTitle",
        "",
        "isAudioShowNoNetworkLayout",
        "()Z",
        "isMonitorNetworkState",
        "Lqi/b;",
        "newLogViewConfig",
        "()Lqi/b;",
        "initViewData",
        "Lcom/tn/lib/widget/dialog/TRDialog;",
        "dialog",
        "onLeftButtonClick",
        "(Lcom/tn/lib/widget/dialog/TRDialog;)V",
        "onRightButtonClick",
        "",
        "requestCode",
        "",
        "permissions",
        "",
        "grantResults",
        "onRequestPermissionsResult",
        "(I[Ljava/lang/String;[I)V",
        "initViewModel",
        "initListener",
        "retryLoadData",
        "onResume",
        "onPause",
        "onDestroy",
        "openSubjectDetail",
        "openRoomDetail",
        "openUserCenter",
        "tranOps",
        "Ljava/lang/String;",
        "postId",
        "getPostId",
        "setPostId",
        "(Ljava/lang/String;)V",
        "fromComment",
        "Z",
        "commentId",
        "getCommentId",
        "setCommentId",
        "pageFrom",
        "mPostDetailBean",
        "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;",
        "getMPostDetailBean",
        "()Lcom/transsion/moviedetailapi/bean/PostSubjectItem;",
        "setMPostDetailBean",
        "Lcom/transsion/postdetail/ui/fragment/CommentFragment;",
        "commentFragment",
        "Lcom/transsion/postdetail/ui/fragment/CommentFragment;",
        "Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "getViewModel",
        "()Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;",
        "viewModel",
        "Lqx/a;",
        "mLoginApi$delegate",
        "getMLoginApi",
        "()Lqx/a;",
        "mLoginApi",
        "Lcom/transsion/postdetail/ui/fragment/CommentFragment$b;",
        "onCommentCountChangedListener",
        "Lcom/transsion/postdetail/ui/fragment/CommentFragment$b;",
        "Lcom/transsion/ninegridview/a;",
        "mGifPlayerManager",
        "Lcom/transsion/ninegridview/a;",
        "Companion",
        "a",
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


# static fields
.field public static final Companion:Lcom/transsion/postdetail/ui/fragment/PostDetailFragment$a;

.field public static final PAGE_NAME:Ljava/lang/String; = "post_detail"


# instance fields
.field private commentFragment:Lcom/transsion/postdetail/ui/fragment/CommentFragment;

.field private commentId:Ljava/lang/String;

.field private fromComment:Z

.field private mGifPlayerManager:Lcom/transsion/ninegridview/a;

.field private final mLoginApi$delegate:Lkotlin/Lazy;

.field private mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

.field private onCommentCountChangedListener:Lcom/transsion/postdetail/ui/fragment/CommentFragment$b;

.field private pageFrom:Ljava/lang/String;

.field private postId:Ljava/lang/String;

.field private tranOps:Ljava/lang/String;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->Companion:Lcom/transsion/postdetail/ui/fragment/PostDetailFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment$special$$inlined$viewModels$default$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 7
    .line 8
    .line 9
    const-class v1, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    .line 10
    .line 11
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment$special$$inlined$viewModels$default$2;

    .line 16
    .line 17
    invoke-direct {v2, v0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 18
    .line 19
    .line 20
    new-instance v3, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment$special$$inlined$viewModels$default$3;

    .line 21
    .line 22
    invoke-direct {v3, v0, p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 30
    .line 31
    new-instance v0, Lcom/transsion/postdetail/ui/fragment/w2;

    .line 32
    .line 33
    invoke-direct {v0}, Lcom/transsion/postdetail/ui/fragment/w2;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mLoginApi$delegate:Lkotlin/Lazy;

    .line 41
    .line 42
    return-void
.end method

.method public static synthetic A0(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->updateOperationViewState$lambda$31$lambda$27(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B0(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->loadData$lambda$8(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic C0(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->updatePostDetail$lambda$17$lambda$16$lambda$9(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getViewModel(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->getViewModel()Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$updateCommentCount(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->updateCommentCount(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final clickDownload()V
    .locals 98

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Media;->getAudio()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/transsion/moviedetailapi/bean/Audio;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-object v1, v3

    .line 29
    :goto_0
    iget-object v4, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 30
    .line 31
    if-eqz v4, :cond_1

    .line 32
    .line 33
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getTitle()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move-object v4, v3

    .line 39
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_3

    .line 44
    .line 45
    iget-object v4, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 46
    .line 47
    if-eqz v4, :cond_2

    .line 48
    .line 49
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getContent()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    move-object v4, v3

    .line 55
    :cond_3
    :goto_2
    move-object v8, v4

    .line 56
    iget-object v4, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 57
    .line 58
    if-eqz v4, :cond_4

    .line 59
    .line 60
    const/4 v5, 0x1

    .line 61
    invoke-static {v4, v2, v5, v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getCoverUrl$default(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;ZILjava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    goto :goto_3

    .line 66
    :cond_4
    move-object v2, v3

    .line 67
    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    const-string v97, ""

    .line 72
    .line 73
    if-eqz v4, :cond_6

    .line 74
    .line 75
    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 76
    .line 77
    if-eqz v2, :cond_5

    .line 78
    .line 79
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    if-eqz v2, :cond_5

    .line 84
    .line 85
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Media;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    if-eqz v2, :cond_5

    .line 90
    .line 91
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    if-nez v2, :cond_6

    .line 96
    .line 97
    :cond_5
    move-object/from16 v2, v97

    .line 98
    .line 99
    :cond_6
    move-object v9, v2

    .line 100
    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 101
    .line 102
    if-eqz v2, :cond_7

    .line 103
    .line 104
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    goto :goto_4

    .line 109
    :cond_7
    move-object v2, v3

    .line 110
    :goto_4
    if-eqz v2, :cond_9

    .line 111
    .line 112
    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 113
    .line 114
    if-eqz v2, :cond_8

    .line 115
    .line 116
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    if-eqz v2, :cond_8

    .line 121
    .line 122
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    if-eqz v2, :cond_8

    .line 127
    .line 128
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getResourceId()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    :goto_5
    move-object v7, v2

    .line 133
    goto :goto_6

    .line 134
    :cond_8
    move-object v7, v3

    .line 135
    goto :goto_6

    .line 136
    :cond_9
    if-eqz v1, :cond_8

    .line 137
    .line 138
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Audio;->getUrl()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    goto :goto_5

    .line 143
    :goto_6
    new-instance v2, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 144
    .line 145
    if-eqz v1, :cond_b

    .line 146
    .line 147
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Audio;->getUrl()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    if-nez v4, :cond_a

    .line 152
    .line 153
    goto :goto_7

    .line 154
    :cond_a
    move-object v6, v4

    .line 155
    goto :goto_8

    .line 156
    :cond_b
    :goto_7
    move-object/from16 v6, v97

    .line 157
    .line 158
    :goto_8
    if-eqz v1, :cond_c

    .line 159
    .line 160
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Audio;->getSize()Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    if-eqz v1, :cond_c

    .line 165
    .line 166
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    int-to-long v4, v1

    .line 171
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    move-object v10, v1

    .line 176
    goto :goto_9

    .line 177
    :cond_c
    move-object v10, v3

    .line 178
    :goto_9
    const v95, 0xffff

    .line 179
    .line 180
    .line 181
    const/16 v96, 0x0

    .line 182
    .line 183
    const/4 v12, 0x0

    .line 184
    const/4 v13, 0x0

    .line 185
    const/4 v14, 0x0

    .line 186
    const/4 v15, 0x0

    .line 187
    const-wide/16 v16, 0x0

    .line 188
    .line 189
    const/16 v18, 0x0

    .line 190
    .line 191
    const/16 v19, 0x0

    .line 192
    .line 193
    const/16 v20, 0x1

    .line 194
    .line 195
    const-wide/16 v21, 0x0

    .line 196
    .line 197
    const-wide/16 v23, 0x0

    .line 198
    .line 199
    const/16 v25, 0x0

    .line 200
    .line 201
    const/16 v26, 0x0

    .line 202
    .line 203
    const/16 v27, 0x0

    .line 204
    .line 205
    const/16 v28, 0x0

    .line 206
    .line 207
    const/16 v29, 0x0

    .line 208
    .line 209
    const/16 v30, 0x0

    .line 210
    .line 211
    const/16 v31, 0x0

    .line 212
    .line 213
    const/16 v32, 0x0

    .line 214
    .line 215
    const/16 v33, 0x0

    .line 216
    .line 217
    const/16 v34, 0x0

    .line 218
    .line 219
    const/16 v35, 0x0

    .line 220
    .line 221
    const/16 v36, 0x0

    .line 222
    .line 223
    const/16 v37, 0x0

    .line 224
    .line 225
    const/16 v38, 0x0

    .line 226
    .line 227
    const/16 v39, 0x0

    .line 228
    .line 229
    const-wide/16 v40, 0x0

    .line 230
    .line 231
    const/16 v42, 0x0

    .line 232
    .line 233
    const/16 v43, 0x0

    .line 234
    .line 235
    const/16 v44, 0x0

    .line 236
    .line 237
    const/16 v45, 0x0

    .line 238
    .line 239
    const-wide/16 v46, 0x0

    .line 240
    .line 241
    const/16 v48, 0x0

    .line 242
    .line 243
    const/16 v49, 0x0

    .line 244
    .line 245
    const-wide/16 v50, 0x0

    .line 246
    .line 247
    const/16 v52, 0x0

    .line 248
    .line 249
    const-wide/16 v53, 0x0

    .line 250
    .line 251
    const/16 v55, 0x0

    .line 252
    .line 253
    const/16 v56, 0x0

    .line 254
    .line 255
    const/16 v57, 0x0

    .line 256
    .line 257
    const/16 v58, 0x0

    .line 258
    .line 259
    const/16 v59, 0x0

    .line 260
    .line 261
    const/16 v60, 0x0

    .line 262
    .line 263
    const/16 v61, 0x0

    .line 264
    .line 265
    const/16 v62, 0x0

    .line 266
    .line 267
    const/16 v63, 0x0

    .line 268
    .line 269
    const/16 v64, 0x0

    .line 270
    .line 271
    const/16 v65, 0x0

    .line 272
    .line 273
    const/16 v66, 0x0

    .line 274
    .line 275
    const/16 v67, 0x0

    .line 276
    .line 277
    const/16 v68, 0x0

    .line 278
    .line 279
    const/16 v69, 0x0

    .line 280
    .line 281
    const/16 v70, 0x0

    .line 282
    .line 283
    const/16 v71, 0x0

    .line 284
    .line 285
    const/16 v72, 0x0

    .line 286
    .line 287
    const/16 v73, 0x0

    .line 288
    .line 289
    const/16 v74, 0x0

    .line 290
    .line 291
    const/16 v75, 0x0

    .line 292
    .line 293
    const/16 v76, 0x0

    .line 294
    .line 295
    const/16 v77, 0x0

    .line 296
    .line 297
    const/16 v78, 0x0

    .line 298
    .line 299
    const/16 v79, 0x0

    .line 300
    .line 301
    const/16 v80, 0x0

    .line 302
    .line 303
    const/16 v81, 0x0

    .line 304
    .line 305
    const/16 v82, 0x0

    .line 306
    .line 307
    const/16 v83, 0x0

    .line 308
    .line 309
    const/16 v84, 0x0

    .line 310
    .line 311
    const/16 v85, 0x0

    .line 312
    .line 313
    const/16 v86, 0x0

    .line 314
    .line 315
    const/16 v87, 0x0

    .line 316
    .line 317
    const/16 v88, 0x0

    .line 318
    .line 319
    const/16 v89, 0x0

    .line 320
    .line 321
    const/16 v90, 0x0

    .line 322
    .line 323
    const/16 v91, 0x0

    .line 324
    .line 325
    const/16 v92, 0x0

    .line 326
    .line 327
    const/16 v93, -0x2040

    .line 328
    .line 329
    const/16 v94, -0x1

    .line 330
    .line 331
    const-string v11, ""

    .line 332
    .line 333
    move-object v5, v2

    .line 334
    invoke-direct/range {v5 .. v96}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 335
    .line 336
    .line 337
    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 338
    .line 339
    if-eqz v1, :cond_d

    .line 340
    .line 341
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    goto :goto_a

    .line 346
    :cond_d
    move-object v1, v3

    .line 347
    :goto_a
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setPostId(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 351
    .line 352
    if-eqz v1, :cond_e

    .line 353
    .line 354
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    if-eqz v1, :cond_e

    .line 359
    .line 360
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    goto :goto_b

    .line 365
    :cond_e
    move-object v1, v3

    .line 366
    :goto_b
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectId(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 370
    .line 371
    if-eqz v1, :cond_f

    .line 372
    .line 373
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    if-eqz v1, :cond_f

    .line 378
    .line 379
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    goto :goto_c

    .line 384
    :cond_f
    move-object v1, v3

    .line 385
    :goto_c
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectName(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    sget-object v1, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    .line 389
    .line 390
    invoke-virtual {v1}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    .line 391
    .line 392
    .line 393
    move-result-object v10

    .line 394
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    const-string v4, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    .line 399
    .line 400
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    move-object v11, v1

    .line 404
    check-cast v11, Landroidx/fragment/app/FragmentActivity;

    .line 405
    .line 406
    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 407
    .line 408
    if-eqz v1, :cond_10

    .line 409
    .line 410
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getOps()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v1

    .line 414
    move-object v14, v1

    .line 415
    goto :goto_d

    .line 416
    :cond_10
    move-object v14, v3

    .line 417
    :goto_d
    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 418
    .line 419
    if-eqz v1, :cond_12

    .line 420
    .line 421
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    if-eqz v1, :cond_12

    .line 426
    .line 427
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    if-eqz v1, :cond_12

    .line 432
    .line 433
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getResourceLink()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    if-nez v1, :cond_11

    .line 438
    .line 439
    goto :goto_e

    .line 440
    :cond_11
    move-object v15, v1

    .line 441
    goto :goto_f

    .line 442
    :cond_12
    :goto_e
    move-object/from16 v15, v97

    .line 443
    .line 444
    :goto_f
    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 445
    .line 446
    if-eqz v1, :cond_13

    .line 447
    .line 448
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 449
    .line 450
    .line 451
    move-result-object v3

    .line 452
    :cond_13
    move-object/from16 v16, v3

    .line 453
    .line 454
    const/16 v18, 0x40

    .line 455
    .line 456
    const/16 v19, 0x0

    .line 457
    .line 458
    const-string v13, "post_audio_detail"

    .line 459
    .line 460
    const/16 v17, 0x0

    .line 461
    .line 462
    move-object v12, v2

    .line 463
    invoke-static/range {v10 .. v19}, Lcom/transsnet/downloader/DownloadManagerApi;->P(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;ILjava/lang/Object;)V

    .line 464
    .line 465
    .line 466
    sget-object v1, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    .line 467
    .line 468
    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 469
    .line 470
    invoke-direct/range {p0 .. p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->getPageName()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v3

    .line 474
    iget-object v4, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->pageFrom:Ljava/lang/String;

    .line 475
    .line 476
    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/postdetail/helper/a;->i(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    return-void
.end method

.method private final clickLike()V
    .locals 5

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
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getHasLike()Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v0, v1

    .line 26
    :goto_0
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->getViewModel()Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iget-object v3, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/4 v3, 0x0

    .line 40
    :goto_1
    invoke-virtual {v2, v3, v0}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->G(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    sget-object v0, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 46
    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getHasLike()Ljava/lang/Boolean;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 54
    .line 55
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    :cond_2
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->getPageName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    iget-object v4, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->pageFrom:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/transsion/postdetail/helper/a;->o(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;ZLjava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_3
    sget-object v0, Lfh/b;->a:Lfh/b$a;

    .line 70
    .line 71
    sget v1, Lcom/tn/lib/widget/R$string;->no_network_tips:I

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lfh/b$a;->d(I)V

    .line 74
    .line 75
    .line 76
    :goto_2
    return-void
.end method

.method private final doShare()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->getMLoginApi()Lqx/a;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-interface {v1}, Lqx/a;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v1, v2

    .line 16
    :goto_0
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move-object v3, v2

    .line 24
    :goto_1
    if-eqz v3, :cond_3

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v3, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 31
    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getUser()Lcom/transsion/moviedetailapi/bean/User;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/User;->getUserId()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    goto :goto_2

    .line 45
    :cond_2
    move-object v3, v2

    .line 46
    :goto_2
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    :goto_3
    move v11, v1

    .line 54
    goto :goto_4

    .line 55
    :cond_3
    const/4 v1, 0x0

    .line 56
    goto :goto_3

    .line 57
    :goto_4
    sget-object v3, Lcom/transsion/share/share/ShareDialogFragment;->s:Lcom/transsion/share/share/ShareDialogFragment$a;

    .line 58
    .line 59
    sget-object v4, Lcom/transsion/share/bean/PostType;->POST_TYPE:Lcom/transsion/share/bean/PostType;

    .line 60
    .line 61
    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 62
    .line 63
    if-eqz v1, :cond_4

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    move-object v5, v1

    .line 70
    goto :goto_5

    .line 71
    :cond_4
    move-object v5, v2

    .line 72
    :goto_5
    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 73
    .line 74
    if-eqz v1, :cond_5

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getUser()Lcom/transsion/moviedetailapi/bean/User;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    if-eqz v1, :cond_5

    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/User;->getUserId()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    move-object v6, v1

    .line 87
    goto :goto_6

    .line 88
    :cond_5
    move-object v6, v2

    .line 89
    :goto_6
    sget-object v1, Lcom/transsion/usercenterapi/ReportType;->POST:Lcom/transsion/usercenterapi/ReportType;

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/transsion/usercenterapi/ReportType;->getValue()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 96
    .line 97
    if-eqz v1, :cond_6

    .line 98
    .line 99
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getTitle()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    :cond_6
    move-object v8, v2

    .line 104
    iget-object v14, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->tranOps:Ljava/lang/String;

    .line 105
    .line 106
    const/16 v16, 0x900

    .line 107
    .line 108
    const/16 v17, 0x0

    .line 109
    .line 110
    const-string v9, ""

    .line 111
    .line 112
    const/4 v10, 0x0

    .line 113
    const/4 v12, 0x0

    .line 114
    const-string v13, "postdetail"

    .line 115
    .line 116
    const/4 v15, 0x0

    .line 117
    invoke-static/range {v3 .. v17}, Lcom/transsion/share/share/ShareDialogFragment$a;->b(Lcom/transsion/share/share/ShareDialogFragment$a;Lcom/transsion/share/bean/PostType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/share/share/ShareDialogFragment;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    new-instance v2, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment$b;

    .line 122
    .line 123
    invoke-direct {v2, v0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment$b;-><init>(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v2}, Lcom/transsion/share/share/ShareDialogFragment;->G0(Lcom/transsion/share/share/a;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    const-string v3, "share"

    .line 134
    .line 135
    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    sget-object v1, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    .line 139
    .line 140
    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 141
    .line 142
    invoke-direct/range {p0 .. p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->getPageName()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    iget-object v4, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->pageFrom:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/postdetail/helper/a;->z(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    return-void
.end method

.method private final getMLoginApi()Lqx/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mLoginApi$delegate:Lkotlin/Lazy;

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

.method private final getPageName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "post_detail"

    .line 2
    .line 3
    return-object v0
.end method

.method private final getViewModel()Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final initView()V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment$c;

    .line 4
    .line 5
    invoke-direct {v1, v0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment$c;-><init>(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V

    .line 6
    .line 7
    .line 8
    iput-object v1, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->onCommentCountChangedListener:Lcom/transsion/postdetail/ui/fragment/CommentFragment$b;

    .line 9
    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lwn/n;

    .line 15
    .line 16
    const-string v2, ""

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-object v1, v1, Lwn/n;->f:Lcom/tn/lib/view/TitleLayout;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lcom/tn/lib/view/TitleLayout;->setTitleText(Ljava/lang/String;)Lcom/tn/lib/view/TitleLayout;

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v3, "getChildFragmentManager(...)"

    .line 32
    .line 33
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v3, "beginTransaction()"

    .line 41
    .line 42
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sget-object v4, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->O:Lcom/transsion/postdetail/ui/fragment/CommentFragment$a;

    .line 46
    .line 47
    iget-object v5, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->postId:Ljava/lang/String;

    .line 48
    .line 49
    sget-object v3, Lcom/transsion/postdetailapi/CommentTopicType;->POST:Lcom/transsion/postdetailapi/CommentTopicType;

    .line 50
    .line 51
    invoke-virtual {v3}, Lcom/transsion/postdetailapi/CommentTopicType;->getValue()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    iget-object v3, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 56
    .line 57
    if-eqz v3, :cond_1

    .line 58
    .line 59
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getStat()Lcom/transsion/moviedetailapi/bean/Stat;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    if-eqz v3, :cond_1

    .line 64
    .line 65
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Stat;->getCommentCount()Ljava/lang/Long;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    if-eqz v3, :cond_1

    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 72
    .line 73
    .line 74
    move-result-wide v7

    .line 75
    goto :goto_0

    .line 76
    :cond_1
    const-wide/16 v7, 0x0

    .line 77
    .line 78
    :goto_0
    iget-object v3, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->commentId:Ljava/lang/String;

    .line 79
    .line 80
    if-nez v3, :cond_2

    .line 81
    .line 82
    move-object v11, v2

    .line 83
    goto :goto_1

    .line 84
    :cond_2
    move-object v11, v3

    .line 85
    :goto_1
    iget-object v12, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->pageFrom:Ljava/lang/String;

    .line 86
    .line 87
    const/16 v19, 0x1f88

    .line 88
    .line 89
    const/16 v20, 0x0

    .line 90
    .line 91
    const/4 v9, 0x0

    .line 92
    const/4 v10, 0x1

    .line 93
    const/4 v13, 0x0

    .line 94
    const/4 v14, 0x0

    .line 95
    const/4 v15, 0x0

    .line 96
    const/16 v16, 0x0

    .line 97
    .line 98
    const/16 v17, 0x0

    .line 99
    .line 100
    const/16 v18, 0x0

    .line 101
    .line 102
    invoke-static/range {v4 .. v20}, Lcom/transsion/postdetail/ui/fragment/CommentFragment$a;->b(Lcom/transsion/postdetail/ui/fragment/CommentFragment$a;Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/postdetail/ui/fragment/CommentFragment;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    sget v3, Lcom/transsion/postdetail/R$id;->fl_comment_container:I

    .line 107
    .line 108
    invoke-virtual {v1, v3, v2}, Landroidx/fragment/app/w;->s(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    .line 109
    .line 110
    .line 111
    iput-object v2, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->commentFragment:Lcom/transsion/postdetail/ui/fragment/CommentFragment;

    .line 112
    .line 113
    invoke-virtual {v1}, Landroidx/fragment/app/w;->i()I

    .line 114
    .line 115
    .line 116
    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->commentFragment:Lcom/transsion/postdetail/ui/fragment/CommentFragment;

    .line 117
    .line 118
    if-eqz v1, :cond_3

    .line 119
    .line 120
    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->onCommentCountChangedListener:Lcom/transsion/postdetail/ui/fragment/CommentFragment$b;

    .line 121
    .line 122
    invoke-virtual {v1, v2}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->b1(Lcom/transsion/postdetail/ui/fragment/CommentFragment$b;)V

    .line 123
    .line 124
    .line 125
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    check-cast v1, Lwn/n;

    .line 130
    .line 131
    if-eqz v1, :cond_4

    .line 132
    .line 133
    iget-object v1, v1, Lwn/n;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 134
    .line 135
    if-eqz v1, :cond_4

    .line 136
    .line 137
    new-instance v2, Lcom/transsion/postdetail/ui/fragment/o2;

    .line 138
    .line 139
    invoke-direct {v2, v0}, Lcom/transsion/postdetail/ui/fragment/o2;-><init>(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    .line 144
    .line 145
    :cond_4
    return-void
.end method

.method private static final initView$lambda$5(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->commentFragment:Lcom/transsion/postdetail/ui/fragment/CommentFragment;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->d1(Lcom/transsion/moviedetailapi/bean/CommentBean;)Z

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method private static final initViewModel$lambda$21$lambda$18(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)Lkotlin/Unit;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {p0, v1, p1, v0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->showEmptyView$default(Lcom/transsion/baseui/fragment/PageStatusFragment;ZILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->showContentView()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->tranOps:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->setTran_ops(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->updatePostDetail()V

    .line 23
    .line 24
    .line 25
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 26
    .line 27
    return-object p0
.end method

.method private static final initViewModel$lambda$21$lambda$20(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "0"

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->postId:Ljava/lang/String;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    sget-object v0, Lgx/b;->a:Lgx/b$a;

    .line 14
    .line 15
    invoke-virtual {v0}, Lgx/b$a;->a()Lgx/b;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p1}, Lgx/b;->e(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-eqz p0, :cond_3

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    if-eqz p0, :cond_2

    .line 39
    .line 40
    sget v0, Lcom/transsion/postdetail/R$string;->delete_post_failed:I

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 p0, 0x0

    .line 48
    :goto_0
    invoke-virtual {p1, p0}, Lfh/b$a;->e(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 52
    .line 53
    return-object p0
.end method

.method public static synthetic j0(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->updatePostDetail$lambda$17$lambda$16$lambda$13(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k0(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;Lcom/transsnet/flow/event/sync/event/LikeEvent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->observeLike$lambda$23(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;Lcom/transsnet/flow/event/sync/event/LikeEvent;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l0(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->updateOperationViewState$lambda$31$lambda$28(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final loadData()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->tranOps:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->setTran_ops(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->updatePostDetail()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "null cannot be cast to non-null type com.transsion.postdetail.ui.activity.PostDetailActivity"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    check-cast v0, Lcom/transsion/postdetail/ui/activity/PostDetailActivity;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/transsion/baseui/activity/BaseNewActivity;->u0()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->getViewModel()Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->postId:Ljava/lang/String;

    .line 35
    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    const-string v1, ""

    .line 39
    .line 40
    :cond_2
    invoke-virtual {v0, v1}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->x(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lwn/n;

    .line 48
    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    iget-object v0, v0, Lwn/n;->e:Lcom/transsion/postdetail/ui/view/PostDetailItemView;

    .line 52
    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    new-instance v1, Lcom/transsion/postdetail/ui/fragment/x2;

    .line 56
    .line 57
    invoke-direct {v1, p0}, Lcom/transsion/postdetail/ui/fragment/x2;-><init>(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V

    .line 58
    .line 59
    .line 60
    const-wide/16 v2, 0x1f4

    .line 61
    .line 62
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 63
    .line 64
    .line 65
    :cond_3
    return-void
.end method

.method private static final loadData$lambda$8(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->commentId:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

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
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lwn/n;

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    iget-object p0, p0, Lwn/n;->b:Lcom/google/android/material/appbar/AppBarLayout;

    .line 21
    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    return-void
.end method

.method private final localLogPause()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v2}, Lqi/b;->h()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-wide/16 v2, 0x0

    .line 17
    .line 18
    :goto_0
    sub-long/2addr v0, v2

    .line 19
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-virtual {v2}, Lqi/b;->g()Ljava/util/HashMap;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    const-string v3, "post_duration"

    .line 32
    .line 33
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Ljava/lang/String;

    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public static synthetic m0(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->updatePostDetail$lambda$17$lambda$16$lambda$11(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final mLoginApi_delegate$lambda$0()Lqx/a;
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

.method public static synthetic n0(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->initView$lambda$5(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final newInstance(Ljava/lang/String;ZLjava/lang/String;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->Companion:Lcom/transsion/postdetail/ui/fragment/PostDetailFragment$a;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    move v2, p1

    .line 5
    move-object v3, p2

    .line 6
    move-object v4, p3

    .line 7
    move-object v5, p4

    .line 8
    move-object v6, p5

    .line 9
    invoke-virtual/range {v0 .. v6}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment$a;->a(Ljava/lang/String;ZLjava/lang/String;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static synthetic o0(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->initViewModel$lambda$21$lambda$18(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final observeLike()V
    .locals 7

    .line 1
    new-instance v6, Lcom/transsion/postdetail/ui/fragment/g3;

    .line 2
    .line 3
    invoke-direct {v6, p0}, Lcom/transsion/postdetail/ui/fragment/g3;-><init>(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 7
    .line 8
    const-class v1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 15
    .line 16
    const-class v1, Lcom/transsnet/flow/event/sync/event/LikeEvent;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v1, "getName(...)"

    .line 23
    .line 24
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 28
    .line 29
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lkotlinx/coroutines/a2;->p()Lkotlinx/coroutines/a2;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const/4 v5, 0x0

    .line 38
    move-object v1, p0

    .line 39
    invoke-virtual/range {v0 .. v6}, Lcom/transsnet/flow/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private static final observeLike$lambda$23(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;Lcom/transsnet/flow/event/sync/event/LikeEvent;)Lkotlin/Unit;
    .locals 4

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :cond_0
    move-object v0, v1

    .line 22
    :goto_0
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LikeEvent;->getSubjectId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LikeEvent;->getLike()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v0, v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->setHasLike(Ljava/lang/Boolean;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LikeEvent;->getLike()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    const-wide/16 v2, 0x1

    .line 55
    .line 56
    if-eqz p1, :cond_4

    .line 57
    .line 58
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 59
    .line 60
    if-eqz p1, :cond_6

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getStat()Lcom/transsion/moviedetailapi/bean/Stat;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-eqz p1, :cond_6

    .line 67
    .line 68
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 69
    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getStat()Lcom/transsion/moviedetailapi/bean/Stat;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Stat;->getLikeCount()Ljava/lang/Long;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-eqz v0, :cond_3

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 85
    .line 86
    .line 87
    move-result-wide v0

    .line 88
    add-long/2addr v0, v2

    .line 89
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    :cond_3
    invoke-virtual {p1, v1}, Lcom/transsion/moviedetailapi/bean/Stat;->setLikeCount(Ljava/lang/Long;)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_4
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 98
    .line 99
    if-eqz p1, :cond_6

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getStat()Lcom/transsion/moviedetailapi/bean/Stat;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    if-eqz p1, :cond_6

    .line 106
    .line 107
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 108
    .line 109
    if-eqz v0, :cond_5

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getStat()Lcom/transsion/moviedetailapi/bean/Stat;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    if-eqz v0, :cond_5

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Stat;->getLikeCount()Ljava/lang/Long;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    if-eqz v0, :cond_5

    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 124
    .line 125
    .line 126
    move-result-wide v0

    .line 127
    sub-long/2addr v0, v2

    .line 128
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    :cond_5
    invoke-virtual {p1, v1}, Lcom/transsion/moviedetailapi/bean/Stat;->setLikeCount(Ljava/lang/Long;)V

    .line 133
    .line 134
    .line 135
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->updateOperationViewState()V

    .line 136
    .line 137
    .line 138
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 139
    .line 140
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    .line 142
    .line 143
    goto :goto_3

    .line 144
    :goto_2
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 145
    .line 146
    invoke-static {p0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 154
    .line 155
    return-object p0
.end method

.method private final onDownloadClick(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->getPageName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->pageFrom:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, p1, v1, v2}, Lcom/transsion/postdetail/helper/a;->i(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    .line 14
    const/16 v1, 0x1d

    .line 15
    .line 16
    if-lt v0, v1, :cond_0

    .line 17
    .line 18
    sget-object v0, Lcom/transsion/postdetail/util/PostSaveHelper;->a:Lcom/transsion/postdetail/util/PostSaveHelper;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/util/PostSaveHelper;->b(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :cond_1
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 35
    .line 36
    invoke-static {v0, v1}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_3

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :cond_2
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 53
    .line 54
    invoke-static {v0, v1}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    sget-object v0, Lcom/transsion/postdetail/util/PostSaveHelper;->a:Lcom/transsion/postdetail/util/PostSaveHelper;

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/util/PostSaveHelper;->b(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->requestPermission()V

    .line 67
    .line 68
    .line 69
    :goto_0
    return-void
.end method

.method public static synthetic p0(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->updateOperationViewState$lambda$31$lambda$25(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic q0(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->updatePostDetail$lambda$17$lambda$16$lambda$12(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic r0(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->updateOperationViewState$lambda$31$lambda$26(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final requestPermission()V
    .locals 2

    .line 1
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 2
    .line 3
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lcom/transsion/ninegridview/helper/FileHelper;->a:Lcom/transsion/ninegridview/helper/FileHelper;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/transsion/ninegridview/helper/FileHelper;->l()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static synthetic s0(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->updateOperationViewState$lambda$31$lambda$30(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final setPTParams(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Lqi/b;->k(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getRec_ops()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lqi/b;->n(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const-string v1, ""

    .line 33
    .line 34
    if-nez v0, :cond_3

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    invoke-virtual {v0}, Lqi/b;->g()Ljava/util/HashMap;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    if-nez v2, :cond_2

    .line 53
    .line 54
    move-object v2, v1

    .line 55
    :cond_2
    const-string v3, "post_id"

    .line 56
    .line 57
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    :cond_3
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const/4 v2, 0x0

    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Media;->getMediaType()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    goto :goto_0

    .line 72
    :cond_4
    move-object v0, v2

    .line 73
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_7

    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    if-eqz v0, :cond_7

    .line 84
    .line 85
    invoke-virtual {v0}, Lqi/b;->g()Ljava/util/HashMap;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    if-eqz v0, :cond_7

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    if-eqz v3, :cond_6

    .line 96
    .line 97
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Media;->getMediaType()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    if-nez v3, :cond_5

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_5
    move-object v1, v3

    .line 105
    :cond_6
    :goto_1
    const-string v3, "post_media_type"

    .line 106
    .line 107
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    :cond_7
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    if-eqz v0, :cond_9

    .line 115
    .line 116
    invoke-virtual {v0}, Lqi/b;->g()Ljava/util/HashMap;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    if-eqz v0, :cond_9

    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    if-eqz v1, :cond_8

    .line 127
    .line 128
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    goto :goto_2

    .line 133
    :cond_8
    move-object v1, v2

    .line 134
    :goto_2
    const-string v3, "subject_id"

    .line 135
    .line 136
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    :cond_9
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    if-eqz v0, :cond_b

    .line 144
    .line 145
    invoke-virtual {v0}, Lqi/b;->g()Ljava/util/HashMap;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    if-eqz v0, :cond_b

    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    if-eqz p1, :cond_a

    .line 156
    .line 157
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getHasResource()Ljava/lang/Boolean;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    :cond_a
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    const-string v1, "has_resource"

    .line 166
    .line 167
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    :cond_b
    return-void
.end method

.method private final showCommentsDialog()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->commentFragment:Lcom/transsion/postdetail/ui/fragment/CommentFragment;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->d1(Lcom/transsion/moviedetailapi/bean/CommentBean;)Z

    .line 7
    .line 8
    .line 9
    :cond_0
    sget-object v0, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->getPageName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v3, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->pageFrom:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/postdetail/helper/a;->e(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private final showSettingDialog()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lcom/transsion/ninegridview/R$string;->system_settings:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "\""

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    sget v3, Lcom/transsion/baseui/R$string;->base_app_name:I

    .line 36
    .line 37
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    sget v3, Lcom/transsion/ninegridview/R$string;->permission_deny_down_tip:I

    .line 64
    .line 65
    const/4 v4, 0x2

    .line 66
    new-array v4, v4, [Ljava/lang/Object;

    .line 67
    .line 68
    const/4 v5, 0x0

    .line 69
    aput-object v1, v4, v5

    .line 70
    .line 71
    const/4 v1, 0x1

    .line 72
    aput-object v0, v4, v1

    .line 73
    .line 74
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const-string v1, "getString(...)"

    .line 79
    .line 80
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    new-instance v2, Lcom/tn/lib/widget/dialog/TRDialog$a;

    .line 84
    .line 85
    invoke-direct {v2}, Lcom/tn/lib/widget/dialog/TRDialog$a;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v0}, Lcom/tn/lib/widget/dialog/TRDialog$a;->g(Ljava/lang/String;)Lcom/tn/lib/widget/dialog/TRDialog$a;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    sget v3, Lcom/transsion/ninegridview/R$string;->cancel:I

    .line 97
    .line 98
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v2}, Lcom/tn/lib/widget/dialog/TRDialog$a;->e(Ljava/lang/String;)Lcom/tn/lib/widget/dialog/TRDialog$a;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    sget v3, Lcom/transsion/ninegridview/R$string;->system_settings:I

    .line 114
    .line 115
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v2}, Lcom/tn/lib/widget/dialog/TRDialog$a;->j(Ljava/lang/String;)Lcom/tn/lib/widget/dialog/TRDialog$a;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0, p0}, Lcom/tn/lib/widget/dialog/TRDialog$a;->f(Lcom/tn/lib/widget/dialog/TRDialogListener;)Lcom/tn/lib/widget/dialog/TRDialog$a;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lcom/tn/lib/widget/dialog/TRDialog$a;->a()Lcom/tn/lib/widget/dialog/TRBaseDialog;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    const-string v2, "settings"

    .line 139
    .line 140
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    return-void
.end method

.method public static synthetic t0(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->updateOperationViewState$lambda$31$lambda$29(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic u0(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->updatePostDetail$lambda$17$lambda$16$lambda$15(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final updateCommentCount(J)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    check-cast v1, Lwn/n;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v1, v1, Lwn/n;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 15
    .line 16
    sget v2, Lcom/transsion/postdetail/R$string;->comments:I

    .line 17
    .line 18
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v3, "getString(...)"

    .line 23
    .line 24
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p2}, Lcom/transsion/baseui/util/j;->a(J)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    new-array v4, v0, [Ljava/lang/Object;

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    aput-object v3, v4, v5

    .line 35
    .line 36
    invoke-static {v4, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v2, "format(...)"

    .line 45
    .line 46
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lwn/n;

    .line 57
    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    iget-object v0, v0, Lwn/n;->e:Lcom/transsion/postdetail/ui/view/PostDetailItemView;

    .line 61
    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    invoke-virtual {v0, p1, p2}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->setCommentCount(J)V

    .line 65
    .line 66
    .line 67
    :cond_1
    return-void
.end method

.method private final updateOperationViewState()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lwn/n;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, v0, Lwn/n;->e:Lcom/transsion/postdetail/ui/view/PostDetailItemView;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 12
    .line 13
    new-instance v3, Lcom/transsion/postdetail/ui/fragment/p2;

    .line 14
    .line 15
    invoke-direct {v3, p0}, Lcom/transsion/postdetail/ui/fragment/p2;-><init>(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V

    .line 16
    .line 17
    .line 18
    new-instance v4, Lcom/transsion/postdetail/ui/fragment/q2;

    .line 19
    .line 20
    invoke-direct {v4, p0}, Lcom/transsion/postdetail/ui/fragment/q2;-><init>(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V

    .line 21
    .line 22
    .line 23
    new-instance v5, Lcom/transsion/postdetail/ui/fragment/r2;

    .line 24
    .line 25
    invoke-direct {v5, p0}, Lcom/transsion/postdetail/ui/fragment/r2;-><init>(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V

    .line 26
    .line 27
    .line 28
    new-instance v6, Lcom/transsion/postdetail/ui/fragment/s2;

    .line 29
    .line 30
    invoke-direct {v6, p0}, Lcom/transsion/postdetail/ui/fragment/s2;-><init>(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V

    .line 31
    .line 32
    .line 33
    new-instance v7, Lcom/transsion/postdetail/ui/fragment/t2;

    .line 34
    .line 35
    invoke-direct {v7, p0}, Lcom/transsion/postdetail/ui/fragment/t2;-><init>(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V

    .line 36
    .line 37
    .line 38
    new-instance v8, Lcom/transsion/postdetail/ui/fragment/u2;

    .line 39
    .line 40
    invoke-direct {v8, p0}, Lcom/transsion/postdetail/ui/fragment/u2;-><init>(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V

    .line 41
    .line 42
    .line 43
    new-instance v9, Lcom/transsion/postdetail/ui/fragment/v2;

    .line 44
    .line 45
    invoke-direct {v9, p0}, Lcom/transsion/postdetail/ui/fragment/v2;-><init>(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual/range {v1 .. v9}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->setBottomBarClick(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method

.method private static final updateOperationViewState$lambda$31$lambda$24(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->clickLike()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private static final updateOperationViewState$lambda$31$lambda$25(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->showCommentsDialog()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private static final updateOperationViewState$lambda$31$lambda$26(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->doShare()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private static final updateOperationViewState$lambda$31$lambda$27(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->openSubjectDetail(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method private static final updateOperationViewState$lambda$31$lambda$28(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->openRoomDetail(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method private static final updateOperationViewState$lambda$31$lambda$29(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->onDownloadClick(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method private static final updateOperationViewState$lambda$31$lambda$30(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->openUserCenter(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method private final updatePostDetail()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lwn/n;

    .line 10
    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->commentFragment:Lcom/transsion/postdetail/ui/fragment/CommentFragment;

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getStat()Lcom/transsion/moviedetailapi/bean/Stat;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Stat;->getCommentCount()Ljava/lang/Long;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 30
    .line 31
    .line 32
    move-result-wide v3

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-wide/16 v3, 0x0

    .line 35
    .line 36
    :goto_0
    invoke-virtual {v2, v3, v4}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->updateCommentCount(J)V

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object v2, v1, Lwn/n;->e:Lcom/transsion/postdetail/ui/view/PostDetailItemView;

    .line 40
    .line 41
    const/4 v3, 0x1

    .line 42
    invoke-virtual {v2, v3}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->setIsDetail(Z)V

    .line 43
    .line 44
    .line 45
    iget-object v2, v1, Lwn/n;->e:Lcom/transsion/postdetail/ui/view/PostDetailItemView;

    .line 46
    .line 47
    const-string v3, "post_detail"

    .line 48
    .line 49
    iget-object v4, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->pageFrom:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v2, v3, v4}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->setPage(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, v1, Lwn/n;->e:Lcom/transsion/postdetail/ui/view/PostDetailItemView;

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->setData(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lwn/n;

    .line 64
    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    iget-object v2, v1, Lwn/n;->e:Lcom/transsion/postdetail/ui/view/PostDetailItemView;

    .line 68
    .line 69
    if-eqz v2, :cond_2

    .line 70
    .line 71
    iget-object v3, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 72
    .line 73
    new-instance v4, Lcom/transsion/postdetail/ui/fragment/n2;

    .line 74
    .line 75
    invoke-direct {v4, p0}, Lcom/transsion/postdetail/ui/fragment/n2;-><init>(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V

    .line 76
    .line 77
    .line 78
    new-instance v5, Lcom/transsion/postdetail/ui/fragment/y2;

    .line 79
    .line 80
    invoke-direct {v5, p0}, Lcom/transsion/postdetail/ui/fragment/y2;-><init>(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V

    .line 81
    .line 82
    .line 83
    new-instance v6, Lcom/transsion/postdetail/ui/fragment/z2;

    .line 84
    .line 85
    invoke-direct {v6, p0}, Lcom/transsion/postdetail/ui/fragment/z2;-><init>(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V

    .line 86
    .line 87
    .line 88
    new-instance v7, Lcom/transsion/postdetail/ui/fragment/a3;

    .line 89
    .line 90
    invoke-direct {v7, p0}, Lcom/transsion/postdetail/ui/fragment/a3;-><init>(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V

    .line 91
    .line 92
    .line 93
    new-instance v8, Lcom/transsion/postdetail/ui/fragment/b3;

    .line 94
    .line 95
    invoke-direct {v8, p0}, Lcom/transsion/postdetail/ui/fragment/b3;-><init>(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V

    .line 96
    .line 97
    .line 98
    new-instance v9, Lcom/transsion/postdetail/ui/fragment/c3;

    .line 99
    .line 100
    invoke-direct {v9, p0}, Lcom/transsion/postdetail/ui/fragment/c3;-><init>(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V

    .line 101
    .line 102
    .line 103
    new-instance v10, Lcom/transsion/postdetail/ui/fragment/d3;

    .line 104
    .line 105
    invoke-direct {v10, p0}, Lcom/transsion/postdetail/ui/fragment/d3;-><init>(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual/range {v2 .. v10}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->setBottomBarClick(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 109
    .line 110
    .line 111
    :cond_2
    invoke-direct {p0, v0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->setPTParams(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 112
    .line 113
    .line 114
    :cond_3
    return-void
.end method

.method private static final updatePostDetail$lambda$17$lambda$16$lambda$10(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->showCommentsDialog()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private static final updatePostDetail$lambda$17$lambda$16$lambda$11(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->doShare()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private static final updatePostDetail$lambda$17$lambda$16$lambda$12(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->openSubjectDetail(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method private static final updatePostDetail$lambda$17$lambda$16$lambda$13(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->openRoomDetail(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method private static final updatePostDetail$lambda$17$lambda$16$lambda$14(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->onDownloadClick(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method private static final updatePostDetail$lambda$17$lambda$16$lambda$15(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->openUserCenter(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method private static final updatePostDetail$lambda$17$lambda$16$lambda$9(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->clickLike()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static synthetic v0()Lqx/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mLoginApi_delegate$lambda$0()Lqx/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic w0(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->initViewModel$lambda$21$lambda$20(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic x0(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->updatePostDetail$lambda$17$lambda$16$lambda$10(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic y0(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->updatePostDetail$lambda$17$lambda$16$lambda$14(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic z0(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->updateOperationViewState$lambda$31$lambda$24(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final getCommentId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->commentId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMPostDetailBean()Lcom/transsion/moviedetailapi/bean/PostSubjectItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPageStateLayoutTitle()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPostId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->postId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lf4/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->getViewBinding(Landroid/view/LayoutInflater;)Lwn/n;

    move-result-object p1

    return-object p1
.end method

.method public getViewBinding(Landroid/view/LayoutInflater;)Lwn/n;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lwn/n;->c(Landroid/view/LayoutInflater;)Lwn/n;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public initListener()V
    .locals 0

    .line 1
    return-void
.end method

.method public initViewData()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->initView()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->loadData()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lqi/b;->g()Ljava/util/HashMap;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const-string v1, "page_from"

    .line 20
    .line 21
    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->pageFrom:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/String;

    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public initViewModel()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->getViewModel()Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->A()Landroidx/lifecycle/LiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Lcom/transsion/postdetail/ui/fragment/e3;

    .line 10
    .line 11
    invoke-direct {v2, p0}, Lcom/transsion/postdetail/ui/fragment/e3;-><init>(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V

    .line 12
    .line 13
    .line 14
    new-instance v3, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment$d;

    .line 15
    .line 16
    invoke-direct {v3, v2}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->t()Landroidx/lifecycle/b0;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Lcom/transsion/postdetail/ui/fragment/f3;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcom/transsion/postdetail/ui/fragment/f3;-><init>(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V

    .line 29
    .line 30
    .line 31
    new-instance v2, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment$d;

    .line 32
    .line 33
    invoke-direct {v2, v1}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->observeLike()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public isAudioShowNoNetworkLayout()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public isMonitorNetworkState()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public newLogViewConfig()Lqi/b;
    .locals 5

    .line 1
    new-instance v0, Lqi/b;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "post_detail"

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-direct {v0, v3, v4, v1, v2}, Lqi/b;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mGifPlayerManager:Lcom/transsion/ninegridview/a;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/ninegridview/a;->f()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onLeftButtonClick(Lcom/tn/lib/widget/dialog/TRDialog;)V
    .locals 1

    .line 1
    const-string v0, "dialog"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->localLogPause()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onPause()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mGifPlayerManager:Lcom/transsion/ninegridview/a;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/transsion/ninegridview/a;->k()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    const-string v0, "permissions"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "grantResults"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 12
    .line 13
    .line 14
    sget-object p2, Lcom/transsion/ninegridview/helper/FileHelper;->a:Lcom/transsion/ninegridview/helper/FileHelper;

    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/transsion/ninegridview/helper/FileHelper;->l()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-ne p1, p2, :cond_1

    .line 21
    .line 22
    array-length p1, p3

    .line 23
    const/4 p2, 0x1

    .line 24
    if-le p1, p2, :cond_0

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    aget p1, p3, p1

    .line 28
    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    aget p1, p3, p2

    .line 32
    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    sget-object p1, Lcom/transsion/postdetail/util/PostSaveHelper;->a:Lcom/transsion/postdetail/util/PostSaveHelper;

    .line 36
    .line 37
    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/util/PostSaveHelper;->b(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string p2, "null cannot be cast to non-null type android.app.Activity"

    .line 48
    .line 49
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string p2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 53
    .line 54
    invoke-static {p1, p2}, Landroidx/core/app/ActivityCompat;->j(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_1

    .line 59
    .line 60
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->showSettingDialog()V

    .line 61
    .line 62
    .line 63
    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mGifPlayerManager:Lcom/transsion/ninegridview/a;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/ninegridview/a;->l()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onRightButtonClick(Lcom/tn/lib/widget/dialog/TRDialog;)V
    .locals 2

    .line 1
    const-string v0, "dialog"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/transsion/ninegridview/helper/b;->a:Lcom/transsion/ninegridview/helper/b;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "null cannot be cast to non-null type android.app.Activity"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/16 v1, 0x65

    .line 18
    .line 19
    invoke-virtual {p1, v0, v1}, Lcom/transsion/ninegridview/helper/b;->a(Landroid/app/Activity;I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final openRoomDetail(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 3

    .line 1
    sget-object v0, Lsg/b;->b:Lsg/b$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lsg/b$a;->a()Lsg/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lsg/b;->c()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    new-array v1, v1, [Ljava/lang/Object;

    .line 13
    .line 14
    const-class v2, Lep/f;

    .line 15
    .line 16
    invoke-static {v2, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lep/f;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-interface {v1}, Lep/f;->d()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object v1, v2

    .line 31
    :goto_0
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    if-eqz p1, :cond_2

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Group;->getGroupId()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    const-string v0, "/room/detail"

    .line 60
    .line 61
    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string v1, "id"

    .line 66
    .line 67
    invoke-virtual {v0, v1, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const/4 v1, 0x2

    .line 76
    invoke-static {p1, v0, v2, v1, v2}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :cond_2
    :goto_1
    sget-object p1, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    .line 80
    .line 81
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 82
    .line 83
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->getPageName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->pageFrom:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/postdetail/helper/a;->l(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public final openSubjectDetail(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 4

    .line 1
    sget-object v0, Lsg/b;->b:Lsg/b$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lsg/b$a;->a()Lsg/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lsg/b;->c()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    new-array v1, v1, [Ljava/lang/Object;

    .line 13
    .line 14
    const-class v2, Lcom/transsion/moviedetailapi/g;

    .line 15
    .line 16
    invoke-static {v2, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/transsion/moviedetailapi/g;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-interface {v1}, Lcom/transsion/moviedetailapi/g;->d()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object v1, v2

    .line 31
    :goto_0
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_3

    .line 36
    .line 37
    const-string v1, "StreamDetailActivity"

    .line 38
    .line 39
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_3

    .line 44
    .line 45
    const-string v1, "MusicDetailActivity"

    .line 46
    .line 47
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_1
    if-eqz p1, :cond_4

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-eqz p1, :cond_4

    .line 61
    .line 62
    const-string v0, "/movie/detail"

    .line 63
    .line 64
    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    if-eqz v1, :cond_2

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    sget-object v1, Lcom/transsion/moviedetailapi/SubjectType;->MOVIE:Lcom/transsion/moviedetailapi/SubjectType;

    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    :goto_1
    const-string v3, "subject_type"

    .line 86
    .line 87
    invoke-virtual {v0, v3, v1}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const-string v1, "id"

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v0, v1, v3}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    const-string v1, "ops"

    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {v0, v1, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    const/4 v1, 0x2

    .line 116
    invoke-static {p1, v0, v2, v1, v2}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 125
    .line 126
    .line 127
    :cond_4
    :goto_3
    sget-object p1, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    .line 128
    .line 129
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 130
    .line 131
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->getPageName()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->pageFrom:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/postdetail/helper/a;->B(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    return-void
.end method

.method public final openUserCenter(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getUser()Lcom/transsion/moviedetailapi/bean/User;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/transsnet/loginapi/bean/UserInfo;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/transsnet/loginapi/bean/UserInfo;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/User;->getUserId()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/transsnet/loginapi/bean/UserInfo;->setUserId(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/User;->getAvatar()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/transsnet/loginapi/bean/UserInfo;->setAvatar(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/User;->getUsername()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Lcom/transsnet/loginapi/bean/UserInfo;->setUsername(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/User;->getNickname()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v0, p1}, Lcom/transsnet/loginapi/bean/UserInfo;->setNickname(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string p1, "/profile/user_profile"

    .line 43
    .line 44
    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string v1, "userId"

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p1, v1, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const/4 v1, 0x2

    .line 63
    const/4 v2, 0x0

    .line 64
    invoke-static {p1, v0, v2, v1, v2}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    return-void
.end method

.method public receiveArguments()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->receiveArguments()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v2, "id"

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v0, v1

    .line 19
    :goto_0
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->postId:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    const-string v2, "from_comment"

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    :goto_1
    iput-boolean v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->fromComment:Z

    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    const-string v2, "rec_ops"

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    move-object v0, v1

    .line 51
    :goto_2
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->tranOps:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    const-string v2, "page_from"

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    goto :goto_3

    .line 66
    :cond_3
    move-object v0, v1

    .line 67
    :goto_3
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->pageFrom:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    const-string v2, "comment_id"

    .line 76
    .line 77
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    goto :goto_4

    .line 82
    :cond_4
    move-object v0, v1

    .line 83
    :goto_4
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->commentId:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    if-eqz v0, :cond_5

    .line 90
    .line 91
    const-string v2, "item_object"

    .line 92
    .line 93
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-eqz v0, :cond_5

    .line 98
    .line 99
    move-object v1, v0

    .line 100
    check-cast v1, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 101
    .line 102
    :cond_5
    iput-object v1, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 103
    .line 104
    return-void
.end method

.method public retryLoadData()V
    .locals 0

    .line 1
    return-void
.end method

.method public final setCommentId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->commentId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setMPostDetailBean(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 2
    .line 3
    return-void
.end method

.method public final setPostId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->postId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
