.class public final Lqhg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz0f;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzdmb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdmb;Ljava/lang/String;)V
    .locals 0

    const-string p2, "_videoMediaView"

    iput-object p2, p0, Lqhg;->a:Ljava/lang/String;

    iput-object p1, p0, Lqhg;->b:Lcom/google/android/gms/internal/ads/zzdmb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public final zza()Lorg/json/JSONObject;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final zzb()Lorg/json/JSONObject;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final zzc()V
    .locals 2

    iget-object v0, p0, Lqhg;->b:Lcom/google/android/gms/internal/ads/zzdmb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdmb;->zzc(Lcom/google/android/gms/internal/ads/zzdmb;)Lzcg;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lqhg;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdmb;->zzc(Lcom/google/android/gms/internal/ads/zzdmb;)Lzcg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lzcg;->n(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
