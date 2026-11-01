.class public final Lru/zdevs/zarchiver/activity/InstallApksDlg$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/activity/InstallApksDlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lru/zdevs/zarchiver/activity/InstallApksDlg;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/activity/InstallApksDlg;)V
    .locals 0

    iput-object p1, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg$e;->a:Lru/zdevs/zarchiver/activity/InstallApksDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    const/4 p1, 0x1

    .line 2
    iget-object v0, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg$e;->a:Lru/zdevs/zarchiver/activity/InstallApksDlg;

    .line 3
    .line 4
    iput-boolean p1, v0, Lru/zdevs/zarchiver/activity/InstallApksDlg;->c:Z

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, v0, Lru/zdevs/zarchiver/activity/InstallApksDlg;->a:Landroid/os/Handler;

    .line 8
    .line 9
    invoke-static {p2}, Lru/zdevs/zarchiver/service/c$a;->asInterface(Landroid/os/IBinder;)Lru/zdevs/zarchiver/service/c;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :try_start_0
    invoke-static {}, Lt0/b;->b()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    sget v1, Lt0/b;->g:I

    .line 18
    .line 19
    sget-object v2, Lt0/b;->e:Ljava/lang/String;

    .line 20
    .line 21
    invoke-interface {p1, p2, v1, v2}, Lru/zdevs/zarchiver/service/c;->SetSettings(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    :catch_0
    new-instance p2, Lru/zdevs/zarchiver/c;

    .line 25
    .line 26
    invoke-direct {p2}, Lru/zdevs/zarchiver/c;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 30
    .line 31
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p2, Lru/zdevs/zarchiver/c;->a:Ljava/lang/ref/WeakReference;

    .line 35
    .line 36
    iget-object p1, v0, Lru/zdevs/zarchiver/activity/InstallApksDlg;->d:Lh0/h;

    .line 37
    .line 38
    sget-object v1, Lw0/c;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 39
    .line 40
    new-instance v2, Lb0/d;

    .line 41
    .line 42
    invoke-direct {v2, v0, p2, p1}, Lb0/d;-><init>(Lru/zdevs/zarchiver/activity/InstallApksDlg;Lru/zdevs/zarchiver/c;Lh0/h;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
