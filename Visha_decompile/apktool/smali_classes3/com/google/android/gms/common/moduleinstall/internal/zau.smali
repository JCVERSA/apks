.class final Lcom/google/android/gms/common/moduleinstall/internal/zau;
.super Lcom/google/android/gms/common/moduleinstall/internal/zaa;
.source "SourceFile"


# instance fields
.field final synthetic zaa:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic zab:Lzda;

.field final synthetic zac:Lf15;

.field final synthetic zad:Lv2e;


# direct methods
.method public constructor <init>(Lv2e;Ljava/util/concurrent/atomic/AtomicReference;Lzda;Lf15;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/common/moduleinstall/internal/zau;->zaa:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/common/moduleinstall/internal/zau;->zab:Lzda;

    invoke-direct {p0}, Lcom/google/android/gms/common/moduleinstall/internal/zaa;-><init>()V

    return-void
.end method


# virtual methods
.method public final zad(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/common/moduleinstall/ModuleInstallResponse;)V
    .locals 1
    .param p2    # Lcom/google/android/gms/common/moduleinstall/ModuleInstallResponse;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/moduleinstall/internal/zau;->zaa:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/common/moduleinstall/internal/zau;->zab:Lzda;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Ljea;->d(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lzda;)Z

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result p0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/common/moduleinstall/ModuleInstallResponse;->zaa()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    return-void

    :cond_2
    const-class p0, Lf15;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/android/gms/common/api/internal/e;->b(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/d$a;

    throw v0
.end method
