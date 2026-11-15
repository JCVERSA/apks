.class public final Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooO00o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo000;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;-><init>(Landroid/content/Context;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onShow(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0OO:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOO0:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const-string v0, "miniappid"

    .line 12
    .line 13
    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO00o:Lcom/cloud/tmc/integration/structure/App;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-object v1, v2

    .line 36
    :goto_0
    new-instance v3, Landroid/os/Bundle;

    .line 37
    .line 38
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 39
    .line 40
    .line 41
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;

    .line 42
    .line 43
    iget-object v4, v4, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO00o:Lcom/cloud/tmc/integration/structure/App;

    .line 44
    .line 45
    if-eqz v4, :cond_1

    .line 46
    .line 47
    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    :cond_1
    invoke-virtual {v3, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 55
    .line 56
    const-string v0, "miniapp_agreemix_popup_ex"

    .line 57
    .line 58
    invoke-interface {p1, v1, v0, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->recordForCommon(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 59
    .line 60
    .line 61
    goto/16 :goto_5

    .line 62
    .line 63
    :cond_2
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;

    .line 64
    .line 65
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0OO:Ljava/lang/String;

    .line 66
    .line 67
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOO0O:Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_5

    .line 74
    .line 75
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 80
    .line 81
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;

    .line 82
    .line 83
    iget-object v1, v1, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO00o:Lcom/cloud/tmc/integration/structure/App;

    .line 84
    .line 85
    if-eqz v1, :cond_3

    .line 86
    .line 87
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    goto :goto_1

    .line 92
    :cond_3
    move-object v1, v2

    .line 93
    :goto_1
    new-instance v3, Landroid/os/Bundle;

    .line 94
    .line 95
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 96
    .line 97
    .line 98
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;

    .line 99
    .line 100
    iget-object v4, v4, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO00o:Lcom/cloud/tmc/integration/structure/App;

    .line 101
    .line 102
    if-eqz v4, :cond_4

    .line 103
    .line 104
    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    :cond_4
    invoke-virtual {v3, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 112
    .line 113
    const-string v0, "miniapp_agree_popup_ex"

    .line 114
    .line 115
    invoke-interface {p1, v1, v0, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->recordForCommon(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_5

    .line 119
    .line 120
    :cond_5
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;

    .line 121
    .line 122
    iget-boolean p1, p1, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0Oo:Z

    .line 123
    .line 124
    if-eqz p1, :cond_7

    .line 125
    .line 126
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 131
    .line 132
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;

    .line 133
    .line 134
    iget-object v3, v3, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO00o:Lcom/cloud/tmc/integration/structure/App;

    .line 135
    .line 136
    if-eqz v3, :cond_6

    .line 137
    .line 138
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    goto :goto_2

    .line 143
    :cond_6
    move-object v3, v2

    .line 144
    :goto_2
    new-instance v4, Landroid/os/Bundle;

    .line 145
    .line 146
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 147
    .line 148
    .line 149
    const-string v5, "privacy_ex"

    .line 150
    .line 151
    invoke-interface {p1, v3, v5, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->recordForCommon(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 152
    .line 153
    .line 154
    :cond_7
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;

    .line 155
    .line 156
    iget-boolean v3, p1, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0o0:Z

    .line 157
    .line 158
    if-eqz v3, :cond_e

    .line 159
    .line 160
    iget-boolean p1, p1, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0o:Z

    .line 161
    .line 162
    const-string v3, "type"

    .line 163
    .line 164
    const-string v4, "appstart_add_ex"

    .line 165
    .line 166
    if-eqz p1, :cond_a

    .line 167
    .line 168
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 173
    .line 174
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;

    .line 175
    .line 176
    iget-object v1, v1, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO00o:Lcom/cloud/tmc/integration/structure/App;

    .line 177
    .line 178
    if-eqz v1, :cond_8

    .line 179
    .line 180
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    goto :goto_3

    .line 185
    :cond_8
    move-object v1, v2

    .line 186
    :goto_3
    new-instance v5, Landroid/os/Bundle;

    .line 187
    .line 188
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 189
    .line 190
    .line 191
    iget-object v6, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;

    .line 192
    .line 193
    iget-object v6, v6, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO00o:Lcom/cloud/tmc/integration/structure/App;

    .line 194
    .line 195
    if-eqz v6, :cond_9

    .line 196
    .line 197
    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    :cond_9
    invoke-virtual {v5, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    const-string v0, "2"

    .line 205
    .line 206
    invoke-virtual {v5, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 210
    .line 211
    invoke-interface {p1, v1, v4, v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->recordForCommon(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 212
    .line 213
    .line 214
    goto :goto_5

    .line 215
    :cond_a
    const-class p1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    .line 216
    .line 217
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    check-cast p1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    .line 222
    .line 223
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;

    .line 224
    .line 225
    iget-object v1, v1, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO00o:Lcom/cloud/tmc/integration/structure/App;

    .line 226
    .line 227
    if-eqz v1, :cond_b

    .line 228
    .line 229
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    goto :goto_4

    .line 234
    :cond_b
    move-object v1, v2

    .line 235
    :goto_4
    if-nez v1, :cond_c

    .line 236
    .line 237
    const-string v1, ""

    .line 238
    .line 239
    :cond_c
    new-instance v5, Landroid/os/Bundle;

    .line 240
    .line 241
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 242
    .line 243
    .line 244
    iget-object v6, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;

    .line 245
    .line 246
    iget-object v6, v6, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO00o:Lcom/cloud/tmc/integration/structure/App;

    .line 247
    .line 248
    if-eqz v6, :cond_d

    .line 249
    .line 250
    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    :cond_d
    invoke-virtual {v5, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    const-string v0, "1"

    .line 258
    .line 259
    invoke-virtual {v5, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 263
    .line 264
    const/16 v0, 0xeab

    .line 265
    .line 266
    invoke-interface {p1, v1, v4, v0, v5}, Lcom/cloud/tmc/integration/proxy/ReportProxy;->forceAthenaReport(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 267
    .line 268
    .line 269
    :cond_e
    :goto_5
    return-void
.end method
