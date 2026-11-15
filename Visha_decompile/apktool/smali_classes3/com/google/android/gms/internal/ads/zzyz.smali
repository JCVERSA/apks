.class public final synthetic Lcom/google/android/gms/internal/ads/zzyz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Ljrj;

.field public final synthetic zzb:I

.field public final synthetic zzc:J

.field public final synthetic zzd:J


# direct methods
.method public synthetic constructor <init>(Ljrj;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyz;->zza:Ljrj;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzyz;->zzb:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzyz;->zzc:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzyz;->zzd:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyz;->zza:Ljrj;

    invoke-static {v0}, Ljrj;->b(Ljrj;)Llrj;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzyz;->zzb:I

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzyz;->zzc:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzyz;->zzd:J

    invoke-interface/range {v1 .. v6}, Llrj;->E(IJJ)V

    return-void
.end method
