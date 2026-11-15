.class public final Lio/appmetrica/analytics/impl/Ok;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/backport/FunctionWithThrowable;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/Pk;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Pk;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ok;->a:Lio/appmetrica/analytics/impl/Pk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ok;->a:Lio/appmetrica/analytics/impl/Pk;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Pk;->b:Lio/appmetrica/analytics/coreapi/internal/system/PermissionExtractor;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Pk;->a:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, p0, v1}, Lio/appmetrica/analytics/coreapi/internal/system/PermissionExtractor;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
