.class public final enum Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;
.super Ljava/lang/Enum;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;",
        ">;",
        "Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0014\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u001f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0007R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\tj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;",
        "",
        "Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;",
        "objectId",
        "",
        "objectNameEn",
        "objectNameZh",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getObjectId",
        "()Ljava/lang/String;",
        "getObjectNameEn",
        "getObjectNameZh",
        "TASK_START",
        "TASK_FAIL",
        "TASK_FINISH",
        "QUEUE_TIME",
        "DOWNLOAD_TIME",
        "OFFLINE_PKG_API_USAGE_STATUS",
        "OFFLINE_RESOURCE_URL_CHANGE",
        "OFFLINE_VERIFY_SERVER_FILE",
        "OFFLINE_RES_USAGE_STATUS",
        "OFFLINE_PKG_USAGE_STATUS",
        "OFFLINE_PKG_DOWNLOAD_STATUS",
        "PREFETCH_CDN_APPINFO_STATUS",
        "com.cloud.tmc.kernel"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

.field public static final enum DOWNLOAD_TIME:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

.field public static final enum OFFLINE_PKG_API_USAGE_STATUS:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

.field public static final enum OFFLINE_PKG_DOWNLOAD_STATUS:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

.field public static final enum OFFLINE_PKG_USAGE_STATUS:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

.field public static final enum OFFLINE_RESOURCE_URL_CHANGE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

.field public static final enum OFFLINE_RES_USAGE_STATUS:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

.field public static final enum OFFLINE_VERIFY_SERVER_FILE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

.field public static final enum PREFETCH_CDN_APPINFO_STATUS:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

.field public static final enum QUEUE_TIME:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

.field public static final enum TASK_FAIL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

.field public static final enum TASK_FINISH:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

.field public static final enum TASK_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;


# instance fields
.field private final objectId:Ljava/lang/String;

.field private final objectNameEn:Ljava/lang/String;

