.class public Lcom/transsion/magicvideo/fragments/VideosFragment$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/fragments/VideosFragment;->R3(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/MediaItem;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/dbdata/beans/media/MediaItem;

.field public final synthetic b:I

.field public final synthetic c:Lcom/transsion/magicvideo/fragments/VideosFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/fragments/VideosFragment;Lcom/transsion/dbdata/beans/media/MediaItem;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$e;->c:Lcom/transsion/magicvideo/fragments/VideosFragment;

    iput-object p2, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$e;->a:Lcom/transsion/dbdata/beans/media/MediaItem;

    iput p3, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$e;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 3

    iget v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$e;->b:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$e;->c:Lcom/transsion/magicvideo/fragments/VideosFragment;

    iget-object v1, v1, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$e;->c:Lcom/transsion/magicvideo/fragments/VideosFragment;

    iget v1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$e;->b:I

    invoke-virtual {v0, v1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s1(I)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$e;->c:Lcom/transsion/magicvideo/fragments/VideosFragment;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->x1()V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x430

    invoke-virtual {v0, v2, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$e;->c:Lcom/transsion/magicvideo/fragments/VideosFragment;

    invoke-static {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->I2(Lcom/transsion/magicvideo/fragments/VideosFragment;)V

    return-void
.end method

.method public e()V
    .locals 4

    sget-boolean v0, Lpp3;->p:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x473

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lh27;->e(I[Ljava/lang/Object;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x430

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$e;->c:Lcom/transsion/magicvideo/fragments/VideosFragment;

    invoke-static {v0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->J2(Lcom/transsion/magicvideo/fragments/VideosFragment;)V

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$e;->a:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {v0, p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->c1(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$e;->c:Lcom/transsion/magicvideo/fragments/VideosFragment;

    iget-object v0, v0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$e;->a:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$e;->c:Lcom/transsion/magicvideo/fragments/VideosFragment;

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s1(I)V

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$e;->a:Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    iput-object p1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$e;->c:Lcom/transsion/magicvideo/fragments/VideosFragment;

    iget-object p1, p1, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$e;->b:I

    if-ltz v0, :cond_0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$e;->c:Lcom/transsion/magicvideo/fragments/VideosFragment;

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$e;->a:Lcom/transsion/dbdata/beans/media/MediaItem;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, v0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r1(Lcom/transsion/dbdata/beans/media/MediaItem;Ljava/lang/String;Z)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/16 p1, 0x430

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method
