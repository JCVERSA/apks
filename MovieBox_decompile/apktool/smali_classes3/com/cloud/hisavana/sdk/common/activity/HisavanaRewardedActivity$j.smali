.class public final Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$j;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->B(J)V
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
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$j;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$j;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->V()Lcom/cloud/hisavana/sdk/k0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/k0;->j()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$j;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->E(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Z)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onTick(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$j;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->p(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
