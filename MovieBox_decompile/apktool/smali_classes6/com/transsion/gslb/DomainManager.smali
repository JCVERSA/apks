.class public Lcom/transsion/gslb/DomainManager;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final BLANK_DOMAIN:Ljava/lang/String; = "blank"

.field public static volatile INSTANCE:Lcom/transsion/gslb/DomainManager;


# instance fields
.field public final SEPARATOR:Ljava/lang/String;

.field public final SYNC_TRY_TIMES:J

.field public countryCode:Ljava/lang/String;

.field public domainMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public filePath:Ljava/lang/String;

.field public firstSyncTryTime:J

.field public lastGaid:Ljava/lang/String;

.field public lastSyncTime:J

.field public listenerBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/gslb/ListenerBean;",
            ">;"
        }
    .end annotation
.end field

.field public sp_name:Ljava/lang/String;

.field public syncInterval:J

.field public syncTimes:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "gslb_"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/transsion/gslb/DomainManager;->sp_name:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    iput-object v0, p0, Lcom/transsion/gslb/DomainManager;->lastGaid:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/transsion/gslb/DomainManager;->countryCode:Ljava/lang/String;

    .line 13
    .line 14
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/transsion/gslb/DomainManager;->firstSyncTryTime:J

    .line 17
    .line 18
    iput-wide v0, p0, Lcom/transsion/gslb/DomainManager;->syncTimes:J

    .line 19
    .line 20
    const-wide/16 v0, 0x4

    .line 21
    .line 22
    iput-wide v0, p0, Lcom/transsion/gslb/DomainManager;->SYNC_TRY_TIMES:J

    .line 23
    .line 24
    const-string v0, "&"

    .line 25
    .line 26
    iput-object v0, p0, Lcom/transsion/gslb/DomainManager;->SEPARATOR:Ljava/lang/String;

    .line 27
    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/transsion/gslb/DomainManager;->domainMap:Ljava/util/Map;

    .line 34
    .line 35
    new-instance v0, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/transsion/gslb/DomainManager;->listenerBeans:Ljava/util/List;

    .line 41
    .line 42
    const-wide/32 v0, 0x5265c00

    .line 43
    .line 44
    .line 45
    iput-wide v0, p0, Lcom/transsion/gslb/DomainManager;->syncInterval:J

    .line 46
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/transsion/gslb/DomainManager;->sp_name:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-static {}, Lcom/transsion/gslb/GslbSdk;->getContext()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v1}, Lcom/transsion/gslb/Utils;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iput-object v0, p0, Lcom/transsion/gslb/DomainManager;->sp_name:Ljava/lang/String;

    .line 73
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-static {}, Lcom/transsion/gslb/GslbSdk;->getContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Lcom/transsion/gslb/DomainManager;->sp_name:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iput-object v0, p0, Lcom/transsion/gslb/DomainManager;->filePath:Ljava/lang/String;

    .line 109
    .line 110
    invoke-direct {p0}, Lcom/transsion/gslb/DomainManager;->read()V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/transsion/gslb/DomainManager;->domainMap:Ljava/util/Map;

    .line 114
    .line 115
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-nez v0, :cond_0

    .line 120
    .line 121
    iget-object v0, p0, Lcom/transsion/gslb/DomainManager;->domainMap:Ljava/util/Map;

    .line 122
    .line 123
    const-string v1, "dsu.shalltry.com"

    .line 124
    .line 125
    const-string v2, "blank"

    .line 126
    .line 127
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/transsion/gslb/DomainManager;->domainMap:Ljava/util/Map;

    .line 131
    .line 132
    const-string v1, "dsc.shalltry.com"

    .line 133
    .line 134
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lcom/transsion/gslb/DomainManager;->domainMap:Ljava/util/Map;

    .line 138
    .line 139
    const-string v1, "api.twibida.com"

    .line 140
    .line 141
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/gslb/DomainManager;->checkSync()V

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method public static getInstance()Lcom/transsion/gslb/DomainManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/gslb/DomainManager;->INSTANCE:Lcom/transsion/gslb/DomainManager;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/transsion/gslb/DomainManager;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/transsion/gslb/DomainManager;->INSTANCE:Lcom/transsion/gslb/DomainManager;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/transsion/gslb/DomainManager;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/transsion/gslb/DomainManager;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/transsion/gslb/DomainManager;->INSTANCE:Lcom/transsion/gslb/DomainManager;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1

    .line 26
    :cond_1
    :goto_2
    sget-object v0, Lcom/transsion/gslb/DomainManager;->INSTANCE:Lcom/transsion/gslb/DomainManager;

    .line 27
    .line 28
    return-object v0
.end method

