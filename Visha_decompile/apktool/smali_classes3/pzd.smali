.class public final Lpzd;
.super Lcom/google/android/gms/common/api/internal/t;
.source "SourceFile"


# instance fields
.field public final g:Landroidx/collection/ArraySet;

.field public final h:Lcom/google/android/gms/common/api/internal/c;


# direct methods
.method public constructor <init>(Lvk5;Lcom/google/android/gms/common/api/internal/c;Lzi4;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/common/api/internal/t;-><init>(Lvk5;Lzi4;)V

    new-instance p1, Landroidx/collection/ArraySet;

    invoke-direct {p1}, Landroidx/collection/ArraySet;-><init>()V

    iput-object p1, p0, Lpzd;->g:Landroidx/collection/ArraySet;

    iput-object p2, p0, Lpzd;->h:Lcom/google/android/gms/common/api/internal/c;

    iget-object p1, p0, Ltk5;->b:Lvk5;

    const-string p2, "ConnectionlessLifecycleHelper"

    invoke-interface {p1, p2, p0}, Lvk5;->p(Ljava/lang/String;Ltk5;)V

    return-void
.end method

.method public static u(Landroid/app/Activity;Lcom/google/android/gms/common/api/internal/c;Lxd;)V
    .locals 2

    invoke-static {p0}, Ltk5;->d(Landroid/app/Activity;)Lvk5;

    move-result-object p0

    const-string v0, "ConnectionlessLifecycleHelper"

    const-class v1, Lpzd;

    invoke-interface {p0, v0, v1}, Lvk5;->i(Ljava/lang/String;Ljava/lang/Class;)Ltk5;

    move-result-object v0

    check-cast v0, Lpzd;

    if-nez v0, :cond_0

    new-instance v0, Lpzd;

    invoke-static {}, Lzi4;->o()Lzi4;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lpzd;-><init>(Lvk5;Lcom/google/android/gms/common/api/internal/c;Lzi4;)V

    :cond_0
    const-string p0, "ApiKey cannot be null"

    invoke-static {p2, p0}, Lwd8;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v0, Lpzd;->g:Landroidx/collection/ArraySet;

    invoke-virtual {p0, p2}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/c;->b(Lpzd;)V

    return-void
.end method


# virtual methods
.method public final h()V
    .locals 0

    invoke-super {p0}, Ltk5;->h()V

    invoke-virtual {p0}, Lpzd;->v()V

    return-void
.end method

.method public final j()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/t;->j()V

    invoke-virtual {p0}, Lpzd;->v()V

    return-void
.end method

.method public final k()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/t;->k()V

    iget-object v0, p0, Lpzd;->h:Lcom/google/android/gms/common/api/internal/c;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/c;->c(Lpzd;)V

    return-void
.end method

.method public final m(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 0

    iget-object p0, p0, Lpzd;->h:Lcom/google/android/gms/common/api/internal/c;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/api/internal/c;->F(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method

.method public final n()V
    .locals 0

    iget-object p0, p0, Lpzd;->h:Lcom/google/android/gms/common/api/internal/c;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/c;->G()V

    return-void
.end method

.method public final t()Landroidx/collection/ArraySet;
    .locals 0

    iget-object p0, p0, Lpzd;->g:Landroidx/collection/ArraySet;

    return-object p0
.end method

.method public final v()V
    .locals 1

    iget-object v0, p0, Lpzd;->g:Landroidx/collection/ArraySet;

    invoke-virtual {v0}, Landroidx/collection/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lpzd;->h:Lcom/google/android/gms/common/api/internal/c;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/c;->b(Lpzd;)V

    :cond_0
    return-void
.end method
