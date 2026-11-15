.class public final enum Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

.field public static final enum LOADING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

.field public static final enum LOAD_FINISH:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

.field public static final enum LOAD_RELEASED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

.field public static final enum NONE:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

.field public static final enum PULL_DOWN_CANCELED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

.field public static final enum PULL_DOWN_TO_REFRESH:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

.field public static final enum PULL_UP_CANCELED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

.field public static final enum PULL_UP_TO_LOAD:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

.field public static final enum REFRESHING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

.field public static final enum REFRESH_FINISH:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

.field public static final enum REFRESH_RELEASED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

.field public static final enum RELEASE_TO_LOAD:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

.field public static final enum RELEASE_TO_REFRESH:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

.field public static final enum RELEASE_TO_TWO_LEVEL:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

.field public static final enum TWO_LEVEL_RELEASED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

.field public static final enum TwoLevel:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

.field public static final enum TwoLevelFinish:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;


# instance fields
.field public final isDragging:Z

.field public final isFinishing:Z

.field public final isFooter:Z

.field public final isHeader:Z

.field public final isOpening:Z

.field public final isReleaseToOpening:Z

.field public final isTwoLevel:Z


# direct methods
.method private static synthetic $values()[Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;
    .locals 3

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    new-array v0, v0, [Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 4
    .line 5
    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->NONE:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_DOWN_TO_REFRESH:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_UP_TO_LOAD:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_DOWN_CANCELED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_UP_CANCELED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->RELEASE_TO_REFRESH:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->RELEASE_TO_LOAD:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->RELEASE_TO_TWO_LEVEL:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->TWO_LEVEL_RELEASED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 46
    .line 47
    const/16 v2, 0x8

    .line 48
    .line 49
    aput-object v1, v0, v2

    .line 50
    .line 51
    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESH_RELEASED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 52
    .line 53
    const/16 v2, 0x9

    .line 54
    .line 55
    aput-object v1, v0, v2

    .line 56
    .line 57
    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->LOAD_RELEASED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 58
    .line 59
    const/16 v2, 0xa

    .line 60
    .line 61
    aput-object v1, v0, v2

    .line 62
    .line 63
    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESHING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 64
    .line 65
    const/16 v2, 0xb

    .line 66
    .line 67
    aput-object v1, v0, v2

    .line 68
    .line 69
    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->LOADING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 70
    .line 71
    const/16 v2, 0xc

    .line 72
    .line 73
    aput-object v1, v0, v2

    .line 74
    .line 75
    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->TwoLevel:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 76
    .line 77
    const/16 v2, 0xd

    .line 78
    .line 79
    aput-object v1, v0, v2

    .line 80
    .line 81
    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESH_FINISH:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 82
    .line 83
    const/16 v2, 0xe

    .line 84
    .line 85
    aput-object v1, v0, v2

    .line 86
    .line 87
    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->LOAD_FINISH:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 88
    .line 89
    const/16 v2, 0xf

    .line 90
    .line 91
    aput-object v1, v0, v2

    .line 92
    .line 93
    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->TwoLevelFinish:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 94
    .line 95
    const/16 v2, 0x10

    .line 96
    .line 97
    aput-object v1, v0, v2

    .line 98
    .line 99
    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v9, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 2
    .line 3
    const/4 v7, 0x0

    .line 4
    const/4 v8, 0x0

    .line 5
    const-string v1, "NONE"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    move-object v0, v9

    .line 13
    invoke-direct/range {v0 .. v8}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;-><init>(Ljava/lang/String;IIZZZZZ)V

    .line 14
    .line 15
    .line 16
    sput-object v9, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->NONE:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 17
    .line 18
    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 19
    .line 20
    const/16 v17, 0x0

    .line 21
    .line 22
    const/16 v18, 0x0

    .line 23
    .line 24
    const-string v11, "PULL_DOWN_TO_REFRESH"

    .line 25
    .line 26
    const/4 v12, 0x1

    .line 27
    const/4 v13, 0x1

    .line 28
    const/4 v14, 0x1

    .line 29
    const/4 v15, 0x0

    .line 30
    const/16 v16, 0x0

    .line 31
    .line 32
    move-object v10, v0

    .line 33
    invoke-direct/range {v10 .. v18}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;-><init>(Ljava/lang/String;IIZZZZZ)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_DOWN_TO_REFRESH:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 37
    .line 38
    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 39
    .line 40
    const/4 v9, 0x0

    .line 41
    const-string v2, "PULL_UP_TO_LOAD"

    .line 42
    .line 43
    const/4 v3, 0x2

    .line 44
    const/4 v4, 0x2

    .line 45
    const/4 v5, 0x1

    .line 46
    move-object v1, v0

    .line 47
    invoke-direct/range {v1 .. v9}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;-><init>(Ljava/lang/String;IIZZZZZ)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_UP_TO_LOAD:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 51
    .line 52
    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 53
    .line 54
    const-string v11, "PULL_DOWN_CANCELED"

    .line 55
    .line 56
    const/4 v12, 0x3

    .line 57
    const/4 v14, 0x0

    .line 58
    move-object v10, v0

    .line 59
    invoke-direct/range {v10 .. v18}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;-><init>(Ljava/lang/String;IIZZZZZ)V

    .line 60
    .line 61
    .line 62
    sput-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_DOWN_CANCELED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 63
    .line 64
    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 65
    .line 66
    const-string v2, "PULL_UP_CANCELED"

    .line 67
    .line 68
    const/4 v3, 0x4

    .line 69
    const/4 v5, 0x0

    .line 70
    move-object v1, v0

    .line 71
    invoke-direct/range {v1 .. v9}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;-><init>(Ljava/lang/String;IIZZZZZ)V

    .line 72
    .line 73
    .line 74
    sput-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_UP_CANCELED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 75
    .line 76
    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 77
    .line 78
    const/16 v18, 0x1

    .line 79
    .line 80
    const-string v11, "RELEASE_TO_REFRESH"

    .line 81
    .line 82
    const/4 v12, 0x5

    .line 83
    const/4 v14, 0x1

    .line 84
    move-object v10, v0

    .line 85
    invoke-direct/range {v10 .. v18}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;-><init>(Ljava/lang/String;IIZZZZZ)V

    .line 86
    .line 87
    .line 88
    sput-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->RELEASE_TO_REFRESH:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 89
    .line 90
    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 91
    .line 92
    const/4 v9, 0x1

    .line 93
    const-string v2, "RELEASE_TO_LOAD"

    .line 94
    .line 95
    const/4 v3, 0x6

    .line 96
    const/4 v5, 0x1

    .line 97
    move-object v1, v0

    .line 98
    invoke-direct/range {v1 .. v9}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;-><init>(Ljava/lang/String;IIZZZZZ)V

    .line 99
    .line 100
    .line 101
    sput-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->RELEASE_TO_LOAD:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 102
    .line 103
    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 104
    .line 105
    const/16 v17, 0x1

    .line 106
    .line 107
    const-string v11, "RELEASE_TO_TWO_LEVEL"

    .line 108
    .line 109
    const/4 v12, 0x7

    .line 110
    move-object v10, v0

    .line 111
    invoke-direct/range {v10 .. v18}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;-><init>(Ljava/lang/String;IIZZZZZ)V

    .line 112
    .line 113
    .line 114
    sput-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->RELEASE_TO_TWO_LEVEL:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 115
    .line 116
    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 117
    .line 118
    const/4 v8, 0x1

    .line 119
    const/4 v9, 0x0

    .line 120
    const-string v2, "TWO_LEVEL_RELEASED"

    .line 121
    .line 122
    const/16 v3, 0x8

    .line 123
    .line 124
    const/4 v4, 0x1

    .line 125
    const/4 v5, 0x0

    .line 126
    move-object v1, v0

    .line 127
    invoke-direct/range {v1 .. v9}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;-><init>(Ljava/lang/String;IIZZZZZ)V

    .line 128
    .line 129
    .line 130
    sput-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->TWO_LEVEL_RELEASED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 131
    .line 132
    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 133
    .line 134
    const/16 v17, 0x0

    .line 135
    .line 136
    const/16 v18, 0x0

    .line 137
    .line 138
    const-string v11, "REFRESH_RELEASED"

    .line 139
    .line 140
    const/16 v12, 0x9

    .line 141
    .line 142
    const/4 v14, 0x0

    .line 143
    move-object v10, v0

    .line 144
    invoke-direct/range {v10 .. v18}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;-><init>(Ljava/lang/String;IIZZZZZ)V

    .line 145
    .line 146
    .line 147
    sput-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESH_RELEASED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 148
    .line 149
    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 150
    .line 151
    const/4 v8, 0x0

    .line 152
    const-string v2, "LOAD_RELEASED"

    .line 153
    .line 154
    const/16 v3, 0xa

    .line 155
    .line 156
    const/4 v4, 0x2

    .line 157
    move-object v1, v0

    .line 158
    invoke-direct/range {v1 .. v9}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;-><init>(Ljava/lang/String;IIZZZZZ)V

    .line 159
    .line 160
    .line 161
    sput-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->LOAD_RELEASED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 162
    .line 163
    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 164
    .line 165
    const-string v11, "REFRESHING"

    .line 166
    .line 167
    const/16 v12, 0xb

    .line 168
    .line 169
    const/4 v15, 0x1

    .line 170
    move-object v10, v0

    .line 171
    invoke-direct/range {v10 .. v18}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;-><init>(Ljava/lang/String;IIZZZZZ)V

    .line 172
    .line 173
    .line 174
    sput-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESHING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 175
    .line 176
    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 177
    .line 178
    const-string v2, "LOADING"

    .line 179
    .line 180
    const/16 v3, 0xc

    .line 181
    .line 182
    const/4 v6, 0x1

    .line 183
    move-object v1, v0

    .line 184
    invoke-direct/range {v1 .. v9}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;-><init>(Ljava/lang/String;IIZZZZZ)V

    .line 185
    .line 186
    .line 187
    sput-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->LOADING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 188
    .line 189
    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 190
    .line 191
    const/16 v17, 0x1

    .line 192
    .line 193
    const-string v11, "TwoLevel"

    .line 194
    .line 195
    const/16 v12, 0xd

    .line 196
    .line 197
    move-object v10, v0

    .line 198
    invoke-direct/range {v10 .. v18}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;-><init>(Ljava/lang/String;IIZZZZZ)V

    .line 199
    .line 200
    .line 201
    sput-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->TwoLevel:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 202
    .line 203
    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 204
    .line 205
    const-string v2, "REFRESH_FINISH"

    .line 206
    .line 207
    const/16 v3, 0xe

    .line 208
    .line 209
    const/4 v4, 0x1

    .line 210
    const/4 v6, 0x0

    .line 211
    const/4 v7, 0x1

    .line 212
    move-object v1, v0

    .line 213
    invoke-direct/range {v1 .. v9}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;-><init>(Ljava/lang/String;IIZZZZZ)V

    .line 214
    .line 215
    .line 216
    sput-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESH_FINISH:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 217
    .line 218
    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 219
    .line 220
    const/16 v17, 0x0

    .line 221
    .line 222
    const-string v11, "LOAD_FINISH"

    .line 223
    .line 224
    const/16 v12, 0xf

    .line 225
    .line 226
    const/4 v13, 0x2

    .line 227
    const/4 v15, 0x0

    .line 228
    const/16 v16, 0x1

    .line 229
    .line 230
    move-object v10, v0

    .line 231
    invoke-direct/range {v10 .. v18}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;-><init>(Ljava/lang/String;IIZZZZZ)V

    .line 232
    .line 233
    .line 234
    sput-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->LOAD_FINISH:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 235
    .line 236
    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 237
    .line 238
    const/4 v8, 0x1

    .line 239
    const-string v2, "TwoLevelFinish"

    .line 240
    .line 241
    const/16 v3, 0x10

    .line 242
    .line 243
    move-object v1, v0

    .line 244
    invoke-direct/range {v1 .. v9}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;-><init>(Ljava/lang/String;IIZZZZZ)V

    .line 245
    .line 246
    .line 247
    sput-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->TwoLevelFinish:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 248
    .line 249
    invoke-static {}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->$values()[Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    sput-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->$VALUES:[Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 254
    .line 255
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZZZZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZZZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    const/4 p2, 0x1

    .line 6
    if-ne p3, p2, :cond_0

    .line 7
    .line 8
    move v0, p2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, p1

    .line 11
    :goto_0
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isHeader:Z

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    if-ne p3, v0, :cond_1

    .line 15
    .line 16
    move p1, p2

    .line 17
    :cond_1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isFooter:Z

    .line 18
    .line 19
    iput-boolean p4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isDragging:Z

    .line 20
    .line 21
    iput-boolean p5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isOpening:Z

    .line 22
    .line 23
    iput-boolean p6, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isFinishing:Z

    .line 24
    .line 25
    iput-boolean p7, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isTwoLevel:Z

    .line 26
    .line 27
    iput-boolean p8, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isReleaseToOpening:Z

    .line 28
    .line 29
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;
    .locals 1

    .line 1
    const-class v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->$VALUES:[Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public toFooter()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isHeader:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isTwoLevel:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->values()[Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    aget-object v0, v0, v1

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_0
    return-object p0
.end method

.method public toHeader()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isFooter:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isTwoLevel:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->values()[Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/lit8 v1, v1, -0x1

    .line 18
    .line 19
    aget-object v0, v0, v1

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_0
    return-object p0
.end method
