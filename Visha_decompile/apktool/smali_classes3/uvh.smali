.class public abstract Luvh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Landroid/app/UiModeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/zzfkb;
    .locals 2

    sget-object v0, Luvh;->a:Landroid/app/UiModeManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfkb;->zzc:Lcom/google/android/gms/internal/ads/zzfkb;

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfkb;->zza:Lcom/google/android/gms/internal/ads/zzfkb;

    return-object v0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfkb;->zzb:Lcom/google/android/gms/internal/ads/zzfkb;

    return-object v0

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfkb;->zzc:Lcom/google/android/gms/internal/ads/zzfkb;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "uimode"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/UiModeManager;

    sput-object p0, Luvh;->a:Landroid/app/UiModeManager;

    :cond_0
    return-void
.end method
