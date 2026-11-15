.class public final Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->e0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$d;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$d;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d0(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v3, "interactiveEvent, eventId is "

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$d;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->y(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public b()V
    .locals 10

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$d;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d0(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "handleClick"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$d;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->V()Lcom/cloud/hisavana/sdk/k0;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    new-instance v8, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$d;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 27
    .line 28
    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->R(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)F

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$d;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 33
    .line 34
    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->T(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)F

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$d;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 39
    .line 40
    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->f0(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)F

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$d;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 45
    .line 46
    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->h0(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)F

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$d;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 51
    .line 52
    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->W(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const/4 v9, 0x0

    .line 57
    if-eqz v1, :cond_0

    .line 58
    .line 59
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    move v6, v1

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    move v6, v9

    .line 66
    :goto_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$d;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 67
    .line 68
    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->W(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    if-eqz v1, :cond_1

    .line 73
    .line 74
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    move v7, v1

    .line 79
    goto :goto_1

    .line 80
    :cond_1
    move v7, v9

    .line 81
    :goto_1
    move-object v1, v8

    .line 82
    invoke-direct/range {v1 .. v7}, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;-><init>(FFFFII)V

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$d;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 86
    .line 87
    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->W(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v0, v9, v8, v1}, Lcom/cloud/hisavana/sdk/k0;->e(ZLcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Landroid/view/View;)V

    .line 92
    .line 93
    .line 94
    :cond_2
    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$d;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d0(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "timeoutShutdown"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
