.class public Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# instance fields
.field private A:Landroid/widget/ProgressBar;

.field private B:Lcom/mgtv/ssp/feed/control/StandardVideoController;

.field private C:Lcom/mgtv/ssp/widget/VideoLoadingView;

.field private D:Lcom/mgtv/ssp/widget/FeedVodBottomControlView;

.field private E:Lcom/mgtv/ssp/play/PlayErrorView;

.field private F:Lcom/mgtv/ssp/play/PlayerCore;

.field private G:Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;

.field private H:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private I:Lcom/mgtv/task/h;

.field private J:Lcom/mgtv/task/m;

.field private K:Lcom/mgtv/task/http/HttpParams;

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field public a:Lcom/mgtv/ssp/bean/VideoDetailInfoBean;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:I

.field private h:I

.field private i:I

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Lcom/mgtv/ssp/play/MediaInfo;

.field private r:Ljava/lang/String;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgtv/ssp/bean/VideoBean;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgtv/ssp/f;",
            ">;"
        }
    .end annotation
.end field

.field private u:Landroid/widget/ImageView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/FrameLayout;

.field private x:Lcom/mgtv/ssp/widget/LoadMoreRecycleView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->d:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->e:Z

    iput-boolean v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->f:Z

    iput-boolean v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->j:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->s:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->C:Lcom/mgtv/ssp/widget/VideoLoadingView;

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->i:I

    return p1
.end method

.method public static synthetic a(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;Lcom/mgtv/ssp/play/PlayErrorView;)Lcom/mgtv/ssp/play/PlayErrorView;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->E:Lcom/mgtv/ssp/play/PlayErrorView;

    return-object p1
.end method

