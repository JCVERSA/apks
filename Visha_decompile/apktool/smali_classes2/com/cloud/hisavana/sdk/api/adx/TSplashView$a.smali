.class public Lcom/cloud/hisavana/sdk/api/adx/TSplashView$a;
.super Lcom/cloud/hisavana/sdk/api/adx/ViewApi$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/api/adx/TSplashView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/api/adx/TSplashView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi$a;-><init>(Lcom/cloud/hisavana/sdk/api/adx/ViewApi;)V

    return-void
.end method


# virtual methods
.method public f()Ljf7;
    .locals 1

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi$a;->a:Lcom/cloud/hisavana/sdk/api/adx/ViewApi;

    instance-of v0, p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->d(Lcom/cloud/hisavana/sdk/api/adx/TSplashView;)Ljf7;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
