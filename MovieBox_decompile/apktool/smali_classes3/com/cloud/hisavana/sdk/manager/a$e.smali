.class public final Lcom/cloud/hisavana/sdk/manager/a$e;
.super Landroidx/browser/customtabs/c;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/manager/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/browser/customtabs/c;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onNavigationEvent(ILandroid/os/Bundle;)V
    .locals 5

    .line 1
    const/4 p2, 0x0

    .line 2
    const-wide/16 v0, -0x1

    .line 3
    .line 4
    const-string v2, "CustomTabsManager"

    .line 5
    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :pswitch_0
    const/4 p1, 0x1

    .line 12
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/manager/a;->O(Z)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string p2, "onNavigationEvent, TAB_HIDDEN"

    .line 20
    .line 21
    invoke-virtual {p1, v2, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object p1, Lcom/cloud/hisavana/sdk/manager/a;->a:Lcom/cloud/hisavana/sdk/manager/a;

    .line 25
    .line 26
    const-string p2, ""

    .line 27
    .line 28
    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/manager/a;->z(Lcom/cloud/hisavana/sdk/manager/a;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto/16 :goto_0

    .line 32
    .line 33
    :pswitch_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string v0, "onNavigationEvent, TAB_SHOWN"

    .line 38
    .line 39
    invoke-virtual {p1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p2}, Lcom/cloud/hisavana/sdk/manager/a;->O(Z)V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lcom/cloud/hisavana/sdk/manager/a;->Z()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    invoke-static {p2}, Lcom/cloud/hisavana/sdk/manager/a;->C(Z)V

    .line 52
    .line 53
    .line 54
    new-instance p1, Lcom/cloud/hisavana/sdk/manager/a$e$a;

    .line 55
    .line 56
    invoke-direct {p1}, Lcom/cloud/hisavana/sdk/manager/a$e$a;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-static {p1}, Lcom/cloud/sdk/commonutil/util/m;->k(Lcom/cloud/sdk/commonutil/util/m$b;)V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_0

    .line 63
    .line 64
    :pswitch_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/manager/a;->V()J

    .line 65
    .line 66
    .line 67
    move-result-wide p1

    .line 68
    cmp-long p1, p1, v0

    .line 69
    .line 70
    if-nez p1, :cond_0

    .line 71
    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 73
    .line 74
    .line 75
    move-result-wide p1

    .line 76
    invoke-static {}, Lcom/cloud/hisavana/sdk/manager/a;->S()J

    .line 77
    .line 78
    .line 79
    move-result-wide v0

    .line 80
    sub-long/2addr p1, v0

    .line 81
    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/manager/a;->Q(J)V

    .line 82
    .line 83
    .line 84
    :cond_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    const-string p2, "onNavigationEvent, NAVIGATION_ABORTED"

    .line 89
    .line 90
    invoke-virtual {p1, v2, p2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    goto/16 :goto_0

    .line 94
    .line 95
    :pswitch_3
    invoke-static {}, Lcom/cloud/hisavana/sdk/manager/a;->Y()J

    .line 96
    .line 97
    .line 98
    move-result-wide p1

    .line 99
    cmp-long p1, p1, v0

    .line 100
    .line 101
    if-nez p1, :cond_1

    .line 102
    .line 103
    invoke-static {}, Lcom/cloud/hisavana/sdk/manager/a;->X()J

    .line 104
    .line 105
    .line 106
    move-result-wide p1

    .line 107
    cmp-long p1, p1, v0

    .line 108
    .line 109
    if-nez p1, :cond_1

    .line 110
    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 112
    .line 113
    .line 114
    move-result-wide p1

    .line 115
    invoke-static {}, Lcom/cloud/hisavana/sdk/manager/a;->S()J

    .line 116
    .line 117
    .line 118
    move-result-wide v0

    .line 119
    sub-long/2addr p1, v0

    .line 120
    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/manager/a;->T(J)V

    .line 121
    .line 122
    .line 123
    sget-object p1, Lcom/cloud/hisavana/sdk/manager/a;->a:Lcom/cloud/hisavana/sdk/manager/a;

    .line 124
    .line 125
    invoke-static {}, Lcom/cloud/hisavana/sdk/manager/a;->X()J

    .line 126
    .line 127
    .line 128
    move-result-wide v0

    .line 129
    const/16 p2, 0x1f48

    .line 130
    .line 131
    invoke-static {p1, p2, v0, v1}, Lcom/cloud/hisavana/sdk/manager/a;->w(Lcom/cloud/hisavana/sdk/manager/a;IJ)V

    .line 132
    .line 133
    .line 134
    :cond_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    const-string p2, "onNavigationEvent, NAVIGATION_FAILED"

    .line 139
    .line 140
    invoke-virtual {p1, v2, p2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :pswitch_4
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    const-string v3, "onNavigationEvent, NAVIGATION_FINISHED"

    .line 149
    .line 150
    invoke-virtual {p1, v2, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-static {}, Lcom/cloud/hisavana/sdk/manager/a;->Y()J

    .line 154
    .line 155
    .line 156
    move-result-wide v3

    .line 157
    cmp-long p1, v3, v0

    .line 158
    .line 159
    if-nez p1, :cond_2

    .line 160
    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 162
    .line 163
    .line 164
    move-result-wide v0

    .line 165
    invoke-static {}, Lcom/cloud/hisavana/sdk/manager/a;->S()J

    .line 166
    .line 167
    .line 168
    move-result-wide v3

    .line 169
    sub-long/2addr v0, v3

    .line 170
    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/manager/a;->W(J)V

    .line 171
    .line 172
    .line 173
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .line 181
    .line 182
    const-string v1, "onNavigationEvent, NAVIGATION_FINISHED, time taken: "

    .line 183
    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-static {}, Lcom/cloud/hisavana/sdk/manager/a;->Y()J

    .line 188
    .line 189
    .line 190
    move-result-wide v3

    .line 191
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string v1, " ms"

    .line 195
    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-virtual {p1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    sget-object p1, Lcom/cloud/hisavana/sdk/manager/a;->a:Lcom/cloud/hisavana/sdk/manager/a;

    .line 207
    .line 208
    invoke-static {}, Lcom/cloud/hisavana/sdk/manager/a;->Y()J

    .line 209
    .line 210
    .line 211
    move-result-wide v0

    .line 212
    invoke-static {p1, p2, v0, v1}, Lcom/cloud/hisavana/sdk/manager/a;->L(Lcom/cloud/hisavana/sdk/manager/a;IJ)V

    .line 213
    .line 214
    .line 215
    goto :goto_0

    .line 216
    :pswitch_5
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    const-string p2, "onNavigationEvent, NAVIGATION_STARTED"

    .line 221
    .line 222
    invoke-virtual {p1, v2, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-static {}, Lcom/cloud/hisavana/sdk/manager/a;->S()J

    .line 226
    .line 227
    .line 228
    move-result-wide p1

    .line 229
    const-wide/16 v0, 0x0

    .line 230
    .line 231
    cmp-long p1, p1, v0

    .line 232
    .line 233
    if-nez p1, :cond_2

    .line 234
    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 236
    .line 237
    .line 238
    move-result-wide p1

    .line 239
    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/manager/a;->I(J)V

    .line 240
    .line 241
    .line 242
    :cond_2
    :goto_0
    return-void

    .line 243
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
