.class public final Lcom/transsion/player/mediasession/MusicIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001f\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/transsion/player/mediasession/MusicIntentReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "<init>",
        "()V",
        "",
        "a",
        "()Ljava/lang/String;",
        "Landroid/content/Context;",
        "context",
        "Landroid/content/Intent;",
        "intent",
        "",
        "onReceive",
        "(Landroid/content/Context;Landroid/content/Intent;)V",
        "LibPlayer_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final a()Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/transsion/player/mediasession/MusicIntentReceiver;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getSimpleName(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "intent"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_5

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const v1, 0x7708a552

    .line 24
    .line 25
    .line 26
    if-eq v0, v1, :cond_0

    .line 27
    .line 28
    goto/16 :goto_3

    .line 29
    .line 30
    :cond_0
    const-string v0, "android.intent.action.MEDIA_BUTTON"

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_5

    .line 37
    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const/4 p2, 0x0

    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    const-string v0, "android.intent.extra.KEY_EVENT"

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    goto/16 :goto_5

    .line 54
    .line 55
    :cond_1
    move-object p1, p2

    .line 56
    :goto_0
    instance-of v0, p1, Landroid/view/KeyEvent;

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    check-cast p1, Landroid/view/KeyEvent;

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    move-object p1, p2

    .line 64
    :goto_1
    if-eqz p1, :cond_6

    .line 65
    .line 66
    sget-object v0, Lcom/transsion/player/mediasession/i;->a:Lcom/transsion/player/mediasession/i;

    .line 67
    .line 68
    invoke-direct {p0}, Lcom/transsion/player/mediasession/MusicIntentReceiver;->a()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v1, " --> onReceive --> \u63a5\u6536\u5230\u901a\u77e5\u70b9\u51fb\u4e8b\u4ef6, = "

    .line 85
    .line 86
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v1, ", "

    .line 93
    .line 94
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Lcom/transsion/player/mediasession/i;->a(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    const/16 v0, 0x7e

    .line 112
    .line 113
    if-eq p1, v0, :cond_4

    .line 114
    .line 115
    const/16 v0, 0x7f

    .line 116
    .line 117
    if-eq p1, v0, :cond_3

    .line 118
    .line 119
    packed-switch p1, :pswitch_data_0

    .line 120
    .line 121
    .line 122
    :goto_2
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :pswitch_0
    sget-object p1, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->h:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$a;

    .line 126
    .line 127
    invoke-virtual {p1}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$a;->a()Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p1}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->z()V

    .line 132
    .line 133
    .line 134
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 135
    .line 136
    goto :goto_4

    .line 137
    :pswitch_1
    sget-object p1, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->h:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$a;

    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$a;->a()Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p1}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->x()V

    .line 144
    .line 145
    .line 146
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 147
    .line 148
    goto :goto_4

    .line 149
    :pswitch_2
    sget-object p1, Lon/e0;->a:Lon/e0;

    .line 150
    .line 151
    invoke-virtual {p1}, Lon/e0;->e()Lcom/transsion/player/orplayer/f;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    if-eqz p1, :cond_6

    .line 156
    .line 157
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->stop()V

    .line 158
    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_3
    sget-object p1, Lon/e0;->a:Lon/e0;

    .line 162
    .line 163
    invoke-virtual {p1}, Lon/e0;->e()Lcom/transsion/player/orplayer/f;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    if-eqz p1, :cond_6

    .line 168
    .line 169
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->pause()V

    .line 170
    .line 171
    .line 172
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_4
    sget-object p1, Lon/e0;->a:Lon/e0;

    .line 176
    .line 177
    invoke-virtual {p1}, Lon/e0;->e()Lcom/transsion/player/orplayer/f;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    if-eqz p1, :cond_6

    .line 182
    .line 183
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->play()V

    .line 184
    .line 185
    .line 186
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 187
    .line 188
    goto :goto_4

    .line 189
    :cond_5
    :goto_3
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 190
    .line 191
    :cond_6
    :goto_4
    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    goto :goto_6

    .line 196
    :goto_5
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 197
    .line 198
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    :goto_6
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    if-nez p1, :cond_7

    .line 211
    .line 212
    goto :goto_7

    .line 213
    :cond_7
    sget-object p2, Lcom/transsion/player/mediasession/i;->a:Lcom/transsion/player/mediasession/i;

    .line 214
    .line 215
    invoke-direct {p0}, Lcom/transsion/player/mediasession/MusicIntentReceiver;->a()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string v0, " --> onReceive --> \u63a5\u6536\u5230\u901a\u77e5\u70b9\u51fb\u4e8b\u4ef6 --- it = "

    .line 228
    .line 229
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    invoke-virtual {p2, p1}, Lcom/transsion/player/mediasession/i;->a(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    :goto_7
    return-void

    .line 243
    :pswitch_data_0
    .packed-switch 0x56
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
