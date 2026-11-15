.class public Lcn/com/custommma/mobile/tracking/util/LocationCollector$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/custommma/mobile/tracking/util/LocationCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcn/com/custommma/mobile/tracking/util/LocationCollector;


# direct methods
.method public constructor <init>(Lcn/com/custommma/mobile/tracking/util/LocationCollector;)V
    .locals 0

    iput-object p1, p0, Lcn/com/custommma/mobile/tracking/util/LocationCollector$a;->a:Lcn/com/custommma/mobile/tracking/util/LocationCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    iget-object v0, p0, Lcn/com/custommma/mobile/tracking/util/LocationCollector$a;->a:Lcn/com/custommma/mobile/tracking/util/LocationCollector;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcn/com/custommma/mobile/tracking/util/LocationCollector;->a(Lcn/com/custommma/mobile/tracking/util/LocationCollector;J)J

    iget-object p0, p0, Lcn/com/custommma/mobile/tracking/util/LocationCollector$a;->a:Lcn/com/custommma/mobile/tracking/util/LocationCollector;

    invoke-static {p0, p1}, Lcn/com/custommma/mobile/tracking/util/LocationCollector;->b(Lcn/com/custommma/mobile/tracking/util/LocationCollector;Landroid/location/Location;)Landroid/location/Location;

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
