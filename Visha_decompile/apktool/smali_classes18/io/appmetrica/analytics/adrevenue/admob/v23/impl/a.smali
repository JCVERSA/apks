.class public final Lio/appmetrica/analytics/adrevenue/admob/v23/impl/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenueProcessor;


# instance fields
.field public final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/adrevenue/admob/v23/impl/d;Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;)V
    .locals 1
    .param p1    # Lio/appmetrica/analytics/adrevenue/admob/v23/impl/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/adrevenue/admob/v23/impl/a;->a:Ljava/util/ArrayList;

    new-instance p0, Lio/appmetrica/analytics/adrevenue/admob/v23/impl/f;

    invoke-direct {p0, p1, p2}, Lio/appmetrica/analytics/adrevenue/admob/v23/impl/f;-><init>(Lio/appmetrica/analytics/adrevenue/admob/v23/impl/d;Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lio/appmetrica/analytics/adrevenue/admob/v23/impl/h;

    invoke-direct {p0, p1, p2}, Lio/appmetrica/analytics/adrevenue/admob/v23/impl/h;-><init>(Lio/appmetrica/analytics/adrevenue/admob/v23/impl/d;Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lio/appmetrica/analytics/adrevenue/admob/v23/impl/i;

    invoke-direct {p0, p1, p2}, Lio/appmetrica/analytics/adrevenue/admob/v23/impl/i;-><init>(Lio/appmetrica/analytics/adrevenue/admob/v23/impl/d;Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lio/appmetrica/analytics/adrevenue/admob/v23/impl/j;

    invoke-direct {p0, p1, p2}, Lio/appmetrica/analytics/adrevenue/admob/v23/impl/j;-><init>(Lio/appmetrica/analytics/adrevenue/admob/v23/impl/d;Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lio/appmetrica/analytics/adrevenue/admob/v23/impl/k;

    invoke-direct {p0, p1, p2}, Lio/appmetrica/analytics/adrevenue/admob/v23/impl/k;-><init>(Lio/appmetrica/analytics/adrevenue/admob/v23/impl/d;Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lio/appmetrica/analytics/adrevenue/admob/v23/impl/e;

    invoke-direct {p0, p1, p2}, Lio/appmetrica/analytics/adrevenue/admob/v23/impl/e;-><init>(Lio/appmetrica/analytics/adrevenue/admob/v23/impl/d;Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string p0, "AdMob"

    return-object p0
.end method

.method public final varargs process([Ljava/lang/Object;)Z
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/adrevenue/admob/v23/impl/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenueProcessor;

    invoke-interface {v0, p1}, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenueProcessor;->process([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
