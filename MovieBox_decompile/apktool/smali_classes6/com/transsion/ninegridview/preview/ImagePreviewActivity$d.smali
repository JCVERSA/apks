.class public final Lcom/transsion/ninegridview/preview/ImagePreviewActivity$d;
.super Landroidx/viewpager/widget/ViewPager$k;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/ninegridview/preview/ImagePreviewActivity;

.field final synthetic b:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/transsion/ninegridview/preview/ImagePreviewActivity;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity$d;->a:Lcom/transsion/ninegridview/preview/ImagePreviewActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity$d;->b:Landroid/widget/TextView;

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$k;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity$d;->a:Lcom/transsion/ninegridview/preview/ImagePreviewActivity;

    .line 3
    .line 4
    invoke-static {v1, p1}, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->access$setCurrentItem$p(Lcom/transsion/ninegridview/preview/ImagePreviewActivity;I)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity$d;->b:Landroid/widget/TextView;

    .line 8
    .line 9
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity$d;->a:Lcom/transsion/ninegridview/preview/ImagePreviewActivity;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->access$getCurrentItem$p(Lcom/transsion/ninegridview/preview/ImagePreviewActivity;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x1

    .line 18
    add-int/2addr v1, v2

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v3, p0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity$d;->a:Lcom/transsion/ninegridview/preview/ImagePreviewActivity;

    .line 24
    .line 25
    invoke-static {v3}, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->access$getImageInfoList$p(Lcom/transsion/ninegridview/preview/ImagePreviewActivity;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    const-string v3, "imageInfoList"

    .line 32
    .line 33
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    new-array v4, v0, [Ljava/lang/Object;

    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    aput-object v1, v4, v5

    .line 49
    .line 50
    aput-object v3, v4, v2

    .line 51
    .line 52
    invoke-static {v4, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v1, "%d/%d"

    .line 57
    .line 58
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-string v1, "format(...)"

    .line 63
    .line 64
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method
