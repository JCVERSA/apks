.class public final Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->backgroundDownloadSubPackageZip(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

.field public final synthetic OooO0OO:Ljava/lang/String;

.field public final synthetic OooO0Oo:Lcom/cloud/tmc/integration/model/AppModel;

.field public final synthetic OooO0o:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic OooO0o0:Landroid/content/Context;

.field public final synthetic OooO0oO:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/IOException;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppModel;Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/integration/model/AppModel;",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/io/IOException;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO00o:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0OO:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0Oo:Lcom/cloud/tmc/integration/model/AppModel;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0o0:Landroid/content/Context;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0o:Lkotlin/jvm/functions/Function0;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0oO:Lkotlin/jvm/functions/Function3;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO00o:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    .line 9
    .line 10
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0OO:Ljava/lang/String;

    .line 11
    .line 12
    invoke-interface {p1, p2}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->removeDownloadAppMap(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    invoke-static {}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->access$getTAG$p()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public onFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string p1, "errorCode"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "e"

    .line 7
    .line 8
    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->access$getTAG$p()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance p5, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v0, "Step_APP_Download_\u8d44\u6e90\u5305\u540e\u53f0\u4e0b\u8f7d\u5931\u8d25\uff0c"

    .line 21
    .line 22
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p5

    .line 32
    invoke-static {p1, p5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0oO:Lkotlin/jvm/functions/Function3;

    .line 36
    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    invoke-interface {p1, p2, p3, p4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    .line 43
    .line 44
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0OO:Ljava/lang/String;

    .line 45
    .line 46
    invoke-interface {p1, p2}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->removeDownloadAppMap(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    invoke-static {}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->access$getTAG$p()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void
.end method

.method public onFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    invoke-static {}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->access$getTAG$p()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const-string v0, "Step_APP_Download_\u8d44\u6e90\u5305\u540e\u53f0\u4e0b\u8f7d\u5b8c\u6210\uff0c\u8fdb\u884c\u89e3\u538b"

    .line 6
    .line 7
    invoke-static {p2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0Oo:Lcom/cloud/tmc/integration/model/AppModel;

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0Oo:Lcom/cloud/tmc/integration/model/AppModel;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getDeployVersion()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0Oo:Lcom/cloud/tmc/integration/model/AppModel;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/AppModel;->getMainPackageUrl()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0Oo:Lcom/cloud/tmc/integration/model/AppModel;

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v4, "backgroundDownSubPkgZip Finish:downloadUrl:"

    .line 40
    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v4, ";appInfo:appId:"

    .line 48
    .line 49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p2, ";deployVersion:"

    .line 56
    .line 57
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v0, ";mainPkgUrl:"

    .line 64
    .line 65
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v1, ";fullPkgUrl:"

    .line 72
    .line 73
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    const-string v3, "Subpackage::"

    .line 84
    .line 85
    invoke-static {v3, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :try_start_0
    sget-object v2, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    .line 89
    .line 90
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0o0:Landroid/content/Context;

    .line 91
    .line 92
    iget-object v6, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0Oo:Lcom/cloud/tmc/integration/model/AppModel;

    .line 93
    .line 94
    invoke-virtual {v6}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    iget-object v7, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0OO:Ljava/lang/String;

    .line 99
    .line 100
    const/4 v8, 0x1

    .line 101
    invoke-virtual {v2, v5, v6, v7, v8}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->changeZipDownloadStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :catchall_0
    move-exception v2

    .line 106
    invoke-static {}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->access$getTAG$p()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    const-string v6, ""

    .line 111
    .line 112
    invoke-static {v5, v6, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    .line 114
    .line 115
    :goto_0
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0o:Lkotlin/jvm/functions/Function0;

    .line 116
    .line 117
    if-eqz v2, :cond_0

    .line 118
    .line 119
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    :cond_0
    sget-object v2, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 123
    .line 124
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->checkEnableBackgroundUnzip()Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-eqz v2, :cond_1

    .line 129
    .line 130
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0Oo:Lcom/cloud/tmc/integration/model/AppModel;

    .line 131
    .line 132
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0Oo:Lcom/cloud/tmc/integration/model/AppModel;

    .line 137
    .line 138
    invoke-virtual {v5}, Lcom/cloud/tmc/integration/model/AppModel;->getDeployVersion()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    iget-object v6, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0Oo:Lcom/cloud/tmc/integration/model/AppModel;

    .line 143
    .line 144
    invoke-virtual {v6}, Lcom/cloud/tmc/integration/model/AppModel;->getMainPackageUrl()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    iget-object v7, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0Oo:Lcom/cloud/tmc/integration/model/AppModel;

    .line 149
    .line 150
    invoke-virtual {v7}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    new-instance v8, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    const-string v9, "backgroundDownSubPkgZip startUnZip:downloadUrl:"

    .line 160
    .line 161
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-static {v3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    sget-object v4, Lcom/cloud/tmc/miniapp/utils/OooOOO0;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooOOO0;

    .line 199
    .line 200
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0o0:Landroid/content/Context;

    .line 201
    .line 202
    iget-object v6, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0Oo:Lcom/cloud/tmc/integration/model/AppModel;

    .line 203
    .line 204
    const/4 v8, 0x0

    .line 205
    const/4 v9, 0x1

    .line 206
    const/4 v7, 0x0

    .line 207
    invoke-virtual/range {v4 .. v9}, Lcom/cloud/tmc/miniapp/utils/OooOOO0;->OooO0Oo(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/SubPackageInfo;ZZ)V

    .line 208
    .line 209
    .line 210
    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    .line 211
    .line 212
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0OO:Ljava/lang/String;

    .line 213
    .line 214
    invoke-interface {p1, p2}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->removeDownloadAppMap(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 215
    .line 216
    .line 217
    goto :goto_1

    .line 218
    :catchall_1
    move-exception p1

    .line 219
    invoke-static {}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->access$getTAG$p()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p2

    .line 223
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 224
    .line 225
    .line 226
    :goto_1
    return-void
.end method

.method public onPrepare(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onProgress(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public synthetic progressUpdate(Ljava/lang/String;ILjava/lang/String;JJ)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Lcom/cloud/tmc/kernel/proxy/network/a;->a(Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;Ljava/lang/String;ILjava/lang/String;JJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
