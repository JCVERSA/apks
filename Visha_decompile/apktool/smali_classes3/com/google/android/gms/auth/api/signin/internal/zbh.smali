.class final Lcom/google/android/gms/auth/api/signin/internal/zbh;
.super Lcom/google/android/gms/auth/api/signin/internal/zba;
.source "SourceFile"


# instance fields
.field final synthetic zba:Lcom/google/android/gms/auth/api/signin/internal/a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zbh;->zba:Lcom/google/android/gms/auth/api/signin/internal/a;

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/zba;-><init>()V

    return-void
.end method


# virtual methods
.method public final zbc(Lcom/google/android/gms/common/api/Status;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/auth/api/signin/internal/zbh;->zba:Lcom/google/android/gms/auth/api/signin/internal/a;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->g(Llu8;)V

    return-void
.end method
