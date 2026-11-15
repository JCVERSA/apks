.class public Lcom/transsion/audio/MediaBucketDiffCallBack;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/List;

.field public b:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    iput-object p1, p0, Lcom/transsion/audio/MediaBucketDiffCallBack;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/transsion/audio/MediaBucketDiffCallBack;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 4

    iget-object v0, p0, Lcom/transsion/audio/MediaBucketDiffCallBack;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaBucket;

    iget-object p0, p0, Lcom/transsion/audio/MediaBucketDiffCallBack;->b:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/MediaBucket;

    iget-wide v0, p1, Lcom/transsion/dbdata/beans/media/MediaBucket;->bucketId:J

    iget-wide v2, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->bucketId:J

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    iget p2, p1, Lcom/transsion/dbdata/beans/media/MediaBucket;->count:I

    iget v0, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->count:I

    if-ne p2, v0, :cond_0

    iget p2, p1, Lcom/transsion/dbdata/beans/media/MediaBucket;->uriType:I

    iget v0, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->uriType:I

    if-ne p2, v0, :cond_0

    iget-object p2, p1, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentName:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaBucket;->uri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->uri:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public areItemsTheSame(II)Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/MediaBucketDiffCallBack;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaBucket;

    iget-wide v0, p1, Lcom/transsion/dbdata/beans/media/MediaBucket;->bucketId:J

    iget-object p0, p0, Lcom/transsion/audio/MediaBucketDiffCallBack;->b:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/MediaBucket;

    iget-wide p0, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->bucketId:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getNewListSize()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/MediaBucketDiffCallBack;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getOldListSize()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/MediaBucketDiffCallBack;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
