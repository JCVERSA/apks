.class public final Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o;
.super Landroid/content/BroadcastReceiver;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o$OooO00o;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final OooO00o:Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o$OooO00o;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o$OooO00o;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o$OooO00o;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o$OooO00o;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final OooO00o(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "miniGaid"

    .line 5
    :try_start_0
    const-string v1, "miniProcessId"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    .line 7
    :cond_0
    sget-object v2, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->INSTANCE:Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;

    invoke-virtual {v2, v1}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->updateMiniPid(I)V

    .line 8
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 9
    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->getDataSyncCallback()Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppDataSyncCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 11
    const-string v0, "miniInitProcess"

    invoke-interface {p1, v0, v1}, Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppDataSyncCallback;->onSyncData(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public final OooO00o(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "MiniBroadcastReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MiniBroadcastReceiver -> reportDataToPs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    const-string v0, "miniGaid"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->INSTANCE:Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;

    invoke-virtual {v0}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->getDataSyncCallback()Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppDataSyncCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppDataSyncCallback;->onSyncData(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, v0

    .line 10
    :goto_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move-object v2, v0

    .line 18
    :goto_1
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_4

    .line 23
    .line 24
    if-eqz p2, :cond_2

    .line 25
    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    goto :goto_2

    .line 31
    :cond_2
    move-object p2, v0

    .line 32
    :goto_2
    if-eqz p1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v1, "MiniBroadcastReceiver -> onReceive:"

    .line 44
    .line 45
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string p2, " != "

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string p2, "MiniBroadcastReceiver"

    .line 64
    .line 65
    invoke-static {p2, p1}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_4
    if-eqz p2, :cond_5

    .line 70
    .line 71
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-nez p1, :cond_6

    .line 76
    .line 77
    :cond_5
    new-instance p1, Landroid/os/Bundle;

    .line 78
    .line 79
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .line 81
    .line 82
    goto :goto_3

    .line 83
    :catchall_0
    new-instance p1, Landroid/os/Bundle;

    .line 84
    .line 85
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 86
    .line 87
    .line 88
    :cond_6
    :goto_3
    if-eqz p2, :cond_7

    .line 89
    .line 90
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    :cond_7
    const-string v1, "com.cloud.tmc.miniapp.process_id"

    .line 95
    .line 96
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_8

    .line 101
    .line 102
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o;->OooO00o(Landroid/os/Bundle;)V

    .line 103
    .line 104
    .line 105
    goto/16 :goto_5

    .line 106
    .line 107
    :cond_8
    const-string v2, "com.cloud.tmc.miniapp.addhome_success"

    .line 108
    .line 109
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    const-string v4, "miniAddHomeSuccess"

    .line 114
    .line 115
    if-eqz v3, :cond_9

    .line 116
    .line 117
    invoke-virtual {p0, v4, p1}, Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o;->OooO00o(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 118
    .line 119
    .line 120
    goto/16 :goto_5

    .line 121
    .line 122
    :cond_9
    const-string v3, "com.cloud.tmc.miniapp.start_time"

    .line 123
    .line 124
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    const-string v6, "miniAppStartTime"

    .line 129
    .line 130
    if-eqz v5, :cond_a

    .line 131
    .line 132
    invoke-virtual {p0, v6, p1}, Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o;->OooO00o(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 133
    .line 134
    .line 135
    goto :goto_5

    .line 136
    :cond_a
    const-string v5, "com.cloud.tmc.miniapp.use_time"

    .line 137
    .line 138
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v7

    .line 142
    const-string v8, "miniAppUseTime"

    .line 143
    .line 144
    if-eqz v7, :cond_b

    .line 145
    .line 146
    invoke-virtual {p0, v8, p1}, Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o;->OooO00o(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 147
    .line 148
    .line 149
    goto :goto_5

    .line 150
    :cond_b
    const-string p1, "com.cloud.tmc.miniapp.report_cache"

    .line 151
    .line 152
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    if-eqz p1, :cond_10

    .line 157
    .line 158
    :try_start_1
    const-string p1, "reportCachedata"

    .line 159
    .line 160
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    if-eqz p1, :cond_10

    .line 165
    .line 166
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    :cond_c
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 171
    .line 172
    .line 173
    move-result p2

    .line 174
    if-eqz p2, :cond_10

    .line 175
    .line 176
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    check-cast p2, Lcom/cloud/tmc/integration/model/CacheReportBean;

    .line 181
    .line 182
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/CacheReportBean;->getEvent()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v7

    .line 190
    if-eqz v7, :cond_d

    .line 191
    .line 192
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/CacheReportBean;->getData()Landroid/os/Bundle;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    invoke-virtual {p0, p2}, Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o;->OooO00o(Landroid/os/Bundle;)V

    .line 197
    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_d
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v7

    .line 204
    if-eqz v7, :cond_e

    .line 205
    .line 206
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/CacheReportBean;->getData()Landroid/os/Bundle;

    .line 207
    .line 208
    .line 209
    move-result-object p2

    .line 210
    invoke-virtual {p0, v4, p2}, Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o;->OooO00o(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 211
    .line 212
    .line 213
    goto :goto_4

    .line 214
    :cond_e
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v7

    .line 218
    if-eqz v7, :cond_f

    .line 219
    .line 220
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/CacheReportBean;->getData()Landroid/os/Bundle;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    invoke-virtual {p0, v6, p2}, Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o;->OooO00o(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 225
    .line 226
    .line 227
    goto :goto_4

    .line 228
    :cond_f
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    if-eqz v0, :cond_c

    .line 233
    .line 234
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/CacheReportBean;->getData()Landroid/os/Bundle;

    .line 235
    .line 236
    .line 237
    move-result-object p2

    .line 238
    invoke-virtual {p0, v8, p2}, Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o;->OooO00o(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 239
    .line 240
    .line 241
    goto :goto_4

    .line 242
    :catchall_1
    :cond_10
    :goto_5
    return-void
.end method
