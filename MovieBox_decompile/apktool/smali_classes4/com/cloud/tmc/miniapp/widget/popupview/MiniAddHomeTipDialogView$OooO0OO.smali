.class public final Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView$OooO0OO;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Landroid/content/Context;

.field public final synthetic OooO0O0:Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView$OooO0OO;->OooO00o:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView$OooO0OO;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;)V
    .locals 7

    .line 1
    const-string v0, "bean"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView$OooO0OO;->OooO00o:Landroid/content/Context;

    .line 7
    .line 8
    instance-of v1, v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    if-nez v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView$OooO0OO;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO0oO:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniappStartTime()J

    .line 28
    .line 29
    .line 30
    move-result-wide v4

    .line 31
    sub-long/2addr v2, v4

    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v5, "onRefresh:"

    .line 38
    .line 39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->getDelayTime()J

    .line 53
    .line 54
    .line 55
    move-result-wide v1

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 57
    .line 58
    .line 59
    move-result-wide v3

    .line 60
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniappStartTime()J

    .line 61
    .line 62
    .line 63
    move-result-wide v5

    .line 64
    sub-long/2addr v3, v5

    .line 65
    sub-long/2addr v1, v3

    .line 66
    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showPopUpWindowRunnable(J)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public show(Ljava/lang/String;)V
    .locals 11

    .line 1
    const-string v0, "appId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView$OooO0OO;->OooO00o:Landroid/content/Context;

    .line 7
    .line 8
    instance-of v1, v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v0, v2

    .line 17
    :goto_0
    if-nez v0, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView$OooO0OO;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO0oO:Ljava/lang/String;

    .line 23
    .line 24
    const-string v3, "showAddHomeTipDialogController"

    .line 25
    .line 26
    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget-object v1, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;

    .line 30
    .line 31
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView$OooO0OO;->OooO00o:Landroid/content/Context;

    .line 32
    .line 33
    invoke-virtual {v1, v3, p1}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->getAddHomeStatus(Landroid/content/Context;Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView$OooO0OO;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;

    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->getMMiniAppAutoPopover()Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    if-eqz v3, :cond_3

    .line 47
    .line 48
    invoke-virtual {v3}, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->getDelayDuration()Ljava/lang/Long;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    if-eqz v3, :cond_3

    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 55
    .line 56
    .line 57
    move-result-wide v3

    .line 58
    goto :goto_1

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    goto/16 :goto_3

    .line 61
    .line 62
    :cond_3
    const-wide/16 v3, 0x3a98

    .line 63
    .line 64
    :goto_1
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniappResumeTimestamp()J

    .line 65
    .line 66
    .line 67
    move-result-wide v5

    .line 68
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getOnPauseStopTimeStamp()J

    .line 69
    .line 70
    .line 71
    move-result-wide v7

    .line 72
    cmp-long v5, v5, v7

    .line 73
    .line 74
    if-lez v5, :cond_4

    .line 75
    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 77
    .line 78
    .line 79
    move-result-wide v5

    .line 80
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniappResumeTimestamp()J

    .line 81
    .line 82
    .line 83
    move-result-wide v7

    .line 84
    sub-long/2addr v5, v7

    .line 85
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniappForegroundTime()J

    .line 86
    .line 87
    .line 88
    move-result-wide v7

    .line 89
    add-long/2addr v5, v7

    .line 90
    goto :goto_2

    .line 91
    :cond_4
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniappForegroundTime()J

    .line 92
    .line 93
    .line 94
    move-result-wide v5

    .line 95
    :goto_2
    iget-object v7, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView$OooO0OO;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;

    .line 96
    .line 97
    iget-object v7, v7, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO0oO:Ljava/lang/String;

    .line 98
    .line 99
    new-instance v8, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v9, "currentForegroundTime:->"

    .line 105
    .line 106
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    invoke-static {v7, v8}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getResumed()Z

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    if-eqz v7, :cond_8

    .line 124
    .line 125
    cmp-long v7, v5, v3

    .line 126
    .line 127
    if-lez v7, :cond_7

    .line 128
    .line 129
    sget-object v3, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;

    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMActivityHelper()Lcom/cloud/tmc/integration/ActivityHelper;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    if-eqz v4, :cond_5

    .line 136
    .line 137
    invoke-virtual {v4}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    :cond_5
    const/16 v4, 0x53

    .line 142
    .line 143
    invoke-virtual {v3, v4, v2}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->checkAddhomeShowStatus(ILcom/cloud/tmc/integration/structure/App;)Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-eqz v2, :cond_6

    .line 148
    .line 149
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView$OooO0OO;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;

    .line 150
    .line 151
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO0oO:Ljava/lang/String;

    .line 152
    .line 153
    const-string v0, "not allow show ,return "

    .line 154
    .line 155
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :cond_6
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMActivityHelper()Lcom/cloud/tmc/integration/ActivityHelper;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    if-eqz v0, :cond_9

    .line 168
    .line 169
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getBackPressedProcessor()Lcom/cloud/tmc/integration/processor/IBackPressedProcessor;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    new-instance v3, Lcom/cloud/tmc/miniapp/utils/intercept/OooO00o;

    .line 174
    .line 175
    invoke-direct {v3}, Lcom/cloud/tmc/miniapp/utils/intercept/OooO00o;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-interface {v2, v3}, Lcom/cloud/tmc/integration/processor/IBackPressedProcessor;->addInterceptors(Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->getAppMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    check-cast p1, Lcom/cloud/tmc/integration/structure/App;

    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_7
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView$OooO0OO;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;

    .line 193
    .line 194
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->getMMiniAppAutoPopover()Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 199
    .line 200
    .line 201
    move-result-wide v7

    .line 202
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniappStartTime()J

    .line 203
    .line 204
    .line 205
    move-result-wide v9

    .line 206
    sub-long/2addr v7, v9

    .line 207
    add-long/2addr v7, v3

    .line 208
    sub-long/2addr v7, v5

    .line 209
    invoke-virtual {v1, p1, v2, v7, v8}, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;J)V

    .line 210
    .line 211
    .line 212
    goto :goto_4

    .line 213
    :cond_8
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView$OooO0OO;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;

    .line 214
    .line 215
    const/4 v1, 0x1

    .line 216
    invoke-virtual {p1, v1}, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->setShowAddHomeDialogStatus(Z)V

    .line 217
    .line 218
    .line 219
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView$OooO0OO;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;

    .line 220
    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 222
    .line 223
    .line 224
    move-result-wide v1

    .line 225
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniappStartTime()J

    .line 226
    .line 227
    .line 228
    move-result-wide v7

    .line 229
    sub-long/2addr v1, v7

    .line 230
    add-long/2addr v1, v3

    .line 231
    sub-long/2addr v1, v5

    .line 232
    invoke-virtual {p1, v1, v2}, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->setShowAddHomeDialogDelayTime(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    .line 234
    .line 235
    goto :goto_4

    .line 236
    :goto_3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView$OooO0OO;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;

    .line 237
    .line 238
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO0oO:Ljava/lang/String;

    .line 239
    .line 240
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 241
    .line 242
    .line 243
    :cond_9
    :goto_4
    return-void
.end method
