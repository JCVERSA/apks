.class public Lcom/transsion/magicvideo/fragments/VideoPlayListFragment$a;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;->updateShowUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment$a;->b:Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;

    iput p2, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment$a;->a:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2

    const/4 v0, 0x1

    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment$a;->b:Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;

    iget-object v1, v1, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment$a;->b:Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;

    iget-object v1, v1, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-boolean p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isTimeItem:Z

    if-eqz p1, :cond_1

    iget p0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment$a;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSpanSize error: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VideoPlayListFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0
.end method
