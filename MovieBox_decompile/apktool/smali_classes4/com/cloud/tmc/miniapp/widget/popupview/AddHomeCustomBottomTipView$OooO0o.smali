.class public final Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO0o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;

.field public final synthetic OooO0O0:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO0o;->OooO0O0:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO0o;->OooO0O0:Landroid/content/Context;

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
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO0oO:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO0oO:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "showAddHomeBottomTipsController"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO0o;->OooO0O0:Landroid/content/Context;

    .line 16
    .line 17
    instance-of v1, v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    move-object v1, v0

    .line 23
    check-cast v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v1, v2

    .line 27
    :goto_0
    if-nez v1, :cond_1

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    sget-object v3, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;

    .line 31
    .line 32
    invoke-virtual {v3, v0, p1}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->getAddHomeStatus(Landroid/content/Context;Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->getMMiniAppAutoPopover()Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->getDelayDuration()Ljava/lang/Long;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 54
    .line 55
    .line 56
    move-result-wide v3

    .line 57
    goto :goto_1

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    goto/16 :goto_3

    .line 60
    .line 61
    :cond_3
    const-wide/16 v3, 0x3a98

    .line 62
    .line 63
    :goto_1
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniappResumeTimestamp()J

    .line 64
    .line 65
    .line 66
    move-result-wide v5

    .line 67
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getOnPauseStopTimeStamp()J

    .line 68
    .line 69
    .line 70
    move-result-wide v7

    .line 71
    cmp-long v0, v5, v7

    .line 72
    .line 73
    if-lez v0, :cond_4

    .line 74
    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 76
    .line 77
    .line 78
    move-result-wide v5

    .line 79
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniappResumeTimestamp()J

    .line 80
    .line 81
    .line 82
    move-result-wide v7

    .line 83
    sub-long/2addr v5, v7

    .line 84
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniappForegroundTime()J

    .line 85
    .line 86
    .line 87
    move-result-wide v7

    .line 88
    add-long/2addr v5, v7

    .line 89
    goto :goto_2

    .line 90
    :cond_4
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniappForegroundTime()J

    .line 91
    .line 92
    .line 93
    move-result-wide v5

    .line 94
    :goto_2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;

    .line 95
    .line 96
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO0oO:Ljava/lang/String;

    .line 97
    .line 98
    new-instance v7, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v8, "currentForegroundTime:->"

    .line 104
    .line 105
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    invoke-static {v0, v7}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getResumed()Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_9

    .line 123
    .line 124
    cmp-long v0, v5, v3

    .line 125
    .line 126
    if-lez v0, :cond_8

    .line 127
    .line 128
    sget-object v0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;

    .line 129
    .line 130
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMActivityHelper()Lcom/cloud/tmc/integration/ActivityHelper;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    if-eqz v1, :cond_5

    .line 135
    .line 136
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    :cond_5
    const/16 v1, 0x52

    .line 141
    .line 142
    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->checkAddhomeShowStatus(ILcom/cloud/tmc/integration/structure/App;)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_6

    .line 147
    .line 148
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;

    .line 149
    .line 150
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO0oO:Ljava/lang/String;

    .line 151
    .line 152
    const-string v0, "not allow show, return"

    .line 153
    .line 154
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :cond_6
    sget-object v0, Lcom/cloud/tmc/miniapp/bridge/PermissionScopeBridge;->Companion:Lcom/cloud/tmc/miniapp/bridge/PermissionScopeBridge$OooO00o;

    .line 159
    .line 160
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/bridge/PermissionScopeBridge$OooO00o;->OooO00o(Ljava/lang/String;)Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-eqz v0, :cond_7

    .line 165
    .line 166
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;

    .line 167
    .line 168
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO0oO:Ljava/lang/String;

    .line 169
    .line 170
    const-string v0, "dev dialog is showing, return"

    .line 171
    .line 172
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :cond_7
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;

    .line 177
    .line 178
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO00o()V

    .line 179
    .line 180
    .line 181
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;

    .line 182
    .line 183
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO0o;->OooO0O0:Landroid/content/Context;

    .line 184
    .line 185
    const/4 v3, 0x0

    .line 186
    invoke-virtual {v0, v2, p1, v3}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO00o(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 187
    .line 188
    .line 189
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;

    .line 190
    .line 191
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO0o;->OooO0O0:Landroid/content/Context;

    .line 192
    .line 193
    invoke-virtual {v0, v2, p1}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO0O0(Landroid/content/Context;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;

    .line 197
    .line 198
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO00o(Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;)Lcom/cloud/tmc/integration/ActivityHelper;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    if-eqz p1, :cond_a

    .line 203
    .line 204
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    if-eqz p1, :cond_a

    .line 209
    .line 210
    invoke-interface {p1, v1}, Lcom/cloud/tmc/integration/structure/App;->updateAddHomeShowStatus(I)V

    .line 211
    .line 212
    .line 213
    goto :goto_4

    .line 214
    :cond_8
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;

    .line 215
    .line 216
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->getMMiniAppAutoPopover()Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 221
    .line 222
    .line 223
    move-result-wide v7

    .line 224
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniappStartTime()J

    .line 225
    .line 226
    .line 227
    move-result-wide v9

    .line 228
    sub-long/2addr v7, v9

    .line 229
    add-long/2addr v7, v3

    .line 230
    sub-long/2addr v7, v5

    .line 231
    invoke-virtual {v0, p1, v2, v7, v8}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;J)V

    .line 232
    .line 233
    .line 234
    goto :goto_4

    .line 235
    :cond_9
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;

    .line 236
    .line 237
    const/4 v0, 0x1

    .line 238
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->setShowAddHomeBottomTipsStatus(Z)V

    .line 239
    .line 240
    .line 241
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;

    .line 242
    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 244
    .line 245
    .line 246
    move-result-wide v7

    .line 247
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniappStartTime()J

    .line 248
    .line 249
    .line 250
    move-result-wide v0

    .line 251
    sub-long/2addr v7, v0

    .line 252
    add-long/2addr v7, v3

    .line 253
    sub-long/2addr v7, v5

    .line 254
    invoke-virtual {p1, v7, v8}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->setShowAddHomeBottomTipsDelayTime(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    .line 256
    .line 257
    goto :goto_4

    .line 258
    :goto_3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;

    .line 259
    .line 260
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO0oO:Ljava/lang/String;

    .line 261
    .line 262
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 263
    .line 264
    .line 265
    :cond_a
    :goto_4
    return-void
.end method
