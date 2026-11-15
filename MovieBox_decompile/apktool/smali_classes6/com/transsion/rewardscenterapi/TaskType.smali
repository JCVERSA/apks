.class public final enum Lcom/transsion/rewardscenterapi/TaskType;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/rewardscenterapi/TaskType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0018\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001a\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/transsion/rewardscenterapi/TaskType;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "TITLE",
        "WATCH_AD",
        "INVITE_USER",
        "WATCH",
        "DOWNLOAD_APP",
        "OPEN_APP",
        "PLAY_GAME",
        "DOWNLOAD_MOVIE",
        "CHECK_IN",
        "PALM_PAY",
        "GAME_RES_BROWSE",
        "GAME_RES_APP_DOWNLOAD",
        "AD_STAGE_1ST",
        "AD_STAGE_2ND",
        "AD_REGULAR_PULL_NEW",
        "AD_REWARD",
        "AD_REGULAR_PULL_LIVE",
        "DADA_STAGE_1ST",
        "DADA_STAGE_2ND",
        "RewardsCenterApi_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/transsion/rewardscenterapi/TaskType;

.field public static final enum AD_REGULAR_PULL_LIVE:Lcom/transsion/rewardscenterapi/TaskType;

.field public static final enum AD_REGULAR_PULL_NEW:Lcom/transsion/rewardscenterapi/TaskType;

.field public static final enum AD_REWARD:Lcom/transsion/rewardscenterapi/TaskType;

.field public static final enum AD_STAGE_1ST:Lcom/transsion/rewardscenterapi/TaskType;

.field public static final enum AD_STAGE_2ND:Lcom/transsion/rewardscenterapi/TaskType;

.field public static final enum CHECK_IN:Lcom/transsion/rewardscenterapi/TaskType;

.field public static final enum DADA_STAGE_1ST:Lcom/transsion/rewardscenterapi/TaskType;

.field public static final enum DADA_STAGE_2ND:Lcom/transsion/rewardscenterapi/TaskType;

.field public static final enum DOWNLOAD_APP:Lcom/transsion/rewardscenterapi/TaskType;

.field public static final enum DOWNLOAD_MOVIE:Lcom/transsion/rewardscenterapi/TaskType;

.field public static final enum GAME_RES_APP_DOWNLOAD:Lcom/transsion/rewardscenterapi/TaskType;

.field public static final enum GAME_RES_BROWSE:Lcom/transsion/rewardscenterapi/TaskType;

.field public static final enum INVITE_USER:Lcom/transsion/rewardscenterapi/TaskType;

.field public static final enum OPEN_APP:Lcom/transsion/rewardscenterapi/TaskType;

.field public static final enum PALM_PAY:Lcom/transsion/rewardscenterapi/TaskType;

.field public static final enum PLAY_GAME:Lcom/transsion/rewardscenterapi/TaskType;

.field public static final enum TITLE:Lcom/transsion/rewardscenterapi/TaskType;

.field public static final enum WATCH:Lcom/transsion/rewardscenterapi/TaskType;

