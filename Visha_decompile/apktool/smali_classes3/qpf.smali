.class public final Lqpf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le0g;


# instance fields
.field public final b:Leoh;


# direct methods
.method public constructor <init>(Leoh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqpf;->b:Leoh;

    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Context;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lqpf;->b:Leoh;

    invoke-virtual {p0}, Leoh;->l()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfbw; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Cannot invoke onDestroy for the mediation adapter."

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final k(Landroid/content/Context;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lqpf;->b:Leoh;

    invoke-virtual {p0}, Leoh;->y()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfbw; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Cannot invoke onPause for the mediation adapter."

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final n(Landroid/content/Context;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lqpf;->b:Leoh;

    invoke-virtual {p0}, Leoh;->z()V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Leoh;->x(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfbw; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Cannot invoke onResume for the mediation adapter."

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
