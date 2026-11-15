.class public final Lw6j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J

.field public final c:Lcom/google/android/gms/measurement/internal/a;

.field public final synthetic d:Lb7j;


# direct methods
.method public constructor <init>(Lb7j;)V
    .locals 2

    iput-object p1, p0, Lw6j;->d:Lb7j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lt6j;

    iget-object v1, p1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-direct {v0, p0, v1}, Lt6j;-><init>(Lw6j;Luoi;)V

    iput-object v0, p0, Lw6j;->c:Lcom/google/android/gms/measurement/internal/a;

    iget-object p1, p1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e;->c()Lfy0;

    move-result-object p1

    invoke-interface {p1}, Lfy0;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lw6j;->a:J

    iput-wide v0, p0, Lw6j;->b:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lw6j;->c:Lcom/google/android/gms/measurement/internal/a;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/a;->b()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lw6j;->a:J

    iput-wide v0, p0, Lw6j;->b:J

    return-void
.end method

.method public final b(J)V
    .locals 0

    iget-object p0, p0, Lw6j;->c:Lcom/google/android/gms/measurement/internal/a;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/a;->b()V

    return-void
.end method

.method public final c(J)V
    .locals 1

    iget-object v0, p0, Lw6j;->d:Lb7j;

    invoke-virtual {v0}, Lini;->g()V

    iget-object v0, p0, Lw6j;->c:Lcom/google/android/gms/measurement/internal/a;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/a;->b()V

    iput-wide p1, p0, Lw6j;->a:J

    iput-wide p1, p0, Lw6j;->b:J

    return-void
.end method

.method public final d(ZZJ)Z
    .locals 4

    iget-object v0, p0, Lw6j;->d:Lb7j;

    invoke-virtual {v0}, Lini;->g()V

    iget-object v0, p0, Lw6j;->d:Lb7j;

    invoke-virtual {v0}, Lnlh;->h()V

    invoke-static {}, Lhej;->b()Z

    iget-object v0, p0, Lw6j;->d:Lb7j;

    iget-object v0, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lkwg;->f0:Llvg;

    invoke-virtual {v0, v1, v2}, Loce;->v(Ljava/lang/String;Llvg;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw6j;->d:Lb7j;

    iget-object v0, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lw6j;->d:Lb7j;

    iget-object v0, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object v0

    iget-object v0, v0, Lroh;->o:Likh;

    iget-object v1, p0, Lw6j;->d:Lb7j;

    iget-object v1, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->c()Lfy0;

    move-result-object v1

    invoke-interface {v1}, Lfy0;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Likh;->b(J)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lw6j;->d:Lb7j;

    iget-object v0, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object v0

    iget-object v0, v0, Lroh;->o:Likh;

    iget-object v1, p0, Lw6j;->d:Lb7j;

    iget-object v1, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->c()Lfy0;

    move-result-object v1

    invoke-interface {v1}, Lfy0;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Likh;->b(J)V

    :cond_1
    :goto_0
    iget-wide v0, p0, Lw6j;->a:J

    sub-long v0, p3, v0

    if-nez p1, :cond_3

    const-wide/16 v2, 0x3e8

    cmp-long p1, v0, v2

    if-ltz p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lw6j;->d:Lb7j;

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->u()Lu6h;

    move-result-object p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "Screen exposed for less than 1000 ms. Event not sent. time"

    invoke-virtual {p0, p2, p1}, Lu6h;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_1
    if-nez p2, :cond_4

    iget-wide v0, p0, Lw6j;->b:J

    sub-long v0, p3, v0

    iput-wide p3, p0, Lw6j;->b:J

    :cond_4
    iget-object p1, p0, Lw6j;->d:Lb7j;

    iget-object p1, p1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c;->u()Lu6h;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Recording user engagement, ms"

    invoke-virtual {p1, v3, v2}, Lu6h;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "_et"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lw6j;->d:Lb7j;

    iget-object v0, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    move-result-object v0

    invoke-virtual {v0}, Loce;->w()Z

    move-result v0

    iget-object v1, p0, Lw6j;->d:Lb7j;

    iget-object v1, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->K()Lcom/google/android/gms/measurement/internal/h;

    move-result-object v1

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/h;->r(Z)Lu2j;

    move-result-object v0

    invoke-static {v0, p1, v2}, Lc9j;->x(Lu2j;Landroid/os/Bundle;Z)V

    if-nez p2, :cond_5

    iget-object p2, p0, Lw6j;->d:Lb7j;

    iget-object p2, p2, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/e;->I()Lcom/google/android/gms/measurement/internal/g;

    move-result-object p2

    const-string v0, "auto"

    const-string v1, "_e"

    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/g;->t(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_5
    iput-wide p3, p0, Lw6j;->a:J

    iget-object p1, p0, Lw6j;->c:Lcom/google/android/gms/measurement/internal/a;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/a;->b()V

    iget-object p0, p0, Lw6j;->c:Lcom/google/android/gms/measurement/internal/a;

    const-wide/32 p1, 0x36ee80

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/a;->d(J)V

    return v2
.end method
