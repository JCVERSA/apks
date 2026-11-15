.class public Lcom/transsion/ninegridview/video/NineGridVideoViewAdapter;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\u0015\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eJ.\u0010\u000f\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\n2\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/transsion/ninegridview/video/NineGridVideoViewAdapter;",
        "Ljava/io/Serializable;",
        "imageList",
        "",
        "Lcom/transsion/moviedetailapi/bean/Image;",
        "<init>",
        "(Ljava/util/List;)V",
        "getImageList",
        "()Ljava/util/List;",
        "statusHeight",
        "",
        "generateItemView",
        "Lcom/transsion/ninegridview/video/NineGridItemView;",
        "context",
        "Landroid/content/Context;",
        "onItemClick",
        "",
        "nineGridVideoView",
        "Lcom/transsion/ninegridview/video/NineGridVideoView;",
        "index",
        "NineGridView_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private final imageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/Image;",
            ">;"
        }
    .end annotation
.end field

.field private statusHeight:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/Image;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "imageList"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/transsion/ninegridview/video/NineGridVideoViewAdapter;->imageList:Ljava/util/List;

    .line 10
    .line 11
    invoke-static {}, Lcom/blankj/utilcode/util/d;->c()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iput p1, p0, Lcom/transsion/ninegridview/video/NineGridVideoViewAdapter;->statusHeight:I

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final generateItemView(Landroid/content/Context;)Lcom/transsion/ninegridview/video/NineGridItemView;
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsion/ninegridview/video/NineGridItemView;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/transsion/ninegridview/video/NineGridItemView;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final getImageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/Image;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/ninegridview/video/NineGridVideoViewAdapter;->imageList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final onItemClick(Landroid/content/Context;Lcom/transsion/ninegridview/video/NineGridVideoView;ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/transsion/ninegridview/video/NineGridVideoView;",
            "I",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/Image;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "nineGridVideoView"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroid/content/Intent;

    .line 12
    .line 13
    const-class v1, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;

    .line 14
    .line 15
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 16
    .line 17
    .line 18
    if-eqz p4, :cond_0

    .line 19
    .line 20
    move-object v1, p4

    .line 21
    check-cast v1, Ljava/lang/Iterable;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lcom/transsion/moviedetailapi/bean/Image;

    .line 38
    .line 39
    const/4 v3, 0x2

    .line 40
    new-array v3, v3, [I

    .line 41
    .line 42
    invoke-virtual {p2, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 43
    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    aget v4, v3, v4

    .line 47
    .line 48
    invoke-virtual {v2, v4}, Lcom/transsion/moviedetailapi/bean/Image;->setImageViewX(I)V

    .line 49
    .line 50
    .line 51
    const/4 v4, 0x1

    .line 52
    aget v3, v3, v4

    .line 53
    .line 54
    iget v4, p0, Lcom/transsion/ninegridview/video/NineGridVideoViewAdapter;->statusHeight:I

    .line 55
    .line 56
    sub-int/2addr v3, v4

    .line 57
    invoke-virtual {v2, v3}, Lcom/transsion/moviedetailapi/bean/Image;->setImageViewY(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    int-to-float v3, v3

    .line 65
    invoke-virtual {v2, v3}, Lcom/transsion/moviedetailapi/bean/Image;->setImageViewHeight(F)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    int-to-float v3, v3

    .line 73
    invoke-virtual {v2, v3}, Lcom/transsion/moviedetailapi/bean/Image;->setImageViewWidth(F)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    const-string p2, "null cannot be cast to non-null type java.io.Serializable"

    .line 78
    .line 79
    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    check-cast p4, Ljava/io/Serializable;

    .line 83
    .line 84
    const-string p2, "image_list"

    .line 85
    .line 86
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 87
    .line 88
    .line 89
    const-string p2, "CURRENT_ITEM"

    .line 90
    .line 91
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method
