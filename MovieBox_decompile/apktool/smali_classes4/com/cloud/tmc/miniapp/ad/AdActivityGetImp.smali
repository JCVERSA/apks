.class public final Lcom/cloud/tmc/miniapp/ad/AdActivityGetImp;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/proxy/IAdActivityGetProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getAdFormActivity()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdLandingPageActivity()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/cloud/tmc/miniapp/ad/WebviewAdLandingPageActivity;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdPersonalizationActivity()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity;

    .line 2
    .line 3
    return-object v0
.end method
