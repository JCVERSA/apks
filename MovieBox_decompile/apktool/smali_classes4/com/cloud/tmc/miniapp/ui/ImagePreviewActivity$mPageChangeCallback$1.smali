.class public final Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$mPageChangeCallback$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$mPageChangeCallback$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$mPageChangeCallback$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->setIndex(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$mPageChangeCallback$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->access$getTvTitle(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)Landroid/widget/TextView;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "/"

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    add-int/lit8 v2, p1, 0x1

    .line 21
    .line 22
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$mPageChangeCallback$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;

    .line 23
    .line 24
    invoke-static {v3}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->access$getAdapter(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getCount()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$mPageChangeCallback$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;

    .line 54
    .line 55
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->access$getTvPreviewTitle(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)Landroid/widget/TextView;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-nez v0, :cond_1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 63
    .line 64
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$mPageChangeCallback$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;

    .line 65
    .line 66
    invoke-static {v2}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->access$getAdapter(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getCount()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    :goto_1
    return-void
.end method
