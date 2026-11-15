.class public final Lcom/google/android/gms/internal/auth-api/zbe;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;


# instance fields
.field private final zba:Lcom/google/android/gms/common/api/Status;

.field private final zbb:Lcom/google/android/gms/auth/api/credentials/Credential;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/auth/api/credentials/Credential;)V
    .locals 0
    .param p2    # Lcom/google/android/gms/auth/api/credentials/Credential;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/auth-api/zbe;->zba:Lcom/google/android/gms/common/api/Status;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/auth-api/zbe;->zbb:Lcom/google/android/gms/auth/api/credentials/Credential;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getCredential()Lcom/google/android/gms/auth/api/credentials/Credential;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth-api/zbe;->zbb:Lcom/google/android/gms/auth/api/credentials/Credential;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth-api/zbe;->zba:Lcom/google/android/gms/common/api/Status;

    .line 2
    .line 3
    return-object v0
.end method
