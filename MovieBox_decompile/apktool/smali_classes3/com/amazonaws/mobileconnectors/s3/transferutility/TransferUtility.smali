.class public Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;
    }
.end annotation


# static fields
.field private static final g:Lcom/amazonaws/logging/Log;

.field private static final h:Ljava/lang/Object;

.field private static i:Ljava/lang/String;


# instance fields
.field private a:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

.field private b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

.field final c:Landroid/net/ConnectivityManager;

.field private final d:Lcom/amazonaws/services/s3/AmazonS3;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->g:Lcom/amazonaws/logging/Log;

    .line 8
    .line 9
    new-instance v0, Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->h:Ljava/lang/Object;

    .line 15
    .line 16
    const-string v0, ""

    .line 17
    .line 18
    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->i:Ljava/lang/String;

    .line 19
    .line 20
    return-void
.end method

.method private constructor <init>(Lcom/amazonaws/services/s3/AmazonS3;Landroid/content/Context;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->d:Lcom/amazonaws/services/s3/AmazonS3;

    .line 4
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->e:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->f:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;

    .line 6
    new-instance p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    .line 7
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->c(Landroid/content/Context;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->a:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 8
    invoke-virtual {p4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->getTransferThreadPoolSize()I

    move-result p1

    invoke-static {p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->b(I)V

    .line 9
    const-string p1, "connectivity"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->c:Landroid/net/ConnectivityManager;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazonaws/services/s3/AmazonS3;Landroid/content/Context;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;-><init>(Lcom/amazonaws/services/s3/AmazonS3;Landroid/content/Context;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;)V

    return-void
.end method

.method static a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestClientOptions()Lcom/amazonaws/RequestClientOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "TransferService_multipart/"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->f()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/amazonaws/util/VersionInfoUtils;->c()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lcom/amazonaws/RequestClientOptions;->a(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-object p0
.end method

.method static b(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestClientOptions()Lcom/amazonaws/RequestClientOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "TransferService/"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->f()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/amazonaws/util/VersionInfoUtils;->c()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lcom/amazonaws/RequestClientOptions;->a(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-object p0
.end method

.method public static c()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)I
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->length()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    long-to-double v3, v1

    .line 8
    const-wide v5, 0x40c3880000000000L    # 10000.0

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    div-double v5, v3, v5

    .line 14
    .line 15
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    .line 16
    .line 17
    .line 18
    move-result-wide v5

    .line 19
    const-wide/high16 v7, 0x4154000000000000L    # 5242880.0

    .line 20
    .line 21
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    .line 22
    .line 23
    .line 24
    move-result-wide v5

    .line 25
    double-to-long v5, v5

    .line 26
    long-to-double v7, v5

    .line 27
    div-double/2addr v3, v7

    .line 28
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    double-to-int v3, v3

    .line 33
    const/4 v4, 0x1

    .line 34
    add-int/2addr v3, v4

    .line 35
    new-array v7, v3, [Landroid/content/ContentValues;

    .line 36
    .line 37
    iget-object v8, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    .line 38
    .line 39
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->length()J

    .line 40
    .line 41
    .line 42
    move-result-wide v16

    .line 43
    const/16 v18, 0x0

    .line 44
    .line 45
    iget-object v15, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->f:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;

    .line 46
    .line 47
    const-wide/16 v22, 0x0

    .line 48
    .line 49
    const/4 v14, 0x0

    .line 50
    const-string v19, ""

    .line 51
    .line 52
    move-object/from16 v9, p1

    .line 53
    .line 54
    move-object/from16 v10, p2

    .line 55
    .line 56
    move-object/from16 v11, p3

    .line 57
    .line 58
    move-wide/from16 v12, v22

    .line 59
    .line 60
    move-object/from16 v21, v15

    .line 61
    .line 62
    move-object/from16 v15, v19

    .line 63
    .line 64
    move-object/from16 v19, p4

    .line 65
    .line 66
    move-object/from16 v20, p5

    .line 67
    .line 68
    invoke-virtual/range {v8 .. v21}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;JILjava/lang/String;JILcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;)Landroid/content/ContentValues;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    const/4 v9, 0x0

    .line 73
    aput-object v8, v7, v9

    .line 74
    .line 75
    move v8, v4

    .line 76
    move/from16 v26, v8

    .line 77
    .line 78
    move-wide/from16 v24, v22

    .line 79
    .line 80
    :goto_0
    if-ge v8, v3, :cond_1

    .line 81
    .line 82
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 83
    .line 84
    .line 85
    move-result-wide v18

    .line 86
    iget-object v10, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    .line 87
    .line 88
    sub-long/2addr v1, v5

    .line 89
    const-wide/16 v11, 0x0

    .line 90
    .line 91
    cmp-long v11, v1, v11

    .line 92
    .line 93
    if-gtz v11, :cond_0

    .line 94
    .line 95
    move/from16 v20, v4

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_0
    move/from16 v20, v9

    .line 99
    .line 100
    :goto_1
    iget-object v14, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->f:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;

    .line 101
    .line 102
    const-string v17, ""

    .line 103
    .line 104
    move-object/from16 v11, p1

    .line 105
    .line 106
    move-object/from16 v12, p2

    .line 107
    .line 108
    move-object/from16 v13, p3

    .line 109
    .line 110
    move-object/from16 v23, v14

    .line 111
    .line 112
    move-wide/from16 v14, v24

    .line 113
    .line 114
    move/from16 v16, v26

    .line 115
    .line 116
    move-object/from16 v21, p4

    .line 117
    .line 118
    move-object/from16 v22, p5

    .line 119
    .line 120
    invoke-virtual/range {v10 .. v23}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;JILjava/lang/String;JILcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;)Landroid/content/ContentValues;

    .line 121
    .line 122
    .line 123
    move-result-object v10

    .line 124
    aput-object v10, v7, v8

    .line 125
    .line 126
    add-long v24, v24, v5

    .line 127
    .line 128
    add-int/lit8 v26, v26, 0x1

    .line 129
    .line 130
    add-int/lit8 v8, v8, 0x1

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_1
    iget-object v1, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    .line 134
    .line 135
    invoke-virtual {v1, v7}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->a([Landroid/content/ContentValues;)I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    return v1
.end method

.method private static f()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->h:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->i:Ljava/lang/String;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->i:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, "/"

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    monitor-exit v0

    .line 43
    return-object v1

    .line 44
    :catchall_0
    move-exception v1

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    const-string v1, ""

    .line 47
    .line 48
    monitor-exit v0

    .line 49
    return-object v1

    .line 50
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw v1
.end method

.method private g(Ljava/io/File;)Z
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/32 v2, 0x500000

    .line 8
    .line 9
    .line 10
    cmp-long p1, v0, v2

    .line 11
    .line 12
    if-lez p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    return p1
.end method

.method private declared-synchronized h(Ljava/lang/String;I)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->d:Lcom/amazonaws/services/s3/AmazonS3;

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/S3ClientReference;->b(Ljava/lang/Integer;Lcom/amazonaws/services/s3/AmazonS3;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->a:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->d(I)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    .line 20
    .line 21
    invoke-virtual {v0, p2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->j(I)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->g:Lcom/amazonaws/logging/Log;

    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v1, "Cannot find transfer with id: "

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-interface {p1, p2}, Lcom/amazonaws/logging/Log;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    monitor-exit p0

    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto/16 :goto_3

    .line 53
    .line 54
    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->a:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 55
    .line 56
    invoke-virtual {p2, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->b(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const-string v1, "add_transfer"

    .line 61
    .line 62
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->g:Lcom/amazonaws/logging/Log;

    .line 69
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v1, "Transfer has already been added: "

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-interface {p1, p2}, Lcom/amazonaws/logging/Log;->j(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    .line 89
    .line 90
    monitor-exit p0

    .line 91
    return-void

    .line 92
    :cond_2
    :goto_0
    :try_start_2
    const-string p2, "add_transfer"

    .line 93
    .line 94
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    if-nez p2, :cond_6

    .line 99
    .line 100
    const-string p2, "resume_transfer"

    .line 101
    .line 102
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    if-eqz p2, :cond_3

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_3
    const-string p2, "pause_transfer"

    .line 110
    .line 111
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result p2

    .line 115
    if-eqz p2, :cond_4

    .line 116
    .line 117
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->d:Lcom/amazonaws/services/s3/AmazonS3;

    .line 118
    .line 119
    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->a:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 120
    .line 121
    invoke-virtual {v0, p1, p2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->g(Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;)Z

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_4
    const-string p2, "cancel_transfer"

    .line 126
    .line 127
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    if-eqz p2, :cond_5

    .line 132
    .line 133
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->d:Lcom/amazonaws/services/s3/AmazonS3;

    .line 134
    .line 135
    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->a:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 136
    .line 137
    invoke-virtual {v0, p1, p2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->b(Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;)Z

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_5
    sget-object p2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->g:Lcom/amazonaws/logging/Log;

    .line 142
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    const-string v1, "Unknown action: "

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-interface {p2, p1}, Lcom/amazonaws/logging/Log;->f(Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->d:Lcom/amazonaws/services/s3/AmazonS3;

    .line 165
    .line 166
    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    .line 167
    .line 168
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->a:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 169
    .line 170
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->c:Landroid/net/ConnectivityManager;

    .line 171
    .line 172
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->i(Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;Landroid/net/ConnectivityManager;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    .line 174
    .line 175
    :goto_2
    monitor-exit p0

    .line 176
    return-void

    .line 177
    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 178
    throw p1
.end method


# virtual methods
.method public d(I)Z
    .locals 1

    .line 1
    const-string v0, "cancel_transfer"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->h(Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    return p1
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;
    .locals 1

    .line 1
    new-instance v0, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->j(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;
    .locals 6

    .line 1
    const/4 v5, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object v4, p4

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->k(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;
    .locals 7

    .line 1
    const/4 v6, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object v4, p4

    .line 7
    move-object v5, p5

    .line 8
    invoke-virtual/range {v0 .. v6}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->l(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;
    .locals 8

    .line 1
    if-eqz p3, :cond_1

    .line 2
    .line 3
    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-direct {p0, p3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->g(Ljava/io/File;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-direct/range {p0 .. p5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->e(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)I

    .line 22
    .line 23
    .line 24
    move-result p4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    .line 27
    .line 28
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;->UPLOAD:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;

    .line 29
    .line 30
    iget-object v7, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->f:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;

    .line 31
    .line 32
    move-object v2, p1

    .line 33
    move-object v3, p2

    .line 34
    move-object v4, p3

    .line 35
    move-object v5, p4

    .line 36
    move-object v6, p5

    .line 37
    invoke-virtual/range {v0 .. v7}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->k(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;)Landroid/net/Uri;

    .line 38
    .line 39
    .line 40
    move-result-object p4

    .line 41
    invoke-virtual {p4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p4

    .line 45
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result p4

    .line 49
    :goto_0
    new-instance p5, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    .line 50
    .line 51
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    .line 52
    .line 53
    move-object v0, p5

    .line 54
    move v1, p4

    .line 55
    move-object v3, p1

    .line 56
    move-object v4, p2

    .line 57
    move-object v5, p3

    .line 58
    move-object v6, p6

    .line 59
    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;-><init>(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)V

    .line 60
    .line 61
    .line 62
    const-string p1, "add_transfer"

    .line 63
    .line 64
    invoke-direct {p0, p1, p4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->h(Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    return-object p5

    .line 68
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 69
    .line 70
    new-instance p2, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string p4, "Invalid file: "

    .line 76
    .line 77
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p1
.end method
