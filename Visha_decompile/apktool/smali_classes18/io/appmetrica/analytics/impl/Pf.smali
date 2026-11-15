.class public final Lio/appmetrica/analytics/impl/Pf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/hg;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/Rf;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Rf;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Pf;->a:Lio/appmetrica/analytics/impl/Rf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/cg;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Pf;->a:Lio/appmetrica/analytics/impl/Rf;

    .line 2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Rf;->e:Lyi5;

    .line 3
    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/Jf;

    .line 4
    invoke-static {p0, p1, v0}, Lio/appmetrica/analytics/impl/Rf;->a(Lio/appmetrica/analytics/impl/Rf;Lio/appmetrica/analytics/impl/cg;Lio/appmetrica/analytics/impl/Jf;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 5
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Pf;->a:Lio/appmetrica/analytics/impl/Rf;

    .line 6
    iget-object p1, p0, Lio/appmetrica/analytics/impl/Rf;->e:Lyi5;

    .line 7
    invoke-interface {p1}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/appmetrica/analytics/impl/Jf;

    const/4 v0, 0x0

    .line 8
    invoke-static {p0, v0, p1}, Lio/appmetrica/analytics/impl/Rf;->a(Lio/appmetrica/analytics/impl/Rf;Lio/appmetrica/analytics/impl/cg;Lio/appmetrica/analytics/impl/Jf;)V

    return-void
.end method
