.class public final Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView$OooO0o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
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
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    instance-of v1, v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    check-cast v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    if-nez v0, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->OooO0o:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniappStartTime()J

    .line 32
    .line 33
    .line 34
    move-result-wide v4

    .line 35
    sub-long/2addr v2, v4

    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v5, "onRefresh:"

    .line 42
    .line 43
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->getDelayTime()J

    .line 57
    .line 58
    .line 59
    move-result-wide v1

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 61
    .line 62
    .line 63
    move-result-wide v3

    .line 64
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniappStartTime()J

    .line 65
    .line 66
    .line 67
    move-result-wide v5

    .line 68
    sub-long/2addr v3, v5

    .line 69
    sub-long/2addr v1, v3

    .line 70
    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showPopUpWindowRunnable(J)V

    .line 71
    .line 72
    .line 73
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
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->OooO0o:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "AddHomeToast"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    instance-of v1, v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    check-cast v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v0, v2

    .line 30
    :goto_0
    if-nez v0, :cond_1

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    sget-object v1, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;

    .line 34
    .line 35
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    .line 36
    .line 37
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const-string v4, "getContext()"

    .line 42
    .line 43
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v3, p1}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->getAddHomeStatus(Landroid/content/Context;Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    const/4 v1, 0x0

    .line 54
    :try_start_0
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    .line 55
    .line 56
    invoke-static {v3}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->OooO00o(Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;)Lcom/cloud/tmc/integration/ActivityHelper;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    if-eqz v3, :cond_3

    .line 61
    .line 62
    invoke-virtual {v3}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    if-eqz v3, :cond_3

    .line 67
    .line 68
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    goto :goto_1

    .line 73
    :cond_3
    move-object v3, v2

    .line 74
    :goto_1
    instance-of v5, v3, Lcom/cloud/tmc/integration/structure/node/PageNode;

    .line 75
    .line 76
    if-eqz v5, :cond_4

    .line 77
    .line 78
    check-cast v3, Lcom/cloud/tmc/integration/structure/node/PageNode;

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_4
    move-object v3, v2

    .line 82
    :goto_2
    if-eqz v3, :cond_5

    .line 83
    .line 84
    invoke-virtual {v3}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getAddScreenVisibleStatus()Z

    .line 85
    .line 86
    .line 87
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    goto :goto_3

    .line 89
    :catchall_0
    :cond_5
    move v3, v1

    .line 90
    :goto_3
    if-nez v3, :cond_6

    .line 91
    .line 92
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    .line 93
    .line 94
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->OooO0o:Ljava/lang/String;

    .line 95
    .line 96
    const-string v0, "addScreenVisibleStatus is false"

    .line 97
    .line 98
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_6
    :try_start_1
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    .line 103
    .line 104
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->getMMiniAppAutoPopover()Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    if-eqz v3, :cond_7

    .line 109
    .line 110
    invoke-virtual {v3}, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->getDelayDuration()Ljava/lang/Long;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    if-eqz v3, :cond_7

    .line 115
    .line 116
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 117
    .line 118
    .line 119
    move-result-wide v5

    .line 120
    goto :goto_4

    .line 121
    :catchall_1
    move-exception p1

    .line 122
    goto/16 :goto_6

    .line 123
    .line 124
    :cond_7
    const-wide/16 v5, 0x3a98

    .line 125
    .line 126
    :goto_4
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniappResumeTimestamp()J

    .line 127
    .line 128
    .line 129
    move-result-wide v7

    .line 130
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getOnPauseStopTimeStamp()J

    .line 131
    .line 132
    .line 133
    move-result-wide v9

    .line 134
    cmp-long v3, v7, v9

    .line 135
    .line 136
    if-lez v3, :cond_8

    .line 137
    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 139
    .line 140
    .line 141
    move-result-wide v7

    .line 142
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniappResumeTimestamp()J

    .line 143
    .line 144
    .line 145
    move-result-wide v9

    .line 146
    sub-long/2addr v7, v9

    .line 147
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniappForegroundTime()J

    .line 148
    .line 149
    .line 150
    move-result-wide v9

    .line 151
    add-long/2addr v7, v9

    .line 152
    goto :goto_5

    .line 153
    :cond_8
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniappForegroundTime()J

    .line 154
    .line 155
    .line 156
    move-result-wide v7

    .line 157
    :goto_5
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    .line 158
    .line 159
    iget-object v3, v3, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->OooO0o:Ljava/lang/String;

    .line 160
    .line 161
    new-instance v9, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    const-string v10, "currentForegroundTime:->"

    .line 167
    .line 168
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v9

    .line 178
    invoke-static {v3, v9}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getResumed()Z

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    if-eqz v3, :cond_d

    .line 186
    .line 187
    cmp-long v3, v7, v5

    .line 188
    .line 189
    if-lez v3, :cond_c

    .line 190
    .line 191
    sget-object v3, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;

    .line 192
    .line 193
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMActivityHelper()Lcom/cloud/tmc/integration/ActivityHelper;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    if-eqz v0, :cond_9

    .line 198
    .line 199
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    :cond_9
    const/16 v0, 0x51

    .line 204
    .line 205
    invoke-virtual {v3, v0, v2}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->checkAddhomeShowStatus(ILcom/cloud/tmc/integration/structure/App;)Z

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    if-eqz v2, :cond_a

    .line 210
    .line 211
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    .line 212
    .line 213
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->OooO0o:Ljava/lang/String;

    .line 214
    .line 215
    const-string v0, "not allow return"

    .line 216
    .line 217
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    return-void

    .line 221
    :cond_a
    sget-object v2, Lcom/cloud/tmc/miniapp/bridge/PermissionScopeBridge;->Companion:Lcom/cloud/tmc/miniapp/bridge/PermissionScopeBridge$OooO00o;

    .line 222
    .line 223
    invoke-virtual {v2, p1}, Lcom/cloud/tmc/miniapp/bridge/PermissionScopeBridge$OooO00o;->OooO00o(Ljava/lang/String;)Z

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    if-eqz v2, :cond_b

    .line 228
    .line 229
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    .line 230
    .line 231
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->OooO0o:Ljava/lang/String;

    .line 232
    .line 233
    const-string v0, "dev dialog is showing, return top topview"

    .line 234
    .line 235
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    return-void

    .line 239
    :cond_b
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    .line 240
    .line 241
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->OooO0O0()V

    .line 242
    .line 243
    .line 244
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    .line 245
    .line 246
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v2, v3, p1, v1}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->OooO00o(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 254
    .line 255
    .line 256
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    .line 257
    .line 258
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v1, v2, p1}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->OooO0O0(Landroid/content/Context;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    .line 269
    .line 270
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->OooO00o(Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;)Lcom/cloud/tmc/integration/ActivityHelper;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    if-eqz p1, :cond_e

    .line 275
    .line 276
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    if-eqz p1, :cond_e

    .line 281
    .line 282
    invoke-interface {p1, v0}, Lcom/cloud/tmc/integration/structure/App;->updateAddHomeShowStatus(I)V

    .line 283
    .line 284
    .line 285
    goto :goto_7

    .line 286
    :cond_c
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    .line 287
    .line 288
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->getMMiniAppAutoPopover()Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 293
    .line 294
    .line 295
    move-result-wide v3

    .line 296
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniappStartTime()J

    .line 297
    .line 298
    .line 299
    move-result-wide v9

    .line 300
    sub-long/2addr v3, v9

    .line 301
    add-long/2addr v3, v5

    .line 302
    sub-long/2addr v3, v7

    .line 303
    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;J)V

    .line 304
    .line 305
    .line 306
    goto :goto_7

    .line 307
    :cond_d
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    .line 308
    .line 309
    const/4 v1, 0x1

    .line 310
    invoke-virtual {p1, v1}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->setShowAddHomeTopTipsStatus(Z)V

    .line 311
    .line 312
    .line 313
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    .line 314
    .line 315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 316
    .line 317
    .line 318
    move-result-wide v1

    .line 319
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniappStartTime()J

    .line 320
    .line 321
    .line 322
    move-result-wide v3

    .line 323
    sub-long/2addr v1, v3

    .line 324
    add-long/2addr v1, v5

    .line 325
    sub-long/2addr v1, v7

    .line 326
    invoke-virtual {p1, v1, v2}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->setShowAddHomeTopTipsDelayTime(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 327
    .line 328
    .line 329
    goto :goto_7

    .line 330
    :goto_6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    .line 331
    .line 332
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->OooO0o:Ljava/lang/String;

    .line 333
    .line 334
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 335
    .line 336
    .line 337
    :cond_e
    :goto_7
    return-void
.end method
