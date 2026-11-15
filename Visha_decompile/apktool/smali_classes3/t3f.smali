.class public final Lt3f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3f;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt3f;->a:Landroid/content/Context;

    iput-object p2, p0, Lt3f;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 7

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzo()Lrdf;

    move-result-object p1

    iget-object v0, p0, Lt3f;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lrdf;->p(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "eventName"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, "eventId"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x170bf

    const/4 v3, 0x2

    const-string v4, "_ac"

    const/4 v5, 0x1

    const-string v6, "_ai"

    if-eq v1, v2, :cond_3

    const v2, 0x170c1

    if-eq v1, v2, :cond_2

    const v2, 0x170c7

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v5

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    const-string v1, "_aa"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v3

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_7

    if-eq p1, v5, :cond_6

    if-eq p1, v3, :cond_5

    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "logScionEvent gmsg contained unsupported eventName"

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzo()Lrdf;

    move-result-object p0

    invoke-virtual {p0, v0, p2}, Lrdf;->h(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_6
    iget-object p0, p0, Lt3f;->b:Ljava/util/Map;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzo()Lrdf;

    move-result-object p1

    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-virtual {p1, v0, p2, p0}, Lrdf;->k(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_7
    iget-object p0, p0, Lt3f;->b:Ljava/util/Map;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzo()Lrdf;

    move-result-object p1

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-virtual {p1, v0, p2, p0}, Lrdf;->j(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
