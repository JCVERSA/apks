.class public final Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$g;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;


# direct methods
.method constructor <init>(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$g;->a:Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$g;->b(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final b(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;I)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->access$getItemView(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->access$getMPageChange$p(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;)Lcom/transsion/ninegridview/preview/r;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-static {p1}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->access$getImageList$p(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lcom/transsion/moviedetailapi/bean/Image;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    :goto_0
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p0, Landroid/view/View;

    .line 30
    .line 31
    invoke-virtual {v0, p2, p1, p0}, Lcom/transsion/ninegridview/preview/r;->f(ILcom/transsion/moviedetailapi/bean/Image;Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$g;->a:Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->access$setCurrentItemIndex$p(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$g;->a:Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->access$showPageIndex(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$g;->a:Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->access$getImageList$p(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/transsion/moviedetailapi/bean/Image;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v0, v1

    .line 28
    :goto_0
    if-eqz v0, :cond_3

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Image;->getGifBean()Lcom/transsion/moviedetailapi/bean/GifBean;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/GifBean;->getVideoUrl()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-lez v0, :cond_3

    .line 47
    .line 48
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 49
    .line 50
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$g;->a:Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;

    .line 54
    .line 55
    invoke-static {v2}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->access$getItemView(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    iput-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 60
    .line 61
    if-nez v2, :cond_1

    .line 62
    .line 63
    iget-object v1, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$g;->a:Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;

    .line 64
    .line 65
    invoke-static {v1}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->access$getHandler$p(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;)Landroid/os/Handler;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iget-object v2, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$g;->a:Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;

    .line 70
    .line 71
    new-instance v3, Lcom/transsion/ninegridview/preview/b;

    .line 72
    .line 73
    invoke-direct {v3, v0, v2, p1}, Lcom/transsion/ninegridview/preview/b;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;I)V

    .line 74
    .line 75
    .line 76
    const-wide/16 v4, 0xc8

    .line 77
    .line 78
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    iget-object v2, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$g;->a:Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;

    .line 83
    .line 84
    invoke-static {v2}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->access$getMPageChange$p(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;)Lcom/transsion/ninegridview/preview/r;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    if-eqz v2, :cond_3

    .line 89
    .line 90
    iget-object v3, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$g;->a:Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;

    .line 91
    .line 92
    invoke-static {v3}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->access$getImageList$p(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;)Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    if-eqz v3, :cond_2

    .line 97
    .line 98
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    check-cast v1, Lcom/transsion/moviedetailapi/bean/Image;

    .line 103
    .line 104
    :cond_2
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v0, Landroid/view/View;

    .line 107
    .line 108
    invoke-virtual {v2, p1, v1, v0}, Lcom/transsion/ninegridview/preview/r;->f(ILcom/transsion/moviedetailapi/bean/Image;Landroid/view/View;)V

    .line 109
    .line 110
    .line 111
    :cond_3
    :goto_1
    return-void
.end method
