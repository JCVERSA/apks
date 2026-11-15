.class public final synthetic Lcom/google/android/gms/ads/nonagon/signalgeneration/zzs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;

.field public final synthetic zzb:Llmg;

.field public final synthetic zzc:Ljava/util/ArrayDeque;

.field public final synthetic zzd:Ljava/util/ArrayDeque;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;Llmg;Ljava/util/ArrayDeque;Ljava/util/ArrayDeque;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzs;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;

    iput-object p2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzs;->zzb:Llmg;

    iput-object p3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzs;->zzc:Ljava/util/ArrayDeque;

    iput-object p4, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzs;->zzd:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzs;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzs;->zzb:Llmg;

    iget-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzs;->zzc:Ljava/util/ArrayDeque;

    iget-object p0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzs;->zzd:Ljava/util/ArrayDeque;

    invoke-static {v0, v1, v2, p0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzd(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;Llmg;Ljava/util/ArrayDeque;Ljava/util/ArrayDeque;)V

    return-void
.end method
