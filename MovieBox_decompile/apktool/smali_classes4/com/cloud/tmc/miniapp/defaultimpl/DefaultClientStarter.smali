.class public Lcom/cloud/tmc/miniapp/defaultimpl/DefaultClientStarter;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/proxy/IClientStarter;


# static fields
.field public static OooO0O0:Ljava/lang/Long;


# instance fields
.field public OooO00o:Ljava/lang/Long;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x3e8

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultClientStarter;->OooO0O0:Ljava/lang/Long;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultClientStarter;->OooO00o:Ljava/lang/Long;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public declared-synchronized createFragment(Landroid/content/Context;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    monitor-exit p0

    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1
.end method

.method public createPrepareController(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/controller/OooO0O0;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/cloud/tmc/miniapp/prepare/controller/OooO0O0;-><init>(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public createQuickModePrepareController(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/model/PrepareContext;->setVirtualStart(Z)V

    .line 3
    .line 4
    .line 5
    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/controller/OooO0OO;

    .line 6
    .line 7
    invoke-direct {v0, p1, p2}, Lcom/cloud/tmc/miniapp/prepare/controller/OooO0OO;-><init>(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public createSubpackagePrepareController(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;ILjava/lang/String;)Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/controller/OooO0o;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/prepare/controller/OooO0o;-><init>(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public createWarmupController(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/model/PrepareContext;->setVirtualStart(Z)V

    .line 3
    .line 4
    .line 5
    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/controller/OooO00o;

    .line 6
    .line 7
    invoke-direct {v0, p1, p2}, Lcom/cloud/tmc/miniapp/prepare/controller/OooO00o;-><init>(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public startClient(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Ljava/lang/Class;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "fromContext:"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/OooO00o;->OooO00o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "DefaultClientStarter"

    .line 23
    .line 24
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    instance-of v0, p1, Landroid/app/Activity;

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    const/high16 v0, 0x10000000

    .line 32
    .line 33
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v2, "startBundle"

    .line 41
    .line 42
    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/cloud/tmc/integration/activity/StartClientBundle;

    .line 47
    .line 48
    const-string v2, "miniAppId"

    .line 49
    .line 50
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 55
    .line 56
    .line 57
    move-result-wide v3

    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    const/high16 v6, 0x20000000

    .line 63
    .line 64
    if-ne v5, v6, :cond_2

    .line 65
    .line 66
    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0, v2}, Lcom/cloud/tmc/miniapp/NewTaskManager;->checkOpenMutipleTask(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_1

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    goto :goto_0

    .line 83
    :cond_1
    invoke-static {p2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppLaunchActivity(Landroid/content/Intent;)Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v6, "launch activity FLAG_ACTIVITY_SINGLE_TOP :"

    .line 93
    .line 94
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-static {v1, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_2
    sget-object v5, Lcom/cloud/tmc/miniapp/NewTaskManager;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;

    .line 109
    .line 110
    invoke-virtual {v5}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    new-instance v6, Lcom/cloud/tmc/miniapp/process/AppRecord;

    .line 115
    .line 116
    iget-object v7, v0, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startParams:Landroid/os/Bundle;

    .line 117
    .line 118
    iget-object v0, v0, Lcom/cloud/tmc/integration/activity/StartClientBundle;->sceneParams:Landroid/os/Bundle;

    .line 119
    .line 120
    invoke-direct {v6, v2, v7, v0}, Lcom/cloud/tmc/miniapp/process/AppRecord;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v5, p1, v6}, Lcom/cloud/tmc/miniapp/NewTaskManager;->preLaunchActivity(Landroid/content/Context;Lcom/cloud/tmc/miniapp/process/AppRecord;)Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    if-nez v0, :cond_3

    .line 128
    .line 129
    invoke-static {p2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppLaunchActivity(Landroid/content/Intent;)Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    goto :goto_1

    .line 134
    :cond_3
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;->getActivityClazz()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    :goto_1
    if-eqz v0, :cond_4

    .line 139
    .line 140
    const-string v5, "target class:"

    .line 141
    .line 142
    invoke-static {v5}, Lcom/cloud/tmc/miniapp/OooO00o;->OooO00o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    invoke-static {v1, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    :cond_4
    :try_start_0
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultClientStarter;->OooO00o:Ljava/lang/Long;

    .line 161
    .line 162
    if-eqz v5, :cond_5

    .line 163
    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 165
    .line 166
    .line 167
    move-result-wide v5

    .line 168
    iget-object v7, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultClientStarter;->OooO00o:Ljava/lang/Long;

    .line 169
    .line 170
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 171
    .line 172
    .line 173
    move-result-wide v7

    .line 174
    sub-long/2addr v5, v7

    .line 175
    sget-object v7, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultClientStarter;->OooO0O0:Ljava/lang/Long;

    .line 176
    .line 177
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 178
    .line 179
    .line 180
    move-result-wide v7

    .line 181
    cmp-long v5, v5, v7

    .line 182
    .line 183
    if-lez v5, :cond_7

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :catchall_0
    move-exception p1

    .line 187
    goto :goto_3

    .line 188
    :cond_5
    :goto_2
    const-string v5, "record_id"

    .line 189
    .line 190
    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    .line 192
    .line 193
    const-string v2, "record_token"

    .line 194
    .line 195
    invoke-virtual {p2, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 196
    .line 197
    .line 198
    if-eqz v0, :cond_6

    .line 199
    .line 200
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 201
    .line 202
    .line 203
    :cond_6
    sget-object v2, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    .line 204
    .line 205
    invoke-virtual {v2, p2, p1}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->addCommonIntentParameter(Landroid/content/Intent;Landroid/content/Context;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 209
    .line 210
    .line 211
    const-string p1, "start finish"

    .line 212
    .line 213
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 217
    .line 218
    .line 219
    move-result-wide p1

    .line 220
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultClientStarter;->OooO00o:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    .line 226
    goto :goto_4

    .line 227
    :goto_3
    const-string p2, "startClient exception:"

    .line 228
    .line 229
    invoke-static {v1, p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 230
    .line 231
    .line 232
    :goto_4
    return-object v0
.end method
