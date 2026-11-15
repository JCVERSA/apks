.class public abstract Lcom/mgtv/ssp/viewcard/BaseVideoListView;
.super Lcom/mgtv/ssp/viewcard/BaseView;
.source "SourceFile"


# static fields
.field public static s:I


# instance fields
.field private G:Lcom/mgtv/ssp/fragment/BaseListFragment$a;

.field private H:Lcom/mgtv/task/h;

.field private I:Lcom/mgtv/task/m;

.field private a:Z

.field private b:Lcom/mgtv/ssp/callback/MgSspSdkCallback;

.field protected c:Z

.field protected d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgtv/ssp/bean/VideoBean;",
            ">;"
        }
    .end annotation
.end field

.field protected e:I

.field protected f:Ljava/lang/String;

.field protected g:Lcom/mgtv/ssp/widget/LoadMoreRecycleView;

.field protected h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field protected i:Landroidx/recyclerview/widget/LinearLayoutManager;

.field protected j:Lcom/mgtv/task/http/HttpParams;

.field protected k:Lcom/mgtv/ssp/auth/EntranceInfo;

.field protected l:Lcom/mgtv/ssp/play/PlayErrorView;

.field protected m:Landroid/widget/TextView;

.field protected n:I

.field protected o:Lcom/mgtv/ssp/bean/VideoInfoBean;

.field protected p:Lcom/mgtv/ssp/play/PlayerCore;

.field protected q:Lcom/mgtv/ssp/control/GestureVideoController;

.field protected r:Lcom/mgtv/ssp/authbase/MgSspAccountCallback;

.field protected t:I

.field protected u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected v:Z

.field protected w:J

.field public x:Landroid/app/Activity;

.field y:I

