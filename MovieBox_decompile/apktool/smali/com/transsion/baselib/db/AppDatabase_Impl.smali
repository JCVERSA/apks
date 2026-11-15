.class public final Lcom/transsion/baselib/db/AppDatabase_Impl;
.super Lcom/transsion/baselib/db/AppDatabase;
.source "source.java"


# instance fields
.field private volatile A0:Lzi/a;

.field private volatile B0:Lui/n0;

.field private volatile C0:Lcom/transsion/baselib/db/video/a1;

.field private volatile D0:Lcom/transsion/baselib/db/video/ShortTVPlayDao;

.field private volatile E0:Lui/d1;

.field private volatile F0:Lcom/transsion/baselib/db/video/IShortTvFavoriteStateDao;

.field private volatile G0:Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

.field private volatile H0:Lxi/a;

.field private volatile I0:Lcom/transsion/baselib/db/place/PlaceDao;

.field private volatile J0:Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

.field private volatile K0:Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao;

.field private volatile L0:Lcom/transsion/baselib/db/member/MemberResolutionDao;

.field private volatile M0:Lvi/a;

.field private volatile w0:Lsi/a;

.field private volatile x0:Lui/c;

.field private volatile y0:Laj/a;

.field private volatile z0:Lui/v0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/baselib/db/AppDatabase;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic E1(Lcom/transsion/baselib/db/AppDatabase_Impl;Ly3/b;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase;->P(Ly3/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public A1()Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->K0:Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->K0:Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->K0:Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lcom/transsion/baselib/db/video/q;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/transsion/baselib/db/video/q;-><init>(Landroidx/room/RoomDatabase;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->K0:Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->K0:Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao;

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-object v0

    .line 27
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0
.end method

.method public B1()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->J0:Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->J0:Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->J0:Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lcom/transsion/baselib/db/video/j0;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/transsion/baselib/db/video/j0;-><init>(Landroidx/room/RoomDatabase;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->J0:Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->J0:Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-object v0

    .line 27
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0
.end method

.method public C()Ljava/util/Set;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public C1()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->G0:Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->G0:Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->G0:Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lcom/transsion/baselib/db/video/z0;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/transsion/baselib/db/video/z0;-><init>(Landroidx/room/RoomDatabase;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->G0:Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->G0:Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-object v0

    .line 27
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0
.end method

.method public D1()Lcom/transsion/baselib/db/video/a1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->C0:Lcom/transsion/baselib/db/video/a1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->C0:Lcom/transsion/baselib/db/video/a1;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->C0:Lcom/transsion/baselib/db/video/a1;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lcom/transsion/baselib/db/video/b1;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/transsion/baselib/db/video/b1;-><init>(Landroidx/room/RoomDatabase;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->C0:Lcom/transsion/baselib/db/video/a1;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->C0:Lcom/transsion/baselib/db/video/a1;

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-object v0

    .line 27
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0
.end method

.method protected F()Ljava/util/Map;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Lsi/a;

    .line 7
    .line 8
    invoke-static {}, Lsi/j;->q()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    const-class v1, Lui/c;

    .line 16
    .line 17
    invoke-static {}, Lui/l0;->q0()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    const-class v1, Lcom/transsion/baselib/db/video/k0;

    .line 25
    .line 26
    invoke-static {}, Lcom/transsion/baselib/db/video/l0;->a()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    const-class v1, Lui/t0;

    .line 34
    .line 35
    invoke-static {}, Lui/u0;->a()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    const-class v1, Laj/a;

    .line 43
    .line 44
    invoke-static {}, Laj/e;->g()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    const-class v1, Lui/v0;

    .line 52
    .line 53
    invoke-static {}, Lui/c1;->m()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    const-class v1, Lzi/i;

    .line 61
    .line 62
    invoke-static {}, Lzi/j;->a()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    const-class v1, Lzi/a;

    .line 70
    .line 71
    invoke-static {}, Lzi/h;->m()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    const-class v1, Lti/a;

    .line 79
    .line 80
    invoke-static {}, Lti/b;->a()Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    const-class v1, Lyi/a;

    .line 88
    .line 89
    invoke-static {}, Lyi/b;->a()Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    const-class v1, Lwi/a;

    .line 97
    .line 98
    invoke-static {}, Lwi/b;->a()Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    const-class v1, Lui/n0;

    .line 106
    .line 107
    invoke-static {}, Lui/r0;->g()Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    const-class v1, Lcom/transsion/baselib/db/video/a1;

    .line 115
    .line 116
    invoke-static {}, Lcom/transsion/baselib/db/video/b1;->a()Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    const-class v1, Lcom/transsion/baselib/db/video/ShortTVPlayDao;

    .line 124
    .line 125
    invoke-static {}, Lcom/transsion/baselib/db/video/m;->r()Ljava/util/List;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    const-class v1, Lui/d1;

    .line 133
    .line 134
    invoke-static {}, Lui/h1;->g()Ljava/util/List;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    const-class v1, Lcom/transsion/baselib/db/video/IShortTvFavoriteStateDao;

    .line 142
    .line 143
    invoke-static {}, Lcom/transsion/baselib/db/video/d;->h()Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    const-class v1, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 151
    .line 152
    invoke-static {}, Lcom/transsion/baselib/db/video/z0;->E()Ljava/util/List;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    const-class v1, Lxi/a;

    .line 160
    .line 161
    invoke-static {}, Lxi/h;->m()Ljava/util/List;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    const-class v1, Lcom/transsion/baselib/db/place/PlaceDao;

    .line 169
    .line 170
    invoke-static {}, Lcom/transsion/baselib/db/place/d;->h()Ljava/util/List;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    const-class v1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    .line 178
    .line 179
    invoke-static {}, Lcom/transsion/baselib/db/video/j0;->P()Ljava/util/List;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    const-class v1, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao;

    .line 187
    .line 188
    invoke-static {}, Lcom/transsion/baselib/db/video/q;->j()Ljava/util/List;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    const-class v1, Lcom/transsion/baselib/db/member/MemberResolutionDao;

    .line 196
    .line 197
    invoke-static {}, Lcom/transsion/baselib/db/member/g;->m()Ljava/util/List;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    const-class v1, Lvi/a;

    .line 205
    .line 206
    invoke-static {}, Lvi/d;->e()Ljava/util/List;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    return-object v0
.end method

.method protected F1()Landroidx/room/f0;
    .locals 4

    .line 1
    new-instance v0, Lcom/transsion/baselib/db/AppDatabase_Impl$a;

    .line 2
    .line 3
    const-string v1, "b0c54b19a40cfcf785b1ce6277c3b3a2"

    .line 4
    .line 5
    const-string v2, "7ab4a93e3b6040b69ab078acec2bef77"

    .line 6
    .line 7
    const/16 v3, 0x3a

    .line 8
    .line 9
    invoke-direct {v0, p0, v3, v1, v2}, Lcom/transsion/baselib/db/AppDatabase_Impl$a;-><init>(Lcom/transsion/baselib/db/AppDatabase_Impl;ILjava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public n1()Lsi/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->w0:Lsi/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->w0:Lsi/a;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->w0:Lsi/a;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lsi/j;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lsi/j;-><init>(Landroidx/room/RoomDatabase;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->w0:Lsi/a;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->w0:Lsi/a;

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-object v0

    .line 27
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0
.end method

.method public o1()Lui/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->x0:Lui/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->x0:Lui/c;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->x0:Lui/c;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lui/l0;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lui/l0;-><init>(Landroidx/room/RoomDatabase;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->x0:Lui/c;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->x0:Lui/c;

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-object v0

    .line 27
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0
.end method

.method public p1()Lui/n0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->B0:Lui/n0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->B0:Lui/n0;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->B0:Lui/n0;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lui/r0;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lui/r0;-><init>(Landroidx/room/RoomDatabase;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->B0:Lui/n0;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->B0:Lui/n0;

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-object v0

    .line 27
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0
.end method

.method protected q()Landroidx/room/InvalidationTracker;
    .locals 26

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v2, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Landroidx/room/InvalidationTracker;

    .line 13
    .line 14
    const-string v24, "member_resolution"

    .line 15
    .line 16
    const-string v25, "home_preferences_interval_time"

    .line 17
    .line 18
    const-string v3, "audio"

    .line 19
    .line 20
    const-string v4, "download_table"

    .line 21
    .line 22
    const-string v5, "video"

    .line 23
    .line 24
    const-string v6, "download_thread_info"

    .line 25
    .line 26
    const-string v7, "room_table"

    .line 27
    .line 28
    const-string v8, "permanent_msg"

    .line 29
    .line 30
    const-string v9, "download_subtitle_table"

    .line 31
    .line 32
    const-string v10, "msg"

    .line 33
    .line 34
    const-string v11, "consume_bean"

    .line 35
    .line 36
    const-string v12, "download_thread_range"

    .line 37
    .line 38
    const-string v13, "video_land_ad"

    .line 39
    .line 40
    const-string v14, "subtitle_language_map_table"

    .line 41
    .line 42
    const-string v15, "non_ad_plans"

    .line 43
    .line 44
    const-string v16, "local_mcc"

    .line 45
    .line 46
    const-string v17, "short_tv_play"

    .line 47
    .line 48
    const-string v18, "ShortTvFavoriteState"

    .line 49
    .line 50
    const-string v19, "video_detail_play"

    .line 51
    .line 52
    const-string v20, "music_liked"

    .line 53
    .line 54
    const-string v21, "place_list"

    .line 55
    .line 56
    const-string v22, "ugc_video_detail_play"

    .line 57
    .line 58
    const-string v23, "ugc_collection_video_group"

    .line 59
    .line 60
    filled-new-array/range {v3 .. v25}, [Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    move-object/from16 v4, p0

    .line 65
    .line 66
    invoke-direct {v1, v4, v0, v2, v3}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-object v1
.end method

.method public q1()Lvi/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->M0:Lvi/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->M0:Lvi/a;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->M0:Lvi/a;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lvi/d;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lvi/d;-><init>(Landroidx/room/RoomDatabase;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->M0:Lvi/a;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->M0:Lvi/a;

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-object v0

    .line 27
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0
.end method

.method protected bridge synthetic r()Landroidx/room/g0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baselib/db/AppDatabase_Impl;->F1()Landroidx/room/f0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public r1()Lcom/transsion/baselib/db/member/MemberResolutionDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->L0:Lcom/transsion/baselib/db/member/MemberResolutionDao;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->L0:Lcom/transsion/baselib/db/member/MemberResolutionDao;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->L0:Lcom/transsion/baselib/db/member/MemberResolutionDao;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lcom/transsion/baselib/db/member/g;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/transsion/baselib/db/member/g;-><init>(Landroidx/room/RoomDatabase;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->L0:Lcom/transsion/baselib/db/member/MemberResolutionDao;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->L0:Lcom/transsion/baselib/db/member/MemberResolutionDao;

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-object v0

    .line 27
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0
.end method

.method public s1()Lzi/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->A0:Lzi/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->A0:Lzi/a;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->A0:Lzi/a;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lzi/h;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lzi/h;-><init>(Landroidx/room/RoomDatabase;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->A0:Lzi/a;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->A0:Lzi/a;

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-object v0

    .line 27
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0
.end method

.method public t1()Lxi/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->H0:Lxi/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->H0:Lxi/a;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->H0:Lxi/a;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lxi/h;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lxi/h;-><init>(Landroidx/room/RoomDatabase;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->H0:Lxi/a;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->H0:Lxi/a;

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-object v0

    .line 27
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0
.end method

.method public u1()Lcom/transsion/baselib/db/place/PlaceDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->I0:Lcom/transsion/baselib/db/place/PlaceDao;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->I0:Lcom/transsion/baselib/db/place/PlaceDao;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->I0:Lcom/transsion/baselib/db/place/PlaceDao;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lcom/transsion/baselib/db/place/d;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/transsion/baselib/db/place/d;-><init>(Landroidx/room/RoomDatabase;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->I0:Lcom/transsion/baselib/db/place/PlaceDao;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->I0:Lcom/transsion/baselib/db/place/PlaceDao;

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-object v0

    .line 27
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0
.end method

.method public v(Ljava/util/Map;)Ljava/util/List;
    .locals 0

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public v1()Laj/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->y0:Laj/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->y0:Laj/a;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->y0:Laj/a;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Laj/e;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Laj/e;-><init>(Landroidx/room/RoomDatabase;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->y0:Laj/a;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->y0:Laj/a;

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-object v0

    .line 27
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0
.end method

.method public w1()Lcom/transsion/baselib/db/video/ShortTVPlayDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->D0:Lcom/transsion/baselib/db/video/ShortTVPlayDao;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->D0:Lcom/transsion/baselib/db/video/ShortTVPlayDao;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->D0:Lcom/transsion/baselib/db/video/ShortTVPlayDao;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lcom/transsion/baselib/db/video/m;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/transsion/baselib/db/video/m;-><init>(Landroidx/room/RoomDatabase;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->D0:Lcom/transsion/baselib/db/video/ShortTVPlayDao;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->D0:Lcom/transsion/baselib/db/video/ShortTVPlayDao;

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-object v0

    .line 27
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0
.end method

.method public x1()Lcom/transsion/baselib/db/video/IShortTvFavoriteStateDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->F0:Lcom/transsion/baselib/db/video/IShortTvFavoriteStateDao;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->F0:Lcom/transsion/baselib/db/video/IShortTvFavoriteStateDao;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->F0:Lcom/transsion/baselib/db/video/IShortTvFavoriteStateDao;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lcom/transsion/baselib/db/video/d;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/transsion/baselib/db/video/d;-><init>(Landroidx/room/RoomDatabase;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->F0:Lcom/transsion/baselib/db/video/IShortTvFavoriteStateDao;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->F0:Lcom/transsion/baselib/db/video/IShortTvFavoriteStateDao;

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-object v0

    .line 27
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0
.end method

.method public y1()Lui/v0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->z0:Lui/v0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->z0:Lui/v0;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->z0:Lui/v0;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lui/c1;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lui/c1;-><init>(Landroidx/room/RoomDatabase;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->z0:Lui/v0;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->z0:Lui/v0;

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-object v0

    .line 27
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0
.end method

.method public z1()Lui/d1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->E0:Lui/d1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->E0:Lui/d1;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->E0:Lui/d1;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lui/h1;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lui/h1;-><init>(Landroidx/room/RoomDatabase;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->E0:Lui/d1;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->E0:Lui/d1;

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-object v0

    .line 27
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0
.end method
