.class public final Lcom/google/android/gms/common/internal/g;
.super Lb5e;
.source "SourceFile"


# instance fields
.field public final g:Landroid/os/IBinder;

.field public final synthetic h:Lcom/google/android/gms/common/internal/a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/a;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/g;->h:Lcom/google/android/gms/common/internal/a;

    invoke-direct {p0, p1, p2, p4}, Lb5e;-><init>(Lcom/google/android/gms/common/internal/a;ILandroid/os/Bundle;)V

    iput-object p3, p0, Lcom/google/android/gms/common/internal/g;->g:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final e()Z
    .locals 6

    const-string v0, "GmsClient"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/common/internal/g;->g:Landroid/os/IBinder;

    invoke-static {v2}, Lwd8;->l(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    invoke-interface {v2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lcom/google/android/gms/common/internal/g;->h:Lcom/google/android/gms/common/internal/a;

    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/a;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/a;->j()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x22

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "service descriptor mismatch: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " vs. "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/common/internal/g;->g:Landroid/os/IBinder;

    invoke-virtual {v3, p0}, Lcom/google/android/gms/common/internal/a;->d(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p0

    if-eqz p0, :cond_3

    const/4 v0, 0x2

    const/4 v2, 0x4

    invoke-virtual {v3, v0, v2, p0}, Lcom/google/android/gms/common/internal/a;->w(IILandroid/os/IInterface;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    invoke-virtual {v3, v0, v2, p0}, Lcom/google/android/gms/common/internal/a;->w(IILandroid/os/IInterface;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {v3, p0}, Lcom/google/android/gms/common/internal/a;->F(Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/a;->C()Lcom/google/android/gms/common/internal/a$a;

    move-result-object p0

    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/a;->getConnectionHint()Landroid/os/Bundle;

    move-result-object v0

    if-eqz p0, :cond_2

    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/a;->C()Lcom/google/android/gms/common/internal/a$a;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/google/android/gms/common/internal/a$a;->onConnected(Landroid/os/Bundle;)V

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v1

    :catch_0
    const-string p0, "service probably died"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final f(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/common/internal/g;->h:Lcom/google/android/gms/common/internal/a;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/a;->D()Lcom/google/android/gms/common/internal/a$b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/a;->D()Lcom/google/android/gms/common/internal/a$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/a$b;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/a;->o(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
