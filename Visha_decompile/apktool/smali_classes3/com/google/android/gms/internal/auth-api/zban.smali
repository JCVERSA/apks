.class final Lcom/google/android/gms/internal/auth-api/zban;
.super Lcom/google/android/gms/internal/auth-api/zbag;
.source "SourceFile"


# instance fields
.field final synthetic zba:Lzda;


# direct methods
.method public constructor <init>(Lb3e;Lzda;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/auth-api/zban;->zba:Lzda;

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth-api/zbag;-><init>()V

    return-void
.end method


# virtual methods
.method public final zbb(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/auth/api/identity/SavePasswordResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/auth-api/zban;->zba:Lzda;

    invoke-static {p1, p2, p0}, Ljea;->b(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lzda;)V

    return-void
.end method
