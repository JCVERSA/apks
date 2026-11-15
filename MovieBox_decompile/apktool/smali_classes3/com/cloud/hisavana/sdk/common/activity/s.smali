.class public final synthetic Lcom/cloud/hisavana/sdk/common/activity/s;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/s;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/cloud/hisavana/sdk/common/activity/s;->b:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/s;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/activity/s;->b:Z

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->o(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Z)Lkotlin/Unit;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
