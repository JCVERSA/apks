.class public final Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$f;
.super Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->s0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$f;->b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$f;->b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->r(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$f;->b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->t(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->isAdImageRecycled()Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const/4 v0, 0x1

    .line 8
    if-ne p2, v0, :cond_0

    .line 9
    .line 10
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$f;->b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 11
    .line 12
    new-instance v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 13
    .line 14
    const-string v1, "bitmap is null"

    .line 15
    .line 16
    invoke-direct {v0, p1, v1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;-><init>(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p2, v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->r(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$f;->b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 23
    .line 24
    const/4 p2, 0x0

    .line 25
    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->t(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Z)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$f;->b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->O(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Landroid/widget/ImageView;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const/4 p2, 0x0

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move-object p1, p2

    .line 44
    :goto_0
    if-eqz p1, :cond_3

    .line 45
    .line 46
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$f;->b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->O(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Landroid/widget/ImageView;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    :cond_2
    const-string p1, "null cannot be cast to non-null type android.view.ViewGroup"

    .line 59
    .line 60
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    check-cast p2, Landroid/view/ViewGroup;

    .line 64
    .line 65
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$f;->b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 66
    .line 67
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->O(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Landroid/widget/ImageView;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 72
    .line 73
    .line 74
    :cond_3
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$f;->b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 75
    .line 76
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->M(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Landroid/widget/FrameLayout;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    if-eqz p1, :cond_4

    .line 81
    .line 82
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$f;->b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 83
    .line 84
    invoke-static {p2}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->O(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Landroid/widget/ImageView;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 89
    .line 90
    .line 91
    :cond_4
    return-void
.end method
