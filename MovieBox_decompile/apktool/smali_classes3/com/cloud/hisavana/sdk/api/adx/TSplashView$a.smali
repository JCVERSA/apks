.class Lcom/cloud/hisavana/sdk/api/adx/TSplashView$a;
.super Lcom/cloud/hisavana/sdk/api/adx/ViewApi$a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/api/adx/TSplashView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/api/adx/TSplashView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi$a;-><init>(Lcom/cloud/hisavana/sdk/api/adx/ViewApi;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public f()Lcom/cloud/hisavana/sdk/api/listener/g;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi$a;->a:Lcom/cloud/hisavana/sdk/api/adx/ViewApi;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->c(Lcom/cloud/hisavana/sdk/api/adx/TSplashView;)Lcom/cloud/hisavana/sdk/api/listener/g;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return-object v0
.end method
