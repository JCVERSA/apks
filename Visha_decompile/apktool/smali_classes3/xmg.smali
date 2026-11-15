.class public final Lxmg;
.super Lzmg;
.source "SourceFile"


# instance fields
.field public final k:Lcom/google/android/gms/ads/nonagon/util/logging/csi/CsiParamDefaults;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/ads/internal/util/client/zzu;Lcom/google/android/gms/ads/nonagon/util/logging/csi/CsiParamDefaults;Lcom/google/android/gms/ads/nonagon/util/logging/csi/CsiUrlBuilder;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4, p5}, Lzmg;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/ads/internal/util/client/zzu;Lcom/google/android/gms/ads/nonagon/util/logging/csi/CsiUrlBuilder;Landroid/content/Context;)V

    iput-object p3, p0, Lxmg;->k:Lcom/google/android/gms/ads/nonagon/util/logging/csi/CsiParamDefaults;

    iget-object p0, p0, Lzmg;->a:Ljava/util/Map;

    invoke-virtual {p3, p0}, Lcom/google/android/gms/ads/nonagon/util/logging/csi/CsiParamDefaults;->set(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final i()Ljava/util/Map;
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    iget-object p0, p0, Lzmg;->a:Ljava/util/Map;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
