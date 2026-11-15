.class public final synthetic Ljrd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/backport/FunctionWithThrowable;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/location/impl/r;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/location/impl/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljrd;->a:Lio/appmetrica/analytics/location/impl/r;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ljrd;->a:Lio/appmetrica/analytics/location/impl/r;

    check-cast p1, Landroid/location/LocationManager;

    invoke-static {p0, p1}, Lio/appmetrica/analytics/location/impl/r;->b(Lio/appmetrica/analytics/location/impl/r;Landroid/location/LocationManager;)Lzfb;

    move-result-object p0

    return-object p0
.end method
