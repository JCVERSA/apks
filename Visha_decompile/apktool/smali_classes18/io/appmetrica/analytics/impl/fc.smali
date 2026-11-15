.class public final Lio/appmetrica/analytics/impl/fc;
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

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/appmetrica/analytics/impl/fc;->b(Landroid/content/Context;Lio/appmetrica/analytics/impl/s5;Lio/appmetrica/analytics/impl/h4;Lio/appmetrica/analytics/impl/G4;)Lio/appmetrica/analytics/impl/L4;

    move-result-object p0

    return-object p0
.end method

.method public final b(Landroid/content/Context;Lio/appmetrica/analytics/impl/s5;Lio/appmetrica/analytics/impl/h4;Lio/appmetrica/analytics/impl/G4;)Lio/appmetrica/analytics/impl/L4;
    .locals 1

    new-instance p0, Lio/appmetrica/analytics/impl/M4;

    iget-object p3, p3, Lio/appmetrica/analytics/impl/h4;->b:Ljava/lang/String;

    invoke-direct {p0, p3}, Lio/appmetrica/analytics/impl/M4;-><init>(Ljava/lang/String;)V

    new-instance p3, Lio/appmetrica/analytics/impl/P4;

    invoke-direct {p3}, Lio/appmetrica/analytics/impl/P4;-><init>()V

    monitor-enter p2

    :try_start_0
    iget-object v0, p2, Lio/appmetrica/analytics/impl/s5;->b:Ljava/util/HashMap;

    invoke-virtual {p2, p0, p4, p3, v0}, Lio/appmetrica/analytics/impl/s5;->a(Lio/appmetrica/analytics/impl/f5;Lio/appmetrica/analytics/impl/G4;Lio/appmetrica/analytics/impl/T7;Ljava/util/HashMap;)Lio/appmetrica/analytics/impl/Na;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/O4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    new-instance p2, Lio/appmetrica/analytics/impl/L4;

    invoke-direct {p2, p1, p0, p4}, Lio/appmetrica/analytics/impl/L4;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/O4;Lio/appmetrica/analytics/impl/G4;)V

    return-object p2

    :catchall_0
    move-exception p0

    monitor-exit p2

    throw p0
.end method
