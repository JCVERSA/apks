.class final Lcom/google/android/gms/internal/ads/zzaph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:J

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/c;Ljava/lang/String;J)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaph;->zza:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzaph;->zzb:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaph;->zzc:Lcom/google/android/gms/internal/ads/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaph;->zzc:Lcom/google/android/gms/internal/ads/c;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/c;->b(Lcom/google/android/gms/internal/ads/c;)Lmme;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaph;->zza:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaph;->zzb:J

    invoke-virtual {v1, v2, v3, v4}, Lmme;->a(Ljava/lang/String;J)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/c;->b(Lcom/google/android/gms/internal/ads/c;)Lmme;

    move-result-object p0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmme;->b(Ljava/lang/String;)V

    return-void
.end method
