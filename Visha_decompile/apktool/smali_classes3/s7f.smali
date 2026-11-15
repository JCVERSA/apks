.class public final Ls7f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/t3;

.field public b:Lim5;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/t3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls7f;->a:Lcom/google/android/gms/internal/ads/t3;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lw6f;Lv6f;)Lv7f;
    .locals 1

    invoke-virtual {p0}, Ls7f;->d()V

    new-instance p1, Lv7f;

    iget-object p0, p0, Ls7f;->b:Lim5;

    const-string v0, "google.afma.activeView.handleUpdate"

    invoke-direct {p1, p0, v0, p2, p3}, Lv7f;-><init>(Lim5;Ljava/lang/String;Lw6f;Lv6f;)V

    return-object p1
.end method

.method public final b(Ljava/lang/String;Ln3f;)V
    .locals 2

    invoke-virtual {p0}, Ls7f;->d()V

    iget-object v0, p0, Ls7f;->b:Lim5;

    new-instance v1, Lr7f;

    invoke-direct {v1, p1, p2}, Lr7f;-><init>(Ljava/lang/String;Ln3f;)V

    sget-object p1, Lzef;->g:Lg8i;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/j8;->n(Lim5;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p1

    iput-object p1, p0, Ls7f;->b:Lim5;

    return-void
.end method

.method public final c(Ljava/lang/String;Ln3f;)V
    .locals 2

    iget-object v0, p0, Ls7f;->b:Lim5;

    new-instance v1, Lo7f;

    invoke-direct {v1, p1, p2}, Lo7f;-><init>(Ljava/lang/String;Ln3f;)V

    sget-object p1, Lzef;->g:Lg8i;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/j8;->m(Lim5;Lm2i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p1

    iput-object p1, p0, Ls7f;->b:Lim5;

    return-void
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Ls7f;->b:Lim5;

    if-nez v0, :cond_0

    new-instance v0, Leff;

    invoke-direct {v0}, Leff;-><init>()V

    iput-object v0, p0, Ls7f;->b:Lim5;

    iget-object p0, p0, Ls7f;->a:Lcom/google/android/gms/internal/ads/t3;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/t3;->b(Lfre;)Lm6f;

    move-result-object p0

    new-instance v1, Lp7f;

    invoke-direct {v1, v0}, Lp7f;-><init>(Leff;)V

    new-instance v2, Lq7f;

    invoke-direct {v2, v0}, Lq7f;-><init>(Leff;)V

    invoke-virtual {p0, v1, v2}, Llff;->f(Liff;Lgff;)V

    :cond_0
    return-void
.end method
