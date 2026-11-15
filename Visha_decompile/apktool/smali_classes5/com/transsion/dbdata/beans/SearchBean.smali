.class public Lcom/transsion/dbdata/beans/SearchBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mItemType:I

.field private mMediaBucket:Lcom/transsion/dbdata/beans/media/MediaBucket;

.field private mediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/transsion/dbdata/beans/SearchBean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/transsion/dbdata/beans/SearchBean;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/SearchBean;->mediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/SearchBean;->mediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    if-ne p1, p0, :cond_2

    move v1, v0

    :cond_2
    return v1
.end method

.method public getItemType()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/SearchBean;->mItemType:I

    return p0
.end method

.method public getMediaBucket()Lcom/transsion/dbdata/beans/media/MediaBucket;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/SearchBean;->mMediaBucket:Lcom/transsion/dbdata/beans/media/MediaBucket;

    return-object p0
.end method

.method public getMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/SearchBean;->mediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    return-object p0
.end method

.method public setItemType(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/SearchBean;->mItemType:I

    return-void
.end method

.method public setMediaBucket(Lcom/transsion/dbdata/beans/media/MediaBucket;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/SearchBean;->mMediaBucket:Lcom/transsion/dbdata/beans/media/MediaBucket;

    return-void
.end method

.method public setMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/SearchBean;->mediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    return-void
.end method
