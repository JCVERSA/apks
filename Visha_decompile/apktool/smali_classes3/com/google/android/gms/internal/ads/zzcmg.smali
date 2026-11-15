.class public final synthetic Lcom/google/android/gms/internal/ads/zzcmg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lgqf;

.field public final synthetic zzb:I

.field public final synthetic zzc:I


# direct methods
.method public synthetic constructor <init>(Lgqf;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmg;->zza:Lgqf;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcmg;->zzb:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzcmg;->zzc:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmg;->zza:Lgqf;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcmg;->zzb:I

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzcmg;->zzc:I

    invoke-static {v0, v1, p0}, Lgqf;->s(Lgqf;II)V

    return-void
.end method