.method public static synthetic a(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/ssp/play/PlayErrorView;
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/ssp/play/PlayErrorView;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/ssp/play/PlayErrorView;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->E:Lcom/mgtv/ssp/play/PlayErrorView;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/mgtv/ssp/play/PlayErrorView;

    invoke-direct {v0, p0, p1, p2}, Lcom/mgtv/ssp/play/PlayErrorView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->E:Lcom/mgtv/ssp/play/PlayErrorView;

    .line 137
    new-instance p1, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$21;

    invoke-direct {p1, p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$21;-><init>(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)V

    invoke-virtual {v0, p1}, Lcom/mgtv/ssp/play/PlayErrorView;->setViewClick(Lcom/mgtv/ssp/play/PlayErrorView$OnErrorViewCallback;)V

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {v0, p2}, Lcom/mgtv/ssp/play/PlayErrorView;->setMsg(Ljava/lang/String;)V

    .line 139
    :goto_0
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->E:Lcom/mgtv/ssp/play/PlayErrorView;

    return-object p0
.end method

.method public static synthetic a(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->k:Ljava/lang/String;

    return-object p1
.end method

.method private a(IILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/mgtv/ssp/f;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 128
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->t:Ljava/util/List;

    invoke-interface {v0, p1, p3}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->t:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 131
    :goto_0
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->G:Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    :cond_1
    return-void
.end method

.method private a(Lcom/mgtv/ssp/bean/ContentListEntity;)V
    .locals 3

    .line 39
    invoke-virtual {p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->i()V

    .line 40
    iget v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->i:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p1, :cond_4

    .line 41
    iget-object v0, p1, Lcom/mgtv/ssp/bean/ContentListEntity;->data:Lcom/mgtv/ssp/bean/ContentListEntity$Data;

    if-nez v0, :cond_1

    goto :goto_2

    .line 42
    :cond_1
    iget-object v0, v0, Lcom/mgtv/ssp/bean/ContentListEntity$Data;->page:Lcom/mgtv/ssp/bean/b;

    if-eqz v0, :cond_2

    .line 43
    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/b;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->a(I)V

    .line 44
    :cond_2
    iget-object p1, p1, Lcom/mgtv/ssp/bean/ContentListEntity;->data:Lcom/mgtv/ssp/bean/ContentListEntity$Data;

    iget-object p1, p1, Lcom/mgtv/ssp/bean/ContentListEntity$Data;->items:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 45
    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->a(Ljava/util/List;)V

    goto :goto_1

    .line 46
    :cond_3
    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->b(Ljava/util/List;)V

    .line 47
    :goto_1
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->x:Lcom/mgtv/ssp/widget/LoadMoreRecycleView;

    if-eqz p1, :cond_5

    .line 48
    new-instance v0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$20;

    invoke-direct {v0, p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$20;-><init>(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 49
    :cond_4
    :goto_2
    invoke-virtual {p0, v1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->a(I)V

    if-nez v2, :cond_5

    .line 50
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/mgtv/ssp/R$string;->no_more_data:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/hunantv/imgo/util/v;->a(Ljava/lang/String;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public static synthetic a(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->u()V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;Lcom/mgtv/ssp/bean/ContentListEntity;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->a(Lcom/mgtv/ssp/bean/ContentListEntity;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->t:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->y:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :cond_1
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->z:Landroid/view/View;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/mgtv/thirdsdk/playcore/utils/f;->a(Landroid/view/View;I)Z

    :cond_2
    return-void
.end method

.method public static synthetic a(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;Z)Z
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->f:Z

    return p1
.end method

.method public static synthetic b(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/play/PlayErrorView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->E:Lcom/mgtv/ssp/play/PlayErrorView;

    return-object p0
.end method

.method public static synthetic b(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->r:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic b(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->c:Z

    return p1
.end method

.method public static synthetic c(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/feed/control/StandardVideoController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->B:Lcom/mgtv/ssp/feed/control/StandardVideoController;

    return-object p0
.end method

.method public static synthetic c(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->o:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic c(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->j:Z

    return p1
.end method

.method public static synthetic d(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->r:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->n:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic d(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->d:Z

    return p1
.end method

.method public static synthetic e(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/play/PlayerCore;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->F:Lcom/mgtv/ssp/play/PlayerCore;

    return-object p0
.end method

.method public static synthetic e(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->b:Z

    return p1
.end method

.method public static synthetic f(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->s()V

    return-void
.end method

.method public static synthetic g(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->k:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic h(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/widget/FeedVodBottomControlView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->D:Lcom/mgtv/ssp/widget/FeedVodBottomControlView;

    return-object p0
.end method

.method public static synthetic i(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->j:Z

    return p0
.end method

.method public static synthetic j(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->u:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic k(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->v()Z

    move-result p0

    return p0
.end method

.method public static synthetic l(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->v:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic m(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->n:Ljava/lang/String;

    return-object p0
.end method

.method private m()V
    .locals 3

    .line 2
    new-instance v0, Lcom/mgtv/ssp/play/MediaInfo;

    invoke-direct {v0}, Lcom/mgtv/ssp/play/MediaInfo;-><init>()V

    iput-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->q:Lcom/mgtv/ssp/play/MediaInfo;

    .line 3
    iget-object v1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->n:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/ssp/play/MediaInfo;->videoId:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->m:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/ssp/play/MediaInfo;->contentId:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->F:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/mgtv/ssp/play/PlayerCore;->stop()V

    .line 7
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->b(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->F:Lcom/mgtv/ssp/play/PlayerCore;

    iget-object v1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setLob(Ljava/lang/String;)V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->F:Lcom/mgtv/ssp/play/PlayerCore;

    iget-object v1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->q:Lcom/mgtv/ssp/play/MediaInfo;

    iget-object v2, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Lcom/mgtv/ssp/play/PlayerCore;->prepare(Landroid/app/Activity;Lcom/mgtv/ssp/play/MediaInfo;Ljava/lang/String;)V

    .line 11
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->F:Lcom/mgtv/ssp/play/PlayerCore;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mgtv/ssp/play/PlayerCore;->setPlayClicked(Z)V

    :cond_1
    return-void
.end method

.method private n()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->F:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setBookmark(I)Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->F:Lcom/mgtv/ssp/play/PlayerCore;

    iget-object v1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->q:Lcom/mgtv/ssp/play/MediaInfo;

    iget-object v2, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Lcom/mgtv/ssp/play/PlayerCore;->prepare(Landroid/app/Activity;Lcom/mgtv/ssp/play/MediaInfo;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic n(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->m()V

    return-void
.end method

.method public static synthetic o(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->t:Ljava/util/List;

    return-object p0
.end method

.method private o()V
    .locals 3

    .line 2
    invoke-static {}, Lcom/hunantv/imgo/util/b;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->p:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->k:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->l:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "contentId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->m:Ljava/lang/String;

    .line 6
    const-string v1, "detail"

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->t:Ljava/util/List;

    .line 8
    iget-object v1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->G:Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;

    invoke-virtual {v1, v0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->a(Ljava/util/List;)V

    .line 9
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->G:Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;

    new-instance v1, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$24;

    invoke-direct {v1, p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$24;-><init>(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->a(Lcom/mgtv/ssp/adapter/listener/OnItemChildClickListener;)V

    .line 10
    invoke-virtual {p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->a()V

    .line 11
    new-instance v0, Lcom/mgtv/task/h;

    invoke-static {}, Lcom/hunantv/imgo/util/ThreadManager;->getNetWorkExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mgtv/task/h;-><init>(Ljava/util/concurrent/Executor;Z)V

    iput-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->I:Lcom/mgtv/task/h;

    .line 12
    new-instance v0, Lcom/mgtv/task/m;

    iget-object v1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->I:Lcom/mgtv/task/h;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/mgtv/task/m;-><init>(Landroid/content/Context;Lcom/mgtv/task/h;Lcom/mgtv/task/k;)V

    iput-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->J:Lcom/mgtv/task/m;

    .line 13
    new-instance v0, Lcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;

    invoke-direct {v0}, Lcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;-><init>()V

    invoke-static {v0}, Lcom/mgtv/ssp/net/a;->a(Lcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;)Lcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->K:Lcom/mgtv/task/http/HttpParams;

    return-void
.end method

.method public static synthetic p(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->G:Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;

    return-object p0
.end method

.method private p()V
    .locals 5

    .line 2
    new-instance v0, Lcom/mgtv/ssp/feed/control/StandardVideoController;

    invoke-direct {v0, p0}, Lcom/mgtv/ssp/feed/control/StandardVideoController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->B:Lcom/mgtv/ssp/feed/control/StandardVideoController;

    .line 3
    invoke-direct {p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->q()V

    .line 4
    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/ssp/auth/b;->e()Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getShowLoading()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 6
    new-instance v2, Lcom/mgtv/ssp/widget/VideoLoadingView;

    invoke-direct {v2, p0}, Lcom/mgtv/ssp/widget/VideoLoadingView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->C:Lcom/mgtv/ssp/widget/VideoLoadingView;

    .line 7
    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getLoadingTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mgtv/ssp/widget/VideoLoadingView;->a(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->B:Lcom/mgtv/ssp/feed/control/StandardVideoController;

    iget-object v2, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->C:Lcom/mgtv/ssp/widget/VideoLoadingView;

    new-array v3, v1, [Lcom/mgtv/ssp/control/b;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v0, v3}, Lcom/mgtv/ssp/control/BaseVideoController;->addControlComponent([Lcom/mgtv/ssp/control/b;)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->F:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setSupportChangeOrientation(Z)V

    .line 10
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->F:Lcom/mgtv/ssp/play/PlayerCore;

    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->B:Lcom/mgtv/ssp/feed/control/StandardVideoController;

    invoke-virtual {v0, p0}, Lcom/mgtv/ssp/play/PlayerCore;->setVideoController(Lcom/mgtv/ssp/control/BaseVideoController;)V

    return-void
.end method

.method private q()V
    .locals 3

    .line 2
    new-instance v0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;

    invoke-direct {v0, p0}, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->D:Lcom/mgtv/ssp/widget/FeedVodBottomControlView;

    const/4 v1, 0x2

    .line 3
    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->setScene(I)V

    .line 4
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->D:Lcom/mgtv/ssp/widget/FeedVodBottomControlView;

    new-instance v1, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$17;

    invoke-direct {v1, p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$17;-><init>(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->setViewCallback(Lcom/mgtv/ssp/widget/FeedVodBottomControlView$a;)V

    .line 5
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->B:Lcom/mgtv/ssp/feed/control/StandardVideoController;

    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->D:Lcom/mgtv/ssp/widget/FeedVodBottomControlView;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mgtv/ssp/control/b;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/control/BaseVideoController;->addControlComponent([Lcom/mgtv/ssp/control/b;)V

    return-void
.end method

.method public static synthetic q(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->w()V

    return-void
.end method

.method private r()V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->H:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->s:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->H:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->H:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    .line 5
    iget-object v2, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->s:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ltz v0, :cond_7

    if-gez v1, :cond_1

    goto :goto_2

    :cond_1
    :goto_0
    if-gt v0, v1, :cond_7

    .line 6
    iget-object v3, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->H:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    if-lt v0, v2, :cond_3

    return-void

    .line 7
    :cond_3
    iget-object v3, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->s:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mgtv/ssp/bean/VideoBean;

    if-nez v3, :cond_4

    goto :goto_1

    .line 8
    :cond_4
    invoke-virtual {v3}, Lcom/mgtv/ssp/bean/VideoBean;->getVideo()Lcom/mgtv/ssp/bean/VideoInfoBean;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_1

    .line 9
    :cond_5
    invoke-virtual {v3}, Lcom/mgtv/ssp/bean/VideoInfoBean;->hasExposed()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_1

    .line 10
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u66dd\u5149:ContentEvent.SHOW:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getFdParams()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",position\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "lyzzzzzzzzzz"

    const/4 v6, 0x1

    invoke-static {v5, v4, v6}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 11
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v4

    invoke-virtual {v3}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getVcode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getFdParams()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->j()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v0, v5, v6, v7}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v3}, Lcom/mgtv/ssp/bean/VideoInfoBean;->setExposed()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    :goto_2
    return-void
.end method

.method public static synthetic r(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->d:Z

    return p0
.end method

.method public static synthetic s(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/task/http/HttpParams;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->K:Lcom/mgtv/task/http/HttpParams;

    return-object p0
.end method

.method private s()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->E:Lcom/mgtv/ssp/play/PlayErrorView;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->B:Lcom/mgtv/ssp/feed/control/StandardVideoController;

    invoke-virtual {v1, v0}, Lcom/mgtv/ssp/control/BaseVideoController;->removeControlComponent(Lcom/mgtv/ssp/control/b;)V

    .line 4
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->B:Lcom/mgtv/ssp/feed/control/StandardVideoController;

    iget-object v1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->E:Lcom/mgtv/ssp/play/PlayErrorView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mgtv/ssp/control/BaseVideoController;->addControlComponent(Lcom/mgtv/ssp/control/b;Z)V

    .line 5
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->F:Lcom/mgtv/ssp/play/PlayerCore;

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/mgtv/ssp/play/PlayerCore;->setPlayState(I)V

    :cond_0
    return-void
.end method

.method public static synthetic t(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->L:Ljava/lang/String;

    return-object p0
.end method

.method private t()V
    .locals 3

    .line 2
    invoke-static {p0}, Lcom/hunantv/imgo/util/t;->a(Landroid/content/Context;)I

    move-result v0

    mul-int/lit8 v1, v0, 0x9

    .line 3
    div-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->h:I

    .line 4
    iput v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->g:I

    .line 5
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sss  mWidth "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mHeight "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->h:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic u(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->M:Ljava/lang/String;

    return-object p0
.end method

.method private u()V
    .locals 8

    .line 2
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->x()V

    .line 3
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->a:Lcom/mgtv/ssp/bean/VideoDetailInfoBean;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoDetailInfoBean;->getSchema()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->a:Lcom/mgtv/ssp/bean/VideoDetailInfoBean;

    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getMgDownloadH5()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->a:Lcom/mgtv/ssp/bean/VideoDetailInfoBean;

    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getSchemaHint()I

    move-result v4

    iget-object v6, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->n:Ljava/lang/String;

    const-string v7, "detail"

    const-string v5, "v_playDetail"

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/hunantv/imgo/util/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic v(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->i:I

    return p0
.end method

.method private v()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->a:Lcom/mgtv/ssp/bean/VideoDetailInfoBean;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoDetailInfoBean;->getSchemaV2()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->a:Lcom/mgtv/ssp/bean/VideoDetailInfoBean;

    invoke-virtual {p0}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getMgDownloadH5()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private w()V
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->z:Landroid/view/View;

    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/mgtv/thirdsdk/playcore/utils/f;->a(Landroid/view/View;I)Z

    return-void
.end method

.method public static synthetic w(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->b:Z

    return p0
.end method

.method public static synthetic x(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->r()V

    return-void
.end method

.method public static synthetic y(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->n()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 8
    new-instance v0, Lcom/mgtv/ssp/play/PlayerCore;

    invoke-direct {v0}, Lcom/mgtv/ssp/play/PlayerCore;-><init>()V

    iput-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->F:Lcom/mgtv/ssp/play/PlayerCore;

    .line 9
    invoke-virtual {p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setFrom(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->F:Lcom/mgtv/ssp/play/PlayerCore;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setRequestPauseAd(Z)V

    .line 11
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->F:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {v0, p0}, Lcom/mgtv/ssp/play/PlayerCore;->init(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 12
    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->p()V

    .line 14
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->w:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 15
    invoke-static {p0}, Lcom/hunantv/imgo/util/t;->a(Landroid/content/Context;)I

    .line 16
    invoke-direct {p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->t()V

    .line 17
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->g:I

    iget v3, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->h:I

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    .line 18
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 19
    iget-object v2, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->F:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {v2}, Lcom/mgtv/ssp/play/PlayerCore;->getDisplayView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 20
    iget-object v2, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->w:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->F:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {v3}, Lcom/mgtv/ssp/play/PlayerCore;->getDisplayView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->F:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setAspectRatio(I)Ljava/lang/String;

    .line 22
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->F:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance v1, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$25;

    invoke-direct {v1, p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$25;-><init>(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setOnVideoCompleteListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoCompleteListener;)V

    .line 23
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->F:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance v1, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$26;

    invoke-direct {v1, p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$26;-><init>(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setOnVideoStartPlayingListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoStartPlayingListener;)V

    .line 24
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->F:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance v1, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$27;

    invoke-direct {v1, p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$27;-><init>(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setOnErrorListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnErrorListener;)V

    .line 25
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->F:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance v1, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$28;

    invoke-direct {v1, p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$28;-><init>(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setOnAuthorizeResultListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAuthorizeResultListener;)V

    .line 26
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->F:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance v1, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$2;

    invoke-direct {v1, p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$2;-><init>(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setOnVideoPreparedListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoPreparedListener;)V

    .line 27
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->F:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance v1, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$3;

    invoke-direct {v1, p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$3;-><init>(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setOnAdStartPlayingListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdStartPlayingListener;)V

    .line 28
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->F:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance v1, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$4;

    invoke-direct {v1, p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$4;-><init>(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setOnAdCountdownListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdCountdownListener;)V

    .line 29
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->F:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance v1, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$5;

    invoke-direct {v1, p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$5;-><init>(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setOnAdPreparedListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdPreparedListener;)V

    .line 30
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->F:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance v1, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$6;

    invoke-direct {v1, p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$6;-><init>(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setOnAdCompleteListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdCompleteListener;)V

    .line 31
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->F:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance v1, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$7;

    invoke-direct {v1, p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$7;-><init>(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setOnVideoLoadingListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoLoadingListener;)V

    .line 32
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->F:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance v1, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$8;

    invoke-direct {v1, p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$8;-><init>(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setOnVideoPausedListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoPausedListener;)V

    .line 33
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->F:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance v1, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$9;

    invoke-direct {v1, p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$9;-><init>(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setOnVideoPreparingListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoPreparingListener;)V

    .line 34
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->F:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance v1, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$10;

    invoke-direct {v1, p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$10;-><init>(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setOnVideoStoppedListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoStoppedListener;)V

    .line 35
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->F:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance v1, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$11;

    invoke-direct {v1, p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$11;-><init>(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setOnVideoStartedListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoStartedListener;)V

    .line 36
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->F:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance v1, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$13;

    invoke-direct {v1, p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$13;-><init>(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setOnVideoSizeChangedListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoSizeChangedListener;)V

    .line 37
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->F:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance v1, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$14;

    invoke-direct {v1, p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$14;-><init>(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setSourcePrepareListener(Lcom/mgtv/ssp/c;)V

    .line 38
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->F:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance v1, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$15;

    invoke-direct {v1, p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$15;-><init>(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setAdControlListener(Lcom/mgtv/ssp/d;)V

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->x:Lcom/mgtv/ssp/widget/LoadMoreRecycleView;

    if-eqz p0, :cond_0

    if-lez p1, :cond_0

    .line 133
    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/widget/LoadMoreRecycleView;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;ZLcom/hunantv/imgo/data/ErrorData;)V
    .locals 1

    .line 134
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    if-eqz p2, :cond_0

    const-string p2, "0"

    goto :goto_0

    :cond_0
    const-string p2, "1"

    :goto_0
    invoke-virtual {p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->j()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/data/ErrorData;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mgtv/ssp/bean/VideoBean;",
            ">;)V"
        }
    .end annotation

    .line 51
    const-string v0, "bindVideoInfo resetList mInfoList.size() == 0 "

    const-string v1, "bindVideoInfo TYPE_AD "

    const-string v2, "bindVideoInfo resetList TYPE_AD sspBaseDetail1 "

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz p1, :cond_10

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_10

    .line 52
    iget-object v7, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->s:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 53
    iget-object v7, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->s:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 54
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 55
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    move v9, v3

    :goto_0
    if-ge v9, v8, :cond_1

    .line 56
    new-instance v10, Lcom/mgtv/ssp/f;

    sget v11, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->d:I

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mgtv/ssp/bean/VideoBean;

    invoke-direct {v10, v11, v12}, Lcom/mgtv/ssp/f;-><init>(ILcom/mgtv/ssp/bean/VideoBean;)V

    if-nez v9, :cond_0

    move v11, v6

    goto :goto_1

    :cond_0
    move v11, v3

    .line 57
    :goto_1
    iput-boolean v11, v10, Lcom/mgtv/ssp/f;->a:Z

    .line 58
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 59
    :cond_1
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->t:Ljava/util/List;

    if-nez p1, :cond_2

    .line 60
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->t:Ljava/util/List;

    .line 61
    :cond_2
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->t:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v6, :cond_9

    .line 62
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->t:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mgtv/ssp/f;

    if-eqz p1, :cond_4

    .line 63
    iget v0, p1, Lcom/mgtv/ssp/f;->b:I

    sget v8, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->b:I

    if-eq v0, v8, :cond_3

    .line 64
    new-instance v0, Lcom/mgtv/ssp/f;

    invoke-direct {v0, v8}, Lcom/mgtv/ssp/f;-><init>(I)V

    goto :goto_2

    :cond_3
    move-object v0, p1

    goto :goto_2

    :cond_4
    move-object v0, v5

    .line 65
    :goto_2
    iget-object v8, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->t:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mgtv/ssp/f;

    if-eqz v8, :cond_5

    .line 66
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/mgtv/ssp/f;->d:Lcom/mgtv/ssp/bean/VideoDetailInfoBean;

    invoke-virtual {p1}, Lcom/mgtv/ssp/bean/VideoDetailInfoBean;->getActors()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v9, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    iget p1, v8, Lcom/mgtv/ssp/f;->b:I

    sget v2, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->c:I

    if-eq p1, v2, :cond_6

    .line 68
    new-instance v8, Lcom/mgtv/ssp/f;

    new-instance p1, Lcom/mgtv/ssp/bean/VideoDetailInfoBean;

    invoke-direct {p1}, Lcom/mgtv/ssp/bean/VideoDetailInfoBean;-><init>()V

    invoke-direct {v8, v2, p1}, Lcom/mgtv/ssp/f;-><init>(ILcom/mgtv/ssp/bean/VideoDetailInfoBean;)V

    goto :goto_3

    :cond_5
    move-object v8, v5

    .line 69
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->t:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v4, :cond_8

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_8

    .line 70
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->t:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mgtv/ssp/f;

    if-eqz p1, :cond_8

    .line 71
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 72
    iget v1, p1, Lcom/mgtv/ssp/f;->b:I

    sget v2, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->a:I

    if-eq v1, v2, :cond_7

    .line 73
    new-instance v5, Lcom/mgtv/ssp/f;

    invoke-direct {v5, v2}, Lcom/mgtv/ssp/f;-><init>(I)V

    goto :goto_4

    :cond_7
    move-object v5, p1

    :cond_8
    :goto_4
    move-object p1, v8

    move-object v13, v5

    move-object v5, v0

    move-object v0, v13

    goto :goto_5

    .line 74
    :cond_9
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->t:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_a

    .line 75
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 76
    new-instance v5, Lcom/mgtv/ssp/f;

    sget p1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->b:I

    new-instance v0, Lcom/mgtv/ssp/bean/VideoDetailInfoBean;

    invoke-direct {v0}, Lcom/mgtv/ssp/bean/VideoDetailInfoBean;-><init>()V

    invoke-direct {v5, p1, v0}, Lcom/mgtv/ssp/f;-><init>(ILcom/mgtv/ssp/bean/VideoDetailInfoBean;)V

    .line 77
    new-instance p1, Lcom/mgtv/ssp/f;

    sget v0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->c:I

    invoke-direct {p1, v0}, Lcom/mgtv/ssp/f;-><init>(I)V

    .line 78
    new-instance v0, Lcom/mgtv/ssp/f;

    sget v1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->a:I

    invoke-direct {v0, v1}, Lcom/mgtv/ssp/f;-><init>(I)V

    goto :goto_5

    :cond_a
    move-object p1, v5

    move-object v0, p1

    .line 79
    :goto_5
    iget-object v1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-nez v5, :cond_b

    .line 80
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "bindVideoInfo resetList sspBaseDetail == 0 "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 81
    new-instance v5, Lcom/mgtv/ssp/f;

    sget v1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->b:I

    new-instance v2, Lcom/mgtv/ssp/bean/VideoDetailInfoBean;

    invoke-direct {v2}, Lcom/mgtv/ssp/bean/VideoDetailInfoBean;-><init>()V

    invoke-direct {v5, v1, v2}, Lcom/mgtv/ssp/f;-><init>(ILcom/mgtv/ssp/bean/VideoDetailInfoBean;)V

    .line 82
    :cond_b
    iget-object v1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->t:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_c

    .line 83
    new-instance p1, Lcom/mgtv/ssp/f;

    sget v1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->c:I

    invoke-direct {p1, v1}, Lcom/mgtv/ssp/f;-><init>(I)V

    .line 84
    :cond_c
    iget-object v1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->t:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_e

    if-nez v0, :cond_d

    .line 86
    new-instance v0, Lcom/mgtv/ssp/f;

    sget p1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->a:I

    invoke-direct {v0, p1}, Lcom/mgtv/ssp/f;-><init>(I)V

    .line 87
    :cond_d
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->t:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->G:Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;

    invoke-virtual {p1, v6}, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->a(Z)V

    goto :goto_6

    :cond_e
    if-eqz v0, :cond_f

    .line 89
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->t:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v4, :cond_f

    .line 90
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->t:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 91
    :cond_f
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->G:Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;

    invoke-virtual {p1, v3}, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->a(Z)V

    .line 92
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->t:Ljava/util/List;

    invoke-interface {p1, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 93
    :goto_6
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->G:Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto/16 :goto_b

    .line 94
    :cond_10
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->t:Ljava/util/List;

    if-nez p1, :cond_11

    .line 95
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->t:Ljava/util/List;

    .line 96
    :cond_11
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->t:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v6, :cond_18

    .line 97
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->t:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mgtv/ssp/f;

    if-eqz p1, :cond_13

    .line 98
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bindVideoInfo resetList TYPE_DESC sspBaseDetail0 "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/mgtv/ssp/f;->d:Lcom/mgtv/ssp/bean/VideoDetailInfoBean;

    invoke-virtual {v7}, Lcom/mgtv/ssp/bean/VideoDetailInfoBean;->getActors()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 99
    iget v0, p1, Lcom/mgtv/ssp/f;->b:I

    sget v3, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->b:I

    if-eq v0, v3, :cond_12

    .line 100
    new-instance v0, Lcom/mgtv/ssp/f;

    invoke-direct {v0, v3}, Lcom/mgtv/ssp/f;-><init>(I)V

    .line 101
    iput-boolean v6, v0, Lcom/mgtv/ssp/f;->e:Z

    goto :goto_7

    :cond_12
    move-object v0, p1

    goto :goto_7

    :cond_13
    move-object v0, v5

    .line 102
    :goto_7
    iget-object v3, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->t:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mgtv/ssp/f;

    if-eqz v3, :cond_14

    .line 103
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/mgtv/ssp/f;->d:Lcom/mgtv/ssp/bean/VideoDetailInfoBean;

    invoke-virtual {p1}, Lcom/mgtv/ssp/bean/VideoDetailInfoBean;->getActors()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 104
    iget p1, v3, Lcom/mgtv/ssp/f;->b:I

    sget v2, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->c:I

    if-eq p1, v2, :cond_15

    .line 105
    new-instance v3, Lcom/mgtv/ssp/f;

    new-instance p1, Lcom/mgtv/ssp/bean/VideoDetailInfoBean;

    invoke-direct {p1}, Lcom/mgtv/ssp/bean/VideoDetailInfoBean;-><init>()V

    invoke-direct {v3, v2, p1}, Lcom/mgtv/ssp/f;-><init>(ILcom/mgtv/ssp/bean/VideoDetailInfoBean;)V

    goto :goto_8

    :cond_14
    move-object v3, v5

    .line 106
    :cond_15
    :goto_8
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->t:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v4, :cond_17

    .line 107
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->t:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mgtv/ssp/f;

    if-eqz p1, :cond_17

    .line 108
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 109
    iget v1, p1, Lcom/mgtv/ssp/f;->b:I

    sget v2, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->a:I

    if-eq v1, v2, :cond_16

    .line 110
    new-instance v5, Lcom/mgtv/ssp/f;

    invoke-direct {v5, v2}, Lcom/mgtv/ssp/f;-><init>(I)V

    goto :goto_9

    :cond_16
    move-object v5, p1

    :cond_17
    :goto_9
    move-object p1, v3

    move-object v13, v5

    move-object v5, v0

    move-object v0, v13

    goto :goto_a

    .line 111
    :cond_18
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->t:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_19

    .line 112
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 113
    new-instance v5, Lcom/mgtv/ssp/f;

    sget p1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->b:I

    new-instance v0, Lcom/mgtv/ssp/bean/VideoDetailInfoBean;

    invoke-direct {v0}, Lcom/mgtv/ssp/bean/VideoDetailInfoBean;-><init>()V

    invoke-direct {v5, p1, v0}, Lcom/mgtv/ssp/f;-><init>(ILcom/mgtv/ssp/bean/VideoDetailInfoBean;)V

    .line 114
    iput-boolean v6, v5, Lcom/mgtv/ssp/f;->e:Z

    .line 115
    new-instance p1, Lcom/mgtv/ssp/f;

    sget v0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->c:I

    invoke-direct {p1, v0}, Lcom/mgtv/ssp/f;-><init>(I)V

    .line 116
    new-instance v0, Lcom/mgtv/ssp/f;

    sget v1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->a:I

    invoke-direct {v0, v1}, Lcom/mgtv/ssp/f;-><init>(I)V

    goto :goto_a

    :cond_19
    move-object p1, v5

    move-object v0, p1

    .line 117
    :goto_a
    iget-object v1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-nez v5, :cond_1a

    .line 118
    new-instance v5, Lcom/mgtv/ssp/f;

    sget v1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->b:I

    new-instance v2, Lcom/mgtv/ssp/bean/VideoDetailInfoBean;

    invoke-direct {v2}, Lcom/mgtv/ssp/bean/VideoDetailInfoBean;-><init>()V

    invoke-direct {v5, v1, v2}, Lcom/mgtv/ssp/f;-><init>(ILcom/mgtv/ssp/bean/VideoDetailInfoBean;)V

    .line 119
    iput-boolean v6, v5, Lcom/mgtv/ssp/f;->e:Z

    .line 120
    :cond_1a
    iget-object v1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->t:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_1b

    .line 121
    new-instance p1, Lcom/mgtv/ssp/f;

    sget v1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->c:I

    invoke-direct {p1, v1}, Lcom/mgtv/ssp/f;-><init>(I)V

    .line 122
    :cond_1b
    iget-object v1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->t:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_1c

    .line 123
    new-instance v0, Lcom/mgtv/ssp/f;

    sget p1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->a:I

    invoke-direct {v0, p1}, Lcom/mgtv/ssp/f;-><init>(I)V

    .line 124
    :cond_1c
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/mgtv/ssp/R$string;->page_empty:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/mgtv/ssp/f;->f:Ljava/lang/String;

    .line 125
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->t:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->G:Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;

    invoke-virtual {p1, v6}, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->a(Z)V

    .line 127
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->G:Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_b
    return-void
.end method

.method public b()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->H:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$16;

    invoke-direct {v0, p0, p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$16;-><init>(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->H:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->x:Lcom/mgtv/ssp/widget/LoadMoreRecycleView;

    if-eqz v0, :cond_1

    .line 7
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->H:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :cond_1
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mgtv/ssp/bean/VideoBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 8
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 12
    new-instance v3, Lcom/mgtv/ssp/f;

    sget v4, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->d:I

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mgtv/ssp/bean/VideoBean;

    invoke-direct {v3, v4, v5}, Lcom/mgtv/ssp/f;-><init>(ILcom/mgtv/ssp/bean/VideoBean;)V

    .line 13
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->t:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, p1, v1, v0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->a(IILjava/util/List;)V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 4

    .line 4
    new-instance v0, Lcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;

    invoke-direct {v0}, Lcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;-><init>()V

    invoke-static {v0}, Lcom/mgtv/ssp/net/a;->a(Lcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;)Lcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;

    move-result-object v0

    .line 5
    const-string v1, "detail"

    invoke-static {v1}, Lcom/hunantv/imgo/util/b;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "spaceId"

    invoke-virtual {v0, v2, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 6
    iget-object v1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    const-string v1, "vcode"

    iget-object v2, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 8
    :cond_0
    invoke-static {}, Lcom/hunantv/imgo/util/b;->W()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    const-string v1, "mid"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->W()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 10
    :cond_1
    iget-boolean v1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->d:Z

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->h()V

    .line 12
    :cond_2
    new-instance v1, Lcom/mgtv/task/m;

    invoke-direct {v1, p0}, Lcom/mgtv/task/m;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 13
    invoke-virtual {v1, v2}, Lcom/mgtv/task/m;->a(Z)Lcom/mgtv/task/m;

    move-result-object v1

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Lcom/mgtv/task/m;->b(I)Lcom/mgtv/task/m;

    move-result-object v1

    invoke-static {}, Lcom/hunantv/imgo/net/b;->y()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$18;

    invoke-direct {v3, p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$18;-><init>(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/mgtv/task/m;->a(Ljava/lang/String;Lcom/mgtv/task/http/HttpParams;Lcom/mgtv/task/http/c;)Lcom/mgtv/task/g;

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->i:I

    .line 5
    invoke-virtual {p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->f()V

    return-void
.end method

.method public e()V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    return-void

    .line 5
    :cond_0
    iget v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->i:I

    .line 6
    invoke-virtual {p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->f()V

    return-void
.end method

.method public f()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->K:Lcom/mgtv/task/http/HttpParams;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    const-string v1, "uuid"

    iget-object v2, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 4
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->K:Lcom/mgtv/task/http/HttpParams;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pageSize"

    invoke-virtual {v0, v2, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/Number;)Lcom/mgtv/task/http/HttpParams;

    .line 5
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->K:Lcom/mgtv/task/http/HttpParams;

    iget v1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pageNum"

    invoke-virtual {v0, v2, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/Number;)Lcom/mgtv/task/http/HttpParams;

    .line 6
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->K:Lcom/mgtv/task/http/HttpParams;

    const-string v1, "detail"

    invoke-static {v1}, Lcom/hunantv/imgo/util/b;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "spaceId"

    invoke-virtual {v0, v2, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 7
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->K:Lcom/mgtv/task/http/HttpParams;

    const-string v1, "vcode"

    iget-object v2, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->K:Lcom/mgtv/task/http/HttpParams;

    const-string v1, "mid"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->W()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 10
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->K:Lcom/mgtv/task/http/HttpParams;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->ab()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "allowRc"

    invoke-virtual {v0, v2, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/Number;)Lcom/mgtv/task/http/HttpParams;

    .line 11
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->J:Lcom/mgtv/task/m;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mgtv/task/m;->a(Z)Lcom/mgtv/task/m;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/mgtv/task/m;->b(I)Lcom/mgtv/task/m;

    move-result-object v0

    invoke-static {}, Lcom/hunantv/imgo/net/b;->x()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->K:Lcom/mgtv/task/http/HttpParams;

    new-instance v3, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$19;

    invoke-direct {v3, p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$19;-><init>(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/mgtv/task/m;->a(Ljava/lang/String;Lcom/mgtv/task/http/HttpParams;Lcom/mgtv/task/http/c;)Lcom/mgtv/task/g;

    return-void
.end method

.method public g()V
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->A:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/mgtv/thirdsdk/playcore/utils/f;->a(Landroid/view/View;I)Z

    return-void
.end method

.method public h()V
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->A:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mgtv/thirdsdk/playcore/utils/f;->a(Landroid/view/View;I)Z

    return-void
.end method

.method public i()V
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->x:Lcom/mgtv/ssp/widget/LoadMoreRecycleView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/mgtv/ssp/widget/LoadMoreRecycleView;->a(Z)V

    :cond_0
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 0

    .line 2
    const-string p0, "detail"

    return-object p0
.end method

.method public k()Z
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->F:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/mgtv/ssp/play/PlayerCore;->isFullScreen()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public l()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->F:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/PlayerCore;->isFullScreen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->y()V

    .line 4
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->F:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {p0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->switchFullScreenV2(Z)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->B:Lcom/mgtv/ssp/feed/control/StandardVideoController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/ssp/control/BaseVideoController;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->B:Lcom/mgtv/ssp/feed/control/StandardVideoController;

    invoke-virtual {v0}, Lcom/mgtv/ssp/control/BaseVideoController;->show()V

    sget v0, Lcom/mgtv/ssp/R$string;->mgplayer_lock_tip:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->F:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/PlayerCore;->stop()V

    :cond_2
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->t()V

    invoke-direct {p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->s()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/mgtv/ssp/R$layout;->activity_ssp_play_detail:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/mgtv/ssp/R$string;->mgplayer_error_message:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->L:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/mgtv/ssp/R$string;->no_network:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->M:Ljava/lang/String;

    sget p1, Lcom/mgtv/ssp/R$id;->lay_detail_player:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->w:Landroid/widget/FrameLayout;

    sget p1, Lcom/mgtv/ssp/R$id;->rv_play_detail:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/mgtv/ssp/widget/LoadMoreRecycleView;

    iput-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->x:Lcom/mgtv/ssp/widget/LoadMoreRecycleView;

    new-instance v0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$1;-><init>(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)V

    invoke-virtual {p1, v0}, Lcom/mgtv/ssp/widget/LoadMoreRecycleView;->a(Lcom/mgtv/ssp/widget/LoadMoreRecycleView$c;)V

    new-instance p1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;

    invoke-direct {p1, p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->G:Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;

    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->x:Lcom/mgtv/ssp/widget/LoadMoreRecycleView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
    sget p1, Lcom/mgtv/ssp/R$id;->tv_bottom_open:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->v:Landroid/widget/TextView;

    new-instance v0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$12;

    invoke-direct {v0, p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$12;-><init>(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/mgtv/ssp/R$id;->lay_detail_error:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->z:Landroid/view/View;

    sget v0, Lcom/mgtv/ssp/R$id;->textView_empty:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->y:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->z:Landroid/view/View;

    sget v0, Lcom/mgtv/ssp/R$id;->tv_error_retry:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$22;

    invoke-direct {v0, p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$22;-><init>(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/mgtv/ssp/R$id;->iv_p_top_back:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->u:Landroid/widget/ImageView;

    new-instance v0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$23;

    invoke-direct {v0, p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$23;-><init>(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/mgtv/ssp/R$id;->detail_progressBar:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->A:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->b()V

    invoke-direct {p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->o()V

    invoke-static {}, Lcom/hunantv/imgo/util/p;->b()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->M:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->c()V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->I:Lcom/mgtv/task/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/mgtv/task/h;->a(Lcom/mgtv/task/g;)V

    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->a:Lcom/mgtv/ssp/bean/VideoDetailInfoBean;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->w()V

    :cond_1
    iput-object v1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->J:Lcom/mgtv/task/m;

    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->F:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/mgtv/ssp/play/PlayerCore;->release()V

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->F:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/PlayerCore;->gotoBackground()V

    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->F:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {p0}, Lcom/mgtv/ssp/play/PlayerCore;->pause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    iget-boolean v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->j:Z

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Lcom/hunantv/imgo/util/t;->a(Landroid/app/Activity;Z)V

    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->F:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/PlayerCore;->backToFront()V

    :cond_1
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->F:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/PlayerCore;->getIsPausedByUser()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->F:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {p0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->onActivityStart(Z)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->c:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->E:Lcom/mgtv/ssp/play/PlayErrorView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/PlayErrorView;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->E:Lcom/mgtv/ssp/play/PlayErrorView;

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/PlayErrorView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->E:Lcom/mgtv/ssp/play/PlayErrorView;

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/PlayErrorView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->F:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {p0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->onActivityStart(Z)V

    :goto_0
    return-void
.end method
