.class public final Lcom/google/android/gms/measurement/internal/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/gms/measurement/internal/zzkd;

.field public final synthetic b:Lb7j;


# direct methods
.method public constructor <init>(Lb7j;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/k;->b:Lb7j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 7

    new-instance v6, Lcom/google/android/gms/measurement/internal/zzkd;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/k;->b:Lb7j;

    iget-object v0, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->c()Lfy0;

    move-result-object v0

    invoke-interface {v0}, Lfy0;->currentTimeMillis()J

    move-result-wide v2

    move-object v0, v6

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzkd;-><init>(Lcom/google/android/gms/measurement/internal/k;JJ)V

    iput-object v6, p0, Lcom/google/android/gms/measurement/internal/k;->a:Lcom/google/android/gms/measurement/internal/zzkd;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/k;->b:Lb7j;

    invoke-static {p1}, Lb7j;->n(Lb7j;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/k;->a:Lcom/google/android/gms/measurement/internal/zzkd;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/k;->b:Lb7j;

    invoke-virtual {v0}, Lini;->g()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/k;->a:Lcom/google/android/gms/measurement/internal/zzkd;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/k;->b:Lb7j;

    invoke-static {v1}, Lb7j;->n(Lb7j;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/k;->b:Lb7j;

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object p0

    iget-object p0, p0, Lroh;->q:Llih;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Llih;->a(Z)V

    return-void
.end method
