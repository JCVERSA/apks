.class public final enum Lcom/transsion/member/constants/TaskType;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/member/constants/TaskType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0011\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/transsion/member/constants/TaskType;",
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
        "Member_psRelease"
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

.field private static final synthetic $VALUES:[Lcom/transsion/member/constants/TaskType;

.field public static final enum CHECK_IN:Lcom/transsion/member/constants/TaskType;

.field public static final enum DOWNLOAD_APP:Lcom/transsion/member/constants/TaskType;

.field public static final enum DOWNLOAD_MOVIE:Lcom/transsion/member/constants/TaskType;

.field public static final enum GAME_RES_APP_DOWNLOAD:Lcom/transsion/member/constants/TaskType;

.field public static final enum GAME_RES_BROWSE:Lcom/transsion/member/constants/TaskType;

.field public static final enum INVITE_USER:Lcom/transsion/member/constants/TaskType;

.field public static final enum OPEN_APP:Lcom/transsion/member/constants/TaskType;

.field public static final enum PALM_PAY:Lcom/transsion/member/constants/TaskType;

.field public static final enum PLAY_GAME:Lcom/transsion/member/constants/TaskType;

.field public static final enum TITLE:Lcom/transsion/member/constants/TaskType;

.field public static final enum WATCH:Lcom/transsion/member/constants/TaskType;

.field public static final enum WATCH_AD:Lcom/transsion/member/constants/TaskType;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/transsion/member/constants/TaskType;
    .locals 3

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    new-array v0, v0, [Lcom/transsion/member/constants/TaskType;

    .line 4
    .line 5
    sget-object v1, Lcom/transsion/member/constants/TaskType;->TITLE:Lcom/transsion/member/constants/TaskType;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    sget-object v1, Lcom/transsion/member/constants/TaskType;->WATCH_AD:Lcom/transsion/member/constants/TaskType;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v1, Lcom/transsion/member/constants/TaskType;->INVITE_USER:Lcom/transsion/member/constants/TaskType;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Lcom/transsion/member/constants/TaskType;->WATCH:Lcom/transsion/member/constants/TaskType;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Lcom/transsion/member/constants/TaskType;->DOWNLOAD_APP:Lcom/transsion/member/constants/TaskType;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sget-object v1, Lcom/transsion/member/constants/TaskType;->OPEN_APP:Lcom/transsion/member/constants/TaskType;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    sget-object v1, Lcom/transsion/member/constants/TaskType;->PLAY_GAME:Lcom/transsion/member/constants/TaskType;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v1, Lcom/transsion/member/constants/TaskType;->DOWNLOAD_MOVIE:Lcom/transsion/member/constants/TaskType;

    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    sget-object v1, Lcom/transsion/member/constants/TaskType;->CHECK_IN:Lcom/transsion/member/constants/TaskType;

    .line 46
    .line 47
    const/16 v2, 0x8

    .line 48
    .line 49
    aput-object v1, v0, v2

    .line 50
    .line 51
    sget-object v1, Lcom/transsion/member/constants/TaskType;->PALM_PAY:Lcom/transsion/member/constants/TaskType;

    .line 52
    .line 53
    const/16 v2, 0x9

    .line 54
    .line 55
    aput-object v1, v0, v2

    .line 56
    .line 57
    sget-object v1, Lcom/transsion/member/constants/TaskType;->GAME_RES_BROWSE:Lcom/transsion/member/constants/TaskType;

    .line 58
    .line 59
    const/16 v2, 0xa

    .line 60
    .line 61
    aput-object v1, v0, v2

    .line 62
    .line 63
    sget-object v1, Lcom/transsion/member/constants/TaskType;->GAME_RES_APP_DOWNLOAD:Lcom/transsion/member/constants/TaskType;

    .line 64
    .line 65
    const/16 v2, 0xb

    .line 66
    .line 67
    aput-object v1, v0, v2

    .line 68
    .line 69
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/transsion/member/constants/TaskType;

    .line 2
    .line 3
    const-string v1, "TITLE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/member/constants/TaskType;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/transsion/member/constants/TaskType;->TITLE:Lcom/transsion/member/constants/TaskType;

    .line 10
    .line 11
    new-instance v0, Lcom/transsion/member/constants/TaskType;

    .line 12
    .line 13
    const-string v1, "WATCH_AD"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/member/constants/TaskType;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/transsion/member/constants/TaskType;->WATCH_AD:Lcom/transsion/member/constants/TaskType;

    .line 20
    .line 21
    new-instance v0, Lcom/transsion/member/constants/TaskType;

    .line 22
    .line 23
    const-string v1, "INVITE_USER"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/member/constants/TaskType;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/transsion/member/constants/TaskType;->INVITE_USER:Lcom/transsion/member/constants/TaskType;

    .line 30
    .line 31
    new-instance v0, Lcom/transsion/member/constants/TaskType;

    .line 32
    .line 33
    const-string v1, "WATCH"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/member/constants/TaskType;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/transsion/member/constants/TaskType;->WATCH:Lcom/transsion/member/constants/TaskType;

    .line 40
    .line 41
    new-instance v0, Lcom/transsion/member/constants/TaskType;

    .line 42
    .line 43
    const-string v1, "DOWNLOAD_APP"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/member/constants/TaskType;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/transsion/member/constants/TaskType;->DOWNLOAD_APP:Lcom/transsion/member/constants/TaskType;

    .line 50
    .line 51
    new-instance v0, Lcom/transsion/member/constants/TaskType;

    .line 52
    .line 53
    const-string v1, "OPEN_APP"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/member/constants/TaskType;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/transsion/member/constants/TaskType;->OPEN_APP:Lcom/transsion/member/constants/TaskType;

    .line 60
    .line 61
    new-instance v0, Lcom/transsion/member/constants/TaskType;

    .line 62
    .line 63
    const-string v1, "PLAY_GAME"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/member/constants/TaskType;-><init>(Ljava/lang/String;II)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lcom/transsion/member/constants/TaskType;->PLAY_GAME:Lcom/transsion/member/constants/TaskType;

    .line 70
    .line 71
    new-instance v0, Lcom/transsion/member/constants/TaskType;

    .line 72
    .line 73
    const-string v1, "DOWNLOAD_MOVIE"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/member/constants/TaskType;-><init>(Ljava/lang/String;II)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lcom/transsion/member/constants/TaskType;->DOWNLOAD_MOVIE:Lcom/transsion/member/constants/TaskType;

    .line 80
    .line 81
    new-instance v0, Lcom/transsion/member/constants/TaskType;

    .line 82
    .line 83
    const-string v1, "CHECK_IN"

    .line 84
    .line 85
    const/16 v2, 0x8

    .line 86
    .line 87
    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/member/constants/TaskType;-><init>(Ljava/lang/String;II)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lcom/transsion/member/constants/TaskType;->CHECK_IN:Lcom/transsion/member/constants/TaskType;

    .line 91
    .line 92
    new-instance v0, Lcom/transsion/member/constants/TaskType;

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
    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/member/constants/TaskType;-><init>(Ljava/lang/String;II)V

    .line 101
    .line 102
    .line 103
    sput-object v0, Lcom/transsion/member/constants/TaskType;->PALM_PAY:Lcom/transsion/member/constants/TaskType;

    .line 104
    .line 105
    new-instance v0, Lcom/transsion/member/constants/TaskType;

    .line 106
    .line 107
    const-string v1, "GAME_RES_BROWSE"

    .line 108
    .line 109
    const/16 v2, 0xb

    .line 110
    .line 111
    invoke-direct {v0, v1, v3, v2}, Lcom/transsion/member/constants/TaskType;-><init>(Ljava/lang/String;II)V

    .line 112
    .line 113
    .line 114
    sput-object v0, Lcom/transsion/member/constants/TaskType;->GAME_RES_BROWSE:Lcom/transsion/member/constants/TaskType;

    .line 115
    .line 116
    new-instance v0, Lcom/transsion/member/constants/TaskType;

    .line 117
    .line 118
    const-string v1, "GAME_RES_APP_DOWNLOAD"

    .line 119
    .line 120
    const/16 v3, 0xc

    .line 121
    .line 122
    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/member/constants/TaskType;-><init>(Ljava/lang/String;II)V

    .line 123
    .line 124
    .line 125
    sput-object v0, Lcom/transsion/member/constants/TaskType;->GAME_RES_APP_DOWNLOAD:Lcom/transsion/member/constants/TaskType;

    .line 126
    .line 127
    invoke-static {}, Lcom/transsion/member/constants/TaskType;->$values()[Lcom/transsion/member/constants/TaskType;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    sput-object v0, Lcom/transsion/member/constants/TaskType;->$VALUES:[Lcom/transsion/member/constants/TaskType;

    .line 132
    .line 133
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    sput-object v0, Lcom/transsion/member/constants/TaskType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 138
    .line 139
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
    iput p3, p0, Lcom/transsion/member/constants/TaskType;->value:I

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
            "Lcom/transsion/member/constants/TaskType;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/member/constants/TaskType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/member/constants/TaskType;
    .locals 1

    .line 1
    const-class v0, Lcom/transsion/member/constants/TaskType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/transsion/member/constants/TaskType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/transsion/member/constants/TaskType;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/member/constants/TaskType;->$VALUES:[Lcom/transsion/member/constants/TaskType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/transsion/member/constants/TaskType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/member/constants/TaskType;->value:I

    .line 2
    .line 3
    return v0
.end method
