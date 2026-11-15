.class public final synthetic Lcom/google/android/gms/internal/ads/zzabl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lk7e;

.field public final synthetic zzb:J

.field public final synthetic zzc:I


# direct methods
.method public synthetic constructor <init>(Lk7e;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabl;->zza:Lk7e;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzb:J

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzc:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabl;->zza:Lk7e;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzb:J

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzc:I

    invoke-static {v0, v1, v2, p0}, Lk7e;->c(Lk7e;JI)V

    return-void
.end method