.field private final objectNameZh:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;
    .locals 3

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    new-array v0, v0, [Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 4
    .line 5
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->TASK_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->TASK_FAIL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->TASK_FINISH:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->QUEUE_TIME:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->DOWNLOAD_TIME:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->OFFLINE_PKG_API_USAGE_STATUS:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->OFFLINE_RESOURCE_URL_CHANGE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->OFFLINE_VERIFY_SERVER_FILE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->OFFLINE_RES_USAGE_STATUS:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 46
    .line 47
    const/16 v2, 0x8

    .line 48
    .line 49
    aput-object v1, v0, v2

    .line 50
    .line 51
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->OFFLINE_PKG_USAGE_STATUS:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 52
    .line 53
    const/16 v2, 0x9

    .line 54
    .line 55
    aput-object v1, v0, v2

    .line 56
    .line 57
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->OFFLINE_PKG_DOWNLOAD_STATUS:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 58
    .line 59
    const/16 v2, 0xa

    .line 60
    .line 61
    aput-object v1, v0, v2

    .line 62
    .line 63
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->PREFETCH_CDN_APPINFO_STATUS:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 64
    .line 65
    const/16 v2, 0xb

    .line 66
    .line 67
    aput-object v1, v0, v2

    .line 68
    .line 69
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 2
    .line 3
    const-string v4, "task_start"

    .line 4
    .line 5
    const-string v5, "\u79bb\u7ebf\u4e0b\u8f7d\u4efb\u52a1\u542f\u52a8"

    .line 6
    .line 7
    const-string v1, "TASK_START"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const-string v3, "500"

    .line 11
    .line 12
    move-object v0, v6

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sput-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->TASK_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 17
    .line 18
    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 19
    .line 20
    const-string v11, "task_fail"

    .line 21
    .line 22
    const-string v12, "\u79bb\u7ebf\u4e0b\u8f7d\u4efb\u52a1\u5931\u8d25"

    .line 23
    .line 24
    const-string v8, "TASK_FAIL"

    .line 25
    .line 26
    const/4 v9, 0x1

    .line 27
    const-string v10, "501"

    .line 28
    .line 29
    move-object v7, v0

    .line 30
    invoke-direct/range {v7 .. v12}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->TASK_FAIL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 34
    .line 35
    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 36
    .line 37
    const-string v5, "task_finish"

    .line 38
    .line 39
    const-string v6, "\u79bb\u7ebf\u4e0b\u8f7d\u4efb\u52a1\u5b8c\u6210"

    .line 40
    .line 41
    const-string v2, "TASK_FINISH"

    .line 42
    .line 43
    const/4 v3, 0x2

    .line 44
    const-string v4, "502"

    .line 45
    .line 46
    move-object v1, v0

    .line 47
    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->TASK_FINISH:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 51
    .line 52
    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 53
    .line 54
    const-string v11, "queue_time"

    .line 55
    .line 56
    const-string v12, "\u79bb\u7ebf\u5305\u4efb\u52a1\u6392\u961f\u65f6\u957f"

    .line 57
    .line 58
    const-string v8, "QUEUE_TIME"

    .line 59
    .line 60
    const/4 v9, 0x3

    .line 61
    const-string v10, "503"

    .line 62
    .line 63
    move-object v7, v0

    .line 64
    invoke-direct/range {v7 .. v12}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->QUEUE_TIME:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 68
    .line 69
    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 70
    .line 71
    const-string v5, "download_time"

    .line 72
    .line 73
    const-string v6, "\u79bb\u7ebf\u5305\u4efb\u52a1\u4e0b\u8f7d\u65f6\u957f"

    .line 74
    .line 75
    const-string v2, "DOWNLOAD_TIME"

    .line 76
    .line 77
    const/4 v3, 0x4

    .line 78
    const-string v4, "504"

    .line 79
    .line 80
    move-object v1, v0

    .line 81
    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->DOWNLOAD_TIME:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 85
    .line 86
    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 87
    .line 88
    const-string v11, "offline_pkg_api_usage_status"

    .line 89
    .line 90
    const-string v12, "\u79bb\u7ebf\u5305\u83b7\u53d6\u8bf7\u6c42\u72b6\u6001"

    .line 91
    .line 92
    const-string v8, "OFFLINE_PKG_API_USAGE_STATUS"

    .line 93
    .line 94
    const/4 v9, 0x5

    .line 95
    const-string v10, "505"

    .line 96
    .line 97
    move-object v7, v0

    .line 98
    invoke-direct/range {v7 .. v12}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->OFFLINE_PKG_API_USAGE_STATUS:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 102
    .line 103
    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 104
    .line 105
    const-string v5, "offline_resource_url_change"

    .line 106
    .line 107
    const-string v6, "\u79bb\u7ebf\u8d44\u6e90\u670d\u52a1\u7aef\u6587\u4ef6\u53d8\u5316App\u91cd\u65b0\u542f\u52a8"

    .line 108
    .line 109
    const-string v2, "OFFLINE_RESOURCE_URL_CHANGE"

    .line 110
    .line 111
    const/4 v3, 0x6

    .line 112
    const-string v4, "506"

    .line 113
    .line 114
    move-object v1, v0

    .line 115
    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->OFFLINE_RESOURCE_URL_CHANGE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 119
    .line 120
    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 121
    .line 122
    const-string v11, "offline_verify_server_file"

    .line 123
    .line 124
    const-string v12, "\u79bb\u7ebf\u8d44\u6e90\u6821\u9a8c\u670d\u52a1\u7aef\u6587\u4ef6"

    .line 125
    .line 126
    const-string v8, "OFFLINE_VERIFY_SERVER_FILE"

    .line 127
    .line 128
    const/4 v9, 0x7

    .line 129
    const-string v10, "507"

    .line 130
    .line 131
    move-object v7, v0

    .line 132
    invoke-direct/range {v7 .. v12}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->OFFLINE_VERIFY_SERVER_FILE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 136
    .line 137
    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 138
    .line 139
    const-string v5, "offline_res_usage_status"

    .line 140
    .line 141
    const-string v6, "\u79bb\u7ebf\u8d44\u6e90\u547d\u4e2d\u72b6\u6001"

    .line 142
    .line 143
    const-string v2, "OFFLINE_RES_USAGE_STATUS"

    .line 144
    .line 145
    const/16 v3, 0x8

    .line 146
    .line 147
    const-string v4, "508"

    .line 148
    .line 149
    move-object v1, v0

    .line 150
    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->OFFLINE_RES_USAGE_STATUS:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 154
    .line 155
    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 156
    .line 157
    const-string v11, "offline_pkg_usage_status"

    .line 158
    .line 159
    const-string v12, "\u79bb\u7ebf\u5c0f\u7a0b\u5e8f\u5305\u547d\u4e2d\u72b6\u6001"

    .line 160
    .line 161
    const-string v8, "OFFLINE_PKG_USAGE_STATUS"

    .line 162
    .line 163
    const/16 v9, 0x9

    .line 164
    .line 165
    const-string v10, "509"

    .line 166
    .line 167
    move-object v7, v0

    .line 168
    invoke-direct/range {v7 .. v12}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->OFFLINE_PKG_USAGE_STATUS:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 172
    .line 173
    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 174
    .line 175
    const-string v5, "offline_download_status"

    .line 176
    .line 177
    const-string v6, "\u79bb\u7ebf\u8d44\u6e90\u5305\u4e0b\u8f7d\u72b6\u6001"

    .line 178
    .line 179
    const-string v2, "OFFLINE_PKG_DOWNLOAD_STATUS"

    .line 180
    .line 181
    const/16 v3, 0xa

    .line 182
    .line 183
    const-string v4, "510"

    .line 184
    .line 185
    move-object v1, v0

    .line 186
    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->OFFLINE_PKG_DOWNLOAD_STATUS:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 190
    .line 191
    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 192
    .line 193
    const-string v11, "prefetch_cdn_appinfo_status"

    .line 194
    .line 195
    const-string v12, "\u9884\u62c9\u53d6 CDN AppInfo \u72b6\u6001"

    .line 196
    .line 197
    const-string v8, "PREFETCH_CDN_APPINFO_STATUS"

    .line 198
    .line 199
    const/16 v9, 0xb

    .line 200
    .line 201
    const-string v10, "520"

    .line 202
    .line 203
    move-object v7, v0

    .line 204
    invoke-direct/range {v7 .. v12}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->PREFETCH_CDN_APPINFO_STATUS:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 208
    .line 209
    invoke-static {}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->$values()[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->$VALUES:[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 214
    .line 215
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->objectId:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->objectNameEn:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p5, p0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->objectNameZh:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;
    .locals 1

    .line 1
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->$VALUES:[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getObjectId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->objectId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getObjectNameEn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->objectNameEn:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getObjectNameZh()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->objectNameZh:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
