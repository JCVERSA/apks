.class public final synthetic Lcom/google/android/gms/internal/ads/zzpo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lchj;

.field public final synthetic zzb:I

.field public final synthetic zzc:J

.field public final synthetic zzd:J


# direct methods
.method public synthetic constructor <init>(Lchj;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpo;->zza:Lchj;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzpo;->zzb:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzpo;->zzc:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzpo;->zzd:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpo;->zza:Lchj;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpo;->zzb:I

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzpo;->zzc:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzpo;->zzd:J

    invoke-static/range {v0 .. v5}, Lchj;->e(Lchj;IJJ)V

    return-void
.end method
