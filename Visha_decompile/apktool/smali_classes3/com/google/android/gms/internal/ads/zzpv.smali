.class public final synthetic Lcom/google/android/gms/internal/ads/zzpv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lchj;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:J

.field public final synthetic zzd:J


# direct methods
.method public synthetic constructor <init>(Lchj;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpv;->zza:Lchj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzpv;->zzb:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzpv;->zzc:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzpv;->zzd:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpv;->zza:Lchj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpv;->zzb:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzpv;->zzc:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzpv;->zzd:J

    invoke-static/range {v0 .. v5}, Lchj;->k(Lchj;Ljava/lang/String;JJ)V

    return-void
.end method
