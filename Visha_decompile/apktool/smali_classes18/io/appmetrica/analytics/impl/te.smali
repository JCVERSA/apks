.class public final Lio/appmetrica/analytics/impl/te;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/backport/FunctionWithThrowable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/net/ConnectivityManager;

    const/16 p0, 0x17

    invoke-static {p0}, Lio/appmetrica/analytics/coreutils/internal/AndroidUtils;->isApiAchieved(I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lio/appmetrica/analytics/impl/ve;->a(Landroid/net/ConnectivityManager;)Lio/appmetrica/analytics/impl/ue;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lio/appmetrica/analytics/impl/ve;->b:Lio/appmetrica/analytics/impl/qe;

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/appmetrica/analytics/impl/Jc;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/ue;

    goto :goto_0

    :cond_1
    sget-object p0, Lio/appmetrica/analytics/impl/ue;->m:Lio/appmetrica/analytics/impl/ue;

    :goto_0
    return-object p0
.end method
