.class public final Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$b;
.super Landroid/support/v4/media/MediaBrowserCompat$c;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;


# direct methods
.method constructor <init>(Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$b;->c:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserCompat$c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/support/v4/media/MediaBrowserCompat$c;->a()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$b;->c:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->i(Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;)Landroid/support/v4/media/MediaBrowserCompat;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/support/v4/media/MediaBrowserCompat;->c()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-object v2, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$b;->c:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    .line 20
    .line 21
    invoke-static {v2}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->i(Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;)Landroid/support/v4/media/MediaBrowserCompat;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    invoke-virtual {v3, v1}, Landroid/support/v4/media/MediaBrowserCompat;->g(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v1

    .line 32
    goto/16 :goto_6

    .line 33
    .line 34
    :catch_0
    move-exception v1

    .line 35
    goto :goto_4

    .line 36
    :cond_0
    :goto_0
    invoke-static {v2}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->i(Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;)Landroid/support/v4/media/MediaBrowserCompat;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    invoke-static {v2}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->l(Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;)Landroid/support/v4/media/MediaBrowserCompat$n;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v3, v1, v2}, Landroid/support/v4/media/MediaBrowserCompat;->f(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$n;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    iget-object v1, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$b;->c:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    .line 50
    .line 51
    new-instance v2, Landroid/support/v4/media/session/MediaControllerCompat;

    .line 52
    .line 53
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    iget-object v4, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$b;->c:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    .line 58
    .line 59
    invoke-static {v4}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->i(Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;)Landroid/support/v4/media/MediaBrowserCompat;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4}, Landroid/support/v4/media/MediaBrowserCompat;->d()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-direct {v2, v3, v4}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v1, v2}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->o(Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;Landroid/support/v4/media/session/MediaControllerCompat;)V

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$b;->c:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    .line 77
    .line 78
    invoke-static {v1}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->j(Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;)Landroid/support/v4/media/session/MediaControllerCompat;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    if-eqz v1, :cond_2

    .line 83
    .line 84
    iget-object v2, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$b;->c:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    .line 85
    .line 86
    invoke-static {v2}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->k(Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;)Landroid/support/v4/media/session/MediaControllerCompat$a;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaControllerCompat;->c(Landroid/support/v4/media/session/MediaControllerCompat$a;)V

    .line 91
    .line 92
    .line 93
    :cond_2
    iget-object v1, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$b;->c:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    .line 94
    .line 95
    invoke-static {v1}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->g(Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;)Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    check-cast v1, Ljava/lang/Iterable;

    .line 100
    .line 101
    iget-object v2, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$b;->c:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    .line 102
    .line 103
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-eqz v3, :cond_4

    .line 112
    .line 113
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 118
    .line 119
    invoke-static {v2}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->j(Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;)Landroid/support/v4/media/session/MediaControllerCompat;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    if-eqz v4, :cond_3

    .line 124
    .line 125
    invoke-virtual {v4}, Landroid/support/v4/media/session/MediaControllerCompat;->b()Landroid/support/v4/media/session/MediaControllerCompat$e;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    goto :goto_2

    .line 130
    :cond_3
    const/4 v4, 0x0

    .line 131
    :goto_2
    invoke-interface {v3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_4
    iget-object v1, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$b;->c:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    .line 136
    .line 137
    invoke-static {v1}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->g(Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;)Ljava/util/List;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    .line 143
    .line 144
    :goto_3
    iget-object v1, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$b;->c:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    .line 145
    .line 146
    invoke-static {v1, v0}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->m(Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;Z)V

    .line 147
    .line 148
    .line 149
    goto :goto_5

    .line 150
    :goto_4
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 151
    .line 152
    .line 153
    sget-object v2, Lcom/transsion/player/mediasession/i;->a:Lcom/transsion/player/mediasession/i;

    .line 154
    .line 155
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    const-string v4, "mediaSource --> connectionCallback --> e = "

    .line 165
    .line 166
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v2, v1}, Lcom/transsion/player/mediasession/i;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    .line 178
    .line 179
    goto :goto_3

    .line 180
    :goto_5
    return-void

    .line 181
    :goto_6
    iget-object v2, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$b;->c:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    .line 182
    .line 183
    invoke-static {v2, v0}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->m(Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;Z)V

    .line 184
    .line 185
    .line 186
    throw v1
.end method

.method public b()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/support/v4/media/MediaBrowserCompat$c;->b()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$b;->c:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->m(Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public c()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/support/v4/media/MediaBrowserCompat$c;->c()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
