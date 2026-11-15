.class public abstract Ll1j;
.super Lcom/google/android/gms/common/internal/b;
.source "SourceFile"


# instance fields
.field public final I:Ljava/lang/String;

.field public final J:Ld1f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/c$a;Lcom/google/android/gms/common/api/c$b;Ljava/lang/String;Lay0;)V
    .locals 7

    const/16 v3, 0x17

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p6

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/b;-><init>(Landroid/content/Context;Landroid/os/Looper;ILay0;Lcom/google/android/gms/common/api/c$a;Lcom/google/android/gms/common/api/c$b;)V

    new-instance p1, Lgui;

    invoke-direct {p1, p0}, Lgui;-><init>(Ll1j;)V

    iput-object p1, p0, Ll1j;->J:Ld1f;

    iput-object p5, p0, Ll1j;->I:Ljava/lang/String;

    return-void
.end method

.method public static synthetic L(Ll1j;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/a;->c()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic d(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string p0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-interface {p1, p0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p0

    instance-of v0, p0, Lcom/google/android/gms/internal/location/zzam;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/internal/location/zzam;

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/location/zzal;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/location/zzal;-><init>(Landroid/os/IBinder;)V

    :goto_0
    return-object p0
.end method

.method public final g()Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "client_name"

    iget-object p0, p0, Ll1j;->I:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getApiFeatures()[Lcom/google/android/gms/common/Feature;
    .locals 0

    sget-object p0, Lamj;->f:[Lcom/google/android/gms/common/Feature;

    return-object p0
.end method

.method public final getMinApkVersion()I
    .locals 0

    const p0, 0xb2c988

    return p0
.end method

.method public final j()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    return-object p0
.end method

.method public final k()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.location.internal.GoogleLocationManagerService.START"

    return-object p0
.end method
