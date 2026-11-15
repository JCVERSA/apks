.class public abstract Lzug;
.super Lini;
.source "SourceFile"

# interfaces
.implements Luoi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lini;-><init>(Lcom/google/android/gms/measurement/internal/e;)V

    invoke-static {p1}, Lwd8;->l(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final g()V
    .locals 0

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->a()Lcom/google/android/gms/measurement/internal/d;

    move-result-object p0

    invoke-virtual {p0}, Lini;->g()V

    return-void
.end method
