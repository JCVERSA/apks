.class public final Lio/appmetrica/analytics/location/impl/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field public final a:Lio/appmetrica/analytics/location/impl/p;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/location/impl/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/location/impl/n;->a:Lio/appmetrica/analytics/location/impl/p;

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 8

    if-eqz p1, :cond_7

    iget-object p0, p0, Lio/appmetrica/analytics/location/impl/n;->a:Lio/appmetrica/analytics/location/impl/p;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/location/impl/p;->e:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/location/impl/t;

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/appmetrica/analytics/location/impl/p;->a:Lio/appmetrica/analytics/location/impl/i;

    iget-object v1, v1, Lio/appmetrica/analytics/location/impl/i;->a:Lio/appmetrica/analytics/locationapi/internal/LocationFilter;

    new-instance v2, Lio/appmetrica/analytics/location/impl/t;

    invoke-direct {v2, v1}, Lio/appmetrica/analytics/location/impl/t;-><init>(Lio/appmetrica/analytics/locationapi/internal/LocationFilter;)V

    iget-object v1, p0, Lio/appmetrica/analytics/location/impl/p;->c:Lio/appmetrica/analytics/location/impl/h;

    iget-object v3, v2, Lio/appmetrica/analytics/location/impl/t;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lio/appmetrica/analytics/location/impl/p;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/appmetrica/analytics/coreapi/internal/backport/Consumer;

    iget-object v4, v2, Lio/appmetrica/analytics/location/impl/t;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/appmetrica/analytics/location/impl/p;->e:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lio/appmetrica/analytics/location/impl/p;->a:Lio/appmetrica/analytics/location/impl/i;

    iget-object p0, p0, Lio/appmetrica/analytics/location/impl/i;->a:Lio/appmetrica/analytics/locationapi/internal/LocationFilter;

    iput-object p0, v1, Lio/appmetrica/analytics/location/impl/t;->a:Lio/appmetrica/analytics/locationapi/internal/LocationFilter;

    :goto_1
    iget-object p0, v1, Lio/appmetrica/analytics/location/impl/t;->d:Landroid/location/Location;

    if-eqz p0, :cond_6

    iget-object p0, v1, Lio/appmetrica/analytics/location/impl/t;->a:Lio/appmetrica/analytics/locationapi/internal/LocationFilter;

    iget-object v2, v1, Lio/appmetrica/analytics/location/impl/t;->b:Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;

    iget-wide v3, v1, Lio/appmetrica/analytics/location/impl/t;->e:J

    invoke-virtual {p0}, Lio/appmetrica/analytics/locationapi/internal/LocationFilter;->getUpdateTimeInterval()J

    move-result-wide v5

    const-string v7, "isSavedLocationOutdated"

    invoke-virtual/range {v2 .. v7}, Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;->didTimePassMillis(JJLjava/lang/String;)Z

    move-result p0

    iget-object v0, v1, Lio/appmetrica/analytics/location/impl/t;->a:Lio/appmetrica/analytics/locationapi/internal/LocationFilter;

    iget-object v2, v1, Lio/appmetrica/analytics/location/impl/t;->d:Landroid/location/Location;

    invoke-virtual {p1, v2}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v2

    invoke-virtual {v0}, Lio/appmetrica/analytics/locationapi/internal/LocationFilter;->getUpdateDistanceInterval()F

    move-result v0

    cmpl-float v0, v2, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v0, :cond_2

    move v0, v3

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iget-object v4, v1, Lio/appmetrica/analytics/location/impl/t;->d:Landroid/location/Location;

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    iget-object v6, v1, Lio/appmetrica/analytics/location/impl/t;->d:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    if-nez p0, :cond_5

    if-eqz v0, :cond_7

    :cond_5
    if-eqz v2, :cond_7

    :cond_6
    iput-object p1, v1, Lio/appmetrica/analytics/location/impl/t;->d:Landroid/location/Location;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lio/appmetrica/analytics/location/impl/t;->e:J

    iget-object p0, v1, Lio/appmetrica/analytics/location/impl/t;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/coreapi/internal/backport/Consumer;

    invoke-interface {v0, p1}, Lio/appmetrica/analytics/coreapi/internal/backport/Consumer;->consume(Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
