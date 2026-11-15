.class public abstract Lboi;
.super Lini;
.source "SourceFile"


# instance fields
.field public b:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lini;-><init>(Lcom/google/android/gms/measurement/internal/e;)V

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->i()V

    return-void
.end method


# virtual methods
.method public h()V
    .locals 0

    return-void
.end method

.method public abstract i()Z
.end method

.method public final j()V
    .locals 1

    invoke-virtual {p0}, Lboi;->m()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final k()V
    .locals 1

    iget-boolean v0, p0, Lboi;->b:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lboi;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->g()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lboi;->b:Z

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t initialize twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final l()V
    .locals 1

    iget-boolean v0, p0, Lboi;->b:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lboi;->h()V

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->g()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lboi;->b:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t initialize twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final m()Z
    .locals 0

    iget-boolean p0, p0, Lboi;->b:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
