.class public final Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask;
.super Lcom/cloud/tmc/offline/download/task/base/BaseTask;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u001e\u0010\u0004\u001a\u001a\u0012\u0004\u0012\u00020\u0006\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0007\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\tJ2\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00032\u0018\u0010\u0015\u001a\u0014\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0007\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0016H\u0002J\"\u0010\u0017\u001a\u00020\u00082\u0018\u0010\u0015\u001a\u0014\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0007\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0016H\u0002J\"\u0010\u0018\u001a\u00020\u00082\u0018\u0010\u0015\u001a\u0014\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0007\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0016H\u0016R2\u0010\u0004\u001a\u001a\u0012\u0004\u0012\u00020\u0006\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0007\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask;",
        "Lcom/cloud/tmc/offline/download/task/base/BaseTask;",
        "previousStep",
        "",
        "onResult",
        "Lkotlin/Function2;",
        "Lcom/cloud/tmc/offline/download/task/base/ITask;",
        "Lcom/cloud/tmc/offline/download/model/TaskResult;",
        "",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V",
        "getOnResult",
        "()Lkotlin/jvm/functions/Function2;",
        "setOnResult",
        "(Lkotlin/jvm/functions/Function2;)V",
        "trigger",
        "getTrigger",
        "()Ljava/lang/String;",
        "parseAppInfo",
        "offPkgConfig",
        "Lcom/cloud/tmc/offline/download/model/OffPkgConfig;",
        "zipUnCompressPath",
        "block",
        "Lkotlin/Function1;",
        "parseFailure",
        "run",
        "Companion",
        "com.cloud.tmc.offline_download"
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
.field public static final Companion:Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask$Companion;

.field private static final TAG:Ljava/lang/String; = "PrePullAppInfoParseTask"


