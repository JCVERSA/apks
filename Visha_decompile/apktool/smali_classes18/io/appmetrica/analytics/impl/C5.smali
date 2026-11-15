.class public final Lio/appmetrica/analytics/impl/C5;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/ue;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object p0, Lio/appmetrica/analytics/impl/ve;->a:Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    const-string p0, "connectivity"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    sget-object p1, Lio/appmetrica/analytics/impl/ue;->n:Lio/appmetrica/analytics/impl/ue;

    new-instance v0, Lio/appmetrica/analytics/impl/te;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/te;-><init>()V

    const-string v1, "getting connection type"

    const-string v2, "ConnectivityManager"

    invoke-static {p0, v1, v2, p1, v0}, Lio/appmetrica/analytics/coreutils/internal/system/SystemServiceUtils;->accessSystemServiceSafelyOrDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lio/appmetrica/analytics/coreapi/internal/backport/FunctionWithThrowable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/ue;

    return-object p0
.end method
