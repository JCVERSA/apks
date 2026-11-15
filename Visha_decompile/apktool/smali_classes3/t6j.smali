.class public final Lt6j;
.super Lcom/google/android/gms/measurement/internal/a;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lw6j;


# direct methods
.method public constructor <init>(Lw6j;Luoi;)V
    .locals 0

    iput-object p1, p0, Lt6j;->e:Lw6j;

    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/a;-><init>(Luoi;)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 3

    iget-object p0, p0, Lt6j;->e:Lw6j;

    iget-object v0, p0, Lw6j;->d:Lb7j;

    invoke-virtual {v0}, Lini;->g()V

    iget-object v0, p0, Lw6j;->d:Lb7j;

    iget-object v0, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->c()Lfy0;

    move-result-object v0

    invoke-interface {v0}, Lfy0;->elapsedRealtime()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Lw6j;->d(ZZJ)Z

    iget-object v0, p0, Lw6j;->d:Lb7j;

    iget-object v0, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->y()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    iget-object p0, p0, Lw6j;->d:Lb7j;

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->c()Lfy0;

    move-result-object p0

    invoke-interface {p0}, Lfy0;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/b;->m(J)V

    return-void
.end method
