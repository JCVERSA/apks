.class public final Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$b;
.super Lcom/cloud/hisavana/sdk/common/tranmeasure/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field private b:Ljava/lang/ref/WeakReference;

.field final synthetic c:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$b;->c:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/a;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$b;->b:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$b;->c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/a;->a(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$b;->b:Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$b;->c:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->k0(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->m0(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
