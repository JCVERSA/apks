.class public Lcom/transsion/magicvideo/fragments/VideosFragment$b;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/fragments/VideosFragment;->a4()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/transsion/magicvideo/fragments/VideosFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/fragments/VideosFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$b;->b:Lcom/transsion/magicvideo/fragments/VideosFragment;

    iput p2, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$b;->a:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$b;->b:Lcom/transsion/magicvideo/fragments/VideosFragment;

    iget-object v0, v0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemViewType(I)I

    move-result v0

    const/16 v1, 0x111

    if-ne v1, v0, :cond_0

    iget p0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$b;->a:I

    return p0

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$b;->b:Lcom/transsion/magicvideo/fragments/VideosFragment;

    iget-object v0, v0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    if-lez v0, :cond_1

    add-int/lit8 p1, p1, -0x1

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$b;->b:Lcom/transsion/magicvideo/fragments/VideosFragment;

    iget-object v0, v0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-ltz p1, :cond_3

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_3

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-boolean v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isTimeItem:Z

    if-nez v0, :cond_2

    iget-boolean p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->mIsMediaTionAd:Z

    if-eqz p1, :cond_3

    :cond_2
    iget p0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$b;->a:I

    return p0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method
