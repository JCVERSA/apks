.class public Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;
.super Landroid/app/Service;
.source "source.java"


# static fields
.field private static final d:Lcom/amazonaws/logging/Log;

.field static e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;


# instance fields
.field a:Z

.field private b:I

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->d:Lcom/amazonaws/logging/Log;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->a:Z

    .line 6
    .line 7
    iput v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->b:I

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->c:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 p3, 0x1

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    and-int/2addr v0, v1

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->e()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-array v2, p3, [Ljava/lang/Object;

    .line 25
    .line 26
    aput-object v0, v2, p1

    .line 27
    .line 28
    const-string v0, "network status: %s\n"

    .line 29
    .line 30
    invoke-virtual {p2, v0, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 31
    .line 32
    .line 33
    invoke-static {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->c(Landroid/content/Context;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->e()Ljava/util/Map;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    new-array v3, p3, [Ljava/lang/Object;

    .line 50
    .line 51
    aput-object v2, v3, p1

    .line 52
    .line 53
    const-string v2, "# of active transfers: %d\n"

    .line 54
    .line 55
    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 56
    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_1

    .line 71
    .line 72
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 77
    .line 78
    iget-object v3, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->p:Ljava/lang/String;

    .line 79
    .line 80
    iget-object v4, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->q:Ljava/lang/String;

    .line 81
    .line 82
    iget-object v5, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->o:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 83
    .line 84
    iget-wide v6, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->h:J

    .line 85
    .line 86
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    iget-wide v7, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->i:J

    .line 91
    .line 92
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    const/4 v7, 0x5

    .line 97
    new-array v7, v7, [Ljava/lang/Object;

    .line 98
    .line 99
    aput-object v3, v7, p1

    .line 100
    .line 101
    aput-object v4, v7, p3

    .line 102
    .line 103
    aput-object v5, v7, v1

    .line 104
    .line 105
    const/4 v3, 0x3

    .line 106
    aput-object v6, v7, v3

    .line 107
    .line 108
    const/4 v3, 0x4

    .line 109
    aput-object v2, v7, v3

    .line 110
    .line 111
    const-string v2, "bucket: %s, key: %s, status: %s, total size: %d, current: %d\n"

    .line 112
    .line 113
    invoke-virtual {p2, v2, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "Can\'t bind to TransferService"

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->d:Lcom/amazonaws/logging/Log;

    .line 5
    .line 6
    const-string v1, "Starting Transfer Service to listen for network connectivity changes."

    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->d(Landroid/content/Context;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sput-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    .line 20
    .line 21
    monitor-enter p0

    .line 22
    :try_start_0
    iget-boolean v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    :try_start_1
    const-string v1, "Registering the network receiver"

    .line 27
    .line 28
    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    .line 32
    .line 33
    new-instance v1, Landroid/content/IntentFilter;

    .line 34
    .line 35
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 36
    .line 37
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->a:Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    goto :goto_1

    .line 49
    :catch_0
    :try_start_2
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->d:Lcom/amazonaws/logging/Log;

    .line 50
    .line 51
    const-string v1, "Ignoring the leak in registering the receiver."

    .line 52
    .line 53
    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->j(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_1
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->d:Lcom/amazonaws/logging/Log;

    .line 58
    .line 59
    const-string v1, "Ignoring the exception trying to register the receiver for connectivity change."

    .line 60
    .line 61
    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->j(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_0
    :goto_0
    monitor-exit p0

    .line 65
    return-void

    .line 66
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    throw v0
.end method

.method public onDestroy()V
    .locals 4

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->d:Lcom/amazonaws/logging/Log;

    .line 8
    .line 9
    const-string v1, "Moving the service out of the Foreground state."

    .line 10
    .line 11
    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :try_start_1
    iget-boolean v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->c:Z

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 18
    .line 19
    .line 20
    monitor-exit p0

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->d:Lcom/amazonaws/logging/Log;

    .line 27
    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v3, "Error in moving the service out of the foreground state: "

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {v1, v0}, Lcom/amazonaws/logging/Log;->f(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    :goto_0
    :try_start_3
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->d:Lcom/amazonaws/logging/Log;

    .line 49
    .line 50
    const-string v1, "De-registering the network receiver."

    .line 51
    .line 52
    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    monitor-enter p0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    .line 56
    :try_start_4
    iget-boolean v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->a:Z

    .line 57
    .line 58
    if-nez v0, :cond_1

    .line 59
    .line 60
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    .line 61
    .line 62
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 63
    .line 64
    .line 65
    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->a:Z

    .line 67
    .line 68
    const/4 v0, 0x0

    .line 69
    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :catchall_1
    move-exception v0

    .line 73
    goto :goto_2

    .line 74
    :cond_1
    :goto_1
    monitor-exit p0

    .line 75
    goto :goto_3

    .line 76
    :goto_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 77
    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1

    .line 78
    :catch_1
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->d:Lcom/amazonaws/logging/Log;

    .line 79
    .line 80
    const-string v1, "Exception trying to de-register the network receiver"

    .line 81
    .line 82
    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->j(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    :goto_3
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 p3, 0x1a

    .line 4
    .line 5
    if-lt p2, p3, :cond_1

    .line 6
    .line 7
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :try_start_1
    const-string p2, "notification"

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    check-cast p2, Landroid/app/Notification;

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    const-string p3, "ongoing-notification-id"

    .line 19
    .line 20
    iget v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->b:I

    .line 21
    .line 22
    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 23
    .line 24
    .line 25
    move-result p3

    .line 26
    iput p3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->b:I

    .line 27
    .line 28
    const-string p3, "remove-notification"

    .line 29
    .line 30
    iget-boolean v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->c:Z

    .line 31
    .line 32
    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    iput-boolean p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->c:Z

    .line 37
    .line 38
    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->d:Lcom/amazonaws/logging/Log;

    .line 39
    .line 40
    const-string p3, "Putting the service in Foreground state."

    .line 41
    .line 42
    invoke-interface {p1, p3}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->b:I

    .line 46
    .line 47
    invoke-virtual {p0, p1, p2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->d:Lcom/amazonaws/logging/Log;

    .line 54
    .line 55
    const-string p2, "No notification is passed in the intent. Unable to transition to foreground."

    .line 56
    .line 57
    invoke-interface {p1, p2}, Lcom/amazonaws/logging/Log;->f(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    monitor-exit p0

    .line 61
    goto :goto_2

    .line 62
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 64
    :catch_0
    move-exception p1

    .line 65
    sget-object p2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->d:Lcom/amazonaws/logging/Log;

    .line 66
    .line 67
    new-instance p3, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v0, "Error in moving the service to foreground state: "

    .line 73
    .line 74
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-interface {p2, p1}, Lcom/amazonaws/logging/Log;->f(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :cond_1
    :goto_2
    monitor-enter p0

    .line 88
    :try_start_3
    iget-boolean p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->a:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 89
    .line 90
    if-eqz p1, :cond_2

    .line 91
    .line 92
    :try_start_4
    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->d:Lcom/amazonaws/logging/Log;

    .line 93
    .line 94
    const-string p2, "Registering the network receiver"

    .line 95
    .line 96
    invoke-interface {p1, p2}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    .line 100
    .line 101
    new-instance p2, Landroid/content/IntentFilter;

    .line 102
    .line 103
    const-string p3, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 104
    .line 105
    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 109
    .line 110
    .line 111
    const/4 p1, 0x0

    .line 112
    iput-boolean p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->a:Z
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :catchall_1
    move-exception p1

    .line 116
    goto :goto_4

    .line 117
    :catch_1
    :try_start_5
    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->d:Lcom/amazonaws/logging/Log;

    .line 118
    .line 119
    const-string p2, "Ignoring the leak in registering the receiver."

    .line 120
    .line 121
    invoke-interface {p1, p2}, Lcom/amazonaws/logging/Log;->j(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    goto :goto_3

    .line 125
    :catch_2
    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->d:Lcom/amazonaws/logging/Log;

    .line 126
    .line 127
    const-string p2, "Ignoring the exception trying to register the receiver for connectivity change."

    .line 128
    .line 129
    invoke-interface {p1, p2}, Lcom/amazonaws/logging/Log;->j(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    :cond_2
    :goto_3
    monitor-exit p0

    .line 133
    const/4 p1, 0x1

    .line 134
    return p1

    .line 135
    :goto_4
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 136
    throw p1
.end method
