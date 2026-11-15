.class public final Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbc;->a:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaz;

    return-void
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbc;->a:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaz;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaz;->zze()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method
