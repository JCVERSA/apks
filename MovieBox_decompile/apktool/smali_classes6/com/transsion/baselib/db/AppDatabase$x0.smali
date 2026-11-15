.class public final Lcom/transsion/baselib/db/AppDatabase$x0;
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
    const/16 v0, 0x37

    .line 2
    .line 3
    const/16 v1, 0x38

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
    const-string v0, "ugcVideoIsVertical"

    .line 7
    .line 8
    const-string v1, "DOWNLOAD_TABLE"

    .line 9
    .line 10
    invoke-static {p1, v1, v0}, Lri/a;->a(Lz3/d;Ljava/lang/String;Ljava/lang/String;)Z

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
    const-string v0, "originData"

    .line 22
    .line 23
    invoke-static {p1, v1, v0}, Lri/a;->a(Lz3/d;Ljava/lang/String;Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    const-string v0, "ALTER TABLE DOWNLOAD_TABLE ADD COLUMN originData TEXT"

    .line 30
    .line 31
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    const-string v0, "uid"

    .line 35
    .line 36
    const-string v1, "ugc_video_detail_play"

    .line 37
    .line 38
    invoke-static {p1, v1, v0}, Lri/a;->a(Lz3/d;Ljava/lang/String;Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const-string v2, "ALTER TABLE "

    .line 43
    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v3, " ADD COLUMN uid TEXT"

    .line 58
    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_2
    const-string v0, "userName"

    .line 70
    .line 71
    invoke-static {p1, v1, v0}, Lri/a;->a(Lz3/d;Ljava/lang/String;Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_3

    .line 76
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v3, " ADD COLUMN userName TEXT"

    .line 89
    .line 90
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :cond_3
    const-string v0, "userAvatar"

    .line 101
    .line 102
    invoke-static {p1, v1, v0}, Lri/a;->a(Lz3/d;Ljava/lang/String;Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-nez v0, :cond_4

    .line 107
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v3, " ADD COLUMN userAvatar TEXT"

    .line 120
    .line 121
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :cond_4
    const-string v0, "description"

    .line 132
    .line 133
    invoke-static {p1, v1, v0}, Lri/a;->a(Lz3/d;Ljava/lang/String;Ljava/lang/String;)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-nez v0, :cond_5

    .line 138
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v3, " ADD COLUMN description TEXT"

    .line 151
    .line 152
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    :cond_5
    const-string v0, "videoStyle"

    .line 163
    .line 164
    invoke-static {p1, v1, v0}, Lri/a;->a(Lz3/d;Ljava/lang/String;Ljava/lang/String;)Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-nez v0, :cond_6

    .line 169
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string v1, " ADD COLUMN videoStyle TEXT"

    .line 182
    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    :cond_6
    const-string v0, "CREATE TABLE IF NOT EXISTS home_preferences_interval_time (\n    id TEXT NOT NULL,\n    showTime INTEGER NOT NULL,\n    closeTime INTEGER NOT NULL,\n    chooseTime INTEGER NOT NULL,\n    showIntervalSeconds INTEGER NOT NULL,\n    closeIntervalSeconds INTEGER NOT NULL,\n    chooseIntervalSeconds INTEGER NOT NULL,\n    PRIMARY KEY(id)\n)"

    .line 194
    .line 195
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    return-void
.end method
