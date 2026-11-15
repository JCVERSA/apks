.class public Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$f;
.super Lif7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$f;->c:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    iput-object p2, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$f;->b:Landroid/content/Context;

    invoke-direct {p0}, Lif7;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$f;Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$f;->lambda$OnNoDoubleItemClickListener$0(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public OnNoDoubleItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayListData;->switchList()V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$f;->c:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    iget-object p1, p1, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->c:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {p1, p3}, Lcom/transsion/dbdata/beans/media/PlayListData;->setPlayMediaItem(I)Lcom/transsion/dbdata/beans/media/PlayListData;

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$f;->c:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    iget-object p1, p1, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->z1(Z)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$f;->c:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    iget-object p1, p1, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    const/4 p2, 0x1

    invoke-virtual {p1, p3, p2, p2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->v1(IZZ)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$f;->b:Landroid/content/Context;

    new-instance p3, Lwwb;

    invoke-direct {p3, p0, p2}, Lwwb;-><init>(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$f;Landroid/content/Context;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final synthetic lambda$OnNoDoubleItemClickListener$0(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$f;->c:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    iget-object v2, v2, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->c:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/media/PlayListData;->getLastPlayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$f;->c:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    iget-object v1, v1, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->g:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$f;->c:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->r(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;ZLjava/util/ArrayList;)V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$f;->c:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    iget-object v3, v3, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->c:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/media/PlayListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$f;->c:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    iget-object v3, v3, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->f:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    invoke-virtual {v3, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$f;->c:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    const/4 v3, 0x0

    invoke-static {v1, v3, v0}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->r(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;ZLjava/util/ArrayList;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$f;->c:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    iget-object v0, v0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->h:Lcom/transsion/widgets/RtlViewPager;

    invoke-virtual {v0, v2}, Lcom/transsion/widgets/RtlViewPager;->setCurrentItem(I)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$f;->c:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    invoke-virtual {p0, p1, v2}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->updateUI(Landroid/content/Context;Z)V

    return-void
.end method
