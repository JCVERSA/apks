.class Laj/e$a;
.super Landroidx/room/g;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laj/e;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laj/e;


# direct methods
.method constructor <init>(Laj/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Laj/e$a;->a:Laj/e;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/room/g;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ly3/e;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/baselib/db/room/RoomItemBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Laj/e$a;->f(Ly3/e;Lcom/transsion/baselib/db/room/RoomItemBean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "INSERT OR REPLACE INTO `room_table` (`groupId`,`name`,`avatar`,`hasJoin`,`newPostCount`,`description`,`postCount`,`userCount`,`level`,`updateTimeStamp`) VALUES (?,?,?,?,?,?,?,?,?,?)"

    .line 2
    .line 3
    return-object v0
.end method

.method protected f(Ly3/e;Lcom/transsion/baselib/db/room/RoomItemBean;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/transsion/baselib/db/room/RoomItemBean;->getGroupId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p2}, Lcom/transsion/baselib/db/room/RoomItemBean;->getGroupId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {p2}, Lcom/transsion/baselib/db/room/RoomItemBean;->getName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x2

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {p2}, Lcom/transsion/baselib/db/room/RoomItemBean;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :goto_1
    invoke-virtual {p2}, Lcom/transsion/baselib/db/room/RoomItemBean;->getAvatar()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/4 v1, 0x3

    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    invoke-virtual {p2}, Lcom/transsion/baselib/db/room/RoomItemBean;->getAvatar()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :goto_2
    invoke-virtual {p2}, Lcom/transsion/baselib/db/room/RoomItemBean;->getHasJoin()Ljava/lang/Boolean;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-nez v0, :cond_3

    .line 60
    .line 61
    const/4 v0, 0x0

    .line 62
    goto :goto_3

    .line 63
    :cond_3
    invoke-virtual {p2}, Lcom/transsion/baselib/db/room/RoomItemBean;->getHasJoin()Ljava/lang/Boolean;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    :goto_3
    const/4 v1, 0x4

    .line 76
    if-nez v0, :cond_4

    .line 77
    .line 78
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 79
    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    int-to-long v2, v0

    .line 87
    invoke-interface {p1, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 88
    .line 89
    .line 90
    :goto_4
    invoke-virtual {p2}, Lcom/transsion/baselib/db/room/RoomItemBean;->getNewPostCount()Ljava/lang/Long;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    const/4 v1, 0x5

    .line 95
    if-nez v0, :cond_5

    .line 96
    .line 97
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 98
    .line 99
    .line 100
    goto :goto_5

    .line 101
    :cond_5
    invoke-virtual {p2}, Lcom/transsion/baselib/db/room/RoomItemBean;->getNewPostCount()Ljava/lang/Long;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 106
    .line 107
    .line 108
    move-result-wide v2

    .line 109
    invoke-interface {p1, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 110
    .line 111
    .line 112
    :goto_5
    invoke-virtual {p2}, Lcom/transsion/baselib/db/room/RoomItemBean;->getDescription()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    const/4 v1, 0x6

    .line 117
    if-nez v0, :cond_6

    .line 118
    .line 119
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 120
    .line 121
    .line 122
    goto :goto_6

    .line 123
    :cond_6
    invoke-virtual {p2}, Lcom/transsion/baselib/db/room/RoomItemBean;->getDescription()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :goto_6
    invoke-virtual {p2}, Lcom/transsion/baselib/db/room/RoomItemBean;->getPostCount()Ljava/lang/Long;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    const/4 v1, 0x7

    .line 135
    if-nez v0, :cond_7

    .line 136
    .line 137
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 138
    .line 139
    .line 140
    goto :goto_7

    .line 141
    :cond_7
    invoke-virtual {p2}, Lcom/transsion/baselib/db/room/RoomItemBean;->getPostCount()Ljava/lang/Long;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 146
    .line 147
    .line 148
    move-result-wide v2

    .line 149
    invoke-interface {p1, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 150
    .line 151
    .line 152
    :goto_7
    invoke-virtual {p2}, Lcom/transsion/baselib/db/room/RoomItemBean;->getUserCount()Ljava/lang/Long;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    const/16 v1, 0x8

    .line 157
    .line 158
    if-nez v0, :cond_8

    .line 159
    .line 160
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 161
    .line 162
    .line 163
    goto :goto_8

    .line 164
    :cond_8
    invoke-virtual {p2}, Lcom/transsion/baselib/db/room/RoomItemBean;->getUserCount()Ljava/lang/Long;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 169
    .line 170
    .line 171
    move-result-wide v2

    .line 172
    invoke-interface {p1, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 173
    .line 174
    .line 175
    :goto_8
    invoke-virtual {p2}, Lcom/transsion/baselib/db/room/RoomItemBean;->getLevel()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    const/16 v1, 0x9

    .line 180
    .line 181
    if-nez v0, :cond_9

    .line 182
    .line 183
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 184
    .line 185
    .line 186
    goto :goto_9

    .line 187
    :cond_9
    invoke-virtual {p2}, Lcom/transsion/baselib/db/room/RoomItemBean;->getLevel()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 192
    .line 193
    .line 194
    :goto_9
    const/16 v0, 0xa

    .line 195
    .line 196
    invoke-virtual {p2}, Lcom/transsion/baselib/db/room/RoomItemBean;->getUpdateTimeStamp()J

    .line 197
    .line 198
    .line 199
    move-result-wide v1

    .line 200
    invoke-interface {p1, v0, v1, v2}, Ly3/e;->c(IJ)V

    .line 201
    .line 202
    .line 203
    return-void
.end method
