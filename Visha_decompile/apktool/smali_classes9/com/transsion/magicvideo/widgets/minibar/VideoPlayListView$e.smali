.class public Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$e;
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
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$e;->b:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    invoke-direct {p0, p2, p3}, Lif7;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public OnNoDoubleItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$e;->b:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    iget-object p2, p1, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->c:Lcom/transsion/dbdata/beans/media/PlayListData;

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->f:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OnNoDoubleItemClickListener: select = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " , cur = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$e;->b:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    iget-object v0, v0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->c:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "VideoPlayListView"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object p2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$e;->b:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    iget-object p2, p2, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->c:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/media/PlayListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$e;->b:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    iget-object p2, p2, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->c:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/media/PlayListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p2

    iget-object p2, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$e;->b:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    iget-object p2, p1, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->c:Lcom/transsion/dbdata/beans/media/PlayListData;

    if-eqz p2, :cond_2

    iget-object p1, p1, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->W1(Z)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$e;->b:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    iget-object p1, p1, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->z1(Z)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$e;->b:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    iget-object p1, p1, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p1, p3, p2, p2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->v1(IZZ)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$e;->b:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    iget-object p1, p1, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->c:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {p1, p3}, Lcom/transsion/dbdata/beans/media/PlayListData;->setPlayMediaItem(I)Lcom/transsion/dbdata/beans/media/PlayListData;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$e;->b:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->m(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lj06;->b(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
