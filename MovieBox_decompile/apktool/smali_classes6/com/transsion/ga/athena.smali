.class public Lcom/transsion/ga/athena;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ga/athena$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:I

.field private c:Z

.field private d:Ljava/lang/Runnable;

.field private e:J

.field private f:I

.field private g:Ljava/lang/String;

.field private h:J

.field private i:I

.field private final j:Ljava/util/LinkedList;

.field private k:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/transsion/ga/athena;->a:Landroid/os/Handler;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/transsion/ga/athena;->c:Z

    .line 17
    .line 18
    const-wide/16 v0, 0x0

    .line 19
    .line 20
    iput-wide v0, p0, Lcom/transsion/ga/athena;->e:J

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/transsion/ga/athena;->f:I

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    iput-object v1, p0, Lcom/transsion/ga/athena;->g:Ljava/lang/String;

    .line 27
    .line 28
    iput v0, p0, Lcom/transsion/ga/athena;->i:I

    .line 29
    .line 30
    new-instance v0, Ljava/util/LinkedList;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/transsion/ga/athena;->j:Ljava/util/LinkedList;

    .line 36
    .line 37
    return-void
.end method

.method static synthetic a(Lcom/transsion/ga/athena;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/ga/athena;->i:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic b(Lcom/transsion/ga/athena;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/ga/athena;->e:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic c(Lcom/transsion/ga/athena;)Ljava/util/LinkedList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ga/athena;->j:Ljava/util/LinkedList;

    .line 2
    .line 3
    return-object p0
.end method

.method private e(Landroid/app/Activity;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Lcom/transsion/ga/AthenaAnalytics;->r(Ljava/lang/Class;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    return v0

    .line 16
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_3

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    if-ne v1, v2, :cond_2

    .line 30
    .line 31
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 32
    .line 33
    if-eq p1, v2, :cond_3

    .line 34
    .line 35
    :cond_2
    move v0, v2

    .line 36
    :cond_3
    return v0
.end method

.method static synthetic f(Lcom/transsion/ga/athena;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/ga/athena;->c:Z

    .line 2
    .line 3
    return p1
.end method


# virtual methods
.method d(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/ga/athena;->k:J

    .line 2
    .line 3
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/transsion/athena/taaneh/athena;->b(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/transsion/athena/taaneh/athena;->a()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/ga/athena;->e(Landroid/app/Activity;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->s()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget v1, p0, Lcom/transsion/ga/athena;->i:I

    .line 23
    .line 24
    add-int/2addr v1, v2

    .line 25
    iput v1, p0, Lcom/transsion/ga/athena;->i:I

    .line 26
    .line 27
    iget-object v3, p0, Lcom/transsion/ga/athena;->j:Ljava/util/LinkedList;

    .line 28
    .line 29
    new-instance v4, Lcom/transsion/ga/athena$a;

    .line 30
    .line 31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 32
    .line 33
    .line 34
    move-result-wide v5

    .line 35
    invoke-direct {v4, v1, v0, v5, v6}, Lcom/transsion/ga/athena$a;-><init>(ILjava/lang/String;J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p1

    .line 43
    goto/16 :goto_7

    .line 44
    .line 45
    :cond_0
    :goto_0
    iget v1, p0, Lcom/transsion/ga/athena;->b:I

    .line 46
    .line 47
    add-int/2addr v1, v2

    .line 48
    iput v1, p0, Lcom/transsion/ga/athena;->b:I

    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    if-gt v1, v2, :cond_7

    .line 52
    .line 53
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 54
    .line 55
    .line 56
    move-result-wide v4

    .line 57
    iput-wide v4, p0, Lcom/transsion/ga/athena;->h:J

    .line 58
    .line 59
    iget-boolean v1, p0, Lcom/transsion/ga/athena;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    if-eqz v1, :cond_7

    .line 62
    .line 63
    :try_start_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 71
    goto :goto_1

    .line 72
    :catch_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 73
    .line 74
    .line 75
    move-result-wide v4

    .line 76
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    :goto_1
    invoke-static {v1}, Lcom/transsion/athena/config/data/model/ehanat;->d(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 84
    .line 85
    .line 86
    move-result-wide v4

    .line 87
    iput-wide v4, p0, Lcom/transsion/ga/athena;->e:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 88
    .line 89
    :try_start_3
    invoke-virtual {p1}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    if-eqz v1, :cond_1

    .line 94
    .line 95
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    iput-object v1, p0, Lcom/transsion/ga/athena;->g:Ljava/lang/String;

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :catch_2
    move-exception p1

    .line 103
    goto :goto_4

    .line 104
    :cond_1
    :goto_2
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    iget-object v4, p0, Lcom/transsion/ga/athena;->g:Ljava/lang/String;

    .line 109
    .line 110
    sget v5, Lcom/transsion/athena/taaneh/anehat;->e:I

    .line 111
    .line 112
    if-nez v1, :cond_2

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_2
    invoke-virtual {v1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    const-string v6, "android.intent.action.MAIN"

    .line 124
    .line 125
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-eqz v1, :cond_3

    .line 130
    .line 131
    if-eqz v5, :cond_3

    .line 132
    .line 133
    const-string v1, "android.intent.category.LAUNCHER"

    .line 134
    .line 135
    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-eqz v1, :cond_3

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_4

    .line 147
    .line 148
    move v2, v3

    .line 149
    goto :goto_3

    .line 150
    :cond_4
    const/4 v2, 0x2

    .line 151
    :goto_3
    iput v2, p0, Lcom/transsion/ga/athena;->f:I

    .line 152
    .line 153
    iget-object v1, p0, Lcom/transsion/ga/athena;->g:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    if-eqz p1, :cond_5

    .line 164
    .line 165
    const/4 p1, 0x3

    .line 166
    iput p1, p0, Lcom/transsion/ga/athena;->f:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 167
    .line 168
    goto :goto_5

    .line 169
    :goto_4
    :try_start_4
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    :cond_5
    :goto_5
    invoke-static {}, Lcom/transsion/athena/data/athena;->a()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    :cond_6
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-eqz v1, :cond_7

    .line 189
    .line 190
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    check-cast v1, Ljava/lang/Integer;

    .line 195
    .line 196
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    const/16 v4, 0x270f

    .line 201
    .line 202
    if-eq v2, v4, :cond_6

    .line 203
    .line 204
    new-instance v2, Lcom/transsion/athena/data/TrackData;

    .line 205
    .line 206
    invoke-direct {v2}, Lcom/transsion/athena/data/TrackData;-><init>()V

    .line 207
    .line 208
    .line 209
    const-string v4, "purl"

    .line 210
    .line 211
    invoke-virtual {v2, v4, v0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 216
    .line 217
    .line 218
    move-result v4

    .line 219
    invoke-static {v4}, Lcom/transsion/ga/AthenaAnalytics;->K(I)Lcom/transsion/ga/AthenaAnalytics;

    .line 220
    .line 221
    .line 222
    move-result-object v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 223
    const-string v5, "page_enter"

    .line 224
    .line 225
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    invoke-virtual {v4, v5, v2, v1}, Lcom/transsion/ga/AthenaAnalytics;->g0(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;I)V

    .line 230
    .line 231
    .line 232
    goto :goto_6

    .line 233
    :cond_7
    iput-boolean v3, p0, Lcom/transsion/ga/athena;->c:Z

    .line 234
    .line 235
    iget-object p1, p0, Lcom/transsion/ga/athena;->d:Ljava/lang/Runnable;

    .line 236
    .line 237
    if-eqz p1, :cond_8

    .line 238
    .line 239
    iget-object v0, p0, Lcom/transsion/ga/athena;->a:Landroid/os/Handler;

    .line 240
    .line 241
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 242
    .line 243
    .line 244
    const/4 p1, 0x0

    .line 245
    iput-object p1, p0, Lcom/transsion/ga/athena;->d:Ljava/lang/Runnable;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 246
    .line 247
    goto :goto_8

    .line 248
    :goto_7
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    :cond_8
    :goto_8
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 11

    .line 1
    const-string v0, "ext"

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/transsion/ga/athena;->e(Landroid/app/Activity;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_8

    .line 8
    .line 9
    :try_start_0
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->s()Z

    .line 10
    .line 11
    .line 12
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    const-string v2, ""

    .line 14
    .line 15
    const-string v3, "t"

    .line 16
    .line 17
    const-string v4, "s_id"

    .line 18
    .line 19
    if-eqz v1, :cond_3

    .line 20
    .line 21
    :try_start_1
    iget-object v1, p0, Lcom/transsion/ga/athena;->j:Ljava/util/LinkedList;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-lez v1, :cond_3

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v5, p0, Lcom/transsion/ga/athena;->j:Ljava/util/LinkedList;

    .line 38
    .line 39
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    if-eqz v6, :cond_3

    .line 48
    .line 49
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    check-cast v6, Lcom/transsion/ga/athena$a;

    .line 54
    .line 55
    iget-object v7, v6, Lcom/transsion/ga/athena$a;->b:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-eqz v7, :cond_0

    .line 62
    .line 63
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 64
    .line 65
    .line 66
    move-result-wide v7

    .line 67
    iget-wide v9, v6, Lcom/transsion/ga/athena$a;->c:J

    .line 68
    .line 69
    sub-long/2addr v7, v9

    .line 70
    new-instance v1, Lcom/transsion/athena/data/TrackData;

    .line 71
    .line 72
    invoke-direct {v1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->m()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-virtual {v1, v4, v5}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    .line 80
    .line 81
    .line 82
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 83
    const-string v5, "url"

    .line 84
    .line 85
    :try_start_2
    iget-object v9, v6, Lcom/transsion/ga/athena$a;->b:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v1, v5, v9}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    .line 88
    .line 89
    .line 90
    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 91
    const-string v5, "no"

    .line 92
    .line 93
    :try_start_3
    iget v9, v6, Lcom/transsion/ga/athena$a;->a:I

    .line 94
    .line 95
    invoke-virtual {v1, v5, v9}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    const-wide/16 v9, 0x0

    .line 100
    .line 101
    cmp-long v5, v7, v9

    .line 102
    .line 103
    if-lez v5, :cond_1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_1
    move-wide v7, v9

    .line 107
    :goto_0
    invoke-virtual {v1, v3, v7, v8}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;J)Lcom/transsion/athena/data/TrackData;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v1, v0, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    if-eqz v5, :cond_2

    .line 120
    .line 121
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    const-string v5, "athena"

    .line 126
    .line 127
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    if-eqz p1, :cond_2

    .line 132
    .line 133
    invoke-virtual {v1, v0, p1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Landroid/os/Bundle;)Lcom/transsion/athena/data/TrackData;

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :catch_0
    move-exception p1

    .line 138
    goto/16 :goto_4

    .line 139
    .line 140
    :cond_2
    :goto_1
    iget-wide v7, p0, Lcom/transsion/ga/athena;->k:J

    .line 141
    .line 142
    invoke-static {v7, v8}, Lcom/transsion/ga/AthenaAnalytics;->L(J)Lcom/transsion/ga/AthenaAnalytics;

    .line 143
    .line 144
    .line 145
    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 146
    const-string v0, "page_view"

    .line 147
    .line 148
    :try_start_4
    iget-wide v7, p0, Lcom/transsion/ga/athena;->k:J

    .line 149
    .line 150
    invoke-virtual {p1, v0, v1, v7, v8}, Lcom/transsion/ga/AthenaAnalytics;->h0(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V

    .line 151
    .line 152
    .line 153
    iget-object p1, p0, Lcom/transsion/ga/athena;->j:Ljava/util/LinkedList;

    .line 154
    .line 155
    invoke-virtual {p1, v6}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    :cond_3
    iget p1, p0, Lcom/transsion/ga/athena;->b:I

    .line 159
    .line 160
    add-int/lit8 p1, p1, -0x1

    .line 161
    .line 162
    iput p1, p0, Lcom/transsion/ga/athena;->b:I

    .line 163
    .line 164
    if-nez p1, :cond_8

    .line 165
    .line 166
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 167
    .line 168
    .line 169
    move-result-wide v0

    .line 170
    iget-wide v5, p0, Lcom/transsion/ga/athena;->h:J

    .line 171
    .line 172
    sub-long/2addr v0, v5

    .line 173
    const-wide/16 v5, 0x3e8

    .line 174
    .line 175
    cmp-long p1, v0, v5

    .line 176
    .line 177
    if-lez p1, :cond_6

    .line 178
    .line 179
    const-wide/32 v5, 0x5265c00

    .line 180
    .line 181
    .line 182
    cmp-long p1, v0, v5

    .line 183
    .line 184
    if-gez p1, :cond_6

    .line 185
    .line 186
    invoke-static {}, Lcom/transsion/athena/data/athena;->a()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 195
    .line 196
    .line 197
    move-result v5

    .line 198
    if-eqz v5, :cond_6

    .line 199
    .line 200
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    check-cast v5, Ljava/lang/Integer;

    .line 205
    .line 206
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 207
    .line 208
    .line 209
    move-result v6

    .line 210
    const/16 v7, 0x270f

    .line 211
    .line 212
    if-eq v6, v7, :cond_4

    .line 213
    .line 214
    new-instance v6, Lcom/transsion/athena/data/TrackData;

    .line 215
    .line 216
    invoke-direct {v6}, Lcom/transsion/athena/data/TrackData;-><init>()V

    .line 217
    .line 218
    .line 219
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->m()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v7

    .line 223
    invoke-virtual {v6, v4, v7}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    .line 224
    .line 225
    .line 226
    move-result-object v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 227
    const-string v7, "s_t"

    .line 228
    .line 229
    :try_start_5
    iget v8, p0, Lcom/transsion/ga/athena;->f:I

    .line 230
    .line 231
    invoke-virtual {v6, v7, v8}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    .line 232
    .line 233
    .line 234
    move-result-object v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 235
    const-string v7, "pkg"

    .line 236
    .line 237
    :try_start_6
    iget v8, p0, Lcom/transsion/ga/athena;->f:I

    .line 238
    .line 239
    const/4 v9, 0x2

    .line 240
    if-ne v8, v9, :cond_5

    .line 241
    .line 242
    iget-object v8, p0, Lcom/transsion/ga/athena;->g:Ljava/lang/String;

    .line 243
    .line 244
    goto :goto_3

    .line 245
    :cond_5
    move-object v8, v2

    .line 246
    :goto_3
    invoke-virtual {v6, v7, v8}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    .line 247
    .line 248
    .line 249
    move-result-object v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 250
    const-string v7, "s_s"

    .line 251
    .line 252
    :try_start_7
    iget-wide v8, p0, Lcom/transsion/ga/athena;->e:J

    .line 253
    .line 254
    invoke-virtual {v6, v7, v8, v9}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;J)Lcom/transsion/athena/data/TrackData;

    .line 255
    .line 256
    .line 257
    move-result-object v6

    .line 258
    invoke-virtual {v6, v3, v0, v1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;J)Lcom/transsion/athena/data/TrackData;

    .line 259
    .line 260
    .line 261
    move-result-object v6

    .line 262
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 263
    .line 264
    .line 265
    move-result v7

    .line 266
    invoke-static {v7}, Lcom/transsion/ga/AthenaAnalytics;->K(I)Lcom/transsion/ga/AthenaAnalytics;

    .line 267
    .line 268
    .line 269
    move-result-object v7
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 270
    const-string v8, "app_active"

    .line 271
    .line 272
    :try_start_8
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 273
    .line 274
    .line 275
    move-result v5

    .line 276
    invoke-virtual {v7, v8, v6, v5}, Lcom/transsion/ga/AthenaAnalytics;->g0(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;I)V

    .line 277
    .line 278
    .line 279
    goto :goto_2

    .line 280
    :cond_6
    iget-object p1, p0, Lcom/transsion/ga/athena;->d:Ljava/lang/Runnable;

    .line 281
    .line 282
    if-eqz p1, :cond_7

    .line 283
    .line 284
    iget-object v0, p0, Lcom/transsion/ga/athena;->a:Landroid/os/Handler;

    .line 285
    .line 286
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 287
    .line 288
    .line 289
    :cond_7
    iget-object p1, p0, Lcom/transsion/ga/athena;->a:Landroid/os/Handler;

    .line 290
    .line 291
    new-instance v0, Lcom/transsion/ga/athena$athena;

    .line 292
    .line 293
    invoke-direct {v0, p0}, Lcom/transsion/ga/athena$athena;-><init>(Lcom/transsion/ga/athena;)V

    .line 294
    .line 295
    .line 296
    iput-object v0, p0, Lcom/transsion/ga/athena;->d:Ljava/lang/Runnable;

    .line 297
    .line 298
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->n()J

    .line 299
    .line 300
    .line 301
    move-result-wide v1

    .line 302
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 303
    .line 304
    .line 305
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->X()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 306
    .line 307
    .line 308
    goto :goto_5

    .line 309
    :goto_4
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    :cond_8
    :goto_5
    return-void
.end method
