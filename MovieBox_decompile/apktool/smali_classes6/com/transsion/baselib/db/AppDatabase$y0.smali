.class public final Lcom/transsion/baselib/db/AppDatabase$y0;
.super Lx3/b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/baselib/db/AppDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    const/16 v0, 0x38

    .line 2
    .line 3
    const/16 v1, 0x39

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Lx3/b;-><init>(II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public b(Lz3/d;)V
    .locals 4

    .line 1
    const-string v0, "db"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "DOWNLOAD_TABLE"

    .line 7
    .line 8
    const-string v1, "ugcVideoIsVertical"

    .line 9
    .line 10
    invoke-static {p1, v0, v1}, Lri/a;->a(Lz3/d;Ljava/lang/String;Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const-string v0, "ALTER TABLE DOWNLOAD_TABLE ADD COLUMN ugcVideoIsVertical INTEGER NOT NULL DEFAULT 0"

    .line 17
    .line 18
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    const-string v0, "uid"

    .line 22
    .line 23
    const-string v1, "ugc_video_detail_play"

    .line 24
    .line 25
    invoke-static {p1, v1, v0}, Lri/a;->a(Lz3/d;Ljava/lang/String;Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const-string v2, "ALTER TABLE "

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v3, " ADD COLUMN uid TEXT"

    .line 45
    .line 46
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    const-string v0, "userName"

    .line 57
    .line 58
    invoke-static {p1, v1, v0}, Lri/a;->a(Lz3/d;Ljava/lang/String;Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_2

    .line 63
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v3, " ADD COLUMN userName TEXT"

    .line 76
    .line 77
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    const-string v0, "userAvatar"

    .line 88
    .line 89
    invoke-static {p1, v1, v0}, Lri/a;->a(Lz3/d;Ljava/lang/String;Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-nez v0, :cond_3

    .line 94
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v3, " ADD COLUMN userAvatar TEXT"

    .line 107
    .line 108
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :cond_3
    const-string v0, "description"

    .line 119
    .line 120
    invoke-static {p1, v1, v0}, Lri/a;->a(Lz3/d;Ljava/lang/String;Ljava/lang/String;)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-nez v0, :cond_4

    .line 125
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v3, " ADD COLUMN description TEXT"

    .line 138
    .line 139
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    :cond_4
    const-string v0, "videoStyle"

    .line 150
    .line 151
    invoke-static {p1, v1, v0}, Lri/a;->a(Lz3/d;Ljava/lang/String;Ljava/lang/String;)Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-nez v0, :cond_5

    .line 156
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v1, " ADD COLUMN videoStyle TEXT"

    .line 169
    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    :cond_5
    const-string v0, "ALTER TABLE download_table ADD COLUMN ugcCateLev1Id INTEGER"

    .line 181
    .line 182
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    const-string v0, "ALTER TABLE download_table ADD COLUMN ugcCateLev2Id INTEGER"

    .line 186
    .line 187
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    const-string v0, "ALTER TABLE download_table ADD COLUMN ugcCateLev3Id INTEGER"

    .line 191
    .line 192
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    const-string v0, "ALTER TABLE download_table ADD COLUMN ugcCateLev4Id INTEGER"

    .line 196
    .line 197
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    const-string v0, "ALTER TABLE ugc_video_detail_play ADD COLUMN cateLev1Id INTEGER"

    .line 201
    .line 202
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    const-string v0, "ALTER TABLE ugc_video_detail_play ADD COLUMN cateLev2Id INTEGER"

    .line 206
    .line 207
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    const-string v0, "ALTER TABLE ugc_video_detail_play ADD COLUMN cateLev3Id INTEGER"

    .line 211
    .line 212
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    const-string v0, "ALTER TABLE ugc_video_detail_play ADD COLUMN cateLev4Id INTEGER"

    .line 216
    .line 217
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    return-void
.end method
