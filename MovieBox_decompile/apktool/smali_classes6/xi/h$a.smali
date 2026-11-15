.class Lxi/h$a;
.super Landroidx/room/g;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxi/h;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lxi/h;


# direct methods
.method constructor <init>(Lxi/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxi/h$a;->a:Lxi/h;

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
    check-cast p2, Lcom/transsion/baselib/db/music/MusicLikedDbBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lxi/h$a;->f(Ly3/e;Lcom/transsion/baselib/db/music/MusicLikedDbBean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "INSERT OR REPLACE INTO `music_liked` (`subjectId`,`title`,`coverUrl`,`countryName`,`genre`,`releaseDate`,`durationSeconds`,`singerName`,`singerAvatar`,`path`,`timeStamp`) VALUES (?,?,?,?,?,?,?,?,?,?,?)"

    .line 2
    .line 3
    return-object v0
.end method

.method protected f(Ly3/e;Lcom/transsion/baselib/db/music/MusicLikedDbBean;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/transsion/baselib/db/music/MusicLikedDbBean;->getSubjectId()Ljava/lang/String;

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
    invoke-virtual {p2}, Lcom/transsion/baselib/db/music/MusicLikedDbBean;->getSubjectId()Ljava/lang/String;

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
    invoke-virtual {p2}, Lcom/transsion/baselib/db/music/MusicLikedDbBean;->getTitle()Ljava/lang/String;

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
    invoke-virtual {p2}, Lcom/transsion/baselib/db/music/MusicLikedDbBean;->getTitle()Ljava/lang/String;

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
    invoke-virtual {p2}, Lcom/transsion/baselib/db/music/MusicLikedDbBean;->getCoverUrl()Ljava/lang/String;

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
    invoke-virtual {p2}, Lcom/transsion/baselib/db/music/MusicLikedDbBean;->getCoverUrl()Ljava/lang/String;

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
    invoke-virtual {p2}, Lcom/transsion/baselib/db/music/MusicLikedDbBean;->getCountryName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const/4 v1, 0x4

    .line 60
    if-nez v0, :cond_3

    .line 61
    .line 62
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 63
    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_3
    invoke-virtual {p2}, Lcom/transsion/baselib/db/music/MusicLikedDbBean;->getCountryName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :goto_3
    invoke-virtual {p2}, Lcom/transsion/baselib/db/music/MusicLikedDbBean;->getGenre()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const/4 v1, 0x5

    .line 78
    if-nez v0, :cond_4

    .line 79
    .line 80
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 81
    .line 82
    .line 83
    goto :goto_4

    .line 84
    :cond_4
    invoke-virtual {p2}, Lcom/transsion/baselib/db/music/MusicLikedDbBean;->getGenre()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :goto_4
    invoke-virtual {p2}, Lcom/transsion/baselib/db/music/MusicLikedDbBean;->getReleaseDate()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    const/4 v1, 0x6

    .line 96
    if-nez v0, :cond_5

    .line 97
    .line 98
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 99
    .line 100
    .line 101
    goto :goto_5

    .line 102
    :cond_5
    invoke-virtual {p2}, Lcom/transsion/baselib/db/music/MusicLikedDbBean;->getReleaseDate()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :goto_5
    invoke-virtual {p2}, Lcom/transsion/baselib/db/music/MusicLikedDbBean;->getDurationSeconds()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    int-to-long v0, v0

    .line 114
    const/4 v2, 0x7

    .line 115
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2}, Lcom/transsion/baselib/db/music/MusicLikedDbBean;->getSingerName()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    const/16 v1, 0x8

    .line 123
    .line 124
    if-nez v0, :cond_6

    .line 125
    .line 126
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 127
    .line 128
    .line 129
    goto :goto_6

    .line 130
    :cond_6
    invoke-virtual {p2}, Lcom/transsion/baselib/db/music/MusicLikedDbBean;->getSingerName()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 135
    .line 136
    .line 137
    :goto_6
    invoke-virtual {p2}, Lcom/transsion/baselib/db/music/MusicLikedDbBean;->getSingerAvatar()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    const/16 v1, 0x9

    .line 142
    .line 143
    if-nez v0, :cond_7

    .line 144
    .line 145
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 146
    .line 147
    .line 148
    goto :goto_7

    .line 149
    :cond_7
    invoke-virtual {p2}, Lcom/transsion/baselib/db/music/MusicLikedDbBean;->getSingerAvatar()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 154
    .line 155
    .line 156
    :goto_7
    invoke-virtual {p2}, Lcom/transsion/baselib/db/music/MusicLikedDbBean;->getPath()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    const/16 v1, 0xa

    .line 161
    .line 162
    if-nez v0, :cond_8

    .line 163
    .line 164
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 165
    .line 166
    .line 167
    goto :goto_8

    .line 168
    :cond_8
    invoke-virtual {p2}, Lcom/transsion/baselib/db/music/MusicLikedDbBean;->getPath()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 173
    .line 174
    .line 175
    :goto_8
    const/16 v0, 0xb

    .line 176
    .line 177
    invoke-virtual {p2}, Lcom/transsion/baselib/db/music/MusicLikedDbBean;->getTimeStamp()J

    .line 178
    .line 179
    .line 180
    move-result-wide v1

    .line 181
    invoke-interface {p1, v0, v1, v2}, Ly3/e;->c(IJ)V

    .line 182
    .line 183
    .line 184
    return-void
.end method
