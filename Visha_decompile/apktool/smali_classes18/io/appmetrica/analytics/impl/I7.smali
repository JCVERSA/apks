.class public final Lio/appmetrica/analytics/impl/I7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/modulesapi/internal/common/AskForPermissionStrategyModuleProvider;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Od;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/Od;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Od;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/I7;->a:Lio/appmetrica/analytics/impl/Od;

    return-void
.end method


# virtual methods
.method public final getAskForPermissionStrategy()Lio/appmetrica/analytics/coreapi/internal/permission/PermissionStrategy;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/I7;->a:Lio/appmetrica/analytics/impl/Od;

    return-object p0
.end method
