.class public Lru/zdevs/zarchiver/service/ZArchiverService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lru/zdevs/zarchiver/archiver/C2JBridge$a;


# static fields
.field public static f:I = 0x1000007

.field public static g:I = 0x362


# instance fields
.field public a:Z

.field public b:Landroid/app/NotificationManager;

.field public final c:Lru/zdevs/zarchiver/service/a;

.field public final d:Landroid/os/Handler;

.field public final e:Lru/zdevs/zarchiver/service/c$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lru/zdevs/zarchiver/service/ZArchiverService;->a:Z

    .line 6
    .line 7
    new-instance v0, Lru/zdevs/zarchiver/service/a;

    .line 8
    .line 9
    invoke-direct {v0}, Lru/zdevs/zarchiver/service/a;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lru/zdevs/zarchiver/service/ZArchiverService;->c:Lru/zdevs/zarchiver/service/a;

    .line 13
    .line 14
    new-instance v0, Lru/zdevs/zarchiver/service/ZArchiverService$1;

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v0, p0, v1}, Lru/zdevs/zarchiver/service/ZArchiverService$1;-><init>(Lru/zdevs/zarchiver/service/ZArchiverService;Landroid/os/Looper;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lru/zdevs/zarchiver/service/ZArchiverService;->d:Landroid/os/Handler;

    .line 24
    .line 25
    new-instance v0, Lru/zdevs/zarchiver/service/ZArchiverService$2;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lru/zdevs/zarchiver/service/ZArchiverService$2;-><init>(Lru/zdevs/zarchiver/service/ZArchiverService;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lru/zdevs/zarchiver/service/ZArchiverService;->e:Lru/zdevs/zarchiver/service/c$a;

    .line 31
    .line 32
    return-void
.end method

.method public static b(Lru/zdevs/zarchiver/service/ZArchiverService;ILjava/lang/String;II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/content/Intent;

    .line 5
    .line 6
    const-class v1, Lru/zdevs/zarchiver/ZArchiver;

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 9
    .line 10
    .line 11
    const/high16 v1, 0x20100000

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    const-string v1, "ZArchiver.iCMD"

    .line 17
    .line 18
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    const-string v1, "iTaskID"

    .line 22
    .line 23
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    sget-object v1, La0/c;->k:[B

    .line 27
    .line 28
    aget-byte v1, v1, p1

    .line 29
    .line 30
    const-string v2, "iTaskType"

    .line 31
    .line 32
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    const/16 v1, 0x17

    .line 36
    .line 37
    if-ne p4, v1, :cond_0

    .line 38
    .line 39
    sget-object p4, Lru/zdevs/zarchiver/archiver/C2JBridge;->j:[Le0/c;

    .line 40
    .line 41
    aget-object p4, p4, p1

    .line 42
    .line 43
    const-string v1, "iData"

    .line 44
    .line 45
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    :cond_0
    iget-object p4, p0, Lru/zdevs/zarchiver/service/ZArchiverService;->b:Landroid/app/NotificationManager;

    .line 49
    .line 50
    if-nez p4, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    invoke-static {p0, p1, p2, p3, v0}, Lru/zdevs/zarchiver/service/b;->c(Landroid/app/Service;ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Lru/zdevs/zarchiver/service/b;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p0}, Lru/zdevs/zarchiver/service/ZArchiverService;->j()Z

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    if-nez p2, :cond_2

    .line 66
    .line 67
    iget-object p2, p1, Lru/zdevs/zarchiver/service/b;->e:Landroid/app/Notification$Builder;

    .line 68
    .line 69
    if-eqz p2, :cond_2

    .line 70
    .line 71
    const/16 p3, 0x12c

    .line 72
    .line 73
    const/16 p4, 0xbb8

    .line 74
    .line 75
    const/16 v0, -0x100

    .line 76
    .line 77
    invoke-virtual {p2, v0, p3, p4}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 78
    .line 79
    .line 80
    :cond_2
    iget-object p0, p0, Lru/zdevs/zarchiver/service/ZArchiverService;->b:Landroid/app/NotificationManager;

    .line 81
    .line 82
    invoke-virtual {p1, p0}, Lru/zdevs/zarchiver/service/b;->i(Landroid/app/NotificationManager;)V

    .line 83
    .line 84
    .line 85
    :goto_0
    return-void
.end method

.method public static c(Lru/zdevs/zarchiver/service/ZArchiverService;I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lru/zdevs/zarchiver/service/ZArchiverService;->b:Landroid/app/NotificationManager;

    .line 2
    .line 3
    sget-boolean v0, Lru/zdevs/zarchiver/service/b;->f:Z

    .line 4
    .line 5
    const-class v0, Lru/zdevs/zarchiver/service/b;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    add-int/lit8 p1, p1, 0x46

    .line 11
    .line 12
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0

    .line 18
    throw p0

    .line 19
    :cond_0
    :goto_0
    monitor-exit v0

    .line 20
    return-void
.end method

.method public static d(Lru/zdevs/zarchiver/service/ZArchiverService;ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/content/Intent;

    .line 5
    .line 6
    const-class v1, Lru/zdevs/zarchiver/ZArchiver;

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 9
    .line 10
    .line 11
    const/high16 v1, 0x20100000

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    const-string v1, "ZArchiver.iCMD"

    .line 17
    .line 18
    const/16 v2, 0x15

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    const-string v1, "iTaskID"

    .line 24
    .line 25
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    sget-object v1, La0/c;->k:[B

    .line 29
    .line 30
    aget-byte v1, v1, p1

    .line 31
    .line 32
    const-string v2, "iTaskType"

    .line 33
    .line 34
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lru/zdevs/zarchiver/service/ZArchiverService;->b:Landroid/app/NotificationManager;

    .line 38
    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-static {p0, p1, p2, v0}, Lru/zdevs/zarchiver/service/b;->e(Landroid/app/Service;ILjava/lang/String;Landroid/content/Intent;)Lru/zdevs/zarchiver/service/b;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iget-object p0, p0, Lru/zdevs/zarchiver/service/ZArchiverService;->b:Landroid/app/NotificationManager;

    .line 47
    .line 48
    invoke-virtual {p1, p0}, Lru/zdevs/zarchiver/service/b;->i(Landroid/app/NotificationManager;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void
.end method

.method public static h(II)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "ZArchiver.iMES"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "iTaskID"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    sget-object v1, La0/c;->k:[B

    .line 14
    .line 15
    aget-byte p0, v1, p0

    .line 16
    .line 17
    const-string v1, "iTaskType"

    .line 18
    .line 19
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    const-string p0, "iAction"

    .line 23
    .line 24
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    const-string p0, "ru.zdevs.zarchiver"

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    return-object v0
.end method

.method public static i(I)Z
    .locals 1

    sget v0, Lru/zdevs/zarchiver/service/ZArchiverService;->f:I

    invoke-static {v0, p0}, La0/c;->K(II)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final declared-synchronized a(ILjava/lang/String;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lru/zdevs/zarchiver/service/ZArchiverService;->d:Landroid/os/Handler;

    .line 3
    .line 4
    const/4 v1, 0x3

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit p0

    .line 17
    throw p1
.end method

.method public final declared-synchronized e(II)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lru/zdevs/zarchiver/service/ZArchiverService;->d:Landroid/os/Handler;

    .line 3
    .line 4
    const/4 v1, 0x4

    .line 5
    invoke-virtual {v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    monitor-exit p0

    .line 16
    throw p1
.end method

.method public final declared-synchronized f(IILjava/lang/String;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lru/zdevs/zarchiver/service/ZArchiverService;->a:Z

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lru/zdevs/zarchiver/service/ZArchiverService;->j()Z

    .line 8
    .line 9
    .line 10
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    if-nez v0, :cond_1

    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :cond_1
    :try_start_1
    invoke-static {p2, p3}, Le0/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    const/16 p3, 0x12

    .line 25
    .line 26
    invoke-static {p1, p3}, Lru/zdevs/zarchiver/service/ZArchiverService;->h(II)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string p3, "sText"

    .line 31
    .line 32
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    const-string p2, "iType"

    .line 36
    .line 37
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    .line 42
    .line 43
    monitor-exit p0

    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    monitor-exit p0

    .line 47
    throw p1
.end method

.method public final declared-synchronized g(II)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lru/zdevs/zarchiver/service/ZArchiverService;->d:Landroid/os/Handler;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lru/zdevs/zarchiver/service/ZArchiverService;->d:Landroid/os/Handler;

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    invoke-virtual {v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    monitor-exit p0

    .line 21
    throw p1
.end method

.method public final j()Z
    .locals 4

    .line 1
    const-string v0, "power"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/os/PowerManager;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 v3, 0x15

    .line 16
    .line 17
    if-lt v2, v3, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    :cond_1
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    .line 25
    .line 26
    .line 27
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    return v0

    .line 29
    :catch_0
    return v1
.end method

.method public final declared-synchronized k(ILh0/h;I)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, La0/c;->l:[Ljava/lang/String;

    .line 3
    .line 4
    aget-object v0, v0, p1

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {p1, v1}, Lru/zdevs/zarchiver/service/ZArchiverService;->h(II)Landroid/content/Intent;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v1, "iAction"

    .line 12
    .line 13
    const/16 v2, 0x13

    .line 14
    .line 15
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    const-string v1, "sFilePath"

    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Ln0/e;->h()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v3, "/"

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    if-eqz p2, :cond_0

    .line 48
    .line 49
    const-string v0, "oPath"

    .line 50
    .line 51
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    :cond_0
    const-string p2, "iFlags"

    .line 55
    .line 56
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    monitor-exit p0

    .line 63
    return-void

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    monitor-exit p0

    .line 66
    throw p1
.end method

.method public final declared-synchronized l(Ls0/g;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls0/g;",
            "Z",
            "Ljava/util/ArrayList<",
            "Le0/a$b;",
            ">;",
            "Ljava/util/ArrayList<",
            "Le0/i;",
            ">;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lru/zdevs/zarchiver/service/ZArchiverService;->a:Z

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lru/zdevs/zarchiver/service/ZArchiverService;->j()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    invoke-virtual {p1}, Ls0/g;->isCancelled()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/4 v4, 0x2

    .line 22
    const/4 v5, 0x0

    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    const p2, 0x7f0c00dc

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    iget v3, p1, Ls0/g;->c:I

    .line 34
    .line 35
    sget-object v6, La0/c;->k:[B

    .line 36
    .line 37
    aget-byte v3, v6, v3

    .line 38
    .line 39
    and-int/lit8 v3, v3, 0x7f

    .line 40
    .line 41
    int-to-byte v3, v3

    .line 42
    const/16 v7, 0x8

    .line 43
    .line 44
    const/4 v8, 0x7

    .line 45
    const/4 v9, 0x3

    .line 46
    if-eqz p3, :cond_3

    .line 47
    .line 48
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result v10

    .line 52
    if-ne v10, v1, :cond_3

    .line 53
    .line 54
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v10

    .line 58
    check-cast v10, Le0/a$b;

    .line 59
    .line 60
    iget-object v10, v10, Le0/a$b;->c:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 63
    .line 64
    .line 65
    move-result v10

    .line 66
    if-ne v10, v1, :cond_3

    .line 67
    .line 68
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v10

    .line 72
    check-cast v10, Le0/a$b;

    .line 73
    .line 74
    iget v10, v10, Le0/a$b;->d:I

    .line 75
    .line 76
    if-ge v10, v4, :cond_3

    .line 77
    .line 78
    if-eq v3, v9, :cond_2

    .line 79
    .line 80
    if-eq v3, v8, :cond_2

    .line 81
    .line 82
    if-eq v3, v7, :cond_2

    .line 83
    .line 84
    const/4 v10, 0x5

    .line 85
    if-ne v3, v10, :cond_3

    .line 86
    .line 87
    :cond_2
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    check-cast p2, Le0/a$b;

    .line 92
    .line 93
    iget-object p2, p2, Le0/a$b;->c:Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    check-cast p2, Le0/a$a;

    .line 100
    .line 101
    iget p3, p2, Le0/a$a;->a:I

    .line 102
    .line 103
    iget-object p2, p2, Le0/a$a;->b:Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {p3, p2}, Le0/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    :goto_1
    move-object p3, v5

    .line 110
    goto/16 :goto_5

    .line 111
    .line 112
    :cond_3
    if-nez p2, :cond_5

    .line 113
    .line 114
    if-eqz p3, :cond_4

    .line 115
    .line 116
    if-nez v0, :cond_d

    .line 117
    .line 118
    :cond_4
    const p2, 0x7f0c00e7

    .line 119
    .line 120
    .line 121
    goto :goto_4

    .line 122
    :cond_5
    if-eq v3, v1, :cond_11

    .line 123
    .line 124
    const/16 p2, 0xe

    .line 125
    .line 126
    if-eq v3, p2, :cond_10

    .line 127
    .line 128
    if-eq v3, v9, :cond_f

    .line 129
    .line 130
    const/4 p2, 0x4

    .line 131
    if-eq v3, p2, :cond_c

    .line 132
    .line 133
    const/4 p2, 0x6

    .line 134
    if-eq v3, p2, :cond_c

    .line 135
    .line 136
    if-eq v3, v8, :cond_b

    .line 137
    .line 138
    if-eq v3, v7, :cond_9

    .line 139
    .line 140
    const/16 p2, 0xa

    .line 141
    .line 142
    if-eq v3, p2, :cond_c

    .line 143
    .line 144
    const/16 p2, 0xb

    .line 145
    .line 146
    if-eq v3, p2, :cond_6

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_6
    iget p2, p1, Ls0/g;->c:I

    .line 150
    .line 151
    aget-byte p2, v6, p2

    .line 152
    .line 153
    const/16 v3, -0x80

    .line 154
    .line 155
    and-int/2addr p2, v3

    .line 156
    if-ne p2, v3, :cond_7

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_7
    const/4 v1, 0x0

    .line 160
    :goto_2
    if-eqz v1, :cond_8

    .line 161
    .line 162
    const p2, 0x7f0c0106

    .line 163
    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_8
    const p2, 0x7f0c0105

    .line 167
    .line 168
    .line 169
    goto :goto_4

    .line 170
    :cond_9
    if-eqz v0, :cond_a

    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_a
    const p2, 0x7f0c0103

    .line 174
    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_b
    const p2, 0x7f0c0100

    .line 178
    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_c
    if-eqz v0, :cond_e

    .line 182
    .line 183
    :cond_d
    :goto_3
    const/4 p2, 0x0

    .line 184
    goto :goto_4

    .line 185
    :cond_e
    const p2, 0x7f0c0104

    .line 186
    .line 187
    .line 188
    goto :goto_4

    .line 189
    :cond_f
    const p2, 0x7f0c0101

    .line 190
    .line 191
    .line 192
    goto :goto_4

    .line 193
    :cond_10
    const p2, 0x7f0c00ee

    .line 194
    .line 195
    .line 196
    goto :goto_4

    .line 197
    :cond_11
    const p2, 0x7f0c0102

    .line 198
    .line 199
    .line 200
    :goto_4
    if-nez p2, :cond_12

    .line 201
    .line 202
    move-object p2, v5

    .line 203
    goto :goto_5

    .line 204
    :cond_12
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :goto_5
    if-nez p2, :cond_13

    .line 209
    .line 210
    if-nez p3, :cond_13

    .line 211
    .line 212
    if-nez p4, :cond_13

    .line 213
    .line 214
    monitor-exit p0

    .line 215
    return-void

    .line 216
    :cond_13
    if-eqz v0, :cond_16

    .line 217
    .line 218
    if-eqz p3, :cond_14

    .line 219
    .line 220
    :try_start_1
    iget p1, p1, Ls0/g;->c:I

    .line 221
    .line 222
    const/16 p2, 0x15

    .line 223
    .line 224
    invoke-static {p1, p2}, Lru/zdevs/zarchiver/service/ZArchiverService;->h(II)Landroid/content/Intent;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    const-string p2, "oErrorData"

    .line 229
    .line 230
    new-array p4, v2, [Landroid/os/Parcelable;

    .line 231
    .line 232
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object p3

    .line 236
    check-cast p3, [Landroid/os/Parcelable;

    .line 237
    .line 238
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 239
    .line 240
    .line 241
    goto :goto_6

    .line 242
    :cond_14
    if-eqz p4, :cond_15

    .line 243
    .line 244
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    .line 245
    .line 246
    .line 247
    move-result p3

    .line 248
    if-lez p3, :cond_15

    .line 249
    .line 250
    iget p1, p1, Ls0/g;->c:I

    .line 251
    .line 252
    const/16 p3, 0x18

    .line 253
    .line 254
    invoke-static {p1, p3}, Lru/zdevs/zarchiver/service/ZArchiverService;->h(II)Landroid/content/Intent;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    const-string p3, "sText"

    .line 259
    .line 260
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    .line 262
    .line 263
    const-string p2, "oData"

    .line 264
    .line 265
    new-array p3, v2, [Landroid/os/Parcelable;

    .line 266
    .line 267
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object p3

    .line 271
    check-cast p3, [Landroid/os/Parcelable;

    .line 272
    .line 273
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 274
    .line 275
    .line 276
    goto :goto_6

    .line 277
    :cond_15
    iget p1, p1, Ls0/g;->c:I

    .line 278
    .line 279
    const/16 p3, 0x12

    .line 280
    .line 281
    invoke-static {p1, p3}, Lru/zdevs/zarchiver/service/ZArchiverService;->h(II)Landroid/content/Intent;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    const-string p3, "sText"

    .line 286
    .line 287
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    .line 289
    .line 290
    const-string p2, "iType"

    .line 291
    .line 292
    invoke-virtual {p1, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 293
    .line 294
    .line 295
    :goto_6
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 296
    .line 297
    .line 298
    goto :goto_9

    .line 299
    :cond_16
    if-nez p2, :cond_17

    .line 300
    .line 301
    const-string p2, ""

    .line 302
    .line 303
    :cond_17
    if-nez p3, :cond_18

    .line 304
    .line 305
    move-object p3, v5

    .line 306
    goto :goto_7

    .line 307
    :cond_18
    new-array v0, v2, [Landroid/os/Parcelable;

    .line 308
    .line 309
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object p3

    .line 313
    check-cast p3, [Landroid/os/Parcelable;

    .line 314
    .line 315
    :goto_7
    if-nez p4, :cond_19

    .line 316
    .line 317
    goto :goto_8

    .line 318
    :cond_19
    new-array v0, v2, [Landroid/os/Parcelable;

    .line 319
    .line 320
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object p4

    .line 324
    move-object v5, p4

    .line 325
    check-cast v5, [Landroid/os/Parcelable;

    .line 326
    .line 327
    :goto_8
    invoke-virtual {p0, p1, p2, p3, v5}, Lru/zdevs/zarchiver/service/ZArchiverService;->q(Ls0/g;Ljava/lang/String;[Landroid/os/Parcelable;[Landroid/os/Parcelable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 328
    .line 329
    .line 330
    :goto_9
    monitor-exit p0

    .line 331
    return-void

    .line 332
    :catchall_0
    move-exception p1

    .line 333
    monitor-exit p0

    .line 334
    throw p1
.end method

.method public final declared-synchronized m(IILh0/h;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lru/zdevs/zarchiver/service/ZArchiverService;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :try_start_1
    invoke-static {p1, v0}, Lru/zdevs/zarchiver/service/ZArchiverService;->h(II)Landroid/content/Intent;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v0, "iAction"

    .line 14
    .line 15
    const/4 v1, 0x6

    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    const-string v0, "iType"

    .line 20
    .line 21
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    const-string p2, "oPath"

    .line 25
    .line 26
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    .line 31
    .line 32
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    monitor-exit p0

    .line 36
    throw p1
.end method

.method public final declared-synchronized n(II)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lru/zdevs/zarchiver/service/ZArchiverService;->d:Landroid/os/Handler;

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    monitor-exit p0

    .line 16
    throw p1
.end method

.method public final declared-synchronized o(ILjava/lang/String;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lru/zdevs/zarchiver/service/ZArchiverService;->d:Landroid/os/Handler;

    .line 3
    .line 4
    const/16 v1, 0xf

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    .line 18
    throw p1
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lru/zdevs/zarchiver/service/ZArchiverService;->e:Lru/zdevs/zarchiver/service/c$a;

    return-object p1
.end method

.method public final onCreate()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    const/4 v2, 0x5

    .line 4
    if-ge v1, v2, :cond_0

    .line 5
    .line 6
    sget-object v2, La0/c;->j:[I

    .line 7
    .line 8
    const/high16 v3, 0x100000

    .line 9
    .line 10
    aput v3, v2, v1

    .line 11
    .line 12
    sget-object v2, La0/c;->k:[B

    .line 13
    .line 14
    aput-byte v0, v2, v1

    .line 15
    .line 16
    sget-object v2, La0/c;->l:[Ljava/lang/String;

    .line 17
    .line 18
    const-string v3, ""

    .line 19
    .line 20
    aput-object v3, v2, v1

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string v0, "notification"

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/app/NotificationManager;

    .line 32
    .line 33
    iput-object v0, p0, Lru/zdevs/zarchiver/service/ZArchiverService;->b:Landroid/app/NotificationManager;

    .line 34
    .line 35
    sput-object p0, Lru/zdevs/zarchiver/archiver/C2JBridge;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 36
    .line 37
    sput-object p0, Lru/zdevs/zarchiver/archiver/C2JBridge;->b:Landroid/content/ContextWrapper;

    .line 38
    .line 39
    invoke-static {p0}, Ln0/a;->a(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p0}, Lx0/d;->e(Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p0}, Lru/zdevs/zarchiver/archiver/C2JBridge;->c(Landroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p0}, Lru/zdevs/zarchiver/service/b;->a(Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    const-string v0, "ZArchiverService"

    .line 52
    .line 53
    const-string v1, "Service started"

    .line 54
    .line 55
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/service/ZArchiverService;->d:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    sput-object v1, Lru/zdevs/zarchiver/archiver/C2JBridge;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 8
    .line 9
    sput-object v1, Lru/zdevs/zarchiver/archiver/C2JBridge;->b:Landroid/content/ContextWrapper;

    .line 10
    .line 11
    sget-boolean v0, Ln0/a;->a:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    sput-object v1, Lru/zdevs/zarchiver/io/KitKatExtSD;->a:Ljava/lang/String;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lru/zdevs/zarchiver/service/ZArchiverService;->b:Landroid/app/NotificationManager;

    .line 18
    .line 19
    invoke-static {v0}, Lru/zdevs/zarchiver/service/b;->g(Landroid/app/NotificationManager;)V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lru/zdevs/zarchiver/service/ZArchiverService;->b:Landroid/app/NotificationManager;

    .line 23
    .line 24
    const-string v0, "ZArchiverService"

    .line 25
    .line 26
    const-string v1, "Service stopped"

    .line 27
    .line 28
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 1
    const/4 p3, 0x1

    .line 2
    invoke-static {p2, p3}, La0/c;->K(II)Z

    .line 3
    .line 4
    .line 5
    move-result p2

    .line 6
    if-nez p2, :cond_2

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string p2, "ru.zdevs.zarchiver.service.cancel_task"

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_3

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_3

    .line 28
    .line 29
    const-string p2, "iTaskID"

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-static {p1}, La0/c;->J(I)Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-eqz p2, :cond_1

    .line 40
    .line 41
    const/16 p2, 0xf

    .line 42
    .line 43
    invoke-static {p0, p1, p2}, La0/c;->h0(Lru/zdevs/zarchiver/service/ZArchiverService;II)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    iget-object p2, p0, Lru/zdevs/zarchiver/service/ZArchiverService;->b:Landroid/app/NotificationManager;

    .line 48
    .line 49
    invoke-static {p2, p0, p1}, Lru/zdevs/zarchiver/service/b;->f(Landroid/app/NotificationManager;Landroid/app/Service;I)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    :goto_0
    const-string p1, "ZArchiverService"

    .line 54
    .line 55
    const-string p2, "Service restart..."

    .line 56
    .line 57
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lru/zdevs/zarchiver/service/ZArchiverService;->r()V

    .line 61
    .line 62
    .line 63
    :cond_3
    :goto_1
    return p3
.end method

.method public final onTaskRemoved(Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0}, Lru/zdevs/zarchiver/service/ZArchiverService;->r()V

    return-void
.end method

.method public final declared-synchronized p(IILjava/lang/String;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lru/zdevs/zarchiver/service/ZArchiverService;->d:Landroid/os/Handler;

    .line 3
    .line 4
    const/16 v1, 0x16

    .line 5
    .line 6
    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit p0

    .line 17
    throw p1
.end method

.method public final q(Ls0/g;Ljava/lang/String;[Landroid/os/Parcelable;[Landroid/os/Parcelable;)V
    .locals 6

    .line 1
    new-instance v5, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v0, Lru/zdevs/zarchiver/ZArchiver;

    .line 4
    .line 5
    invoke-direct {v5, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const/high16 v0, 0x20100000

    .line 9
    .line 10
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    sget-object v0, La0/c;->k:[B

    .line 14
    .line 15
    const-string v1, "iTaskType"

    .line 16
    .line 17
    const-string v2, "ZArchiver.iCMD"

    .line 18
    .line 19
    if-eqz p3, :cond_0

    .line 20
    .line 21
    const/16 p4, 0x18

    .line 22
    .line 23
    invoke-virtual {v5, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    iget p4, p1, Ls0/g;->c:I

    .line 27
    .line 28
    aget-byte p4, v0, p4

    .line 29
    .line 30
    invoke-virtual {v5, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    const-string p4, "iErrorData"

    .line 34
    .line 35
    invoke-virtual {v5, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    if-eqz p4, :cond_1

    .line 40
    .line 41
    const/16 p3, 0x19

    .line 42
    .line 43
    invoke-virtual {v5, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    iget p3, p1, Ls0/g;->c:I

    .line 47
    .line 48
    aget-byte p3, v0, p3

    .line 49
    .line 50
    invoke-virtual {v5, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    const-string p3, "iData"

    .line 54
    .line 55
    invoke-virtual {v5, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_0
    iget-object p3, p0, Lru/zdevs/zarchiver/service/ZArchiverService;->b:Landroid/app/NotificationManager;

    .line 59
    .line 60
    if-nez p3, :cond_2

    .line 61
    .line 62
    return-void

    .line 63
    :cond_2
    iget v1, p1, Ls0/g;->c:I

    .line 64
    .line 65
    sget-object p3, La0/c;->l:[Ljava/lang/String;

    .line 66
    .line 67
    aget-object v2, p3, v1

    .line 68
    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 70
    .line 71
    .line 72
    move-result-wide p3

    .line 73
    iget-wide v3, p1, Ls0/g;->g:J

    .line 74
    .line 75
    sub-long/2addr p3, v3

    .line 76
    const-wide/16 v3, 0x3e8

    .line 77
    .line 78
    div-long/2addr p3, v3

    .line 79
    long-to-int v4, p3

    .line 80
    move-object v0, p0

    .line 81
    move-object v3, p2

    .line 82
    invoke-static/range {v0 .. v5}, Lru/zdevs/zarchiver/service/b;->d(Landroid/app/Service;ILjava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)Lru/zdevs/zarchiver/service/b;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p0}, Lru/zdevs/zarchiver/service/ZArchiverService;->j()Z

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    if-nez p2, :cond_3

    .line 91
    .line 92
    iget-object p2, p1, Lru/zdevs/zarchiver/service/b;->e:Landroid/app/Notification$Builder;

    .line 93
    .line 94
    if-eqz p2, :cond_3

    .line 95
    .line 96
    const/16 p3, 0x12c

    .line 97
    .line 98
    const/16 p4, 0xbb8

    .line 99
    .line 100
    const v0, -0xff0001

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2, v0, p3, p4}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 104
    .line 105
    .line 106
    :cond_3
    iget-object p2, p0, Lru/zdevs/zarchiver/service/ZArchiverService;->b:Landroid/app/NotificationManager;

    .line 107
    .line 108
    invoke-virtual {p1, p2}, Lru/zdevs/zarchiver/service/b;->i(Landroid/app/NotificationManager;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public final r()V
    .locals 5

    .line 1
    sget-object v0, La0/c;->j:[I

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    const/4 v3, 0x5

    .line 7
    if-ge v2, v3, :cond_1

    .line 8
    .line 9
    :try_start_0
    sget-object v3, La0/c;->j:[I

    .line 10
    .line 11
    aget v3, v3, v2

    .line 12
    .line 13
    const/high16 v4, 0x100000

    .line 14
    .line 15
    invoke-static {v3, v4}, La0/c;->K(II)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    monitor-exit v0

    .line 22
    const/4 v1, 0x1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :goto_1
    if-eqz v1, :cond_2

    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    iget-boolean v0, p0, Lru/zdevs/zarchiver/service/ZArchiverService;->a:Z

    .line 32
    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    const-string v0, "ZArchiverService"

    .line 36
    .line 37
    const-string v1, "Stop service..."

    .line 38
    .line 39
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lru/zdevs/zarchiver/service/ZArchiverService;->b:Landroid/app/NotificationManager;

    .line 43
    .line 44
    invoke-static {v0}, Lru/zdevs/zarchiver/service/b;->g(Landroid/app/NotificationManager;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 48
    .line 49
    .line 50
    :cond_3
    return-void

    .line 51
    :catchall_0
    move-exception v1

    .line 52
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    goto :goto_3

    .line 54
    :goto_2
    throw v1

    .line 55
    :goto_3
    goto :goto_2
.end method
