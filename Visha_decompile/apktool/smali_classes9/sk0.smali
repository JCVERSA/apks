.class public final synthetic Lsk0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/DragStartHelper$OnDragStartListener;


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

.field public final synthetic b:Lcom/chad/library/adapter/base/BaseViewHolder;

.field public final synthetic c:Lcom/transsion/dbdata/beans/media/MediaItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/adapter/BucketDateAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk0;->a:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    iput-object p2, p0, Lsk0;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    iput-object p3, p0, Lsk0;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    return-void
.end method


# virtual methods
.method public final onDragStart(Landroid/view/View;Landroidx/core/view/DragStartHelper;)Z
    .locals 2

    iget-object v0, p0, Lsk0;->a:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    iget-object v1, p0, Lsk0;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object p0, p0, Lsk0;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->k(Lcom/transsion/magicvideo/adapter/BucketDateAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/media/MediaItem;Landroid/view/View;Landroidx/core/view/DragStartHelper;)Z

    move-result p0

    return p0
.end method
