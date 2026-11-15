.class public final Lcom/google/android/gms/common/internal/h;
.super Lb5e;
.source "SourceFile"


# instance fields
.field public final synthetic g:Lcom/google/android/gms/common/internal/a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/a;ILandroid/os/Bundle;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/h;->g:Lcom/google/android/gms/common/internal/a;

    invoke-direct {p0, p1, p2, p3}, Lb5e;-><init>(Lcom/google/android/gms/common/internal/a;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final e()Z
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/common/internal/h;->g:Lcom/google/android/gms/common/internal/a;

    iget-object p0, p0, Lcom/google/android/gms/common/internal/a;->q:Lcom/google/android/gms/common/internal/a$c;

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    invoke-interface {p0, v0}, Lcom/google/android/gms/common/internal/a$c;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final f(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/common/internal/h;->g:Lcom/google/android/gms/common/internal/a;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/a;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/a;->x(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/a;->q:Lcom/google/android/gms/common/internal/a$c;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/a$c;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/a;->o(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