.field z:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/mgtv/ssp/viewcard/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 4
    iput p2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n:I

    const/4 p2, 0x0

    .line 5
    iput p2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->t:I

    .line 6
    iput p2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->y:I

    .line 7
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_0

    .line 8
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->x:Landroid/app/Activity;

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->u:Ljava/util/List;

    .line 10
    invoke-direct {p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->f()V

    return-void

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context must be activity !!!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(IILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/mgtv/ssp/bean/VideoBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 40
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->d:Ljava/util/List;

    invoke-interface {v0, p1, p3}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->d:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 43
    :goto_0
    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    :cond_1
    return-void
.end method

.method private a(Lcom/mgtv/ssp/bean/ContentListEntity;)V
    .locals 3

    .line 24
    invoke-virtual {p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->s()V

    .line 25
    iget v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->e:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p1, :cond_4

    .line 26
    iget-object v0, p1, Lcom/mgtv/ssp/bean/ContentListEntity;->data:Lcom/mgtv/ssp/bean/ContentListEntity$Data;

    if-nez v0, :cond_1

    goto :goto_2

    .line 27
    :cond_1
    iget-object v0, v0, Lcom/mgtv/ssp/bean/ContentListEntity$Data;->page:Lcom/mgtv/ssp/bean/b;

    if-eqz v0, :cond_2

    .line 28
    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/b;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->setIsMore(I)V

    .line 29
    :cond_2
    iget-object p1, p1, Lcom/mgtv/ssp/bean/ContentListEntity;->data:Lcom/mgtv/ssp/bean/ContentListEntity$Data;

    iget-object p1, p1, Lcom/mgtv/ssp/bean/ContentListEntity$Data;->items:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 30
    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->a(Ljava/util/List;)V

    goto :goto_1

    .line 31
    :cond_3
    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->b(Ljava/util/List;)V

    .line 32
    :goto_1
    iget-object p1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->g:Lcom/mgtv/ssp/widget/LoadMoreRecycleView;

    if-eqz p1, :cond_5

    .line 33
    new-instance v0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$7;

    invoke-direct {v0, p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView$7;-><init>(Lcom/mgtv/ssp/viewcard/BaseVideoListView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 34
    :cond_4
    :goto_2
    invoke-virtual {p0, v1}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->setIsMore(I)V

    if-nez v2, :cond_5

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/mgtv/ssp/R$string;->no_more_data:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/hunantv/imgo/util/v;->a(Ljava/lang/String;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public static synthetic a(Lcom/mgtv/ssp/viewcard/BaseVideoListView;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->w()V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/ssp/viewcard/BaseVideoListView;Lcom/mgtv/ssp/bean/ContentListEntity;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->a(Lcom/mgtv/ssp/bean/ContentListEntity;)V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/ssp/viewcard/BaseVideoListView;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->a:Z

    return p1
.end method

.method public static synthetic b(Lcom/mgtv/ssp/viewcard/BaseVideoListView;)Lcom/mgtv/ssp/callback/MgSspSdkCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->b:Lcom/mgtv/ssp/callback/MgSspSdkCallback;

    return-object p0
.end method

.method public static synthetic c(Lcom/mgtv/ssp/viewcard/BaseVideoListView;)Lcom/mgtv/ssp/fragment/BaseListFragment$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->G:Lcom/mgtv/ssp/fragment/BaseListFragment$a;

    return-object p0
.end method

.method public static synthetic d(Lcom/mgtv/ssp/viewcard/BaseVideoListView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h()V

    return-void
.end method

.method public static synthetic e(Lcom/mgtv/ssp/viewcard/BaseVideoListView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->a:Z

    return p0
.end method

.method private f()V
    .locals 4

    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->x:Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/mgtv/task/h;

    invoke-static {}, Lcom/hunantv/imgo/util/ThreadManager;->getNetWorkExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mgtv/task/h;-><init>(Ljava/util/concurrent/Executor;Z)V

    iput-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->H:Lcom/mgtv/task/h;

    new-instance v0, Lcom/mgtv/task/m;

    iget-object v1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->x:Landroid/app/Activity;

    iget-object v2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->H:Lcom/mgtv/task/h;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/mgtv/task/m;-><init>(Landroid/content/Context;Lcom/mgtv/task/h;Lcom/mgtv/task/k;)V

    iput-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->I:Lcom/mgtv/task/m;

    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->x:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/mgtv/ssp/viewcard/BaseView;->a(Landroid/content/Context;)Landroid/view/View;

    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    iget v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->y:I

    if-nez v0, :cond_0

    const-string v0, "SDKCONFIG_SWITCH"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/PreferencesUtil;->a(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->y:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->y:I

    invoke-virtual {p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->getRetryUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private w()V
    .locals 8

    invoke-virtual {p0}, Lcom/mgtv/ssp/viewcard/BaseView;->getRealVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->i:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->d:Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->i:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->i:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    iget-object v2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ltz v0, :cond_8

    if-gez v1, :cond_2

    goto :goto_2

    :cond_2
    :goto_0
    if-gt v0, v1, :cond_8

    iget-object v3, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->i:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    if-lt v0, v2, :cond_4

    return-void

    :cond_4
    iget-object v3, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->d:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mgtv/ssp/bean/VideoBean;

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Lcom/mgtv/ssp/bean/VideoBean;->getVideo()Lcom/mgtv/ssp/bean/VideoInfoBean;

    move-result-object v3

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v3}, Lcom/mgtv/ssp/bean/VideoInfoBean;->hasExposed()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_1

    :cond_7
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

    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v4

    invoke-virtual {v3}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getPreviewVcode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getFdParams()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->getModType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v0, v5, v6, v7}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/mgtv/ssp/bean/VideoInfoBean;->setExposed()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    :goto_2
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/ssp/play/PlayErrorView;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->l:Lcom/mgtv/ssp/play/PlayErrorView;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Lcom/mgtv/ssp/play/PlayErrorView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/mgtv/ssp/play/PlayErrorView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->l:Lcom/mgtv/ssp/play/PlayErrorView;

    .line 7
    iget-boolean p1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->c:Z

    invoke-virtual {v0, p1}, Lcom/mgtv/ssp/play/PlayErrorView;->setLandScreen(Z)V

    .line 8
    iget-object p1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->l:Lcom/mgtv/ssp/play/PlayErrorView;

    new-instance p2, Lcom/mgtv/ssp/viewcard/BaseVideoListView$5;

    invoke-direct {p2, p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView$5;-><init>(Lcom/mgtv/ssp/viewcard/BaseVideoListView;)V

    invoke-virtual {p1, p2}, Lcom/mgtv/ssp/play/PlayErrorView;->setViewClick(Lcom/mgtv/ssp/play/PlayErrorView$OnErrorViewCallback;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-boolean p1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->c:Z

    invoke-virtual {v0, p1}, Lcom/mgtv/ssp/play/PlayErrorView;->setLandScreen(Z)V

    .line 10
    iget-object p1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->l:Lcom/mgtv/ssp/play/PlayErrorView;

    invoke-virtual {p1, p2}, Lcom/mgtv/ssp/play/PlayErrorView;->setMsg(Ljava/lang/String;)V

    .line 11
    :goto_0
    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->l:Lcom/mgtv/ssp/play/PlayErrorView;

    return-object p0
.end method

.method public abstract a()Lcom/mgtv/ssp/widget/LoadMoreRecycleView;
.end method

.method public a(Landroid/content/Context;Lcom/mgtv/ssp/authbase/AccountInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/ssp/authbase/MgSspAccountCallback;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 45
    invoke-static/range {p1 .. p7}, Lcom/mgtv/ssp/authbase/a;->a(Landroid/content/Context;Lcom/mgtv/ssp/authbase/AccountInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/ssp/authbase/MgSspAccountCallback;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .line 12
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->j:Lcom/mgtv/task/http/HttpParams;

    if-nez v0, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->i()V

    return-void

    :cond_0
    const/16 v1, 0xa

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pageSize"

    invoke-virtual {v0, v2, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/Number;)Lcom/mgtv/task/http/HttpParams;

    .line 15
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->j:Lcom/mgtv/task/http/HttpParams;

    iget v1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pageNum"

    invoke-virtual {v0, v2, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/Number;)Lcom/mgtv/task/http/HttpParams;

    .line 16
    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/ssp/auth/b;->e()Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 17
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->j:Lcom/mgtv/task/http/HttpParams;

    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgtv/ssp/auth/b;->e()Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getCxid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cxid"

    invoke-virtual {v0, v2, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->j:Lcom/mgtv/task/http/HttpParams;

    invoke-virtual {p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->getModType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hunantv/imgo/util/b;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "spaceId"

    invoke-virtual {v0, v2, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 19
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 20
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->j:Lcom/mgtv/task/http/HttpParams;

    const-string v1, "currVcode"

    iget-object v2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->j:Lcom/mgtv/task/http/HttpParams;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->ac()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "lt"

    invoke-virtual {v0, v3, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/Number;)Lcom/mgtv/task/http/HttpParams;

    .line 22
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->j:Lcom/mgtv/task/http/HttpParams;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->ab()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "allowRc"

    invoke-virtual {v0, v3, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/Number;)Lcom/mgtv/task/http/HttpParams;

    .line 23
    invoke-virtual {p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->getTaskStarter()Lcom/mgtv/task/m;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mgtv/task/m;->a(Z)Lcom/mgtv/task/m;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/mgtv/task/m;->b(I)Lcom/mgtv/task/m;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->j:Lcom/mgtv/task/http/HttpParams;

    new-instance v2, Lcom/mgtv/ssp/viewcard/BaseVideoListView$6;

    invoke-direct {v2, p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView$6;-><init>(Lcom/mgtv/ssp/viewcard/BaseVideoListView;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/mgtv/task/m;->a(Ljava/lang/String;Lcom/mgtv/task/http/HttpParams;Lcom/mgtv/task/http/c;)Lcom/mgtv/task/g;

    return-void
.end method

.method public a(Ljava/lang/String;ZLcom/hunantv/imgo/data/ErrorData;)V
    .locals 1

    .line 44
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    if-eqz p2, :cond_0

    const-string p2, "0"

    goto :goto_0

    :cond_0
    const-string p2, "1"

    :goto_0
    invoke-virtual {p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->getModType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/data/ErrorData;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mgtv/ssp/bean/VideoBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 36
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 38
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 39
    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Landroid/view/View;)Z
    .locals 0

    .line 46
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 47
    invoke-virtual {p1, p0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 48
    iget p0, p0, Landroid/graphics/Rect;->top:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract b()Landroidx/recyclerview/widget/RecyclerView$Adapter;
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->m:Landroid/widget/TextView;

    new-instance v0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$9;

    invoke-direct {v0, p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView$9;-><init>(Lcom/mgtv/ssp/viewcard/BaseVideoListView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mgtv/ssp/bean/VideoBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->a(IILjava/util/List;)V

    :cond_0
    return-void
.end method

.method public abstract c()Landroidx/recyclerview/widget/LinearLayoutManager;
.end method

.method public abstract d()Lcom/mgtv/task/http/HttpParams;
.end method

.method public destroy()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgtv/ssp/viewcard/BaseView;->B:Z

    iget-object v1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->H:Lcom/mgtv/task/h;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Lcom/mgtv/task/h;->a(Lcom/mgtv/task/g;)V

    :cond_0
    iput-object v2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->I:Lcom/mgtv/task/m;

    iget-object v1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->o:Lcom/mgtv/ssp/bean/VideoInfoBean;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->w()V

    :cond_1
    const-string v1, ""

    iput-object v1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->f:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->a:Z

    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/PlayerCore;->release()V

    iput-object v2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    :cond_2
    return-void
.end method

.method public e()V
    .locals 3

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->d:Ljava/util/List;

    .line 3
    invoke-virtual {p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->a()Lcom/mgtv/ssp/widget/LoadMoreRecycleView;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->g:Lcom/mgtv/ssp/widget/LoadMoreRecycleView;

    .line 4
    invoke-virtual {p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->b()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 5
    invoke-virtual {p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->getModType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->setFrom(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->d()Lcom/mgtv/task/http/HttpParams;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->j:Lcom/mgtv/task/http/HttpParams;

    .line 7
    invoke-virtual {p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->c()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->i:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 8
    iget-object v1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->g:Lcom/mgtv/ssp/widget/LoadMoreRecycleView;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->j:Lcom/mgtv/task/http/HttpParams;

    if-nez v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 10
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->g:Lcom/mgtv/ssp/widget/LoadMoreRecycleView;

    iget-object v1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->i:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 11
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->g:Lcom/mgtv/ssp/widget/LoadMoreRecycleView;

    new-instance v1, Lcom/mgtv/ssp/viewcard/BaseVideoListView$1;

    invoke-direct {v1, p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView$1;-><init>(Lcom/mgtv/ssp/viewcard/BaseVideoListView;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/widget/LoadMoreRecycleView;->a(Lcom/mgtv/ssp/widget/LoadMoreRecycleView$c;)V

    .line 12
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->g:Lcom/mgtv/ssp/widget/LoadMoreRecycleView;

    new-instance v1, Lcom/mgtv/ssp/viewcard/BaseVideoListView$2;

    invoke-direct {v1, p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView$2;-><init>(Lcom/mgtv/ssp/viewcard/BaseVideoListView;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public getInfo()Lcom/mgtv/ssp/auth/EntranceInfo;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->k:Lcom/mgtv/ssp/auth/EntranceInfo;

    return-object p0
.end method

.method public abstract getModType()Ljava/lang/String;
.end method

.method public abstract getRetryUrl()Ljava/lang/String;
.end method

.method public getTaskStarter()Lcom/mgtv/task/m;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->I:Lcom/mgtv/task/m;

    return-object p0
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public getmAutoCallback()Lcom/mgtv/ssp/fragment/BaseListFragment$a;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->G:Lcom/mgtv/ssp/fragment/BaseListFragment$a;

    return-object p0
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public m()V
    .locals 3

    const/4 v0, -0x1

    iput v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n:I

    sget v0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->s:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/mgtv/ssp/viewcard/BaseView;->a(IZZ)V

    return-void
.end method

.method public n()V
    .locals 2

    iget-boolean v0, p0, Lcom/mgtv/ssp/viewcard/BaseView;->A:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->j()V

    invoke-virtual {p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->q()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgtv/ssp/viewcard/BaseView;->A:Z

    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/ssp/auth/b;->d()Lcom/mgtv/ssp/bean/config/SspSpaceConfig;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/hunantv/imgo/b/e;->c()Lcom/hunantv/imgo/b/e;

    move-result-object v1

    iget p0, p0, Lcom/mgtv/ssp/bean/config/SspSpaceConfig;->autoPlay:I

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/hunantv/imgo/b/e;->a(Z)V

    :cond_2
    return-void
.end method

.method public o()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/mgtv/ssp/viewcard/BaseVideoListView$3;

    invoke-direct {v1, p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView$3;-><init>(Lcom/mgtv/ssp/viewcard/BaseVideoListView;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setOnAuthorizeResultListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAuthorizeResultListener;)V

    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance v1, Lcom/mgtv/ssp/viewcard/BaseVideoListView$4;

    invoke-direct {v1, p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView$4;-><init>(Lcom/mgtv/ssp/viewcard/BaseVideoListView;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setOnErrorListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnErrorListener;)V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->onResume()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->g()V

    :goto_0
    return-void
.end method

.method public p()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->o:Lcom/mgtv/ssp/bean/VideoInfoBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getPreviewVcode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->o:Lcom/mgtv/ssp/bean/VideoInfoBean;

    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getPreviewVcode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->u:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->t:I

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public q()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->y:I

    invoke-virtual {p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->a(Ljava/lang/String;)V

    return-void
.end method

.method public r()V
    .locals 1

    iget v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->y:I

    invoke-virtual {p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->a(Ljava/lang/String;)V

    return-void
.end method

.method public resume()V
    .locals 0

    return-void
.end method

.method public s()V
    .locals 1

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->g:Lcom/mgtv/ssp/widget/LoadMoreRecycleView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mgtv/ssp/widget/LoadMoreRecycleView;->a(Z)V

    :cond_0
    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    instance-of v0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setInfo(Lcom/mgtv/ssp/auth/EntranceInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->k:Lcom/mgtv/ssp/auth/EntranceInfo;

    return-void
.end method

.method public setIsMore(I)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->g:Lcom/mgtv/ssp/widget/LoadMoreRecycleView;

    if-eqz p0, :cond_0

    if-lez p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/widget/LoadMoreRecycleView;->a(I)V

    :cond_0
    return-void
.end method

.method public setMgSspSdkCallback(Lcom/mgtv/ssp/callback/MgSspSdkCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->b:Lcom/mgtv/ssp/callback/MgSspSdkCallback;

    return-void
.end method

.method public setmAutoCallback(Lcom/mgtv/ssp/fragment/BaseListFragment$a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->G:Lcom/mgtv/ssp/fragment/BaseListFragment$a;

    return-void
.end method

.method public t()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->o:Lcom/mgtv/ssp/bean/VideoInfoBean;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->x()V

    :cond_0
    return-void
.end method

.method public u()V
    .locals 1

    new-instance v0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$8;

    invoke-direct {v0, p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView$8;-><init>(Lcom/mgtv/ssp/viewcard/BaseVideoListView;)V

    iput-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->r:Lcom/mgtv/ssp/authbase/MgSspAccountCallback;

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/mgtv/ssp/play/PlayerCore;->setSspAccountCallback(Lcom/mgtv/ssp/authbase/MgSspAccountCallback;)V

    :cond_0
    return-void
.end method

.method public visibleChanged(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->v:Z

    if-ne p1, v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->w:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->v:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->w:J

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/viewcard/BaseView;->setRealVisible(Z)V

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->a(Z)V

    return-void
.end method
