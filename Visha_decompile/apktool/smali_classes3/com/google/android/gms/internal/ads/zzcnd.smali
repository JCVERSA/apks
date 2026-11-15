.class public final synthetic Lcom/google/android/gms/internal/ads/zzcnd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lzqf;

.field public final synthetic zzb:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lzqf;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnd;->zza:Lzqf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcnd;->zzb:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnd;->zza:Lzqf;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcnd;->zzb:Lorg/json/JSONObject;

    invoke-static {v0, p0}, Lzqf;->a(Lzqf;Lorg/json/JSONObject;)V

    return-void
.end method
