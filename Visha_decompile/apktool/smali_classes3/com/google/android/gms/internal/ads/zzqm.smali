.class public final synthetic Lcom/google/android/gms/internal/ads/zzqm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Landroid/media/AudioTrack;

.field public final synthetic zzb:Lohj;

.field public final synthetic zzc:Landroid/os/Handler;

.field public final synthetic zzd:Lehj;


# direct methods
.method public synthetic constructor <init>(Landroid/media/AudioTrack;Lohj;Landroid/os/Handler;Lehj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zza:Landroid/media/AudioTrack;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzb:Lohj;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzc:Landroid/os/Handler;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzd:Lehj;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zza:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzb:Lohj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzc:Landroid/os/Handler;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzd:Lehj;

    invoke-static {v0, v1, v2, p0}, Lxij;->x(Landroid/media/AudioTrack;Lohj;Landroid/os/Handler;Lehj;)V

    return-void
.end method
