.class public final synthetic Lcom/cloud/hisavana/sdk/common/activity/f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final synthetic b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

.field public final synthetic c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;


# direct methods
.method public synthetic constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/f;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/activity/f;->b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/cloud/hisavana/sdk/common/activity/f;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/f;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/f;->b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/f;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->f(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
