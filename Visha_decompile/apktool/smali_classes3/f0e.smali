.class public final Lf0e;
.super Lqzd;
.source "SourceFile"


# instance fields
.field public final c:Lcom/google/android/gms/common/api/b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/b;)V
    .locals 1

    const-string v0, "Method is not supported by connectionless client. APIs supporting connectionless client must not call this method."

    invoke-direct {p0, v0}, Lqzd;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lf0e;->c:Lcom/google/android/gms/common/api/b;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/b;
    .locals 0

    iget-object p0, p0, Lf0e;->c:Lcom/google/android/gms/common/api/b;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/b;->l(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/b;

    move-result-object p0

    return-object p0
.end method

.method public final c()Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Lf0e;->c:Lcom/google/android/gms/common/api/b;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/b;->p()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public final f(Le1e;)V
    .locals 0

    return-void
.end method
