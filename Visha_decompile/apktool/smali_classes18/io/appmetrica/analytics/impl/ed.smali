.class public final Lio/appmetrica/analytics/impl/ed;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/modulesapi/internal/common/ModuleSelfReporter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Fj;

.field public final b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lio/appmetrica/analytics/impl/q1;->a()Lio/appmetrica/analytics/impl/Fj;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/ed;->a:Lio/appmetrica/analytics/impl/Fj;

    const/4 v0, 0x4

    iput v0, p0, Lio/appmetrica/analytics/impl/ed;->b:I

    return-void
.end method


# virtual methods
.method public final reportError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    iget-object p0, p0, Lio/appmetrica/analytics/impl/ed;->a:Lio/appmetrica/analytics/impl/Fj;

    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/impl/Fj;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final reportError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/ed;->a:Lio/appmetrica/analytics/impl/Fj;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v0, Lio/appmetrica/analytics/impl/fj;

    invoke-direct {v0, p1, p2}, Lio/appmetrica/analytics/impl/fj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Fj;->a(Lio/appmetrica/analytics/impl/Xa;)V

    return-void
.end method

.method public final reportEvent(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 17
    iget-object p0, p0, Lio/appmetrica/analytics/impl/ed;->a:Lio/appmetrica/analytics/impl/Fj;

    .line 18
    invoke-static {p1}, Lio/appmetrica/analytics/ModuleEvent;->newBuilder(I)Lio/appmetrica/analytics/ModuleEvent$Builder;

    move-result-object p1

    .line 19
    invoke-virtual {p1, p2}, Lio/appmetrica/analytics/ModuleEvent$Builder;->withName(Ljava/lang/String;)Lio/appmetrica/analytics/ModuleEvent$Builder;

    move-result-object p1

    .line 20
    invoke-virtual {p1, p3}, Lio/appmetrica/analytics/ModuleEvent$Builder;->withValue(Ljava/lang/String;)Lio/appmetrica/analytics/ModuleEvent$Builder;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lio/appmetrica/analytics/ModuleEvent$Builder;->build()Lio/appmetrica/analytics/ModuleEvent;

    move-result-object p1

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    new-instance p2, Lio/appmetrica/analytics/impl/uj;

    invoke-direct {p2, p1}, Lio/appmetrica/analytics/impl/uj;-><init>(Lio/appmetrica/analytics/ModuleEvent;)V

    invoke-virtual {p0, p2}, Lio/appmetrica/analytics/impl/Fj;->a(Lio/appmetrica/analytics/impl/Xa;)V

    return-void
.end method

.method public final reportEvent(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ed;->a:Lio/appmetrica/analytics/impl/Fj;

    iget p0, p0, Lio/appmetrica/analytics/impl/ed;->b:I

    invoke-static {p0}, Lio/appmetrica/analytics/ModuleEvent;->newBuilder(I)Lio/appmetrica/analytics/ModuleEvent$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/ModuleEvent$Builder;->withName(Ljava/lang/String;)Lio/appmetrica/analytics/ModuleEvent$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/ModuleEvent$Builder;->build()Lio/appmetrica/analytics/ModuleEvent;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance p1, Lio/appmetrica/analytics/impl/uj;

    invoke-direct {p1, p0}, Lio/appmetrica/analytics/impl/uj;-><init>(Lio/appmetrica/analytics/ModuleEvent;)V

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/Fj;->a(Lio/appmetrica/analytics/impl/Xa;)V

    return-void
.end method

.method public final reportEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ed;->a:Lio/appmetrica/analytics/impl/Fj;

    .line 11
    iget p0, p0, Lio/appmetrica/analytics/impl/ed;->b:I

    invoke-static {p0}, Lio/appmetrica/analytics/ModuleEvent;->newBuilder(I)Lio/appmetrica/analytics/ModuleEvent$Builder;

    move-result-object p0

    .line 12
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/ModuleEvent$Builder;->withName(Ljava/lang/String;)Lio/appmetrica/analytics/ModuleEvent$Builder;

    move-result-object p0

    .line 13
    invoke-virtual {p0, p2}, Lio/appmetrica/analytics/ModuleEvent$Builder;->withValue(Ljava/lang/String;)Lio/appmetrica/analytics/ModuleEvent$Builder;

    move-result-object p0

    .line 14
    invoke-virtual {p0}, Lio/appmetrica/analytics/ModuleEvent$Builder;->build()Lio/appmetrica/analytics/ModuleEvent;

    move-result-object p0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    new-instance p1, Lio/appmetrica/analytics/impl/uj;

    invoke-direct {p1, p0}, Lio/appmetrica/analytics/impl/uj;-><init>(Lio/appmetrica/analytics/ModuleEvent;)V

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/Fj;->a(Lio/appmetrica/analytics/impl/Xa;)V

    return-void
.end method

.method public final reportEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ed;->a:Lio/appmetrica/analytics/impl/Fj;

    .line 4
    iget p0, p0, Lio/appmetrica/analytics/impl/ed;->b:I

    invoke-static {p0}, Lio/appmetrica/analytics/ModuleEvent;->newBuilder(I)Lio/appmetrica/analytics/ModuleEvent$Builder;

    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/ModuleEvent$Builder;->withName(Ljava/lang/String;)Lio/appmetrica/analytics/ModuleEvent$Builder;

    move-result-object p0

    .line 6
    invoke-virtual {p0, p2}, Lio/appmetrica/analytics/ModuleEvent$Builder;->withAttributes(Ljava/util/Map;)Lio/appmetrica/analytics/ModuleEvent$Builder;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lio/appmetrica/analytics/ModuleEvent$Builder;->build()Lio/appmetrica/analytics/ModuleEvent;

    move-result-object p0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    new-instance p1, Lio/appmetrica/analytics/impl/uj;

    invoke-direct {p1, p0}, Lio/appmetrica/analytics/impl/uj;-><init>(Lio/appmetrica/analytics/ModuleEvent;)V

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/Fj;->a(Lio/appmetrica/analytics/impl/Xa;)V

    return-void
.end method
