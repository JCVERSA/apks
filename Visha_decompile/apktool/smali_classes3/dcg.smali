.class public final Ldcg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3f;


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;

.field public final b:Lwth;

.field public final c:Lcom/google/android/gms/ads/internal/util/client/zzv;

.field public final d:Lcom/google/android/gms/internal/ads/zzfgn;


# direct methods
.method public synthetic constructor <init>(Lfcg;Lwth;Lcom/google/android/gms/ads/internal/util/client/zzv;Lcom/google/android/gms/internal/ads/zzfgn;Lecg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p5, Ljava/lang/ref/WeakReference;

    invoke-direct {p5, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p5, p0, Ldcg;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Ldcg;->b:Lwth;

    iput-object p3, p0, Ldcg;->c:Lcom/google/android/gms/ads/internal/util/client/zzv;

    iput-object p4, p0, Ldcg;->d:Lcom/google/android/gms/internal/ads/zzfgn;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2

    iget-object p1, p0, Ldcg;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfcg;

    const-string v0, "u"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldcg;->b:Lwth;

    iget-object v1, p0, Ldcg;->c:Lcom/google/android/gms/ads/internal/util/client/zzv;

    iget-object p0, p0, Ldcg;->d:Lcom/google/android/gms/internal/ads/zzfgn;

    invoke-static {p1}, Lfcg;->w(Lfcg;)La2g;

    move-result-object p1

    invoke-virtual {v0, p2, v1, p0, p1}, Lwth;->d(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;Lcom/google/android/gms/internal/ads/zzfgn;La2g;)V

    :cond_1
    :goto_0
    return-void
.end method
