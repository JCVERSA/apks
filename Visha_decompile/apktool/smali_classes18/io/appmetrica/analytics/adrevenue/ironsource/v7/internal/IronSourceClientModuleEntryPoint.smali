.class public Lio/appmetrica/analytics/adrevenue/ironsource/v7/internal/IronSourceClientModuleEntryPoint;
.super Lio/appmetrica/analytics/modulesapi/internal/client/ModuleClientEntryPoint;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/appmetrica/analytics/modulesapi/internal/client/ModuleClientEntryPoint<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lio/appmetrica/analytics/modulesapi/internal/client/ModuleClientEntryPoint;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/appmetrica/analytics/adrevenue/ironsource/v7/internal/IronSourceClientModuleEntryPoint;->a:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;

    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string p0, "ad-revenue-ironsource-v7"

    return-object p0
.end method

.method public initClientSide(Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;)V
    .locals 0
    .param p1    # Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lio/appmetrica/analytics/adrevenue/ironsource/v7/internal/IronSourceClientModuleEntryPoint;->a:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;

    return-void
.end method

.method public onActivated()V
    .locals 1

    const-string v0, "com.ironsource.mediationsdk.IronSource"

    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/reflection/ReflectionUtils;->detectClassExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/appmetrica/analytics/adrevenue/ironsource/v7/internal/IronSourceClientModuleEntryPoint;->a:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;

    if-eqz p0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/adrevenue/ironsource/v7/impl/c;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/adrevenue/ironsource/v7/impl/c;-><init>(Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;)V

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->addImpressionDataListener(Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;)V

    :cond_0
    return-void
.end method
