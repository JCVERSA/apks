.class public final Lmze;
.super Lcom/google/android/gms/common/internal/b;
.source "SourceFile"


# instance fields
.field public final I:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lay0;Lp20;Lbf1;Lqe7;)V
    .locals 7

    const/16 v3, 0x10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/b;-><init>(Landroid/content/Context;Landroid/os/Looper;ILay0;Lbf1;Lqe7;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lmze;->I:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final synthetic d(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string p0, "com.google.android.gms.auth.api.internal.IAuthService"

    invoke-interface {p1, p0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p0

    instance-of v0, p0, Lcom/google/android/gms/internal/auth/zzbh;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/internal/auth/zzbh;

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/auth/zzbh;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/auth/zzbh;-><init>(Landroid/os/IBinder;)V

    :goto_0
    return-object p0
.end method

.method public final g()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lmze;->I:Landroid/os/Bundle;

    return-object p0
.end method

.method public final getMinApkVersion()I
    .locals 0

    const p0, 0xbdfcb8

    return p0
.end method

.method public final j()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.gms.auth.api.internal.IAuthService"

    return-object p0
.end method

.method public final k()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.gms.auth.service.START"

    return-object p0
.end method

.method public final requiresSignIn()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/b;->I()Lay0;

    move-result-object p0

    invoke-virtual {p0}, Lay0;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lo20;->a:Lcom/google/android/gms/common/api/a;

    invoke-virtual {p0, v0}, Lay0;->e(Lcom/google/android/gms/common/api/a;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final usesClientTelemetry()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
