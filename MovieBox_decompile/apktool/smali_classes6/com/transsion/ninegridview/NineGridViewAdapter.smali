.class public abstract Lcom/transsion/ninegridview/NineGridViewAdapter;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected context:Landroid/content/Context;

.field private imageInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/ninegridview/ImageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/transsion/ninegridview/ImageInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/ninegridview/NineGridViewAdapter;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/ninegridview/NineGridViewAdapter;->imageInfo:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method protected generateImageView(Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/ninegridview/NineGridViewWrapper;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/transsion/ninegridview/NineGridViewWrapper;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 9
    .line 10
    .line 11
    sget p1, Lcom/transsion/ninegridview/R$drawable;->ic_default_color:I

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public getImageInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/ninegridview/ImageInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/ninegridview/NineGridViewAdapter;->imageInfo:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method protected onImageItemClick(Landroid/content/Context;Lcom/transsion/ninegridview/NineGridView;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/transsion/ninegridview/NineGridView;",
            "I",
            "Ljava/util/List<",
            "Lcom/transsion/ninegridview/ImageInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method protected onImageItemClick(Landroid/content/Context;Lcom/transsion/ninegridview/NineGridViewNew;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/transsion/ninegridview/NineGridViewNew;",
            "I",
            "Ljava/util/List<",
            "Lcom/transsion/ninegridview/ImageInfo;",
            ">;)V"
        }
    .end annotation

    .line 2
    return-void
.end method

.method public setImageInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/ninegridview/ImageInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/ninegridview/NineGridViewAdapter;->imageInfo:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method
