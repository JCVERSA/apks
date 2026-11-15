.class public final Lcom/cloud/tmc/miniapp/utils/intercept/OooO00o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public backResult(Lcom/cloud/tmc/integration/structure/App;ZLcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;Z)Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$DefaultImpls;->backResult(Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;Lcom/cloud/tmc/integration/structure/App;ZLcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;Z)Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getInterceptName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "BackToShowAddHomeDialogIntercept"

    .line 2
    .line 3
    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 1
    const/16 v0, 0x1e

    .line 2
    .line 3
    return v0
.end method

.method public intercept(Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Chain;)Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;
    .locals 7

    .line 1
    const-string v0, "chain"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Chain;->params()Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "BackToShowAddHomeDialogIntercept: "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "BackToShowAddHomeDialogIntercept"

    .line 28
    .line 29
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Chain;->params()Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->getAppId()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    invoke-interface {p1}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Chain;->params()Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->getApp()Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const/16 v5, 0x8

    .line 51
    .line 52
    const/4 v6, 0x0

    .line 53
    const/4 v2, 0x0

    .line 54
    const/4 v4, 0x0

    .line 55
    move-object v0, p0

    .line 56
    move-object v3, p0

    .line 57
    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$DefaultImpls;->backResult$default(Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;Lcom/cloud/tmc/integration/structure/App;ZLcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;ZILjava/lang/Object;)Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    return-object p1

    .line 62
    :cond_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Chain;->params()Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->getApp()Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-nez v1, :cond_1

    .line 71
    .line 72
    invoke-interface {p1}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Chain;->params()Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->getApp()Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const/16 v5, 0x8

    .line 81
    .line 82
    const/4 v6, 0x0

    .line 83
    const/4 v2, 0x0

    .line 84
    const/4 v4, 0x0

    .line 85
    move-object v0, p0

    .line 86
    move-object v3, p0

    .line 87
    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$DefaultImpls;->backResult$default(Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;Lcom/cloud/tmc/integration/structure/App;ZLcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;ZILjava/lang/Object;)Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    return-object p1

    .line 92
    :cond_1
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getMiniAppAutoPopover()Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    .line 93
    .line 94
    .line 95
    invoke-interface {p1}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Chain;->params()Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->getContext()Landroid/content/Context;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    if-eqz v2, :cond_7

    .line 104
    .line 105
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 106
    .line 107
    const/16 v4, 0x1a

    .line 108
    .line 109
    if-ge v3, v4, :cond_2

    .line 110
    .line 111
    invoke-interface {p1}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Chain;->params()Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->getApp()Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    const/16 v5, 0x8

    .line 120
    .line 121
    const/4 v6, 0x0

    .line 122
    const/4 v2, 0x0

    .line 123
    const/4 v4, 0x0

    .line 124
    move-object v0, p0

    .line 125
    move-object v3, p0

    .line 126
    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$DefaultImpls;->backResult$default(Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;Lcom/cloud/tmc/integration/structure/App;ZLcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;ZILjava/lang/Object;)Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    return-object p1

    .line 131
    :cond_2
    sget-object v3, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    .line 132
    .line 133
    invoke-virtual {v3, v2, v0}, Lcom/cloud/tmc/integration/utils/AppUtils;->queryShortcutExist(Landroid/content/Context;Ljava/lang/String;)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-eqz v0, :cond_3

    .line 138
    .line 139
    invoke-interface {p1}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Chain;->params()Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->getApp()Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    const/16 v5, 0x8

    .line 148
    .line 149
    const/4 v6, 0x0

    .line 150
    const/4 v2, 0x0

    .line 151
    const/4 v4, 0x0

    .line 152
    move-object v0, p0

    .line 153
    move-object v3, p0

    .line 154
    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$DefaultImpls;->backResult$default(Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;Lcom/cloud/tmc/integration/structure/App;ZLcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;ZILjava/lang/Object;)Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    return-object p1

    .line 159
    :cond_3
    sget-object v0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;

    .line 160
    .line 161
    const/16 v3, 0x53

    .line 162
    .line 163
    invoke-virtual {v0, v3, v1}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->checkAddhomeShowStatus(ILcom/cloud/tmc/integration/structure/App;)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-eqz v0, :cond_4

    .line 168
    .line 169
    invoke-interface {p1}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Chain;->params()Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->getApp()Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    const/16 v5, 0x8

    .line 178
    .line 179
    const/4 v6, 0x0

    .line 180
    const/4 v2, 0x0

    .line 181
    const/4 v4, 0x0

    .line 182
    move-object v0, p0

    .line 183
    move-object v3, p0

    .line 184
    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$DefaultImpls;->backResult$default(Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;Lcom/cloud/tmc/integration/structure/App;ZLcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;ZILjava/lang/Object;)Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    return-object p1

    .line 189
    :cond_4
    instance-of v0, v2, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 190
    .line 191
    if-eqz v0, :cond_5

    .line 192
    .line 193
    check-cast v2, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 194
    .line 195
    goto :goto_0

    .line 196
    :cond_5
    const/4 v2, 0x0

    .line 197
    :goto_0
    if-eqz v2, :cond_6

    .line 198
    .line 199
    invoke-interface {p1}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Chain;->params()Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->getFromType()I

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    invoke-virtual {v2, v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showAddHomeTipsDialog(I)V

    .line 208
    .line 209
    .line 210
    :cond_6
    invoke-virtual {v1, v3}, Lcom/cloud/tmc/integration/structure/node/AppNode;->updateAddHomeShowStatus(I)V

    .line 211
    .line 212
    .line 213
    invoke-interface {p1}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Chain;->params()Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->getApp()Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    const/16 v5, 0x8

    .line 222
    .line 223
    const/4 v6, 0x0

    .line 224
    const/4 v2, 0x1

    .line 225
    const/4 v4, 0x0

    .line 226
    move-object v0, p0

    .line 227
    move-object v3, p0

    .line 228
    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$DefaultImpls;->backResult$default(Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;Lcom/cloud/tmc/integration/structure/App;ZLcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;ZILjava/lang/Object;)Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    return-object p1

    .line 233
    :cond_7
    invoke-interface {p1}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Chain;->params()Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->getApp()Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    const/16 v5, 0x8

    .line 242
    .line 243
    const/4 v6, 0x0

    .line 244
    const/4 v2, 0x0

    .line 245
    const/4 v4, 0x0

    .line 246
    move-object v0, p0

    .line 247
    move-object v3, p0

    .line 248
    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$DefaultImpls;->backResult$default(Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;Lcom/cloud/tmc/integration/structure/App;ZLcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;ZILjava/lang/Object;)Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    return-object p1
.end method
