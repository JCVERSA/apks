.class final Lcom/google/android/gms/internal/auth-api/zbau;
.super Lcom/google/android/gms/internal/auth-api/zbx;
.source "SourceFile"


# instance fields
.field final synthetic zba:Lzda;


# direct methods
.method public constructor <init>(Lc3e;Lzda;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/auth-api/zbau;->zba:Lzda;

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth-api/zbx;-><init>()V

    return-void
.end method


# virtual methods
.method public final zbb(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/auth/api/identity/BeginSignInResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/auth-api/zbau;->zba:Lzda;

    invoke-static {p1, p2, p0}, Ljea;->b(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lzda;)V

    return-void
.end method
