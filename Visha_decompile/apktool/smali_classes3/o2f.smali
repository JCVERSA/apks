.class public final Lo2f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0

    check-cast p1, Lejf;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzk()Lcom/google/android/gms/ads/internal/overlay/zzz;

    move-result-object p0

    invoke-interface {p1}, Lejf;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzb(Lejf;Landroid/content/Context;)V

    return-void
.end method
