.class public final Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFailed(I)V
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity;

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/b;->j(I)V

    return-void
.end method

.method public onPageStart()V
    .locals 0

    return-void
.end method

.method public onProgressChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity;

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity;->x(Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity;I)V

    return-void
.end method

.method public onReceivedTitle(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity;

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity;->y(Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity;Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity;

    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/activity/b;->g(Ljava/lang/String;Z)Z

    return-void
.end method
