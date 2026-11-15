.class public final synthetic Lnud;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/backport/FunctionWithThrowable;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/location/impl/u;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/location/impl/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnud;->a:Lio/appmetrica/analytics/location/impl/u;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lnud;->a:Lio/appmetrica/analytics/location/impl/u;

    check-cast p1, Landroid/location/LocationManager;

    invoke-static {p0, p1}, Lio/appmetrica/analytics/location/impl/u;->a(Lio/appmetrica/analytics/location/impl/u;Landroid/location/LocationManager;)Landroid/location/Location;

    move-result-object p0

    return-object p0
.end method
