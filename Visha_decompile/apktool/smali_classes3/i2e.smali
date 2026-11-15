.class public final Li2e;
.super Lcom/google/android/gms/common/internal/b;
.source "SourceFile"


# instance fields
.field public final I:Lrea;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lay0;Lrea;Lbf1;Lqe7;)V
    .locals 7

    const/16 v3, 0x10e

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/b;-><init>(Landroid/content/Context;Landroid/os/Looper;ILay0;Lbf1;Lqe7;)V

    iput-object p4, p0, Li2e;->I:Lrea;

    return-void
.end method


# virtual methods
.method public final synthetic d(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string p0, "com.google.android.gms.common.internal.service.IClientTelemetryService"

    invoke-interface {p1, p0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p0

    instance-of v0, p0, Lcom/google/android/gms/common/internal/service/zai;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/common/internal/service/zai;

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/google/android/gms/common/internal/service/zai;

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/service/zai;-><init>(Landroid/os/IBinder;)V

    :goto_0
    return-object p0
.end method

.method public final g()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Li2e;->I:Lrea;

    invoke-virtual {p0}, Lrea;->b()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final getApiFeatures()[Lcom/google/android/gms/common/Feature;
    .locals 0

    sget-object p0, Ln1e;->b:[Lcom/google/android/gms/common/Feature;

    return-object p0
.end method

.method public final getMinApkVersion()I
    .locals 0

    const p0, 0xc1fa340

    return p0
.end method

.method public final j()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.gms.common.internal.service.IClientTelemetryService"

    return-object p0
.end method

.method public final k()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.gms.common.telemetry.service.START"

    return-object p0
.end method

.method public final m()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
