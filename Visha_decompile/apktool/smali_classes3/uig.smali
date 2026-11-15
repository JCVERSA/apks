.class public final Luig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll4f;


# instance fields
.field public final b:Lu0g;

.field public final c:Lcom/google/android/gms/internal/ads/zzbvw;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lu0g;Lhmh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luig;->b:Lu0g;

    iget-object p1, p2, Lhmh;->l:Lcom/google/android/gms/internal/ads/zzbvw;

    iput-object p1, p0, Luig;->c:Lcom/google/android/gms/internal/ads/zzbvw;

    iget-object p1, p2, Lhmh;->j:Ljava/lang/String;

    iput-object p1, p0, Luig;->d:Ljava/lang/String;

    iget-object p1, p2, Lhmh;->k:Ljava/lang/String;

    iput-object p1, p0, Luig;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final p(Lcom/google/android/gms/internal/ads/zzbvw;)V
    .locals 2

    iget-object v0, p0, Luig;->c:Lcom/google/android/gms/internal/ads/zzbvw;

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbvw;->zza:Ljava/lang/String;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbvw;->zzb:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    const-string v0, ""

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbvh;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzbvh;-><init>(Ljava/lang/String;I)V

    iget-object p1, p0, Luig;->b:Lu0g;

    iget-object v0, p0, Luig;->d:Ljava/lang/String;

    iget-object p0, p0, Luig;->e:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, p0}, Lu0g;->F(Lcom/google/android/gms/internal/ads/zzbvk;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zzb()V
    .locals 0

    iget-object p0, p0, Luig;->b:Lu0g;

    invoke-virtual {p0}, Lu0g;->zze()V

    return-void
.end method

.method public final zzc()V
    .locals 0

    iget-object p0, p0, Luig;->b:Lu0g;

    invoke-virtual {p0}, Lu0g;->zzf()V

    return-void
.end method
