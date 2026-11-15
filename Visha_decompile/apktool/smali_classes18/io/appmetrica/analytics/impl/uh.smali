.class public final Lio/appmetrica/analytics/impl/uh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/x4;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/n5;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/n5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/n5;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/uh;->a:Lio/appmetrica/analytics/impl/n5;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/content/Context;Lio/appmetrica/analytics/impl/s5;Lio/appmetrica/analytics/impl/h4;Lio/appmetrica/analytics/impl/G4;)Lio/appmetrica/analytics/impl/w4;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/appmetrica/analytics/impl/uh;->b(Landroid/content/Context;Lio/appmetrica/analytics/impl/s5;Lio/appmetrica/analytics/impl/h4;Lio/appmetrica/analytics/impl/G4;)Lio/appmetrica/analytics/impl/pg;

    move-result-object p0

    return-object p0
.end method

.method public final b(Landroid/content/Context;Lio/appmetrica/analytics/impl/s5;Lio/appmetrica/analytics/impl/h4;Lio/appmetrica/analytics/impl/G4;)Lio/appmetrica/analytics/impl/pg;
    .locals 2

    new-instance v0, Lio/appmetrica/analytics/impl/f5;

    iget-object v1, p3, Lio/appmetrica/analytics/impl/h4;->b:Ljava/lang/String;

    iget-object p3, p3, Lio/appmetrica/analytics/impl/h4;->a:Ljava/lang/String;

    invoke-direct {v0, v1, p3}, Lio/appmetrica/analytics/impl/f5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Lio/appmetrica/analytics/impl/rg;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/uh;->a:Lio/appmetrica/analytics/impl/n5;

    invoke-direct {p3, p0}, Lio/appmetrica/analytics/impl/rg;-><init>(Lio/appmetrica/analytics/impl/n5;)V

    monitor-enter p2

    :try_start_0
    iget-object p0, p2, Lio/appmetrica/analytics/impl/s5;->a:Ljava/util/HashMap;

    invoke-virtual {p2, v0, p4, p3, p0}, Lio/appmetrica/analytics/impl/s5;->a(Lio/appmetrica/analytics/impl/f5;Lio/appmetrica/analytics/impl/G4;Lio/appmetrica/analytics/impl/T7;Ljava/util/HashMap;)Lio/appmetrica/analytics/impl/Na;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/qg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    new-instance p2, Lio/appmetrica/analytics/impl/pg;

    invoke-direct {p2, p1, p0}, Lio/appmetrica/analytics/impl/pg;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/qg;)V

    return-object p2

    :catchall_0
    move-exception p0

    monitor-exit p2

    throw p0
.end method
