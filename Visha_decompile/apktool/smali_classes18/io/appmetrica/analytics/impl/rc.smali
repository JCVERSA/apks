.class public final Lio/appmetrica/analytics/impl/rc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/x4;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/content/Context;Lio/appmetrica/analytics/impl/s5;Lio/appmetrica/analytics/impl/h4;Lio/appmetrica/analytics/impl/G4;)Lio/appmetrica/analytics/impl/w4;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/appmetrica/analytics/impl/rc;->b(Landroid/content/Context;Lio/appmetrica/analytics/impl/s5;Lio/appmetrica/analytics/impl/h4;Lio/appmetrica/analytics/impl/G4;)Lio/appmetrica/analytics/impl/sc;

    move-result-object p0

    return-object p0
.end method

.method public final b(Landroid/content/Context;Lio/appmetrica/analytics/impl/s5;Lio/appmetrica/analytics/impl/h4;Lio/appmetrica/analytics/impl/G4;)Lio/appmetrica/analytics/impl/sc;
    .locals 1

    new-instance p0, Lio/appmetrica/analytics/impl/tc;

    iget-object v0, p3, Lio/appmetrica/analytics/impl/h4;->b:Ljava/lang/String;

    iget-object p3, p3, Lio/appmetrica/analytics/impl/h4;->a:Ljava/lang/String;

    invoke-direct {p0, v0, p3}, Lio/appmetrica/analytics/impl/tc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Lio/appmetrica/analytics/impl/rg;

    new-instance v0, Lio/appmetrica/analytics/impl/wc;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/wc;-><init>()V

    invoke-direct {p3, v0}, Lio/appmetrica/analytics/impl/rg;-><init>(Lio/appmetrica/analytics/impl/n5;)V

    monitor-enter p2

    :try_start_0
    iget-object v0, p2, Lio/appmetrica/analytics/impl/s5;->a:Ljava/util/HashMap;

    invoke-virtual {p2, p0, p4, p3, v0}, Lio/appmetrica/analytics/impl/s5;->a(Lio/appmetrica/analytics/impl/f5;Lio/appmetrica/analytics/impl/G4;Lio/appmetrica/analytics/impl/T7;Ljava/util/HashMap;)Lio/appmetrica/analytics/impl/Na;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/qg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    new-instance p2, Lio/appmetrica/analytics/impl/sc;

    invoke-direct {p2, p1, p0}, Lio/appmetrica/analytics/impl/sc;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/qg;)V

    return-object p2

    :catchall_0
    move-exception p0

    monitor-exit p2

    throw p0
.end method
