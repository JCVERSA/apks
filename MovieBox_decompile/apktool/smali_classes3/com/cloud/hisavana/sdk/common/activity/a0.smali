.class public final synthetic Lcom/cloud/hisavana/sdk/common/activity/a0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

.field public final synthetic b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/a0;->a:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/activity/a0;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/a0;->a:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/a0;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->p(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
