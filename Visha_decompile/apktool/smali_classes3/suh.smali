.class public final Lsuh;
.super Lpuh;
.source "SourceFile"


# instance fields
.field public final a:Lruh;

.field public final b:Lgvh;

.field public c:Llwh;

.field public d:Lrvh;

.field public e:Z

.field public f:Z

.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lquh;Lruh;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lpuh;-><init>()V

    new-instance v0, Lgvh;

    invoke-direct {v0}, Lgvh;-><init>()V

    iput-object v0, p0, Lsuh;->b:Lgvh;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsuh;->e:Z

    iput-boolean v0, p0, Lsuh;->f:Z

    iput-object p2, p0, Lsuh;->a:Lruh;

    iput-object p3, p0, Lsuh;->g:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsuh;->k(Landroid/view/View;)V

    invoke-virtual {p2}, Lruh;->d()Lcom/google/android/gms/internal/ads/zzfjy;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfjy;->zza:Lcom/google/android/gms/internal/ads/zzfjy;

    if-eq v1, v2, :cond_1

    invoke-virtual {p2}, Lruh;->d()Lcom/google/android/gms/internal/ads/zzfjy;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfjy;->zzc:Lcom/google/android/gms/internal/ads/zzfjy;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/e6;

    invoke-virtual {p2}, Lruh;->i()Ljava/util/Map;

    move-result-object p2

    invoke-direct {v1, p3, p2, v0}, Lcom/google/android/gms/internal/ads/e6;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    iput-object v1, p0, Lsuh;->d:Lrvh;

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Lsvh;

    invoke-virtual {p2}, Lruh;->a()Landroid/webkit/WebView;

    move-result-object p2

    invoke-direct {v0, p3, p2}, Lsvh;-><init>(Ljava/lang/String;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lsuh;->d:Lrvh;

    :goto_1
    iget-object p2, p0, Lsuh;->d:Lrvh;

    invoke-virtual {p2}, Lrvh;->o()V

    invoke-static {}, Lcvh;->a()Lcvh;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcvh;->d(Lsuh;)V

    iget-object p0, p0, Lsuh;->d:Lrvh;

    invoke-virtual {p0, p1}, Lrvh;->f(Lquh;)V

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfkc;Ljava/lang/String;)V
    .locals 0

    iget-boolean p3, p0, Lsuh;->f:Z

    if-eqz p3, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lsuh;->b:Lgvh;

    const-string p3, "Ad overlay"

    invoke-virtual {p0, p1, p2, p3}, Lgvh;->b(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfkc;Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-boolean v0, p0, Lsuh;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lsuh;->c:Llwh;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    iget-boolean v0, p0, Lsuh;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lsuh;->b:Lgvh;

    invoke-virtual {v0}, Lgvh;->c()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsuh;->f:Z

    iget-object v0, p0, Lsuh;->d:Lrvh;

    invoke-virtual {v0}, Lrvh;->e()V

    invoke-static {}, Lcvh;->a()Lcvh;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcvh;->e(Lsuh;)V

    iget-object v0, p0, Lsuh;->d:Lrvh;

    invoke-virtual {v0}, Lrvh;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lsuh;->d:Lrvh;

    return-void
.end method

.method public final d(Landroid/view/View;)V
    .locals 3

    iget-boolean v0, p0, Lsuh;->f:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lsuh;->f()Landroid/view/View;

    move-result-object v0

    if-eq v0, p1, :cond_2

    invoke-virtual {p0, p1}, Lsuh;->k(Landroid/view/View;)V

    iget-object v0, p0, Lsuh;->d:Lrvh;

    invoke-virtual {v0}, Lrvh;->b()V

    invoke-static {}, Lcvh;->a()Lcvh;

    move-result-object v0

    invoke-virtual {v0}, Lcvh;->c()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsuh;

    if-eq v1, p0, :cond_1

    invoke-virtual {v1}, Lsuh;->f()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_1

    iget-object v1, v1, Lsuh;->c:Llwh;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final e()V
    .locals 2

    iget-boolean v0, p0, Lsuh;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lsuh;->d:Lrvh;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsuh;->e:Z

    invoke-static {}, Lcvh;->a()Lcvh;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcvh;->f(Lsuh;)V

    invoke-static {}, Livh;->b()Livh;

    move-result-object v0

    invoke-virtual {v0}, Livh;->a()F

    move-result v0

    iget-object v1, p0, Lsuh;->d:Lrvh;

    invoke-virtual {v1, v0}, Lrvh;->l(F)V

    iget-object v0, p0, Lsuh;->d:Lrvh;

    invoke-static {}, Lavh;->a()Lavh;

    move-result-object v1

    invoke-virtual {v1}, Lavh;->b()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrvh;->g(Ljava/util/Date;)V

    iget-object v0, p0, Lsuh;->d:Lrvh;

    iget-object v1, p0, Lsuh;->a:Lruh;

    invoke-virtual {v0, p0, v1}, Lrvh;->i(Lsuh;Lruh;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final f()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lsuh;->c:Llwh;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public final g()Lrvh;
    .locals 0

    iget-object p0, p0, Lsuh;->d:Lrvh;

    return-object p0
.end method

.method public final h()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsuh;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final i()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lsuh;->b:Lgvh;

    invoke-virtual {p0}, Lgvh;->a()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final j()Z
    .locals 1

    iget-boolean v0, p0, Lsuh;->e:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lsuh;->f:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final k(Landroid/view/View;)V
    .locals 1

    new-instance v0, Llwh;

    invoke-direct {v0, p1}, Llwh;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lsuh;->c:Llwh;

    return-void
.end method
