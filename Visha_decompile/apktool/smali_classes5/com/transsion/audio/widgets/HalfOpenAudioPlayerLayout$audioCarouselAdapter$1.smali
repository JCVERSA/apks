.class public final Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$audioCarouselAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audio/widgets/AudioCarousel$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\t\u001a\u00020\u00082\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\r\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "com/transsion/audio/widgets/HalfOpenAudioPlayerLayout$audioCarouselAdapter$1",
        "Lcom/transsion/audio/widgets/AudioCarousel$Adapter;",
        "",
        "count",
        "()I",
        "Landroid/view/View;",
        "view",
        "index",
        "Lzfb;",
        "populate",
        "(Landroid/view/View;I)V",
        "onNewItem",
        "(I)V",
        "onOldItem",
        "audio_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$audioCarouselAdapter$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Lzfb;
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$audioCarouselAdapter$1;->populate$lambda$0(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method private static final populate$lambda$0(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Lzfb;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$setBeingAnimation(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$setAnimComplete$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;J)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method


# virtual methods
.method public count()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$audioCarouselAdapter$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getPlayList$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public onNewItem(I)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$audioCarouselAdapter$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {v0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getPlayManager$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->P()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$audioCarouselAdapter$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {v1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getPlayList$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v0, :cond_0

    iget v4, v4, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget v5, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    :goto_1
    if-eq p1, v3, :cond_2

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$audioCarouselAdapter$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {v0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getErrorNextRunnable$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$audioCarouselAdapter$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {v0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getPlayManager$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$audioCarouselAdapter$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getPlayList$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {v0, p0, v2}, Lcom/transsion/audio/player/MusicPlayManager;->P0(Lcom/transsion/dbdata/beans/media/AudioItem;Z)V

    :cond_2
    return-void
.end method

.method public onOldItem(I)V
    .locals 0

    return-void
.end method

.method public populate(Landroid/view/View;I)V
    .locals 4

    if-eqz p1, :cond_4

    instance-of v0, p1, Lcom/transsion/audio/widgets/AudioPlayerItemView;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    check-cast p1, Lcom/transsion/audio/widgets/AudioPlayerItemView;

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$audioCarouselAdapter$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {v0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getPlayList$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$audioCarouselAdapter$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {v1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getCarousel$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Lcom/transsion/audio/widgets/AudioCarousel;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "carousel"

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v1}, Lcom/transsion/audio/widgets/AudioCarousel;->getCurrentIndex()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p2, v1, :cond_2

    move p2, v3

    goto :goto_0

    :cond_2
    move p2, v2

    :goto_0
    invoke-virtual {p1, v0, p2}, Lcom/transsion/audio/widgets/AudioPlayerItemView;->setCoverAlbum(Lcom/transsion/dbdata/beans/media/AudioItem;Z)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    sget v0, Lcom/transsion/audio/R$id;->audioItem2:I

    if-ne p2, v0, :cond_3

    move v2, v3

    :cond_3
    iget-object p2, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$audioCarouselAdapter$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    new-instance v0, Lon4;

    invoke-direct {v0, p2}, Lon4;-><init>(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V

    invoke-virtual {p1, v2, v0}, Lcom/transsion/audio/widgets/AudioPlayerItemView;->setPlayState(ZLc74;)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$audioCarouselAdapter$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->isAudioPlaying()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$playStatusChange(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Z)V

    :cond_4
    :goto_1
    return-void
.end method
