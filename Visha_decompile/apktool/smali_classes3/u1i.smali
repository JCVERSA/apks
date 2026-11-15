.class public final Lu1i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic b:Lw1i;


# direct methods
.method public synthetic constructor <init>(Lw1i;Lv1i;)V
    .locals 0

    iput-object p1, p0, Lu1i;->b:Lw1i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lu1i;->b:Lw1i;

    invoke-static {v0}, Lw1i;->d(Lw1i;)Lx1i;

    move-result-object v1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "LmdServiceConnectionManager.onServiceConnected(%s)"

    invoke-virtual {v1, v2, p1}, Lx1i;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfss;

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/internal/ads/zzfss;-><init>(Lu1i;Landroid/os/IBinder;)V

    invoke-static {v0, p1}, Lw1i;->l(Lw1i;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    iget-object v0, p0, Lu1i;->b:Lw1i;

    invoke-static {v0}, Lw1i;->d(Lw1i;)Lx1i;

    move-result-object v1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "LmdServiceConnectionManager.onServiceDisconnected(%s)"

    invoke-virtual {v1, v2, p1}, Lx1i;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfst;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzfst;-><init>(Lu1i;)V

    invoke-static {v0, p1}, Lw1i;->l(Lw1i;Ljava/lang/Runnable;)V

    return-void
.end method
