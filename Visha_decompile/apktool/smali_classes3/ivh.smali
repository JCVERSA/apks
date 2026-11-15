.class public final Livh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldvh;


# static fields
.field public static d:Livh;


# instance fields
.field public a:F

.field public b:Lcom/google/android/gms/internal/ads/c6;

.field public c:Lcvh;


# direct methods
.method public constructor <init>(Lzuh;Lyuh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Livh;->a:F

    return-void
.end method

.method public static b()Livh;
    .locals 3

    sget-object v0, Livh;->d:Livh;

    if-nez v0, :cond_0

    new-instance v0, Lyuh;

    invoke-direct {v0}, Lyuh;-><init>()V

    new-instance v1, Lzuh;

    invoke-direct {v1}, Lzuh;-><init>()V

    new-instance v2, Livh;

    invoke-direct {v2, v1, v0}, Livh;-><init>(Lzuh;Lyuh;)V

    sput-object v2, Livh;->d:Livh;

    :cond_0
    sget-object v0, Livh;->d:Livh;

    return-object v0
.end method


# virtual methods
.method public final a()F
    .locals 0

    iget p0, p0, Livh;->a:F

    return p0
.end method

.method public final c(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lxuh;

    invoke-direct {v0}, Lxuh;-><init>()V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/c6;

    invoke-direct {v2, v1, p1, v0, p0}, Lcom/google/android/gms/internal/ads/c6;-><init>(Landroid/os/Handler;Landroid/content/Context;Lxuh;Livh;)V

    iput-object v2, p0, Livh;->b:Lcom/google/android/gms/internal/ads/c6;

    return-void
.end method

.method public final d(F)V
    .locals 1

    iput p1, p0, Livh;->a:F

    iget-object v0, p0, Livh;->c:Lcvh;

    if-nez v0, :cond_0

    invoke-static {}, Lcvh;->a()Lcvh;

    move-result-object v0

    iput-object v0, p0, Livh;->c:Lcvh;

    :cond_0
    iget-object p0, p0, Livh;->c:Lcvh;

    invoke-virtual {p0}, Lcvh;->b()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsuh;

    invoke-virtual {v0}, Lsuh;->g()Lrvh;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrvh;->l(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final e()V
    .locals 1

    invoke-static {}, Lbvh;->i()Lbvh;

    move-result-object v0

    invoke-virtual {v0, p0}, Levh;->e(Ldvh;)V

    invoke-static {}, Lbvh;->i()Lbvh;

    move-result-object v0

    invoke-virtual {v0}, Levh;->f()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/f6;->d()Lcom/google/android/gms/internal/ads/f6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f6;->i()V

    iget-object p0, p0, Livh;->b:Lcom/google/android/gms/internal/ads/c6;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/c6;->c()V

    return-void
.end method

.method public final f()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/f6;->d()Lcom/google/android/gms/internal/ads/f6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f6;->j()V

    invoke-static {}, Lbvh;->i()Lbvh;

    move-result-object v0

    invoke-virtual {v0}, Levh;->g()V

    iget-object p0, p0, Livh;->b:Lcom/google/android/gms/internal/ads/c6;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/c6;->d()V

    return-void
.end method

.method public final zzc(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/f6;->d()Lcom/google/android/gms/internal/ads/f6;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/f6;->i()V

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/f6;->d()Lcom/google/android/gms/internal/ads/f6;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/f6;->h()V

    return-void
.end method
