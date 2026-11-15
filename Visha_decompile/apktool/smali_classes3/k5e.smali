.class public final Lk5e;
.super Lt4g;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/measurement/internal/e;

.field public final b:Lcom/google/android/gms/measurement/internal/g;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/e;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lt4g;-><init>(Lxff;)V

    invoke-static {p1}, Lwd8;->l(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lk5e;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e;->I()Lcom/google/android/gms/measurement/internal/g;

    move-result-object p1

    iput-object p1, p0, Lk5e;->b:Lcom/google/android/gms/measurement/internal/g;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lk5e;->b:Lcom/google/android/gms/measurement/internal/g;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/g;->C(Landroid/os/Bundle;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lk5e;->b:Lcom/google/android/gms/measurement/internal/g;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/g;->q(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lk5e;->b:Lcom/google/android/gms/measurement/internal/g;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/g;->Z(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final d(Lkti;)V
    .locals 0

    iget-object p0, p0, Lk5e;->b:Lcom/google/android/gms/measurement/internal/g;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/g;->M(Lkti;)V

    return-void
.end method

.method public final e(Lkti;)V
    .locals 0

    iget-object p0, p0, Lk5e;->b:Lcom/google/android/gms/measurement/internal/g;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/g;->w(Lkti;)V

    return-void
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lk5e;->b:Lcom/google/android/gms/measurement/internal/g;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/g;->Y(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lk5e;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->I()Lcom/google/android/gms/measurement/internal/g;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/g;->n(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lk5e;->b:Lcom/google/android/gms/measurement/internal/g;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/g;->P(Ljava/lang/String;)I

    const/16 p0, 0x19

    return p0
.end method

.method public final zzb()J
    .locals 2

    iget-object p0, p0, Lk5e;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object p0

    invoke-virtual {p0}, Lc9j;->p0()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lk5e;->b:Lcom/google/android/gms/measurement/internal/g;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g;->U()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzi()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lk5e;->b:Lcom/google/android/gms/measurement/internal/g;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g;->V()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzj()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lk5e;->b:Lcom/google/android/gms/measurement/internal/g;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g;->W()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzk()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lk5e;->b:Lcom/google/android/gms/measurement/internal/g;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g;->U()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzp(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lk5e;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->y()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    iget-object p0, p0, Lk5e;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->c()Lfy0;

    move-result-object p0

    invoke-interface {p0}, Lfy0;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/measurement/internal/b;->k(Ljava/lang/String;J)V

    return-void
.end method

.method public final zzr(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lk5e;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->y()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    iget-object p0, p0, Lk5e;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->c()Lfy0;

    move-result-object p0

    invoke-interface {p0}, Lfy0;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/measurement/internal/b;->l(Ljava/lang/String;J)V

    return-void
.end method
