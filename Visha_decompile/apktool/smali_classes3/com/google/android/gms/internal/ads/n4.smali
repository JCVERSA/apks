.class public final Lcom/google/android/gms/internal/ads/n4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/n4;->a:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/n4;->a:Lqyi;

    check-cast p0, Lzyf;

    invoke-virtual {p0}, Lzyf;->a()Lenh;

    move-result-object p0

    iget-object p0, p0, Lenh;->o:Lrmh;

    iget p0, p0, Lrmh;->a:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/ads/zzbbn$zza$zza;->zzl:Lcom/google/android/gms/internal/ads/zzbbn$zza$zza;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbbn$zza$zza;->zzh:Lcom/google/android/gms/internal/ads/zzbbn$zza$zza;

    :goto_0
    invoke-static {p0}, Lpyi;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
