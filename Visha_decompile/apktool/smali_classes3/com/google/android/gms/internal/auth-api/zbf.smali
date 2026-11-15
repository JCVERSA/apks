.class final Lcom/google/android/gms/internal/auth-api/zbf;
.super Lcom/google/android/gms/internal/auth-api/zbd;
.source "SourceFile"


# instance fields
.field final synthetic zba:Lt3e;


# direct methods
.method public constructor <init>(Lt3e;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth-api/zbd;-><init>()V

    return-void
.end method


# virtual methods
.method public final zbb(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/auth/api/credentials/Credential;)V
    .locals 0

    new-instance p0, Lp3e;

    invoke-direct {p0, p1, p2}, Lp3e;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/auth/api/credentials/Credential;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final zbc(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    new-instance p0, Lp3e;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lp3e;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/auth/api/credentials/Credential;)V

    throw v0
.end method
