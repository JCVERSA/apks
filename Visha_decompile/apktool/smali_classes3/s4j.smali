.class public final Ls4j;
.super Lcom/google/android/gms/measurement/internal/a;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lcom/google/android/gms/measurement/internal/j;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/j;Luoi;)V
    .locals 0

    iput-object p1, p0, Ls4j;->e:Lcom/google/android/gms/measurement/internal/j;

    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/a;-><init>(Luoi;)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1

    iget-object p0, p0, Ls4j;->e:Lcom/google/android/gms/measurement/internal/j;

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->v()Lu6h;

    move-result-object p0

    const-string v0, "Tasks have been queued for a long time"

    invoke-virtual {p0, v0}, Lu6h;->a(Ljava/lang/String;)V

    return-void
.end method
