.class public final synthetic Lcom/google/android/gms/internal/ads/zzjs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Landroid/content/Context;

.field public final synthetic zzb:Z

.field public final synthetic zzc:Ll6j;

.field public final synthetic zzd:Ltfj;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;ZLl6j;Ltfj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjs;->zza:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzb:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzc:Ll6j;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzd:Ltfj;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zza:Landroid/content/Context;

    invoke-static {v0}, Llfj;->u(Landroid/content/Context;)Llfj;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "ExoPlayerImpl"

    const-string v0, "MediaMetricsService unavailable."

    invoke-static {p0, v0}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzb:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzc:Ll6j;

    invoke-virtual {v1, v0}, Ll6j;->g(Ltaj;)V

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzd:Ltfj;

    invoke-virtual {v0}, Llfj;->t()Landroid/media/metrics/LogSessionId;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltfj;->b(Landroid/media/metrics/LogSessionId;)V

    return-void
.end method
