.class public final synthetic Lcom/google/android/gms/internal/ads/zzdhe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lejf;

.field public final synthetic zzb:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lejf;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhe;->zza:Lejf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdhe;->zzb:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    sget v0, Lzcg;->G:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhe;->zza:Lejf;

    const-string v1, "onVideoEvent"

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdhe;->zzb:Lorg/json/JSONObject;

    invoke-interface {v0, v1, p0}, Lp5f;->zze(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
