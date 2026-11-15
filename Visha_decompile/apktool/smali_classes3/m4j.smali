.class public final Lm4j;
.super Lcom/google/android/gms/measurement/internal/a;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lcom/google/android/gms/measurement/internal/j;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/j;Luoi;)V
    .locals 0

    iput-object p1, p0, Lm4j;->e:Lcom/google/android/gms/measurement/internal/j;

    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/a;-><init>(Luoi;)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    iget-object p0, p0, Lm4j;->e:Lcom/google/android/gms/measurement/internal/j;

    invoke-virtual {p0}, Lini;->g()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j;->y()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->u()Lu6h;

    move-result-object v0

    const-string v1, "Inactivity, disconnecting from the service"

    invoke-virtual {v0, v1}, Lu6h;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j;->P()V

    return-void
.end method
