.class public final Lio/appmetrica/analytics/impl/c4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/S5;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/impl/V5;

.field public final c:Lio/appmetrica/analytics/impl/u4;

.field public final d:Lio/appmetrica/analytics/impl/gb;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/c4;->a:Landroid/content/Context;

    new-instance p1, Lio/appmetrica/analytics/impl/V5;

    new-instance v0, Lio/appmetrica/analytics/impl/x0;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/x0;-><init>()V

    new-instance v1, Lio/appmetrica/analytics/impl/v5;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/v5;-><init>()V

    invoke-direct {p1, v0, v1}, Lio/appmetrica/analytics/impl/V5;-><init>(Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenueReporter;Lio/appmetrica/analytics/impl/v5;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/c4;->b:Lio/appmetrica/analytics/impl/V5;

    new-instance p1, Lio/appmetrica/analytics/impl/u4;

    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->i()Lio/appmetrica/analytics/impl/t4;

    move-result-object v0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/c4;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/t4;->b(Landroid/content/Context;)Lio/appmetrica/analytics/impl/Ke;

    move-result-object v0

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/u4;-><init>(Lio/appmetrica/analytics/impl/Wk;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/c4;->c:Lio/appmetrica/analytics/impl/u4;

    new-instance p1, Lio/appmetrica/analytics/impl/gb;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/gb;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/c4;->d:Lio/appmetrica/analytics/impl/gb;

    return-void
.end method


# virtual methods
.method public final getClientStorageProvider()Lio/appmetrica/analytics/modulesapi/internal/client/ClientStorageProvider;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/c4;->c:Lio/appmetrica/analytics/impl/u4;

    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/c4;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final getInternalClientModuleFacade()Lio/appmetrica/analytics/modulesapi/internal/common/InternalClientModuleFacade;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/c4;->d:Lio/appmetrica/analytics/impl/gb;

    return-object p0
.end method

.method public final getModuleAdRevenueContext()Lio/appmetrica/analytics/impl/U5;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/c4;->b:Lio/appmetrica/analytics/impl/V5;

    return-object p0
.end method

.method public final getModuleAdRevenueContext()Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenueContext;
    .locals 0

    .line 2
    iget-object p0, p0, Lio/appmetrica/analytics/impl/c4;->b:Lio/appmetrica/analytics/impl/V5;

    return-object p0
.end method
