.class final Lcom/bytedance/sdk/openadsdk/ApmHelper$1;
.super Lcom/bytedance/sdk/component/Dq/Dq;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/ApmHelper;->initApm(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/InitConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Landroid/content/Context;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/InitConfig;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/InitConfig;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/ApmHelper$1;->Sj:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/ApmHelper$1;->sP:Lcom/bytedance/sdk/openadsdk/InitConfig;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->Sj()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->Ei()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->Sj(Z)Z

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Fmk()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->sP()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-nez v4, :cond_1

    .line 36
    .line 37
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/ApmHelper$1;->sP:Lcom/bytedance/sdk/openadsdk/InitConfig;

    .line 38
    .line 39
    invoke-interface {v4}, Lcom/bytedance/sdk/openadsdk/InitConfig;->getAppId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->Sj(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    const-string v11, "com.iab.omid.library.bytedance2"

    .line 47
    .line 48
    const-string v12, "com.bytedance.adsdk"

    .line 49
    .line 50
    const-string v5, "com.bytedance.sdk.component"

    .line 51
    .line 52
    const-string v6, "com.bytedance.sdk.mediation"

    .line 53
    .line 54
    const-string v7, "com.bytedance.sdk.openadsdk"

    .line 55
    .line 56
    const-string v8, "com.com.bytedance.overseas.sdk"

    .line 57
    .line 58
    const-string v9, "com.pgl.ssdk"

    .line 59
    .line 60
    const-string v10, "com.bykv.vk"

    .line 61
    .line 62
    filled-new-array/range {v5 .. v12}, [Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v18

    .line 66
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/ApmHelper$1;->Sj:Landroid/content/Context;

    .line 67
    .line 68
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/aa;->Sj(Landroid/content/Context;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    :try_start_0
    const-string v5, "apm_crash_wait_time"

    .line 73
    .line 74
    const/16 v6, 0x2710

    .line 75
    .line 76
    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/dx/Sj;->Sj(Ljava/lang/String;I)I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    int-to-long v5, v5

    .line 81
    invoke-static {v5, v6}, Lcom/apm/insight/Npth;->setCrashWaitTime(J)V

    .line 82
    .line 83
    .line 84
    invoke-static {v2}, Lcom/apm/insight/Npth;->enableLoopMonitor(Z)V

    .line 85
    .line 86
    .line 87
    invoke-static {v2}, Lcom/apm/insight/Npth;->enableAnrInfo(Z)V

    .line 88
    .line 89
    .line 90
    invoke-static {v2}, Lcom/apm/insight/Npth;->enableNativeDump(Z)V

    .line 91
    .line 92
    .line 93
    invoke-static {v2}, Lcom/apm/insight/Npth;->enableActivityDump(Z)V

    .line 94
    .line 95
    .line 96
    invoke-static {v2}, Lcom/apm/insight/Npth;->enableMessageDump(Z)V

    .line 97
    .line 98
    .line 99
    new-instance v5, Lcom/bytedance/sdk/openadsdk/ApmHelper$1$1;

    .line 100
    .line 101
    invoke-direct {v5, v0}, Lcom/bytedance/sdk/openadsdk/ApmHelper$1$1;-><init>(Lcom/bytedance/sdk/openadsdk/ApmHelper$1;)V

    .line 102
    .line 103
    .line 104
    invoke-static {v5}, Lcom/apm/insight/MonitorCrash;->setCustomRequestHeaderCallback(Lcom/apm/insight/CustomRequestHeader;)V

    .line 105
    .line 106
    .line 107
    iget-object v13, v0, Lcom/bytedance/sdk/openadsdk/ApmHelper$1;->Sj:Landroid/content/Context;

    .line 108
    .line 109
    const-string v14, "10000001"

    .line 110
    .line 111
    const-string v17, "7.1.1.4"

    .line 112
    .line 113
    const-wide/16 v15, 0x1bca

    .line 114
    .line 115
    invoke-static/range {v13 .. v18}, Lcom/apm/insight/MonitorCrash;->initSDK(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/String;)Lcom/apm/insight/MonitorCrash;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    new-instance v6, Lcom/bytedance/sdk/openadsdk/ApmHelper$1$2;

    .line 120
    .line 121
    invoke-direct {v6, v0, v5}, Lcom/bytedance/sdk/openadsdk/ApmHelper$1$2;-><init>(Lcom/bytedance/sdk/openadsdk/ApmHelper$1;Lcom/apm/insight/MonitorCrash;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5, v6}, Lcom/apm/insight/MonitorCrash;->setCustomDataCallback(Lcom/apm/insight/AttachUserData;)Lcom/apm/insight/MonitorCrash;

    .line 125
    .line 126
    .line 127
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->Chv()Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-eqz v1, :cond_0

    .line 132
    .line 133
    invoke-virtual {v5}, Lcom/apm/insight/MonitorCrash;->config()Lcom/apm/insight/MonitorCrash$Config;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    const-string v6, "libnms.so"

    .line 138
    .line 139
    const-string v7, "libtobEmbedPagEncrypt.so"

    .line 140
    .line 141
    const-string v8, "tt_ugen_layout.so"

    .line 142
    .line 143
    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    invoke-virtual {v1, v6}, Lcom/apm/insight/MonitorCrash$Config;->setSoList([Ljava/lang/String;)Lcom/apm/insight/MonitorCrash$Config;

    .line 148
    .line 149
    .line 150
    :cond_0
    invoke-virtual {v5}, Lcom/apm/insight/MonitorCrash;->config()Lcom/apm/insight/MonitorCrash$Config;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {v1, v4}, Lcom/apm/insight/MonitorCrash$Config;->setDeviceId(Ljava/lang/String;)Lcom/apm/insight/MonitorCrash$Config;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v5, v3}, Lcom/apm/insight/MonitorCrash;->setReportUrl(Ljava/lang/String;)Lcom/apm/insight/MonitorCrash;

    .line 158
    .line 159
    .line 160
    const-string v1, "host_appid"

    .line 161
    .line 162
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->EjP()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    invoke-virtual {v5, v1, v6}, Lcom/apm/insight/MonitorCrash;->addTags(Ljava/lang/String;Ljava/lang/String;)Lcom/apm/insight/MonitorCrash;

    .line 167
    .line 168
    .line 169
    const-string v1, "sdk_version"

    .line 170
    .line 171
    const-string v6, "7.1.1.4"

    .line 172
    .line 173
    invoke-virtual {v5, v1, v6}, Lcom/apm/insight/MonitorCrash;->addTags(Ljava/lang/String;Ljava/lang/String;)Lcom/apm/insight/MonitorCrash;

    .line 174
    .line 175
    .line 176
    new-instance v1, Lcom/bytedance/sdk/openadsdk/ApmHelper$1$3;

    .line 177
    .line 178
    invoke-direct {v1, v0, v5}, Lcom/bytedance/sdk/openadsdk/ApmHelper$1$3;-><init>(Lcom/bytedance/sdk/openadsdk/ApmHelper$1;Lcom/apm/insight/MonitorCrash;)V

    .line 179
    .line 180
    .line 181
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->Sj(Lcom/bytedance/sdk/openadsdk/ApmHelper$sP;)Lcom/bytedance/sdk/openadsdk/ApmHelper$sP;

    .line 182
    .line 183
    .line 184
    const/4 v1, 0x1

    .line 185
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->sP(Z)Z

    .line 186
    .line 187
    .line 188
    invoke-static {v4, v3}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->Sj(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    new-instance v1, Lcom/bytedance/sdk/openadsdk/ApmHelper$1$4;

    .line 192
    .line 193
    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/ApmHelper$1$4;-><init>(Lcom/bytedance/sdk/openadsdk/ApmHelper$1;)V

    .line 194
    .line 195
    .line 196
    sget-object v3, Lcom/apm/insight/CrashType;->ALL:Lcom/apm/insight/CrashType;

    .line 197
    .line 198
    invoke-virtual {v5, v1, v3}, Lcom/apm/insight/MonitorCrash;->registerCrashCallback(Lcom/apm/insight/ICrashCallback;Lcom/apm/insight/CrashType;)V

    .line 199
    .line 200
    .line 201
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->vS()Lcom/bytedance/sdk/openadsdk/ApmHelper$Sj;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    const/4 v3, 0x0

    .line 206
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->Sj(Lcom/bytedance/sdk/openadsdk/ApmHelper$Sj;)Lcom/bytedance/sdk/openadsdk/ApmHelper$Sj;

    .line 207
    .line 208
    .line 209
    if-eqz v1, :cond_1

    .line 210
    .line 211
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->Jcg()Lcom/bytedance/sdk/openadsdk/ApmHelper$sP;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/ApmHelper$Sj;->Sj:Ljava/lang/String;

    .line 216
    .line 217
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/ApmHelper$Sj;->sP:Ljava/lang/String;

    .line 218
    .line 219
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/ApmHelper$Sj;->TKC:Ljava/lang/Throwable;

    .line 220
    .line 221
    invoke-interface {v3, v4, v5, v1}, Lcom/bytedance/sdk/openadsdk/ApmHelper$sP;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    .line 223
    .line 224
    goto :goto_0

    .line 225
    :catchall_0
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->sP(Z)Z

    .line 226
    .line 227
    .line 228
    :cond_1
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->Dq()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 233
    .line 234
    .line 235
    return-void
.end method
