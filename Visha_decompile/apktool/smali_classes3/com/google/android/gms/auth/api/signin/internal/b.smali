.class public final Lcom/google/android/gms/auth/api/signin/internal/b;
.super Ly3e;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/c;)V
    .locals 0

    invoke-direct {p0, p1}, Ly3e;-><init>(Lcom/google/android/gms/common/api/c;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic d(Lcom/google/android/gms/common/api/Status;)Llu8;
    .locals 0

    return-object p1
.end method

.method public final bridge synthetic m(Lcom/google/android/gms/common/api/a$b;)V
    .locals 2

    check-cast p1, Lo3e;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/a;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/signin/internal/zbs;

    new-instance v1, Lcom/google/android/gms/auth/api/signin/internal/zbj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/auth/api/signin/internal/zbj;-><init>(Lcom/google/android/gms/auth/api/signin/internal/b;)V

    invoke-virtual {p1}, Lo3e;->L()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/auth/api/signin/internal/zbs;->zbc(Lcom/google/android/gms/auth/api/signin/internal/zbr;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    return-void
.end method
