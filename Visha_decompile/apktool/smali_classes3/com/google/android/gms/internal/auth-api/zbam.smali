.class final Lcom/google/android/gms/internal/auth-api/zbam;
.super Lcom/google/android/gms/internal/auth-api/zbae;
.source "SourceFile"


# instance fields
.field final synthetic zba:Lzda;


# direct methods
.method public constructor <init>(Lb3e;Lzda;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/auth-api/zbam;->zba:Lzda;

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth-api/zbae;-><init>()V

    return-void
.end method


# virtual methods
.method public final zbb(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/auth-api/zbam;->zba:Lzda;

    invoke-virtual {p0, p2}, Lzda;->c(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/auth-api/zbam;->zba:Lzda;

    invoke-static {p1}, Lud;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzda;->b(Ljava/lang/Exception;)V

    return-void
.end method