# instance fields
.field private onResult:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/cloud/tmc/offline/download/task/base/ITask;",
            "-",
            "Lcom/cloud/tmc/offline/download/model/TaskResult<",
            "*>;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final previousStep:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask;->Companion:Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/cloud/tmc/offline/download/task/base/ITask;",
            "-",
            "Lcom/cloud/tmc/offline/download/model/TaskResult<",
            "*>;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "previousStep"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v5, 0x2

    .line 7
    const/4 v6, 0x0

    .line 8
    const-string v2, "PrePullAppInfoParseTask"

    .line 9
    .line 10
    const-wide/16 v3, 0x0

    .line 11
    .line 12
    move-object v1, p0

    .line 13
    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/offline/download/task/base/BaseTask;-><init>(Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask;->previousStep:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask;->onResult:Lkotlin/jvm/functions/Function2;

    .line 19
    .line 20
    return-void
.end method

.method public static final synthetic access$getPreviousStep$p(Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask;->previousStep:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$parseAppInfo(Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask;Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask;->parseAppInfo(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$parseFailure(Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask;->parseFailure(Lkotlin/jvm/functions/Function1;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final parseAppInfo(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/offline/download/model/OffPkgConfig;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/cloud/tmc/offline/download/model/TaskResult<",
            "*>;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;

    .line 2
    .line 3
    new-instance v8, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getPkgUrl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const/16 v6, 0xa

    .line 10
    .line 11
    const/4 v7, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x6

    .line 14
    const/4 v5, 0x0

    .line 15
    move-object v1, v8

    .line 16
    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/cloud/tmc/offline/download/model/OffPkgConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v8}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->setZipDownloadStatus(Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 23
    .line 24
    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v2, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask$parseAppInfo$loadCdnAppInfo$1;

    .line 28
    .line 29
    invoke-direct {v2, v1}, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask$parseAppInfo$loadCdnAppInfo$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p2, v2}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->loadCdnAppInfo(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    const/4 v2, 0x0

    .line 37
    const/4 v3, 0x1

    .line 38
    if-nez p2, :cond_0

    .line 39
    .line 40
    move v7, v2

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move v7, v3

    .line 43
    :goto_0
    if-nez p2, :cond_1

    .line 44
    .line 45
    const-string v4, "107"

    .line 46
    .line 47
    :goto_1
    move-object v9, v4

    .line 48
    goto :goto_2

    .line 49
    :cond_1
    const-string v4, "200"

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :goto_2
    if-nez p2, :cond_2

    .line 53
    .line 54
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v1, Ljava/lang/Throwable;

    .line 57
    .line 58
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    :goto_3
    move-object v10, v1

    .line 63
    goto :goto_4

    .line 64
    :cond_2
    const-string v1, "success"

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :goto_4
    const-string v1, "if (loadCdnAppInfo == nu\u2026arseError) else \"success\""

    .line 68
    .line 69
    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    sget-object v4, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;

    .line 73
    .line 74
    iget-object v6, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask;->previousStep:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getPkgUrl()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    const-string v5, "step_parse"

    .line 81
    .line 82
    invoke-virtual/range {v4 .. v10}, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->trackPrePullCdnRecord(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string v1, "PrePullAppInfoParseTask"

    .line 86
    .line 87
    if-nez p2, :cond_3

    .line 88
    .line 89
    new-instance p2, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getPkgUrl()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    const/16 v9, 0xa

    .line 96
    .line 97
    const/4 v10, 0x0

    .line 98
    const/4 v6, 0x0

    .line 99
    const/4 v7, 0x5

    .line 100
    const/4 v8, 0x0

    .line 101
    move-object v4, p2

    .line 102
    invoke-direct/range {v4 .. v10}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/cloud/tmc/offline/download/model/OffPkgConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, p2}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->setZipDownloadStatus(Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;)V

    .line 106
    .line 107
    .line 108
    const-string p1, "loadCdnAppInfo is not valid"

    .line 109
    .line 110
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-direct {p0, p3}, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask;->parseFailure(Lkotlin/jvm/functions/Function1;)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_3
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 118
    .line 119
    const/16 v0, 0x1d

    .line 120
    .line 121
    if-ne p3, v0, :cond_4

    .line 122
    .line 123
    sget-object p3, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 124
    .line 125
    const-string v0, "eofflineafq"

    .line 126
    .line 127
    invoke-virtual {p3, v0, v3}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetBool(Ljava/lang/String;Z)Z

    .line 128
    .line 129
    .line 130
    move-result p3

    .line 131
    goto :goto_5

    .line 132
    :cond_4
    move p3, v3

    .line 133
    :goto_5
    if-eqz p3, :cond_8

    .line 134
    .line 135
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 136
    .line 137
    .line 138
    move-result-object p3

    .line 139
    const-string v0, "loadCdnAppInfo.iterator()"

    .line 140
    .line 141
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :cond_5
    :goto_6
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_8

    .line 149
    .line 150
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    const-string v4, "iterator.next()"

    .line 155
    .line 156
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    check-cast v0, Lcom/cloud/tmc/offline/download/model/PrePullAppInfo;

    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/PrePullAppInfo;->getAppId()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/PrePullAppInfo;->getAppInfo()Lcom/cloud/tmc/integration/model/AppModel;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    if-eqz v4, :cond_7

    .line 170
    .line 171
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    if-nez v5, :cond_6

    .line 176
    .line 177
    goto :goto_7

    .line 178
    :cond_6
    move v5, v2

    .line 179
    goto :goto_8

    .line 180
    :cond_7
    :goto_7
    move v5, v3

    .line 181
    :goto_8
    if-nez v5, :cond_5

    .line 182
    .line 183
    new-instance v5, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    const-string v6, "\u89e3\u6790\u5b58\u50a8 appId: "

    .line 189
    .line 190
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v5

    .line 200
    invoke-static {v1, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->getContext$com_cloud_tmc_offline_download()Landroid/content/Context;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    if-eqz v5, :cond_5

    .line 208
    .line 209
    const-class v6, Lcom/cloud/tmc/integration/proxy/IAppInfoManagerProxy;

    .line 210
    .line 211
    invoke-static {v6}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    check-cast v6, Lcom/cloud/tmc/integration/proxy/IAppInfoManagerProxy;

    .line 216
    .line 217
    new-instance v7, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    const-string v4, "_cdn"

    .line 226
    .line 227
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    invoke-interface {v6, v5, v0, v4}, Lcom/cloud/tmc/integration/proxy/IAppInfoManagerProxy;->updateAppModelByOffline(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    goto :goto_6

    .line 238
    :cond_8
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 239
    .line 240
    .line 241
    move-result p2

    .line 242
    new-instance p3, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .line 246
    .line 247
    const-string v0, "\u89e3\u6790\u5b8c\u6210\uff0c\u89e3\u6790\u6570\u91cf\uff1a"

    .line 248
    .line 249
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object p2

    .line 259
    invoke-static {v1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    sget-object p2, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;

    .line 263
    .line 264
    new-instance p3, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;

    .line 265
    .line 266
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getPkgUrl()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    const/16 v5, 0xa

    .line 271
    .line 272
    const/4 v6, 0x0

    .line 273
    const/4 v2, 0x0

    .line 274
    const/4 v3, 0x7

    .line 275
    const/4 v4, 0x0

    .line 276
    move-object v0, p3

    .line 277
    invoke-direct/range {v0 .. v6}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/cloud/tmc/offline/download/model/OffPkgConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p2, p3}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->setZipDownloadStatus(Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;)V

    .line 281
    .line 282
    .line 283
    sget-object p1, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;

    .line 284
    .line 285
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->reportPrePullCdnRecord()V

    .line 286
    .line 287
    .line 288
    return-void
.end method

.method private final parseFailure(Lkotlin/jvm/functions/Function1;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/cloud/tmc/offline/download/model/TaskResult<",
            "*>;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask;->previousStep:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "step_check"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->isAllowRequest()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v2, "\u68c0\u67e5\u95f4\u9694\u65f6\u95f4\u662f\u5426\u5141\u8bb8: "

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, "PrePullAppInfoParseTask"

    .line 35
    .line 36
    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    new-instance v0, Lcom/cloud/tmc/offline/download/model/TaskResult$Success;

    .line 44
    .line 45
    const/4 v1, 0x2

    .line 46
    const/4 v2, 0x0

    .line 47
    const-string v3, "step_download"

    .line 48
    .line 49
    const/4 v4, 0x0

    .line 50
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/cloud/tmc/offline/download/model/TaskResult$Success;-><init>(Ljava/lang/Object;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    sget-object p1, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->reportPrePullCdnRecord()V

    .line 60
    .line 61
    .line 62
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getOnResult()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/cloud/tmc/offline/download/task/base/ITask;",
            "Lcom/cloud/tmc/offline/download/model/TaskResult<",
            "*>;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask;->onResult:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTrigger()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "idle"

    .line 2
    .line 3
    return-object v0
.end method

.method public run(Lkotlin/jvm/functions/Function1;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/cloud/tmc/offline/download/model/TaskResult<",
            "*>;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask;->previousStep:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "previousStep: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "PrePullAppInfoParseTask"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-object v0, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->isDownloaded()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    const-string v0, "\u5f53\u524d\u5c1a\u672a\u4e0b\u8f7d\uff0c\u4e0d\u6267\u884c\u89e3\u6790"

    .line 34
    .line 35
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, p1}, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask;->parseFailure(Lkotlin/jvm/functions/Function1;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->generatePrePullAppInfoOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v0, v2}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->generateDownloadFile(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)Ljava/io/File;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    if-nez v3, :cond_1

    .line 51
    .line 52
    const-string v0, "Generating download file failed"

    .line 53
    .line 54
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, p1}, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask;->parseFailure(Lkotlin/jvm/functions/Function1;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    if-nez v4, :cond_2

    .line 66
    .line 67
    const-string v0, "parentFile is null"

    .line 68
    .line 69
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-direct {p0, p1}, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask;->parseFailure(Lkotlin/jvm/functions/Function1;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-nez v5, :cond_3

    .line 81
    .line 82
    const-string v5, "unzip path is not exists"

    .line 83
    .line 84
    invoke-static {v1, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 88
    .line 89
    .line 90
    :cond_3
    new-instance v1, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;

    .line 91
    .line 92
    invoke-virtual {v2}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getPkgUrl()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    const/16 v11, 0xa

    .line 97
    .line 98
    const/4 v12, 0x0

    .line 99
    const/4 v8, 0x0

    .line 100
    const/4 v9, 0x3

    .line 101
    const/4 v10, 0x0

    .line 102
    move-object v6, v1

    .line 103
    invoke-direct/range {v6 .. v12}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/cloud/tmc/offline/download/model/OffPkgConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->setZipDownloadStatus(Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    const-string v5, "parentFile.absolutePath"

    .line 114
    .line 115
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->checkCdnAppInfoFileAndDelete(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    new-instance v4, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask$run$1;

    .line 129
    .line 130
    invoke-direct {v4, p0, v2, p1, v3}, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask$run$1;-><init>(Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask;Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Lkotlin/jvm/functions/Function1;Ljava/io/File;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v3, v1, v4}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->unzipFile(Ljava/io/File;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V

    .line 134
    .line 135
    .line 136
    return-void
.end method

.method public setOnResult(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/cloud/tmc/offline/download/task/base/ITask;",
            "-",
            "Lcom/cloud/tmc/offline/download/model/TaskResult<",
            "*>;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask;->onResult:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-void
.end method
