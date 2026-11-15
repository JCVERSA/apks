.class public final Lb7j;
.super Lnlh;
.source "SourceFile"


# instance fields
.field public c:Landroid/os/Handler;

.field public final d:Lz6j;

.field public final e:Lw6j;

.field public final f:Lcom/google/android/gms/measurement/internal/k;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lnlh;-><init>(Lcom/google/android/gms/measurement/internal/e;)V

    new-instance p1, Lz6j;

    invoke-direct {p1, p0}, Lz6j;-><init>(Lb7j;)V

    iput-object p1, p0, Lb7j;->d:Lz6j;

    new-instance p1, Lw6j;

    invoke-direct {p1, p0}, Lw6j;-><init>(Lb7j;)V

    iput-object p1, p0, Lb7j;->e:Lw6j;

    new-instance p1, Lcom/google/android/gms/measurement/internal/k;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/k;-><init>(Lb7j;)V

    iput-object p1, p0, Lb7j;->f:Lcom/google/android/gms/measurement/internal/k;

    return-void
.end method

.method public static bridge synthetic n(Lb7j;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lb7j;->c:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic o(Lb7j;)V
    .locals 0

    invoke-virtual {p0}, Lb7j;->r()V

    return-void
.end method

.method public static bridge synthetic p(Lb7j;J)V
    .locals 3

    invoke-virtual {p0}, Lini;->g()V

    invoke-virtual {p0}, Lb7j;->r()V

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->u()Lu6h;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Activity paused, time"

    invoke-virtual {v0, v2, v1}, Lu6h;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lb7j;->f:Lcom/google/android/gms/measurement/internal/k;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/k;->a(J)V

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    move-result-object v0

    invoke-virtual {v0}, Loce;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lb7j;->e:Lw6j;

    invoke-virtual {p0, p1, p2}, Lw6j;->b(J)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic q(Lb7j;J)V
    .locals 3

    invoke-virtual {p0}, Lini;->g()V

    invoke-virtual {p0}, Lb7j;->r()V

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->u()Lu6h;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Activity resumed, time"

    invoke-virtual {v0, v2, v1}, Lu6h;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    move-result-object v0

    invoke-virtual {v0}, Loce;->w()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object v0

    iget-object v0, v0, Lroh;->q:Llih;

    invoke-virtual {v0}, Llih;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lb7j;->e:Lw6j;

    invoke-virtual {v0, p1, p2}, Lw6j;->c(J)V

    :cond_1
    iget-object p1, p0, Lb7j;->f:Lcom/google/android/gms/measurement/internal/k;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/k;->b()V

    iget-object p0, p0, Lb7j;->d:Lz6j;

    iget-object p1, p0, Lz6j;->a:Lb7j;

    invoke-virtual {p1}, Lini;->g()V

    iget-object p1, p0, Lz6j;->a:Lb7j;

    iget-object p1, p1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e;->o()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lz6j;->a:Lb7j;

    iget-object p1, p1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e;->c()Lfy0;

    move-result-object p1

    invoke-interface {p1}, Lfy0;->currentTimeMillis()J

    move-result-wide p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lz6j;->b(JZ)V

    return-void
.end method


# virtual methods
.method public final m()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final r()V
    .locals 2

    invoke-virtual {p0}, Lini;->g()V

    iget-object v0, p0, Lb7j;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Lvdf;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lvdf;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lb7j;->c:Landroid/os/Handler;

    :cond_0
    return-void
.end method