.field public static final enum WATCH_AD:Lcom/transsion/rewardscenterapi/TaskType;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/transsion/rewardscenterapi/TaskType;
    .locals 3

    .line 1
    const/16 v0, 0x13

    .line 2
    .line 3
    new-array v0, v0, [Lcom/transsion/rewardscenterapi/TaskType;

    .line 4
    .line 5
    sget-object v1, Lcom/transsion/rewardscenterapi/TaskType;->TITLE:Lcom/transsion/rewardscenterapi/TaskType;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    sget-object v1, Lcom/transsion/rewardscenterapi/TaskType;->WATCH_AD:Lcom/transsion/rewardscenterapi/TaskType;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v1, Lcom/transsion/rewardscenterapi/TaskType;->INVITE_USER:Lcom/transsion/rewardscenterapi/TaskType;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Lcom/transsion/rewardscenterapi/TaskType;->WATCH:Lcom/transsion/rewardscenterapi/TaskType;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Lcom/transsion/rewardscenterapi/TaskType;->DOWNLOAD_APP:Lcom/transsion/rewardscenterapi/TaskType;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sget-object v1, Lcom/transsion/rewardscenterapi/TaskType;->OPEN_APP:Lcom/transsion/rewardscenterapi/TaskType;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    sget-object v1, Lcom/transsion/rewardscenterapi/TaskType;->PLAY_GAME:Lcom/transsion/rewardscenterapi/TaskType;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v1, Lcom/transsion/rewardscenterapi/TaskType;->DOWNLOAD_MOVIE:Lcom/transsion/rewardscenterapi/TaskType;

    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    sget-object v1, Lcom/transsion/rewardscenterapi/TaskType;->CHECK_IN:Lcom/transsion/rewardscenterapi/TaskType;

    .line 46
    .line 47
    const/16 v2, 0x8

    .line 48
    .line 49
    aput-object v1, v0, v2

    .line 50
    .line 51
    sget-object v1, Lcom/transsion/rewardscenterapi/TaskType;->PALM_PAY:Lcom/transsion/rewardscenterapi/TaskType;

    .line 52
    .line 53
    const/16 v2, 0x9

    .line 54
    .line 55
    aput-object v1, v0, v2

    .line 56
    .line 57
    sget-object v1, Lcom/transsion/rewardscenterapi/TaskType;->GAME_RES_BROWSE:Lcom/transsion/rewardscenterapi/TaskType;

    .line 58
    .line 59
    const/16 v2, 0xa

    .line 60
    .line 61
    aput-object v1, v0, v2

    .line 62
    .line 63
    sget-object v1, Lcom/transsion/rewardscenterapi/TaskType;->GAME_RES_APP_DOWNLOAD:Lcom/transsion/rewardscenterapi/TaskType;

    .line 64
    .line 65
    const/16 v2, 0xb

    .line 66
    .line 67
    aput-object v1, v0, v2

    .line 68
    .line 69
    sget-object v1, Lcom/transsion/rewardscenterapi/TaskType;->AD_STAGE_1ST:Lcom/transsion/rewardscenterapi/TaskType;

    .line 70
    .line 71
    const/16 v2, 0xc

    .line 72
    .line 73
    aput-object v1, v0, v2

    .line 74
    .line 75
    sget-object v1, Lcom/transsion/rewardscenterapi/TaskType;->AD_STAGE_2ND:Lcom/transsion/rewardscenterapi/TaskType;

    .line 76
    .line 77
    const/16 v2, 0xd

    .line 78
    .line 79
    aput-object v1, v0, v2

    .line 80
    .line 81
    sget-object v1, Lcom/transsion/rewardscenterapi/TaskType;->AD_REGULAR_PULL_NEW:Lcom/transsion/rewardscenterapi/TaskType;

    .line 82
    .line 83
    const/16 v2, 0xe

    .line 84
    .line 85
    aput-object v1, v0, v2

    .line 86
    .line 87
    sget-object v1, Lcom/transsion/rewardscenterapi/TaskType;->AD_REWARD:Lcom/transsion/rewardscenterapi/TaskType;

    .line 88
    .line 89
    const/16 v2, 0xf

    .line 90
    .line 91
    aput-object v1, v0, v2

    .line 92
    .line 93
    sget-object v1, Lcom/transsion/rewardscenterapi/TaskType;->AD_REGULAR_PULL_LIVE:Lcom/transsion/rewardscenterapi/TaskType;

    .line 94
    .line 95
    const/16 v2, 0x10

    .line 96
    .line 97
    aput-object v1, v0, v2

    .line 98
    .line 99
    sget-object v1, Lcom/transsion/rewardscenterapi/TaskType;->DADA_STAGE_1ST:Lcom/transsion/rewardscenterapi/TaskType;

    .line 100
    .line 101
    const/16 v2, 0x11

    .line 102
    .line 103
    aput-object v1, v0, v2

    .line 104
    .line 105
    sget-object v1, Lcom/transsion/rewardscenterapi/TaskType;->DADA_STAGE_2ND:Lcom/transsion/rewardscenterapi/TaskType;

    .line 106
    .line 107
    const/16 v2, 0x12

    .line 108
    .line 109
    aput-object v1, v0, v2

    .line 110
    .line 111
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/transsion/rewardscenterapi/TaskType;

    .line 2
    .line 3
    const-string v1, "TITLE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/rewardscenterapi/TaskType;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/transsion/rewardscenterapi/TaskType;->TITLE:Lcom/transsion/rewardscenterapi/TaskType;

    .line 10
    .line 11
    new-instance v0, Lcom/transsion/rewardscenterapi/TaskType;

    .line 12
    .line 13
    const-string v1, "WATCH_AD"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/rewardscenterapi/TaskType;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/transsion/rewardscenterapi/TaskType;->WATCH_AD:Lcom/transsion/rewardscenterapi/TaskType;

    .line 20
    .line 21
    new-instance v0, Lcom/transsion/rewardscenterapi/TaskType;

    .line 22
    .line 23
    const-string v1, "INVITE_USER"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/rewardscenterapi/TaskType;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/transsion/rewardscenterapi/TaskType;->INVITE_USER:Lcom/transsion/rewardscenterapi/TaskType;

    .line 30
    .line 31
    new-instance v0, Lcom/transsion/rewardscenterapi/TaskType;

    .line 32
    .line 33
    const-string v1, "WATCH"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/rewardscenterapi/TaskType;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/transsion/rewardscenterapi/TaskType;->WATCH:Lcom/transsion/rewardscenterapi/TaskType;

    .line 40
    .line 41
    new-instance v0, Lcom/transsion/rewardscenterapi/TaskType;

    .line 42
    .line 43
    const-string v1, "DOWNLOAD_APP"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/rewardscenterapi/TaskType;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/transsion/rewardscenterapi/TaskType;->DOWNLOAD_APP:Lcom/transsion/rewardscenterapi/TaskType;

    .line 50
    .line 51
    new-instance v0, Lcom/transsion/rewardscenterapi/TaskType;

    .line 52
    .line 53
    const-string v1, "OPEN_APP"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/rewardscenterapi/TaskType;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/transsion/rewardscenterapi/TaskType;->OPEN_APP:Lcom/transsion/rewardscenterapi/TaskType;

    .line 60
    .line 61
    new-instance v0, Lcom/transsion/rewardscenterapi/TaskType;

    .line 62
    .line 63
    const-string v1, "PLAY_GAME"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/rewardscenterapi/TaskType;-><init>(Ljava/lang/String;II)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lcom/transsion/rewardscenterapi/TaskType;->PLAY_GAME:Lcom/transsion/rewardscenterapi/TaskType;

    .line 70
    .line 71
    new-instance v0, Lcom/transsion/rewardscenterapi/TaskType;

    .line 72
    .line 73
    const-string v1, "DOWNLOAD_MOVIE"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/rewardscenterapi/TaskType;-><init>(Ljava/lang/String;II)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lcom/transsion/rewardscenterapi/TaskType;->DOWNLOAD_MOVIE:Lcom/transsion/rewardscenterapi/TaskType;

    .line 80
    .line 81
    new-instance v0, Lcom/transsion/rewardscenterapi/TaskType;

    .line 82
    .line 83
    const-string v1, "CHECK_IN"

    .line 84
    .line 85
    const/16 v2, 0x8

    .line 86
    .line 87
    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/rewardscenterapi/TaskType;-><init>(Ljava/lang/String;II)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lcom/transsion/rewardscenterapi/TaskType;->CHECK_IN:Lcom/transsion/rewardscenterapi/TaskType;

    .line 91
    .line 92
    new-instance v0, Lcom/transsion/rewardscenterapi/TaskType;

    .line 93
    .line 94
    const-string v1, "PALM_PAY"

    .line 95
    .line 96
    const/16 v2, 0x9

    .line 97
    .line 98
    const/16 v3, 0xa

    .line 99
    .line 100
    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/rewardscenterapi/TaskType;-><init>(Ljava/lang/String;II)V

    .line 101
    .line 102
    .line 103
    sput-object v0, Lcom/transsion/rewardscenterapi/TaskType;->PALM_PAY:Lcom/transsion/rewardscenterapi/TaskType;

    .line 104
    .line 105
    new-instance v0, Lcom/transsion/rewardscenterapi/TaskType;

    .line 106
    .line 107
    const-string v1, "GAME_RES_BROWSE"

    .line 108
    .line 109
    const/16 v2, 0xb

    .line 110
    .line 111
    invoke-direct {v0, v1, v3, v2}, Lcom/transsion/rewardscenterapi/TaskType;-><init>(Ljava/lang/String;II)V

    .line 112
    .line 113
    .line 114
    sput-object v0, Lcom/transsion/rewardscenterapi/TaskType;->GAME_RES_BROWSE:Lcom/transsion/rewardscenterapi/TaskType;

    .line 115
    .line 116
    new-instance v0, Lcom/transsion/rewardscenterapi/TaskType;

    .line 117
    .line 118
    const-string v1, "GAME_RES_APP_DOWNLOAD"

    .line 119
    .line 120
    const/16 v3, 0xc

    .line 121
    .line 122
    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/rewardscenterapi/TaskType;-><init>(Ljava/lang/String;II)V

    .line 123
    .line 124
    .line 125
    sput-object v0, Lcom/transsion/rewardscenterapi/TaskType;->GAME_RES_APP_DOWNLOAD:Lcom/transsion/rewardscenterapi/TaskType;

    .line 126
    .line 127
    new-instance v0, Lcom/transsion/rewardscenterapi/TaskType;

    .line 128
    .line 129
    const-string v1, "AD_STAGE_1ST"

    .line 130
    .line 131
    const/16 v2, 0xe

    .line 132
    .line 133
    invoke-direct {v0, v1, v3, v2}, Lcom/transsion/rewardscenterapi/TaskType;-><init>(Ljava/lang/String;II)V

    .line 134
    .line 135
    .line 136
    sput-object v0, Lcom/transsion/rewardscenterapi/TaskType;->AD_STAGE_1ST:Lcom/transsion/rewardscenterapi/TaskType;

    .line 137
    .line 138
    new-instance v0, Lcom/transsion/rewardscenterapi/TaskType;

    .line 139
    .line 140
    const-string v1, "AD_STAGE_2ND"

    .line 141
    .line 142
    const/16 v3, 0xd

    .line 143
    .line 144
    const/16 v4, 0xf

    .line 145
    .line 146
    invoke-direct {v0, v1, v3, v4}, Lcom/transsion/rewardscenterapi/TaskType;-><init>(Ljava/lang/String;II)V

    .line 147
    .line 148
    .line 149
    sput-object v0, Lcom/transsion/rewardscenterapi/TaskType;->AD_STAGE_2ND:Lcom/transsion/rewardscenterapi/TaskType;

    .line 150
    .line 151
    new-instance v0, Lcom/transsion/rewardscenterapi/TaskType;

    .line 152
    .line 153
    const-string v1, "AD_REGULAR_PULL_NEW"

    .line 154
    .line 155
    const/16 v3, 0x10

    .line 156
    .line 157
    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/rewardscenterapi/TaskType;-><init>(Ljava/lang/String;II)V

    .line 158
    .line 159
    .line 160
    sput-object v0, Lcom/transsion/rewardscenterapi/TaskType;->AD_REGULAR_PULL_NEW:Lcom/transsion/rewardscenterapi/TaskType;

    .line 161
    .line 162
    new-instance v0, Lcom/transsion/rewardscenterapi/TaskType;

    .line 163
    .line 164
    const-string v1, "AD_REWARD"

    .line 165
    .line 166
    const/16 v2, 0x11

    .line 167
    .line 168
    invoke-direct {v0, v1, v4, v2}, Lcom/transsion/rewardscenterapi/TaskType;-><init>(Ljava/lang/String;II)V

    .line 169
    .line 170
    .line 171
    sput-object v0, Lcom/transsion/rewardscenterapi/TaskType;->AD_REWARD:Lcom/transsion/rewardscenterapi/TaskType;

    .line 172
    .line 173
    new-instance v0, Lcom/transsion/rewardscenterapi/TaskType;

    .line 174
    .line 175
    const-string v1, "AD_REGULAR_PULL_LIVE"

    .line 176
    .line 177
    const/16 v4, 0x12

    .line 178
    .line 179
    invoke-direct {v0, v1, v3, v4}, Lcom/transsion/rewardscenterapi/TaskType;-><init>(Ljava/lang/String;II)V

    .line 180
    .line 181
    .line 182
    sput-object v0, Lcom/transsion/rewardscenterapi/TaskType;->AD_REGULAR_PULL_LIVE:Lcom/transsion/rewardscenterapi/TaskType;

    .line 183
    .line 184
    new-instance v0, Lcom/transsion/rewardscenterapi/TaskType;

    .line 185
    .line 186
    const-string v1, "DADA_STAGE_1ST"

    .line 187
    .line 188
    const/16 v3, 0x14

    .line 189
    .line 190
    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/rewardscenterapi/TaskType;-><init>(Ljava/lang/String;II)V

    .line 191
    .line 192
    .line 193
    sput-object v0, Lcom/transsion/rewardscenterapi/TaskType;->DADA_STAGE_1ST:Lcom/transsion/rewardscenterapi/TaskType;

    .line 194
    .line 195
    new-instance v0, Lcom/transsion/rewardscenterapi/TaskType;

    .line 196
    .line 197
    const-string v1, "DADA_STAGE_2ND"

    .line 198
    .line 199
    const/16 v2, 0x15

    .line 200
    .line 201
    invoke-direct {v0, v1, v4, v2}, Lcom/transsion/rewardscenterapi/TaskType;-><init>(Ljava/lang/String;II)V

    .line 202
    .line 203
    .line 204
    sput-object v0, Lcom/transsion/rewardscenterapi/TaskType;->DADA_STAGE_2ND:Lcom/transsion/rewardscenterapi/TaskType;

    .line 205
    .line 206
    invoke-static {}, Lcom/transsion/rewardscenterapi/TaskType;->$values()[Lcom/transsion/rewardscenterapi/TaskType;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    sput-object v0, Lcom/transsion/rewardscenterapi/TaskType;->$VALUES:[Lcom/transsion/rewardscenterapi/TaskType;

    .line 211
    .line 212
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    sput-object v0, Lcom/transsion/rewardscenterapi/TaskType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 217
    .line 218
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/transsion/rewardscenterapi/TaskType;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/transsion/rewardscenterapi/TaskType;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/rewardscenterapi/TaskType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/rewardscenterapi/TaskType;
    .locals 1

    .line 1
    const-class v0, Lcom/transsion/rewardscenterapi/TaskType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/transsion/rewardscenterapi/TaskType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/transsion/rewardscenterapi/TaskType;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/rewardscenterapi/TaskType;->$VALUES:[Lcom/transsion/rewardscenterapi/TaskType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/transsion/rewardscenterapi/TaskType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/rewardscenterapi/TaskType;->value:I

    .line 2
    .line 3
    return v0
.end method