.method private isDomain(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "blank"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    return p1
.end method

.method private read()V
    .locals 5

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/gslb/DomainManager;->filePath:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/transsion/gslb/Utils;->bufferRead(Ljava/io/File;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "&"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    array-length v1, v0

    .line 19
    const/4 v2, 0x4

    .line 20
    if-ge v1, v2, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :try_start_0
    aget-object v1, v0, v1

    .line 25
    .line 26
    invoke-static {v1}, Lcom/transsion/gslb/Utils;->stringToMap(Ljava/lang/String;)Ljava/util/Map;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iput-object v1, p0, Lcom/transsion/gslb/DomainManager;->domainMap:Ljava/util/Map;

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    aget-object v1, v0, v1

    .line 34
    .line 35
    iput-object v1, p0, Lcom/transsion/gslb/DomainManager;->lastGaid:Ljava/lang/String;

    .line 36
    .line 37
    const/4 v1, 0x2

    .line 38
    aget-object v1, v0, v1

    .line 39
    .line 40
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 41
    .line 42
    .line 43
    move-result-wide v3

    .line 44
    iput-wide v3, p0, Lcom/transsion/gslb/DomainManager;->syncInterval:J

    .line 45
    .line 46
    const/4 v1, 0x3

    .line 47
    aget-object v1, v0, v1

    .line 48
    .line 49
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 50
    .line 51
    .line 52
    move-result-wide v3

    .line 53
    iput-wide v3, p0, Lcom/transsion/gslb/DomainManager;->lastSyncTime:J

    .line 54
    .line 55
    aget-object v0, v0, v2

    .line 56
    .line 57
    iput-object v0, p0, Lcom/transsion/gslb/DomainManager;->countryCode:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    :catchall_0
    return-void
.end method

.method private write()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/transsion/gslb/DomainManager;->domainMap:Ljava/util/Map;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/transsion/gslb/Utils;->mapToString(Ljava/util/Map;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, "&"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/transsion/gslb/DomainManager;->lastGaid:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-wide v2, p0, Lcom/transsion/gslb/DomainManager;->syncInterval:J

    .line 29
    .line 30
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-wide v2, p0, Lcom/transsion/gslb/DomainManager;->lastSyncTime:J

    .line 37
    .line 38
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/transsion/gslb/DomainManager;->countryCode:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/transsion/gslb/DomainManager;->filePath:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v1, v0}, Lcom/transsion/gslb/Utils;->bufferSave(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public addListener(Lcom/transsion/gslb/ListenerBean;)V
    .locals 8

    .line 1
    iget-object v0, p1, Lcom/transsion/gslb/ListenerBean;->domains:[Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    move v3, v0

    .line 8
    move v2, v1

    .line 9
    move v4, v2

    .line 10
    move v5, v4

    .line 11
    :goto_0
    iget-object v6, p1, Lcom/transsion/gslb/ListenerBean;->domains:[Ljava/lang/String;

    .line 12
    .line 13
    array-length v7, v6

    .line 14
    if-ge v2, v7, :cond_3

    .line 15
    .line 16
    aget-object v7, v6, v2

    .line 17
    .line 18
    invoke-static {v7}, Lcom/transsion/gslb/Utils;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v7

    .line 22
    aput-object v7, v6, v2

    .line 23
    .line 24
    iget-object v6, p1, Lcom/transsion/gslb/ListenerBean;->domains:[Ljava/lang/String;

    .line 25
    .line 26
    aget-object v6, v6, v2

    .line 27
    .line 28
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    if-eqz v6, :cond_0

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_0
    iget-object v3, p0, Lcom/transsion/gslb/DomainManager;->domainMap:Ljava/util/Map;

    .line 36
    .line 37
    iget-object v6, p1, Lcom/transsion/gslb/ListenerBean;->domains:[Ljava/lang/String;

    .line 38
    .line 39
    aget-object v6, v6, v2

    .line 40
    .line 41
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Ljava/lang/String;

    .line 46
    .line 47
    if-nez v3, :cond_2

    .line 48
    .line 49
    iget-object v3, p0, Lcom/transsion/gslb/DomainManager;->domainMap:Ljava/util/Map;

    .line 50
    .line 51
    iget-object v4, p1, Lcom/transsion/gslb/ListenerBean;->domains:[Ljava/lang/String;

    .line 52
    .line 53
    aget-object v4, v4, v2

    .line 54
    .line 55
    const-string v6, "blank"

    .line 56
    .line 57
    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move v4, v0

    .line 61
    :cond_1
    :goto_1
    move v3, v1

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    invoke-direct {p0, v3}, Lcom/transsion/gslb/DomainManager;->isDomain(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-nez v3, :cond_1

    .line 68
    .line 69
    move v5, v0

    .line 70
    goto :goto_1

    .line 71
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    if-eqz v3, :cond_5

    .line 75
    .line 76
    iget-boolean v0, p1, Lcom/transsion/gslb/ListenerBean;->isNewInitListener:Z

    .line 77
    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    iget-object v1, p1, Lcom/transsion/gslb/ListenerBean;->gslbInitListener:Lcom/transsion/gslb/GslbSdk$GslbInitListener;

    .line 81
    .line 82
    if-eqz v1, :cond_4

    .line 83
    .line 84
    const-string v0, "all domains are empty"

    .line 85
    .line 86
    invoke-interface {v1, v0}, Lcom/transsion/gslb/GslbSdk$GslbInitListener;->onInitFail(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    goto :goto_4

    .line 90
    :cond_4
    if-nez v0, :cond_9

    .line 91
    .line 92
    iget-object v0, p1, Lcom/transsion/gslb/ListenerBean;->initListener:Lcom/transsion/gslb/GslbSdk$InitListener;

    .line 93
    .line 94
    if-eqz v0, :cond_9

    .line 95
    .line 96
    invoke-interface {v0}, Lcom/transsion/gslb/GslbSdk$InitListener;->onInitFail()V

    .line 97
    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_5
    if-eqz v4, :cond_6

    .line 101
    .line 102
    invoke-direct {p0}, Lcom/transsion/gslb/DomainManager;->write()V

    .line 103
    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_6
    if-nez v5, :cond_9

    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/transsion/gslb/DomainManager;->getCountry()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-nez v0, :cond_9

    .line 117
    .line 118
    iget-boolean v0, p1, Lcom/transsion/gslb/ListenerBean;->isNewInitListener:Z

    .line 119
    .line 120
    if-eqz v0, :cond_7

    .line 121
    .line 122
    iget-object v1, p1, Lcom/transsion/gslb/ListenerBean;->gslbInitListener:Lcom/transsion/gslb/GslbSdk$GslbInitListener;

    .line 123
    .line 124
    if-eqz v1, :cond_7

    .line 125
    .line 126
    new-instance p1, Ljava/util/HashMap;

    .line 127
    .line 128
    iget-object v0, p0, Lcom/transsion/gslb/DomainManager;->domainMap:Ljava/util/Map;

    .line 129
    .line 130
    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 131
    .line 132
    .line 133
    invoke-interface {v1, p1}, Lcom/transsion/gslb/GslbSdk$GslbInitListener;->onInitSuccess(Ljava/util/Map;)V

    .line 134
    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_7
    if-nez v0, :cond_8

    .line 138
    .line 139
    iget-object p1, p1, Lcom/transsion/gslb/ListenerBean;->initListener:Lcom/transsion/gslb/GslbSdk$InitListener;

    .line 140
    .line 141
    if-eqz p1, :cond_8

    .line 142
    .line 143
    new-instance v0, Ljava/util/HashMap;

    .line 144
    .line 145
    iget-object v1, p0, Lcom/transsion/gslb/DomainManager;->domainMap:Ljava/util/Map;

    .line 146
    .line 147
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 148
    .line 149
    .line 150
    invoke-interface {p1, v0}, Lcom/transsion/gslb/GslbSdk$InitListener;->onInitSuccess(Ljava/util/Map;)V

    .line 151
    .line 152
    .line 153
    :cond_8
    :goto_3
    return-void

    .line 154
    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/transsion/gslb/DomainManager;->listenerBeans:Ljava/util/List;

    .line 155
    .line 156
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    goto/16 :goto_5

    .line 160
    .line 161
    :cond_a
    iget-object v0, p1, Lcom/transsion/gslb/ListenerBean;->url:Ljava/lang/String;

    .line 162
    .line 163
    if-eqz v0, :cond_d

    .line 164
    .line 165
    iget-object v1, p1, Lcom/transsion/gslb/ListenerBean;->resultListener:Lcom/transsion/gslb/GslbSdk$ResultListener;

    .line 166
    .line 167
    if-eqz v1, :cond_d

    .line 168
    .line 169
    invoke-static {v0}, Lcom/transsion/gslb/Utils;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/transsion/gslb/DomainManager;->domainMap:Ljava/util/Map;

    .line 174
    .line 175
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    check-cast v1, Ljava/lang/String;

    .line 180
    .line 181
    invoke-direct {p0, v1}, Lcom/transsion/gslb/DomainManager;->isDomain(Ljava/lang/String;)Z

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    if-eqz v2, :cond_c

    .line 186
    .line 187
    iget-boolean v2, p1, Lcom/transsion/gslb/ListenerBean;->isNewDomainListener:Z

    .line 188
    .line 189
    if-eqz v2, :cond_b

    .line 190
    .line 191
    iget-object v3, p1, Lcom/transsion/gslb/ListenerBean;->gslbDomainListener:Lcom/transsion/gslb/GslbSdk$GetDomainListener;

    .line 192
    .line 193
    if-eqz v3, :cond_b

    .line 194
    .line 195
    iget-object p1, p1, Lcom/transsion/gslb/ListenerBean;->url:Ljava/lang/String;

    .line 196
    .line 197
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-interface {v3, p1}, Lcom/transsion/gslb/GslbSdk$GetDomainListener;->onGslbSuccess(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    goto :goto_5

    .line 205
    :cond_b
    if-nez v2, :cond_10

    .line 206
    .line 207
    iget-object v2, p1, Lcom/transsion/gslb/ListenerBean;->resultListener:Lcom/transsion/gslb/GslbSdk$ResultListener;

    .line 208
    .line 209
    if-eqz v2, :cond_10

    .line 210
    .line 211
    iget-object p1, p1, Lcom/transsion/gslb/ListenerBean;->url:Ljava/lang/String;

    .line 212
    .line 213
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    invoke-interface {v2, p1}, Lcom/transsion/gslb/GslbSdk$ResultListener;->onGslbSuccess(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    goto :goto_5

    .line 221
    :cond_c
    iget-object v0, p0, Lcom/transsion/gslb/DomainManager;->listenerBeans:Ljava/util/List;

    .line 222
    .line 223
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    goto :goto_5

    .line 227
    :cond_d
    if-eqz v0, :cond_10

    .line 228
    .line 229
    iget-object v1, p1, Lcom/transsion/gslb/ListenerBean;->gslbDomainListener:Lcom/transsion/gslb/GslbSdk$GetDomainListener;

    .line 230
    .line 231
    if-eqz v1, :cond_10

    .line 232
    .line 233
    invoke-static {v0}, Lcom/transsion/gslb/Utils;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    iget-object v1, p0, Lcom/transsion/gslb/DomainManager;->domainMap:Ljava/util/Map;

    .line 238
    .line 239
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    check-cast v1, Ljava/lang/String;

    .line 244
    .line 245
    invoke-direct {p0, v1}, Lcom/transsion/gslb/DomainManager;->isDomain(Ljava/lang/String;)Z

    .line 246
    .line 247
    .line 248
    move-result v2

    .line 249
    if-eqz v2, :cond_f

    .line 250
    .line 251
    iget-boolean v2, p1, Lcom/transsion/gslb/ListenerBean;->isNewDomainListener:Z

    .line 252
    .line 253
    if-eqz v2, :cond_e

    .line 254
    .line 255
    iget-object v3, p1, Lcom/transsion/gslb/ListenerBean;->gslbDomainListener:Lcom/transsion/gslb/GslbSdk$GetDomainListener;

    .line 256
    .line 257
    if-eqz v3, :cond_e

    .line 258
    .line 259
    iget-object p1, p1, Lcom/transsion/gslb/ListenerBean;->url:Ljava/lang/String;

    .line 260
    .line 261
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    invoke-interface {v3, p1}, Lcom/transsion/gslb/GslbSdk$GetDomainListener;->onGslbSuccess(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    goto :goto_5

    .line 269
    :cond_e
    if-nez v2, :cond_10

    .line 270
    .line 271
    iget-object v2, p1, Lcom/transsion/gslb/ListenerBean;->resultListener:Lcom/transsion/gslb/GslbSdk$ResultListener;

    .line 272
    .line 273
    if-eqz v2, :cond_10

    .line 274
    .line 275
    iget-object p1, p1, Lcom/transsion/gslb/ListenerBean;->url:Ljava/lang/String;

    .line 276
    .line 277
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    invoke-interface {v2, p1}, Lcom/transsion/gslb/GslbSdk$ResultListener;->onGslbSuccess(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    goto :goto_5

    .line 285
    :cond_f
    iget-object v0, p0, Lcom/transsion/gslb/DomainManager;->listenerBeans:Ljava/util/List;

    .line 286
    .line 287
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    :cond_10
    :goto_5
    return-void
.end method

.method public checkAllListener()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/gslb/DomainManager;->listenerBeans:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_6

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/transsion/gslb/ListenerBean;

    .line 18
    .line 19
    iget-object v2, v1, Lcom/transsion/gslb/ListenerBean;->domains:[Ljava/lang/String;

    .line 20
    .line 21
    if-eqz v2, :cond_4

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    move v3, v2

    .line 25
    :goto_1
    iget-object v4, v1, Lcom/transsion/gslb/ListenerBean;->domains:[Ljava/lang/String;

    .line 26
    .line 27
    array-length v5, v4

    .line 28
    if-ge v3, v5, :cond_2

    .line 29
    .line 30
    iget-object v5, p0, Lcom/transsion/gslb/DomainManager;->domainMap:Ljava/util/Map;

    .line 31
    .line 32
    aget-object v4, v4, v3

    .line 33
    .line 34
    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    iget-object v4, p0, Lcom/transsion/gslb/DomainManager;->domainMap:Ljava/util/Map;

    .line 41
    .line 42
    iget-object v5, v1, Lcom/transsion/gslb/ListenerBean;->domains:[Ljava/lang/String;

    .line 43
    .line 44
    aget-object v5, v5, v3

    .line 45
    .line 46
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Ljava/lang/String;

    .line 51
    .line 52
    invoke-direct {p0, v4}, Lcom/transsion/gslb/DomainManager;->isDomain(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-nez v4, :cond_1

    .line 57
    .line 58
    const/4 v2, 0x1

    .line 59
    goto :goto_2

    .line 60
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    :goto_2
    iget-object v1, v1, Lcom/transsion/gslb/ListenerBean;->initListener:Lcom/transsion/gslb/GslbSdk$InitListener;

    .line 64
    .line 65
    if-eqz v1, :cond_0

    .line 66
    .line 67
    if-eqz v2, :cond_3

    .line 68
    .line 69
    invoke-interface {v1}, Lcom/transsion/gslb/GslbSdk$InitListener;->onInitFail()V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    new-instance v2, Ljava/util/HashMap;

    .line 74
    .line 75
    iget-object v3, p0, Lcom/transsion/gslb/DomainManager;->domainMap:Ljava/util/Map;

    .line 76
    .line 77
    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 78
    .line 79
    .line 80
    invoke-interface {v1, v2}, Lcom/transsion/gslb/GslbSdk$InitListener;->onInitSuccess(Ljava/util/Map;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_4
    iget-object v2, v1, Lcom/transsion/gslb/ListenerBean;->url:Ljava/lang/String;

    .line 85
    .line 86
    if-eqz v2, :cond_0

    .line 87
    .line 88
    iget-object v3, v1, Lcom/transsion/gslb/ListenerBean;->resultListener:Lcom/transsion/gslb/GslbSdk$ResultListener;

    .line 89
    .line 90
    if-eqz v3, :cond_0

    .line 91
    .line 92
    invoke-static {v2}, Lcom/transsion/gslb/Utils;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    iget-object v3, p0, Lcom/transsion/gslb/DomainManager;->domainMap:Ljava/util/Map;

    .line 97
    .line 98
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    check-cast v3, Ljava/lang/String;

    .line 103
    .line 104
    invoke-direct {p0, v3}, Lcom/transsion/gslb/DomainManager;->isDomain(Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-eqz v4, :cond_5

    .line 109
    .line 110
    iget-object v4, v1, Lcom/transsion/gslb/ListenerBean;->resultListener:Lcom/transsion/gslb/GslbSdk$ResultListener;

    .line 111
    .line 112
    iget-object v1, v1, Lcom/transsion/gslb/ListenerBean;->url:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-interface {v4, v1}, Lcom/transsion/gslb/GslbSdk$ResultListener;->onGslbSuccess(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_5
    iget-object v1, v1, Lcom/transsion/gslb/ListenerBean;->resultListener:Lcom/transsion/gslb/GslbSdk$ResultListener;

    .line 123
    .line 124
    invoke-interface {v1}, Lcom/transsion/gslb/GslbSdk$ResultListener;->onGslbFail()V

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_6
    iget-object v0, p0, Lcom/transsion/gslb/DomainManager;->listenerBeans:Ljava/util/List;

    .line 129
    .line 130
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 131
    .line 132
    .line 133
    return-void
.end method

.method public checkSync()V
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/transsion/gslb/DomainManager;->firstSyncTryTime:J

    .line 6
    .line 7
    sub-long/2addr v2, v0

    .line 8
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    const-wide/32 v4, 0x5265c00

    .line 13
    .line 14
    .line 15
    cmp-long v2, v2, v4

    .line 16
    .line 17
    const-wide/16 v3, 0x0

    .line 18
    .line 19
    if-lez v2, :cond_0

    .line 20
    .line 21
    iput-wide v3, p0, Lcom/transsion/gslb/DomainManager;->syncTimes:J

    .line 22
    .line 23
    :cond_0
    iget-wide v5, p0, Lcom/transsion/gslb/DomainManager;->lastSyncTime:J

    .line 24
    .line 25
    cmp-long v2, v5, v3

    .line 26
    .line 27
    if-lez v2, :cond_3

    .line 28
    .line 29
    sub-long v5, v0, v5

    .line 30
    .line 31
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    .line 32
    .line 33
    .line 34
    move-result-wide v5

    .line 35
    iget-wide v7, p0, Lcom/transsion/gslb/DomainManager;->syncInterval:J

    .line 36
    .line 37
    cmp-long v2, v5, v7

    .line 38
    .line 39
    if-lez v2, :cond_3

    .line 40
    .line 41
    iget-wide v5, p0, Lcom/transsion/gslb/DomainManager;->syncTimes:J

    .line 42
    .line 43
    cmp-long v2, v5, v3

    .line 44
    .line 45
    if-nez v2, :cond_1

    .line 46
    .line 47
    iput-wide v0, p0, Lcom/transsion/gslb/DomainManager;->firstSyncTryTime:J

    .line 48
    .line 49
    :cond_1
    const-wide/16 v0, 0x4

    .line 50
    .line 51
    cmp-long v0, v5, v0

    .line 52
    .line 53
    if-gez v0, :cond_2

    .line 54
    .line 55
    invoke-static {}, Lcom/transsion/gslb/GslbSdk;->getWorker()Lcom/transsion/gslb/Worker;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/transsion/gslb/Worker;->syncData()V

    .line 62
    .line 63
    .line 64
    :cond_2
    iget-wide v0, p0, Lcom/transsion/gslb/DomainManager;->syncTimes:J

    .line 65
    .line 66
    const-wide/16 v2, 0x1

    .line 67
    .line 68
    add-long/2addr v0, v2

    .line 69
    iput-wide v0, p0, Lcom/transsion/gslb/DomainManager;->syncTimes:J

    .line 70
    .line 71
    :cond_3
    return-void
.end method

.method public getAllDomains()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/transsion/gslb/DomainManager;->domainMap:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/util/Map$Entry;

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    return-object v0
.end method

.method public getBlankDomains()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/transsion/gslb/DomainManager;->domainMap:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/util/Map$Entry;

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Ljava/lang/String;

    .line 33
    .line 34
    invoke-direct {p0, v3}, Lcom/transsion/gslb/DomainManager;->isDomain(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-nez v3, :cond_0

    .line 39
    .line 40
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/gslb/DomainManager;->countryCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/gslb/DomainManager;->domainMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/transsion/gslb/DomainManager;->checkSync()V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public getLastGaid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/gslb/DomainManager;->lastGaid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public mergeResult(Ljava/util/Map;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/util/Map$Entry;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/transsion/gslb/DomainManager;->domainMap:Ljava/util/Map;

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/String;

    .line 32
    .line 33
    invoke-direct {p0, v1}, Lcom/transsion/gslb/DomainManager;->isDomain(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    if-eqz p2, :cond_0

    .line 40
    .line 41
    :cond_1
    iget-object v1, p0, Lcom/transsion/gslb/DomainManager;->domainMap:Ljava/util/Map;

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    return-void
.end method

.method public notifyListener()V
    .locals 10

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/transsion/gslb/DomainManager;->listenerBeans:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_c

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/transsion/gslb/ListenerBean;

    .line 18
    .line 19
    iget-boolean v2, v1, Lcom/transsion/gslb/ListenerBean;->isNewInitListener:Z

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    const/4 v4, 0x0

    .line 23
    if-nez v2, :cond_4

    .line 24
    .line 25
    iget-object v5, v1, Lcom/transsion/gslb/ListenerBean;->initListener:Lcom/transsion/gslb/GslbSdk$InitListener;

    .line 26
    .line 27
    if-eqz v5, :cond_4

    .line 28
    .line 29
    iget-object v2, v1, Lcom/transsion/gslb/ListenerBean;->domains:[Ljava/lang/String;

    .line 30
    .line 31
    array-length v5, v2

    .line 32
    move v6, v4

    .line 33
    :goto_1
    if-ge v4, v5, :cond_2

    .line 34
    .line 35
    aget-object v7, v2, v4

    .line 36
    .line 37
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    if-nez v8, :cond_1

    .line 42
    .line 43
    iget-object v8, p0, Lcom/transsion/gslb/DomainManager;->domainMap:Ljava/util/Map;

    .line 44
    .line 45
    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    check-cast v7, Ljava/lang/String;

    .line 50
    .line 51
    invoke-direct {p0, v7}, Lcom/transsion/gslb/DomainManager;->isDomain(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    if-nez v7, :cond_1

    .line 56
    .line 57
    move v6, v3

    .line 58
    goto :goto_2

    .line 59
    :catch_0
    move-exception v0

    .line 60
    goto/16 :goto_4

    .line 61
    .line 62
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    if-eqz v6, :cond_3

    .line 66
    .line 67
    iget-object v1, v1, Lcom/transsion/gslb/ListenerBean;->initListener:Lcom/transsion/gslb/GslbSdk$InitListener;

    .line 68
    .line 69
    invoke-interface {v1}, Lcom/transsion/gslb/GslbSdk$InitListener;->onInitFail()V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/gslb/DomainManager;->getCountry()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-nez v2, :cond_0

    .line 82
    .line 83
    iget-object v1, v1, Lcom/transsion/gslb/ListenerBean;->initListener:Lcom/transsion/gslb/GslbSdk$InitListener;

    .line 84
    .line 85
    new-instance v2, Ljava/util/HashMap;

    .line 86
    .line 87
    iget-object v3, p0, Lcom/transsion/gslb/DomainManager;->domainMap:Ljava/util/Map;

    .line 88
    .line 89
    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 90
    .line 91
    .line 92
    invoke-interface {v1, v2}, Lcom/transsion/gslb/GslbSdk$InitListener;->onInitSuccess(Ljava/util/Map;)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_4
    if-eqz v2, :cond_8

    .line 97
    .line 98
    iget-object v2, v1, Lcom/transsion/gslb/ListenerBean;->gslbInitListener:Lcom/transsion/gslb/GslbSdk$GslbInitListener;

    .line 99
    .line 100
    if-eqz v2, :cond_8

    .line 101
    .line 102
    iget-object v2, v1, Lcom/transsion/gslb/ListenerBean;->domains:[Ljava/lang/String;

    .line 103
    .line 104
    array-length v5, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    const-string v6, ""

    .line 106
    .line 107
    move-object v7, v6

    .line 108
    move v6, v4

    .line 109
    :goto_3
    if-ge v4, v5, :cond_6

    .line 110
    .line 111
    :try_start_1
    aget-object v8, v2, v4

    .line 112
    .line 113
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 114
    .line 115
    .line 116
    move-result v9

    .line 117
    if-nez v9, :cond_5

    .line 118
    .line 119
    iget-object v9, p0, Lcom/transsion/gslb/DomainManager;->domainMap:Ljava/util/Map;

    .line 120
    .line 121
    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v9

    .line 125
    check-cast v9, Ljava/lang/String;

    .line 126
    .line 127
    invoke-direct {p0, v9}, Lcom/transsion/gslb/DomainManager;->isDomain(Ljava/lang/String;)Z

    .line 128
    .line 129
    .line 130
    move-result v9

    .line 131
    if-nez v9, :cond_5

    .line 132
    .line 133
    move v6, v3

    .line 134
    move-object v7, v8

    .line 135
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_6
    if-eqz v6, :cond_7

    .line 139
    .line 140
    iget-object v1, v1, Lcom/transsion/gslb/ListenerBean;->gslbInitListener:Lcom/transsion/gslb/GslbSdk$GslbInitListener;

    .line 141
    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    const-string v3, "domain map not found for "

    .line 148
    .line 149
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-interface {v1, v2}, Lcom/transsion/gslb/GslbSdk$GslbInitListener;->onInitFail(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    goto/16 :goto_0

    .line 163
    .line 164
    :cond_7
    invoke-virtual {p0}, Lcom/transsion/gslb/DomainManager;->getCountry()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-nez v2, :cond_0

    .line 173
    .line 174
    iget-object v1, v1, Lcom/transsion/gslb/ListenerBean;->gslbInitListener:Lcom/transsion/gslb/GslbSdk$GslbInitListener;

    .line 175
    .line 176
    new-instance v2, Ljava/util/HashMap;

    .line 177
    .line 178
    iget-object v3, p0, Lcom/transsion/gslb/DomainManager;->domainMap:Ljava/util/Map;

    .line 179
    .line 180
    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 181
    .line 182
    .line 183
    invoke-interface {v1, v2}, Lcom/transsion/gslb/GslbSdk$GslbInitListener;->onInitSuccess(Ljava/util/Map;)V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_0

    .line 187
    .line 188
    :cond_8
    iget-object v2, v1, Lcom/transsion/gslb/ListenerBean;->url:Ljava/lang/String;

    .line 189
    .line 190
    if-eqz v2, :cond_a

    .line 191
    .line 192
    iget-boolean v3, v1, Lcom/transsion/gslb/ListenerBean;->isNewDomainListener:Z

    .line 193
    .line 194
    if-nez v3, :cond_a

    .line 195
    .line 196
    iget-object v3, v1, Lcom/transsion/gslb/ListenerBean;->resultListener:Lcom/transsion/gslb/GslbSdk$ResultListener;

    .line 197
    .line 198
    if-eqz v3, :cond_a

    .line 199
    .line 200
    invoke-static {v2}, Lcom/transsion/gslb/Utils;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    iget-object v3, p0, Lcom/transsion/gslb/DomainManager;->domainMap:Ljava/util/Map;

    .line 205
    .line 206
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    check-cast v3, Ljava/lang/String;

    .line 211
    .line 212
    invoke-direct {p0, v3}, Lcom/transsion/gslb/DomainManager;->isDomain(Ljava/lang/String;)Z

    .line 213
    .line 214
    .line 215
    move-result v4

    .line 216
    if-eqz v4, :cond_9

    .line 217
    .line 218
    iget-object v4, v1, Lcom/transsion/gslb/ListenerBean;->resultListener:Lcom/transsion/gslb/GslbSdk$ResultListener;

    .line 219
    .line 220
    iget-object v1, v1, Lcom/transsion/gslb/ListenerBean;->url:Ljava/lang/String;

    .line 221
    .line 222
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-interface {v4, v1}, Lcom/transsion/gslb/GslbSdk$ResultListener;->onGslbSuccess(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    goto/16 :goto_0

    .line 230
    .line 231
    :cond_9
    iget-object v1, v1, Lcom/transsion/gslb/ListenerBean;->resultListener:Lcom/transsion/gslb/GslbSdk$ResultListener;

    .line 232
    .line 233
    invoke-interface {v1}, Lcom/transsion/gslb/GslbSdk$ResultListener;->onGslbFail()V

    .line 234
    .line 235
    .line 236
    goto/16 :goto_0

    .line 237
    .line 238
    :cond_a
    if-eqz v2, :cond_0

    .line 239
    .line 240
    iget-boolean v3, v1, Lcom/transsion/gslb/ListenerBean;->isNewDomainListener:Z

    .line 241
    .line 242
    if-eqz v3, :cond_0

    .line 243
    .line 244
    iget-object v3, v1, Lcom/transsion/gslb/ListenerBean;->gslbDomainListener:Lcom/transsion/gslb/GslbSdk$GetDomainListener;

    .line 245
    .line 246
    if-eqz v3, :cond_0

    .line 247
    .line 248
    invoke-static {v2}, Lcom/transsion/gslb/Utils;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    iget-object v3, p0, Lcom/transsion/gslb/DomainManager;->domainMap:Ljava/util/Map;

    .line 253
    .line 254
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    check-cast v3, Ljava/lang/String;

    .line 259
    .line 260
    invoke-direct {p0, v3}, Lcom/transsion/gslb/DomainManager;->isDomain(Ljava/lang/String;)Z

    .line 261
    .line 262
    .line 263
    move-result v4

    .line 264
    if-eqz v4, :cond_b

    .line 265
    .line 266
    iget-object v4, v1, Lcom/transsion/gslb/ListenerBean;->gslbDomainListener:Lcom/transsion/gslb/GslbSdk$GetDomainListener;

    .line 267
    .line 268
    iget-object v1, v1, Lcom/transsion/gslb/ListenerBean;->url:Ljava/lang/String;

    .line 269
    .line 270
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    invoke-interface {v4, v1}, Lcom/transsion/gslb/GslbSdk$GetDomainListener;->onGslbSuccess(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    goto/16 :goto_0

    .line 278
    .line 279
    :cond_b
    iget-object v1, v1, Lcom/transsion/gslb/ListenerBean;->gslbDomainListener:Lcom/transsion/gslb/GslbSdk$GetDomainListener;

    .line 280
    .line 281
    new-instance v3, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    .line 285
    .line 286
    const-string v4, "the mapping result is empty for "

    .line 287
    .line 288
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    invoke-interface {v1, v2}, Lcom/transsion/gslb/GslbSdk$GetDomainListener;->onGslbFail(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    goto/16 :goto_0

    .line 302
    .line 303
    :cond_c
    iget-object v0, p0, Lcom/transsion/gslb/DomainManager;->listenerBeans:Ljava/util/List;

    .line 304
    .line 305
    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 306
    .line 307
    .line 308
    goto/16 :goto_6

    .line 309
    .line 310
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 311
    .line 312
    .line 313
    iget-object v1, p0, Lcom/transsion/gslb/DomainManager;->listenerBeans:Ljava/util/List;

    .line 314
    .line 315
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    :cond_d
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 320
    .line 321
    .line 322
    move-result v2

    .line 323
    if-eqz v2, :cond_11

    .line 324
    .line 325
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    check-cast v2, Lcom/transsion/gslb/ListenerBean;

    .line 330
    .line 331
    iget-boolean v3, v2, Lcom/transsion/gslb/ListenerBean;->isNewInitListener:Z

    .line 332
    .line 333
    if-nez v3, :cond_e

    .line 334
    .line 335
    iget-object v4, v2, Lcom/transsion/gslb/ListenerBean;->initListener:Lcom/transsion/gslb/GslbSdk$InitListener;

    .line 336
    .line 337
    if-eqz v4, :cond_e

    .line 338
    .line 339
    invoke-interface {v4}, Lcom/transsion/gslb/GslbSdk$InitListener;->onInitFail()V

    .line 340
    .line 341
    .line 342
    goto :goto_5

    .line 343
    :cond_e
    const-string v4, "get domain exception "

    .line 344
    .line 345
    if-eqz v3, :cond_f

    .line 346
    .line 347
    iget-object v3, v2, Lcom/transsion/gslb/ListenerBean;->gslbInitListener:Lcom/transsion/gslb/GslbSdk$GslbInitListener;

    .line 348
    .line 349
    if-eqz v3, :cond_f

    .line 350
    .line 351
    new-instance v2, Ljava/lang/StringBuilder;

    .line 352
    .line 353
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v4

    .line 363
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v2

    .line 370
    invoke-interface {v3, v2}, Lcom/transsion/gslb/GslbSdk$GslbInitListener;->onInitFail(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    goto :goto_5

    .line 374
    :cond_f
    iget-object v3, v2, Lcom/transsion/gslb/ListenerBean;->url:Ljava/lang/String;

    .line 375
    .line 376
    if-eqz v3, :cond_10

    .line 377
    .line 378
    iget-boolean v5, v2, Lcom/transsion/gslb/ListenerBean;->isNewDomainListener:Z

    .line 379
    .line 380
    if-nez v5, :cond_10

    .line 381
    .line 382
    iget-object v5, v2, Lcom/transsion/gslb/ListenerBean;->resultListener:Lcom/transsion/gslb/GslbSdk$ResultListener;

    .line 383
    .line 384
    if-eqz v5, :cond_10

    .line 385
    .line 386
    invoke-interface {v5}, Lcom/transsion/gslb/GslbSdk$ResultListener;->onGslbFail()V

    .line 387
    .line 388
    .line 389
    goto :goto_5

    .line 390
    :cond_10
    if-eqz v3, :cond_d

    .line 391
    .line 392
    iget-boolean v3, v2, Lcom/transsion/gslb/ListenerBean;->isNewDomainListener:Z

    .line 393
    .line 394
    if-eqz v3, :cond_d

    .line 395
    .line 396
    iget-object v2, v2, Lcom/transsion/gslb/ListenerBean;->gslbDomainListener:Lcom/transsion/gslb/GslbSdk$GetDomainListener;

    .line 397
    .line 398
    if-eqz v2, :cond_d

    .line 399
    .line 400
    new-instance v3, Ljava/lang/StringBuilder;

    .line 401
    .line 402
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v4

    .line 412
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v3

    .line 419
    invoke-interface {v2, v3}, Lcom/transsion/gslb/GslbSdk$GetDomainListener;->onGslbFail(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    goto :goto_5

    .line 423
    :cond_11
    iget-object v0, p0, Lcom/transsion/gslb/DomainManager;->listenerBeans:Ljava/util/List;

    .line 424
    .line 425
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 426
    .line 427
    .line 428
    :goto_6
    return-void
.end method

.method public notifyNoNetwork()V
    .locals 6

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/transsion/gslb/DomainManager;->listenerBeans:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_4

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/transsion/gslb/ListenerBean;

    .line 23
    .line 24
    iget-boolean v3, v2, Lcom/transsion/gslb/ListenerBean;->isNewInitListener:Z

    .line 25
    .line 26
    if-nez v3, :cond_1

    .line 27
    .line 28
    iget-object v4, v2, Lcom/transsion/gslb/ListenerBean;->initListener:Lcom/transsion/gslb/GslbSdk$InitListener;

    .line 29
    .line 30
    if-eqz v4, :cond_1

    .line 31
    .line 32
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    if-eqz v3, :cond_2

    .line 39
    .line 40
    iget-object v3, v2, Lcom/transsion/gslb/ListenerBean;->gslbInitListener:Lcom/transsion/gslb/GslbSdk$GslbInitListener;

    .line 41
    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    iget-object v3, v2, Lcom/transsion/gslb/ListenerBean;->url:Ljava/lang/String;

    .line 49
    .line 50
    if-eqz v3, :cond_3

    .line 51
    .line 52
    iget-boolean v4, v2, Lcom/transsion/gslb/ListenerBean;->isNewDomainListener:Z

    .line 53
    .line 54
    if-nez v4, :cond_3

    .line 55
    .line 56
    iget-object v4, v2, Lcom/transsion/gslb/ListenerBean;->resultListener:Lcom/transsion/gslb/GslbSdk$ResultListener;

    .line 57
    .line 58
    if-eqz v4, :cond_3

    .line 59
    .line 60
    invoke-interface {v4}, Lcom/transsion/gslb/GslbSdk$ResultListener;->onGslbFail()V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    if-eqz v3, :cond_0

    .line 65
    .line 66
    iget-boolean v3, v2, Lcom/transsion/gslb/ListenerBean;->isNewDomainListener:Z

    .line 67
    .line 68
    if-eqz v3, :cond_0

    .line 69
    .line 70
    iget-object v2, v2, Lcom/transsion/gslb/ListenerBean;->gslbDomainListener:Lcom/transsion/gslb/GslbSdk$GetDomainListener;

    .line 71
    .line 72
    if-eqz v2, :cond_0

    .line 73
    .line 74
    const-string v3, "no network"

    .line 75
    .line 76
    invoke-interface {v2, v3}, Lcom/transsion/gslb/GslbSdk$GetDomainListener;->onGslbFail(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_4
    iget-object v1, p0, Lcom/transsion/gslb/DomainManager;->listenerBeans:Ljava/util/List;

    .line 81
    .line 82
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Lcom/transsion/gslb/DomainManager;->listenerBeans:Ljava/util/List;

    .line 86
    .line 87
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 89
    .line 90
    goto/16 :goto_3

    .line 91
    .line 92
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 93
    .line 94
    .line 95
    iget-object v1, p0, Lcom/transsion/gslb/DomainManager;->listenerBeans:Ljava/util/List;

    .line 96
    .line 97
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_9

    .line 106
    .line 107
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    check-cast v2, Lcom/transsion/gslb/ListenerBean;

    .line 112
    .line 113
    iget-boolean v3, v2, Lcom/transsion/gslb/ListenerBean;->isNewInitListener:Z

    .line 114
    .line 115
    if-nez v3, :cond_6

    .line 116
    .line 117
    iget-object v4, v2, Lcom/transsion/gslb/ListenerBean;->initListener:Lcom/transsion/gslb/GslbSdk$InitListener;

    .line 118
    .line 119
    if-eqz v4, :cond_6

    .line 120
    .line 121
    invoke-interface {v4}, Lcom/transsion/gslb/GslbSdk$InitListener;->onInitFail()V

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_6
    const-string v4, "get domain exception "

    .line 126
    .line 127
    if-eqz v3, :cond_7

    .line 128
    .line 129
    iget-object v3, v2, Lcom/transsion/gslb/ListenerBean;->gslbInitListener:Lcom/transsion/gslb/GslbSdk$GslbInitListener;

    .line 130
    .line 131
    if-eqz v3, :cond_7

    .line 132
    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-interface {v3, v2}, Lcom/transsion/gslb/GslbSdk$GslbInitListener;->onInitFail(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_7
    iget-object v3, v2, Lcom/transsion/gslb/ListenerBean;->url:Ljava/lang/String;

    .line 157
    .line 158
    if-eqz v3, :cond_8

    .line 159
    .line 160
    iget-boolean v5, v2, Lcom/transsion/gslb/ListenerBean;->isNewDomainListener:Z

    .line 161
    .line 162
    if-nez v5, :cond_8

    .line 163
    .line 164
    iget-object v5, v2, Lcom/transsion/gslb/ListenerBean;->resultListener:Lcom/transsion/gslb/GslbSdk$ResultListener;

    .line 165
    .line 166
    if-eqz v5, :cond_8

    .line 167
    .line 168
    invoke-interface {v5}, Lcom/transsion/gslb/GslbSdk$ResultListener;->onGslbFail()V

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_8
    if-eqz v3, :cond_5

    .line 173
    .line 174
    iget-boolean v3, v2, Lcom/transsion/gslb/ListenerBean;->isNewDomainListener:Z

    .line 175
    .line 176
    if-eqz v3, :cond_5

    .line 177
    .line 178
    iget-object v2, v2, Lcom/transsion/gslb/ListenerBean;->gslbDomainListener:Lcom/transsion/gslb/GslbSdk$GetDomainListener;

    .line 179
    .line 180
    if-eqz v2, :cond_5

    .line 181
    .line 182
    new-instance v3, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    invoke-interface {v2, v3}, Lcom/transsion/gslb/GslbSdk$GetDomainListener;->onGslbFail(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_9
    iget-object v0, p0, Lcom/transsion/gslb/DomainManager;->listenerBeans:Ljava/util/List;

    .line 206
    .line 207
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 208
    .line 209
    .line 210
    :goto_3
    return-void
.end method

.method public reset()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/gslb/DomainManager;->domainMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2
    iget-object v0, p0, Lcom/transsion/gslb/DomainManager;->domainMap:Ljava/util/Map;

    const-string v1, "dsu.shalltry.com"

    const-string v2, "blank"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/transsion/gslb/DomainManager;->domainMap:Ljava/util/Map;

    const-string v1, "dsc.shalltry.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/transsion/gslb/DomainManager;->domainMap:Ljava/util/Map;

    const-string v1, "api.twibida.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public reset(Ljava/lang/String;)Z
    .locals 3

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/transsion/gslb/DomainManager;->domainMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 6
    sget-object v0, Lcom/transsion/gslb/Utils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/gslb/DomainManager;->countryCode:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setLastGaid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/gslb/DomainManager;->lastGaid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSyncInterval(J)V
    .locals 2

    .line 1
    iput-wide p1, p0, Lcom/transsion/gslb/DomainManager;->syncInterval:J

    .line 2
    .line 3
    const-wide/32 v0, 0x5265c00

    .line 4
    .line 5
    .line 6
    cmp-long p1, p1, v0

    .line 7
    .line 8
    if-gez p1, :cond_0

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/transsion/gslb/DomainManager;->syncInterval:J

    .line 11
    .line 12
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide p1

    .line 16
    iput-wide p1, p0, Lcom/transsion/gslb/DomainManager;->lastSyncTime:J

    .line 17
    .line 18
    return-void
.end method

.method public updateNetData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .line 1
    invoke-virtual {p0, p2}, Lcom/transsion/gslb/DomainManager;->setLastGaid(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x0

    .line 5
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string p1, "code"

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const-string v1, "message"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/16 v2, 0xc8

    .line 23
    .line 24
    if-eq p1, v2, :cond_0

    .line 25
    .line 26
    sget-object p1, Lcom/transsion/gslb/Utils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v2, "error message is "

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return p2

    .line 49
    :catch_0
    move-exception p1

    .line 50
    goto :goto_3

    .line 51
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    .line 52
    .line 53
    const/4 v1, 0x4

    .line 54
    invoke-direct {p1, v1}, Ljava/util/HashMap;-><init>(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    const-wide/32 v1, 0x5265c00

    .line 58
    .line 59
    .line 60
    :try_start_1
    const-string v3, "data"

    .line 61
    .line 62
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-string v3, "domainPairs"

    .line 67
    .line 68
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    const-string v4, "overrideFlag"

    .line 73
    .line 74
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 78
    :try_start_2
    const-string v5, "expireTime"

    .line 79
    .line 80
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    int-to-long v1, v1

    .line 85
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    if-eqz v6, :cond_1

    .line 94
    .line 95
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    invoke-interface {p1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :catch_1
    move-exception v0

    .line 112
    goto :goto_1

    .line 113
    :cond_1
    const-string v3, "country"

    .line 114
    .line 115
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 119
    goto :goto_2

    .line 120
    :catch_2
    move-exception v0

    .line 121
    move v4, p2

    .line 122
    :goto_1
    :try_start_3
    sget-object v3, Lcom/transsion/gslb/Utils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 123
    .line 124
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v3, v0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 129
    .line 130
    .line 131
    const-string v0, ""

    .line 132
    .line 133
    :goto_2
    :try_start_4
    invoke-virtual {p0, p1, v4}, Lcom/transsion/gslb/DomainManager;->mergeResult(Ljava/util/Map;Z)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, v1, v2}, Lcom/transsion/gslb/DomainManager;->setSyncInterval(J)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, v0}, Lcom/transsion/gslb/DomainManager;->setCountryCode(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-direct {p0}, Lcom/transsion/gslb/DomainManager;->write()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 143
    .line 144
    .line 145
    const/4 p1, 0x1

    .line 146
    return p1

    .line 147
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 148
    .line 149
    .line 150
    return p2
.end method
