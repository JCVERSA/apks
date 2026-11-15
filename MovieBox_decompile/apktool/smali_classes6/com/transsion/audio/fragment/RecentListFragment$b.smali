.class public final Lcom/transsion/audio/fragment/RecentListFragment$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/audio/adapter/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/fragment/RecentListFragment;->j0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/audio/fragment/RecentListFragment;

.field final synthetic b:Lcom/transsion/audio/adapter/c;


# direct methods
.method constructor <init>(Lcom/transsion/audio/fragment/RecentListFragment;Lcom/transsion/audio/adapter/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/audio/fragment/RecentListFragment$b;->a:Lcom/transsion/audio/fragment/RecentListFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/audio/fragment/RecentListFragment$b;->b:Lcom/transsion/audio/adapter/c;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/baselib/db/audio/AudioBean;)V
    .locals 2

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/audio/fragment/RecentListFragment$b;->a:Lcom/transsion/audio/fragment/RecentListFragment;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/transsion/audio/fragment/RecentListFragment$b;->b:Lcom/transsion/audio/adapter/c;

    .line 9
    .line 10
    invoke-static {v0, v1, p1}, Lcom/transsion/audio/fragment/RecentListFragment;->d0(Lcom/transsion/audio/fragment/RecentListFragment;Lcom/transsion/audio/adapter/c;Lcom/transsion/baselib/db/audio/AudioBean;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public b(Lcom/transsion/baselib/db/audio/AudioBean;)V
    .locals 12

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/audio/player/AudioPlayer;->i:Lcom/transsion/audio/player/AudioPlayer$a;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/audio/player/AudioPlayer$a;->a()Lcom/transsion/audio/player/AudioPlayer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Lcom/transsion/audio/player/AudioPlayer;->y(Lcom/transsion/baselib/db/audio/AudioBean;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x1

    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    const-class v4, Lep/a;

    .line 20
    .line 21
    const/4 v5, 0x3

    .line 22
    const/4 v6, 0x0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/transsion/baselib/db/audio/AudioBean;->getStatus()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-ne v0, v5, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/transsion/audio/fragment/RecentListFragment$b;->a:Lcom/transsion/audio/fragment/RecentListFragment;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/transsion/audio/fragment/RecentListFragment;->e0(Lcom/transsion/audio/fragment/RecentListFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x4

    .line 41
    invoke-virtual {p1, v0}, Lcom/transsion/baselib/db/audio/AudioBean;->setStatus(I)V

    .line 42
    .line 43
    .line 44
    new-array v0, v6, [Ljava/lang/Object;

    .line 45
    .line 46
    invoke-static {v4, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lep/a;

    .line 51
    .line 52
    if-eqz v0, :cond_7

    .line 53
    .line 54
    invoke-interface {v0}, Lep/a;->stop()V

    .line 55
    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/fragment/RecentListFragment$b;->a:Lcom/transsion/audio/fragment/RecentListFragment;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/transsion/audio/fragment/RecentListFragment;->e0(Lcom/transsion/audio/fragment/RecentListFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v5}, Lcom/transsion/baselib/db/audio/AudioBean;->setStatus(I)V

    .line 68
    .line 69
    .line 70
    new-array v0, v6, [Ljava/lang/Object;

    .line 71
    .line 72
    invoke-static {v4, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Lep/a;

    .line 77
    .line 78
    if-eqz v0, :cond_7

    .line 79
    .line 80
    invoke-interface {v0}, Lep/a;->prepare()V

    .line 81
    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/baselib/db/audio/AudioBean;->getReadProcess()Ljava/lang/Long;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    if-eqz v0, :cond_2

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 91
    .line 92
    .line 93
    move-result-wide v7

    .line 94
    goto :goto_0

    .line 95
    :cond_2
    move-wide v7, v2

    .line 96
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/baselib/db/audio/AudioBean;->getDuration()Ljava/lang/Long;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    if-eqz v0, :cond_3

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 103
    .line 104
    .line 105
    move-result-wide v9

    .line 106
    goto :goto_1

    .line 107
    :cond_3
    const-wide/16 v9, -0x1f4

    .line 108
    .line 109
    :goto_1
    cmp-long v0, v7, v9

    .line 110
    .line 111
    if-ltz v0, :cond_4

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_4
    move v1, v6

    .line 115
    :goto_2
    invoke-virtual {p1}, Lcom/transsion/baselib/db/audio/AudioBean;->getStatus()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    const/4 v7, 0x6

    .line 120
    if-eq v0, v7, :cond_5

    .line 121
    .line 122
    if-eqz v1, :cond_6

    .line 123
    .line 124
    :cond_5
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {p1, v0}, Lcom/transsion/baselib/db/audio/AudioBean;->setReadProcess(Ljava/lang/Long;)V

    .line 129
    .line 130
    .line 131
    :cond_6
    iget-object v0, p0, Lcom/transsion/audio/fragment/RecentListFragment$b;->a:Lcom/transsion/audio/fragment/RecentListFragment;

    .line 132
    .line 133
    invoke-static {v0}, Lcom/transsion/audio/fragment/RecentListFragment;->e0(Lcom/transsion/audio/fragment/RecentListFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v5}, Lcom/transsion/baselib/db/audio/AudioBean;->setStatus(I)V

    .line 141
    .line 142
    .line 143
    new-array v0, v6, [Ljava/lang/Object;

    .line 144
    .line 145
    invoke-static {v4, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    check-cast v0, Lep/a;

    .line 150
    .line 151
    if-eqz v0, :cond_7

    .line 152
    .line 153
    invoke-interface {v0, p1, v6}, Lep/a;->d(Lcom/transsion/baselib/db/audio/AudioBean;Z)V

    .line 154
    .line 155
    .line 156
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/transsion/audio/fragment/RecentListFragment$b;->a:Lcom/transsion/audio/fragment/RecentListFragment;

    .line 157
    .line 158
    invoke-virtual {p1}, Lcom/transsion/baselib/db/audio/AudioBean;->getReadProcess()Ljava/lang/Long;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    if-eqz v1, :cond_8

    .line 163
    .line 164
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 165
    .line 166
    .line 167
    move-result-wide v2

    .line 168
    :cond_8
    new-instance v1, Lgn/e;

    .line 169
    .line 170
    invoke-virtual {p1}, Lcom/transsion/baselib/db/audio/AudioBean;->getAudioUrl()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    invoke-virtual {p1}, Lcom/transsion/baselib/db/audio/AudioBean;->getAudioUrl()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    const/16 v10, 0x1c

    .line 179
    .line 180
    const/4 v11, 0x0

    .line 181
    const/4 v7, 0x0

    .line 182
    const/4 v8, 0x0

    .line 183
    const/4 v9, 0x0

    .line 184
    move-object v4, v1

    .line 185
    invoke-direct/range {v4 .. v11}, Lgn/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/transsion/player/enum/PlayMimeType;Lcom/transsion/player/mediasession/MediaItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/audio/fragment/RecentListFragment;->onProgress(JLgn/e;)V

    .line 189
    .line 190
    .line 191
    return-void
.end method
