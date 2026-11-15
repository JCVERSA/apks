.class public final Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;

.field public final c:Lqyi;

.field public final d:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->a:Lqyi;

    iput-object p2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->b:Lqyi;

    iput-object p3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->c:Lqyi;

    iput-object p4, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->d:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llmg;

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->b:Lqyi;

    invoke-interface {v1}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;

    iget-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->c:Lqyi;

    invoke-interface {v2}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->d:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    new-instance v3, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzw;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzw;-><init>(Llmg;Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;Ljava/lang/String;I)V

    return-object v3
.end method
