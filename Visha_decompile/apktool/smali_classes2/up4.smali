.class public final synthetic Lup4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final synthetic c:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

.field public final synthetic d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;


# direct methods
.method public synthetic constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lup4;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lup4;->c:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    iput-object p3, p0, Lup4;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lup4;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, p0, Lup4;->c:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    iget-object p0, p0, Lup4;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v0, v1, p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->f(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method
