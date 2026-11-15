.class public final Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/magicvideo/player/VideoPlayManager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$i;->b:Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayItemChanged(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager$d;->onPlayItemChanged(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$i;->b:Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->b0()V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$i;->b:Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;

    invoke-virtual {v1, p1}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->setMCurrentMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$i;->b:Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;

    invoke-static {v1, p1}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->access$updateTitleInfo(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/magicvideo/player/VideoPlayManager;->G:Z

    if-eqz v1, :cond_0

    sput-object p1, Lcom/transsion/playercommon/adapter/SearchResultAdapter;->u:Lcom/transsion/dbdata/beans/media/MediaItem;

    goto :goto_0

    :cond_0
    sput-object v0, Lcom/transsion/playercommon/adapter/SearchResultAdapter;->u:Lcom/transsion/dbdata/beans/media/MediaItem;

    :goto_0
    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$i;->b:Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;

    invoke-virtual {v1, p1}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->loadPlayBackground(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    :cond_1
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$i;->b:Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;

    const-wide/16 v1, 0x0

    const/4 p1, 0x1

    invoke-static {p0, v1, v2, p1, v0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->setViewPagerAdapter$default(Lcom/transsion/playercommon/widgets/BaseBottomBar;JILjava/lang/Object;)V

    return-void
.end method

.method public onPlayListLoadFinished(Ljava/util/ArrayList;)V
    .locals 0

    const-string p0, "arrayList"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onPlayerStateUpdate(I)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$i;->b:Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;

    invoke-static {v0, p1}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->access$setMPlayerState$p(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$i;->b:Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->b0()V

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/magicvideo/player/VideoPlayManager;->G:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    const/16 v1, 0x406

    const/4 v2, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    sput v0, Laf9;->a:I

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$i;->b:Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;

    invoke-virtual {p0, v2}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->runMusicProgressUpdate(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$i;->b:Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->access$getMIsStart$p(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$i;->b:Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;

    invoke-virtual {p0, v2}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->runMusicProgressUpdate(Z)V

    :cond_1
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
