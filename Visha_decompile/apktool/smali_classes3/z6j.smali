.class public final Lz6j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lb7j;


# direct methods
.method public constructor <init>(Lb7j;)V
    .locals 0

    iput-object p1, p0, Lz6j;->a:Lb7j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lz6j;->a:Lb7j;

    invoke-virtual {v0}, Lini;->g()V

    iget-object v0, p0, Lz6j;->a:Lb7j;

    iget-object v0, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object v0

    iget-object v1, p0, Lz6j;->a:Lb7j;

    iget-object v1, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->c()Lfy0;

    move-result-object v1

    invoke-interface {v1}, Lfy0;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lroh;->u(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz6j;->a:Lb7j;

    iget-object v0, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object v0

    iget-object v0, v0, Lroh;->l:Llih;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Llih;->a(Z)V

    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    invoke-static {v0}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lz6j;->a:Lb7j;

    iget-object v0, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->u()Lu6h;

    move-result-object v0

    const-string v1, "Detected application was in foreground"

    invoke-virtual {v0, v1}, Lu6h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lz6j;->a:Lb7j;

    iget-object v0, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->c()Lfy0;

    move-result-object v0

    invoke-interface {v0}, Lfy0;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lz6j;->c(JZ)V

    :cond_0
    return-void
.end method

.method public final b(JZ)V
    .locals 3

    iget-object v0, p0, Lz6j;->a:Lb7j;

    invoke-virtual {v0}, Lini;->g()V

    iget-object v0, p0, Lz6j;->a:Lb7j;

    invoke-static {v0}, Lb7j;->o(Lb7j;)V

    iget-object v0, p0, Lz6j;->a:Lb7j;

    iget-object v0, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lroh;->u(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz6j;->a:Lb7j;

    iget-object v0, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object v0

    iget-object v0, v0, Lroh;->l:Llih;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Llih;->a(Z)V

    invoke-static {}, Lsfj;->b()Z

    iget-object v0, p0, Lz6j;->a:Lb7j;

    iget-object v0, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lkwg;->u0:Llvg;

    invoke-virtual {v0, v1, v2}, Loce;->v(Ljava/lang/String;Llvg;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz6j;->a:Lb7j;

    iget-object v0, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->B()Lwzg;

    move-result-object v0

    invoke-virtual {v0}, Lwzg;->t()V

    :cond_0
    iget-object v0, p0, Lz6j;->a:Lb7j;

    iget-object v0, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object v0

    iget-object v0, v0, Lroh;->o:Likh;

    invoke-virtual {v0, p1, p2}, Likh;->b(J)V

    iget-object v0, p0, Lz6j;->a:Lb7j;

    iget-object v0, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object v0

    iget-object v0, v0, Lroh;->l:Llih;

    invoke-virtual {v0}, Llih;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lz6j;->c(JZ)V

    :cond_1
    return-void
.end method

.method public final c(JZ)V
    .locals 10

    iget-object v0, p0, Lz6j;->a:Lb7j;

    invoke-virtual {v0}, Lini;->g()V

    iget-object v0, p0, Lz6j;->a:Lb7j;

    iget-object v0, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->o()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lz6j;->a:Lb7j;

    iget-object v0, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object v0

    iget-object v0, v0, Lroh;->o:Likh;

    invoke-virtual {v0, p1, p2}, Likh;->b(J)V

    iget-object v0, p0, Lz6j;->a:Lb7j;

    iget-object v0, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->c()Lfy0;

    move-result-object v0

    invoke-interface {v0}, Lfy0;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lz6j;->a:Lb7j;

    iget-object v2, v2, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c;->u()Lu6h;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "Session started, time"

    invoke-virtual {v2, v1, v0}, Lu6h;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v2, p0, Lz6j;->a:Lb7j;

    iget-object v2, v2, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->I()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v2

    const-string v3, "auto"

    const-string v4, "_sid"

    move-wide v6, p1

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/g;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    iget-object v2, p0, Lz6j;->a:Lb7j;

    iget-object v2, v2, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object v2

    iget-object v2, v2, Lroh;->l:Llih;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Llih;->a(Z)V

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string v2, "_sid"

    invoke-virtual {v9, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lz6j;->a:Lb7j;

    iget-object v0, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    move-result-object v0

    sget-object v1, Lkwg;->b0:Llvg;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Loce;->v(Ljava/lang/String;Llvg;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    const-string p3, "_aib"

    const-wide/16 v0, 0x1

    invoke-virtual {v9, p3, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    iget-object p3, p0, Lz6j;->a:Lb7j;

    iget-object p3, p3, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/e;->I()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v4

    const-string v5, "auto"

    const-string v6, "_s"

    move-wide v7, p1

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/g;->u(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    invoke-static {}, Lkdj;->b()Z

    iget-object p3, p0, Lz6j;->a:Lb7j;

    iget-object p3, p3, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    move-result-object p3

    sget-object v0, Lkwg;->e0:Llvg;

    invoke-virtual {p3, v2, v0}, Loce;->v(Ljava/lang/String;Llvg;)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lz6j;->a:Lb7j;

    iget-object p3, p3, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object p3

    iget-object p3, p3, Lroh;->t:Lpnh;

    invoke-virtual {p3}, Lpnh;->a()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v0, "_ffr"

    invoke-virtual {v6, v0, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lz6j;->a:Lb7j;

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->I()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v1

    const-string v2, "auto"

    const-string v3, "_ssr"

    move-wide v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/g;->u(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    :cond_2
    return-void
.end method
