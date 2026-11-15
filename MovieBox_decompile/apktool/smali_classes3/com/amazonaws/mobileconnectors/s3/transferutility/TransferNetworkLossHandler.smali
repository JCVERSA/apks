.class public Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;
.super Landroid/content/BroadcastReceiver;
.source "source.java"


# static fields
.field private static final d:Lcom/amazonaws/logging/Log;

.field private static e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;


# instance fields
.field final a:Landroid/net/ConnectivityManager;

.field private b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

.field c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->d:Lcom/amazonaws/logging/Log;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "connectivity"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->a:Landroid/net/ConnectivityManager;

    .line 13
    .line 14
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->c(Landroid/content/Context;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 26
    .line 27
    return-void
.end method

.method static synthetic a(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->g()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic b(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->f()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static declared-synchronized c()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;
    .locals 3

    .line 1
    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-object v1

    .line 10
    :cond_0
    :try_start_1
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->d:Lcom/amazonaws/logging/Log;

    .line 11
    .line 12
    const-string v2, "TransferNetworkLossHandler is not created. Please call `TransferNetworkLossHandler.getInstance(Context)` to instantiate it before retrieving"

    .line 13
    .line 14
    invoke-interface {v1, v2}, Lcom/amazonaws/logging/Log;->f(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityException;

    .line 18
    .line 19
    const-string v2, "TransferNetworkLossHandler is not created. Please call `TransferNetworkLossHandler.getInstance(Context)` to instantiate it before retrieving"

    .line 20
    .line 21
    invoke-direct {v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v1

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    throw v1
.end method

.method public static declared-synchronized d(Landroid/content/Context;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;
    .locals 2

    .line 1
    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object p0

    .line 22
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw p0
.end method

.method private declared-synchronized f()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->e()Ljava/util/Map;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 27
    .line 28
    iget v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 29
    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/S3ClientReference;->a(Ljava/lang/Integer;)Lcom/amazonaws/services/s3/AmazonS3;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 41
    .line 42
    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->a:Landroid/net/ConnectivityManager;

    .line 43
    .line 44
    invoke-virtual {v1, v2, v3, v4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->h(Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;Landroid/net/ConnectivityManager;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 51
    .line 52
    iget v1, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 53
    .line 54
    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 55
    .line 56
    invoke-virtual {v2, v1, v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    monitor-exit p0

    .line 63
    return-void

    .line 64
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    throw v0
.end method

.method private declared-synchronized g()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    new-array v2, v1, [Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 5
    .line 6
    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 7
    .line 8
    aput-object v3, v2, v0

    .line 9
    .line 10
    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->d:Lcom/amazonaws/logging/Log;

    .line 11
    .line 12
    const-string v4, "Loading transfers from database..."

    .line 13
    .line 14
    invoke-interface {v3, v4}, Lcom/amazonaws/logging/Log;->a(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    :try_start_1
    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    .line 24
    .line 25
    sget-object v6, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;->ANY:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;

    .line 26
    .line 27
    invoke-virtual {v5, v6, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->o(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;[Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)Landroid/database/Cursor;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    const-string v2, "_id"

    .line 38
    .line 39
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 48
    .line 49
    invoke-virtual {v5, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->d(I)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    if-nez v5, :cond_0

    .line 54
    .line 55
    new-instance v5, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 56
    .line 57
    invoke-direct {v5, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;-><init>(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5, v4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->j(Landroid/database/Cursor;)V

    .line 61
    .line 62
    .line 63
    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 64
    .line 65
    invoke-virtual {v6, v5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->b(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;)V

    .line 66
    .line 67
    .line 68
    add-int/2addr v0, v1

    .line 69
    goto :goto_1

    .line 70
    :catchall_0
    move-exception v0

    .line 71
    goto/16 :goto_3

    .line 72
    .line 73
    :cond_0
    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    :try_start_2
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->d:Lcom/amazonaws/logging/Log;

    .line 82
    .line 83
    const-string v2, "Closing the cursor for resumeAllTransfers"

    .line 84
    .line 85
    invoke-interface {v1, v2}, Lcom/amazonaws/logging/Log;->a(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 89
    .line 90
    .line 91
    :try_start_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_3

    .line 100
    .line 101
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    check-cast v2, Ljava/lang/Integer;

    .line 106
    .line 107
    invoke-static {v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/S3ClientReference;->a(Ljava/lang/Integer;)Lcom/amazonaws/services/s3/AmazonS3;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    if-eqz v3, :cond_2

    .line 112
    .line 113
    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 114
    .line 115
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    invoke-virtual {v4, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->d(I)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    if-eqz v2, :cond_2

    .line 124
    .line 125
    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->f()Z

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-nez v4, :cond_2

    .line 130
    .line 131
    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    .line 132
    .line 133
    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 134
    .line 135
    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->a:Landroid/net/ConnectivityManager;

    .line 136
    .line 137
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->i(Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;Landroid/net/ConnectivityManager;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :catchall_1
    move-exception v0

    .line 142
    goto :goto_4

    .line 143
    :catch_0
    move-exception v1

    .line 144
    :try_start_4
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->d:Lcom/amazonaws/logging/Log;

    .line 145
    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    const-string v4, "Error in resuming the transfers."

    .line 152
    .line 153
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-interface {v2, v1}, Lcom/amazonaws/logging/Log;->f(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    :cond_3
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->d:Lcom/amazonaws/logging/Log;

    .line 171
    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v0, " transfers are loaded from database."

    .line 181
    .line 182
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-interface {v1, v0}, Lcom/amazonaws/logging/Log;->a(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 190
    .line 191
    .line 192
    monitor-exit p0

    .line 193
    return-void

    .line 194
    :goto_3
    if-eqz v4, :cond_4

    .line 195
    .line 196
    :try_start_5
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->d:Lcom/amazonaws/logging/Log;

    .line 197
    .line 198
    const-string v2, "Closing the cursor for resumeAllTransfers"

    .line 199
    .line 200
    invoke-interface {v1, v2}, Lcom/amazonaws/logging/Log;->a(Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 204
    .line 205
    .line 206
    :cond_4
    throw v0

    .line 207
    :goto_4
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 208
    throw v0
.end method


# virtual methods
.method e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->a:Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    const-string p1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->d:Lcom/amazonaws/logging/Log;

    .line 14
    .line 15
    const-string p2, "Network connectivity changed detected."

    .line 16
    .line 17
    invoke-interface {p1, p2}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->e()Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v1, "Network connected: "

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-interface {p1, p2}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    new-instance p1, Ljava/lang/Thread;

    .line 45
    .line 46
    new-instance p2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler$1;

    .line 47
    .line 48
    invoke-direct {p2, p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler$1;-><init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 55
    .line 56
    .line 57
    :cond_0
    return-void
.end method
