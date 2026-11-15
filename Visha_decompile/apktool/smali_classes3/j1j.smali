.class public final Lj1j;
.super Lcom/google/android/gms/common/internal/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lay0;Lbf1;Lqe7;)V
    .locals 7

    const/16 v3, 0xe0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/b;-><init>(Landroid/content/Context;Landroid/os/Looper;ILay0;Lbf1;Lqe7;)V

    return-void
.end method


# virtual methods
.method public final synthetic d(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string p0, "com.google.android.gms.auth.account.data.IGoogleAuthService"

    invoke-interface {p1, p0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p0

    instance-of v0, p0, Lcom/google/android/gms/internal/auth/zzp;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/internal/auth/zzp;

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/auth/zzp;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/auth/zzp;-><init>(Landroid/os/IBinder;)V

    :goto_0
    return-object p0
.end method

.method public final disconnect(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GoogleAuthServiceClientImpl disconnected with reason: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GoogleAuthSvcClientImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/google/android/gms/common/internal/a;->disconnect(Ljava/lang/String;)V

    return-void
.end method

.method public final getApiFeatures()[Lcom/google/android/gms/common/Feature;
    .locals 2

    sget-object p0, Lbvg;->j:Lcom/google/android/gms/common/Feature;

    sget-object v0, Lbvg;->i:Lcom/google/android/gms/common/Feature;

    sget-object v1, Lbvg;->a:Lcom/google/android/gms/common/Feature;

    filled-new-array {p0, v0, v1}, [Lcom/google/android/gms/common/Feature;

    move-result-object p0

    return-object p0
.end method

.method public final getMinApkVersion()I
    .locals 0

    const p0, 0x1110e58

    return p0
.end method

.method public final j()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.gms.auth.account.data.IGoogleAuthService"

    return-object p0
.end method

.method public final k()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.gms.auth.account.authapi.START"

    return-object p0
.end method

.method public final m()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final usesClientTelemetry()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
