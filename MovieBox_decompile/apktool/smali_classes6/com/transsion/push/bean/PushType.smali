.class public final enum Lcom/transsion/push/bean/PushType;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/push/bean/PushType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0012\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/transsion/push/bean/PushType;",
        "",
        "type",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getType",
        "()Ljava/lang/String;",
        "LOCAL_PUSH",
        "LIKE_POST",
        "LIKE_COMMENT",
        "PERMANENT",
        "COMMENT",
        "JOIN_ROOM",
        "ROOM_POST",
        "CUSTOMIZE",
        "ROOM_TOP",
        "ROOM_PUSH",
        "T_PUSH",
        "SUBJECT_SEEKING",
        "PERMANENT_PUSH",
        "push_psRelease"
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

.field private static final synthetic $VALUES:[Lcom/transsion/push/bean/PushType;

.field public static final enum COMMENT:Lcom/transsion/push/bean/PushType;

.field public static final enum CUSTOMIZE:Lcom/transsion/push/bean/PushType;

.field public static final enum JOIN_ROOM:Lcom/transsion/push/bean/PushType;

.field public static final enum LIKE_COMMENT:Lcom/transsion/push/bean/PushType;

.field public static final enum LIKE_POST:Lcom/transsion/push/bean/PushType;

.field public static final enum LOCAL_PUSH:Lcom/transsion/push/bean/PushType;

.field public static final enum PERMANENT:Lcom/transsion/push/bean/PushType;

.field public static final enum PERMANENT_PUSH:Lcom/transsion/push/bean/PushType;

.field public static final enum ROOM_POST:Lcom/transsion/push/bean/PushType;

.field public static final enum ROOM_PUSH:Lcom/transsion/push/bean/PushType;

.field public static final enum ROOM_TOP:Lcom/transsion/push/bean/PushType;

.field public static final enum SUBJECT_SEEKING:Lcom/transsion/push/bean/PushType;

.field public static final enum T_PUSH:Lcom/transsion/push/bean/PushType;


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/transsion/push/bean/PushType;
    .locals 3

    .line 1
    const/16 v0, 0xd

    .line 2
    .line 3
    new-array v0, v0, [Lcom/transsion/push/bean/PushType;

    .line 4
    .line 5
    sget-object v1, Lcom/transsion/push/bean/PushType;->LOCAL_PUSH:Lcom/transsion/push/bean/PushType;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    sget-object v1, Lcom/transsion/push/bean/PushType;->LIKE_POST:Lcom/transsion/push/bean/PushType;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v1, Lcom/transsion/push/bean/PushType;->LIKE_COMMENT:Lcom/transsion/push/bean/PushType;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Lcom/transsion/push/bean/PushType;->PERMANENT:Lcom/transsion/push/bean/PushType;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Lcom/transsion/push/bean/PushType;->COMMENT:Lcom/transsion/push/bean/PushType;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sget-object v1, Lcom/transsion/push/bean/PushType;->JOIN_ROOM:Lcom/transsion/push/bean/PushType;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    sget-object v1, Lcom/transsion/push/bean/PushType;->ROOM_POST:Lcom/transsion/push/bean/PushType;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v1, Lcom/transsion/push/bean/PushType;->CUSTOMIZE:Lcom/transsion/push/bean/PushType;

    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    sget-object v1, Lcom/transsion/push/bean/PushType;->ROOM_TOP:Lcom/transsion/push/bean/PushType;

    .line 46
    .line 47
    const/16 v2, 0x8

    .line 48
    .line 49
    aput-object v1, v0, v2

    .line 50
    .line 51
    sget-object v1, Lcom/transsion/push/bean/PushType;->ROOM_PUSH:Lcom/transsion/push/bean/PushType;

    .line 52
    .line 53
    const/16 v2, 0x9

    .line 54
    .line 55
    aput-object v1, v0, v2

    .line 56
    .line 57
    sget-object v1, Lcom/transsion/push/bean/PushType;->T_PUSH:Lcom/transsion/push/bean/PushType;

    .line 58
    .line 59
    const/16 v2, 0xa

    .line 60
    .line 61
    aput-object v1, v0, v2

    .line 62
    .line 63
    sget-object v1, Lcom/transsion/push/bean/PushType;->SUBJECT_SEEKING:Lcom/transsion/push/bean/PushType;

    .line 64
    .line 65
    const/16 v2, 0xb

    .line 66
    .line 67
    aput-object v1, v0, v2

    .line 68
    .line 69
    sget-object v1, Lcom/transsion/push/bean/PushType;->PERMANENT_PUSH:Lcom/transsion/push/bean/PushType;

    .line 70
    .line 71
    const/16 v2, 0xc

    .line 72
    .line 73
    aput-object v1, v0, v2

    .line 74
    .line 75
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/transsion/push/bean/PushType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "LocalPush"

    .line 5
    .line 6
    const-string v3, "LOCAL_PUSH"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/push/bean/PushType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/transsion/push/bean/PushType;->LOCAL_PUSH:Lcom/transsion/push/bean/PushType;

    .line 12
    .line 13
    new-instance v0, Lcom/transsion/push/bean/PushType;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "0"

    .line 17
    .line 18
    const-string v3, "LIKE_POST"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/push/bean/PushType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/transsion/push/bean/PushType;->LIKE_POST:Lcom/transsion/push/bean/PushType;

    .line 24
    .line 25
    new-instance v0, Lcom/transsion/push/bean/PushType;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "1"

    .line 29
    .line 30
    const-string v3, "LIKE_COMMENT"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/push/bean/PushType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/transsion/push/bean/PushType;->LIKE_COMMENT:Lcom/transsion/push/bean/PushType;

    .line 36
    .line 37
    new-instance v0, Lcom/transsion/push/bean/PushType;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const-string v2, "2"

    .line 41
    .line 42
    const-string v3, "PERMANENT"

    .line 43
    .line 44
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/push/bean/PushType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/transsion/push/bean/PushType;->PERMANENT:Lcom/transsion/push/bean/PushType;

    .line 48
    .line 49
    new-instance v0, Lcom/transsion/push/bean/PushType;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    const-string v2, "3"

    .line 53
    .line 54
    const-string v3, "COMMENT"

    .line 55
    .line 56
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/push/bean/PushType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/transsion/push/bean/PushType;->COMMENT:Lcom/transsion/push/bean/PushType;

    .line 60
    .line 61
    new-instance v0, Lcom/transsion/push/bean/PushType;

    .line 62
    .line 63
    const/4 v1, 0x5

    .line 64
    const-string v2, "4"

    .line 65
    .line 66
    const-string v3, "JOIN_ROOM"

    .line 67
    .line 68
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/push/bean/PushType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lcom/transsion/push/bean/PushType;->JOIN_ROOM:Lcom/transsion/push/bean/PushType;

    .line 72
    .line 73
    new-instance v0, Lcom/transsion/push/bean/PushType;

    .line 74
    .line 75
    const/4 v1, 0x6

    .line 76
    const-string v2, "5"

    .line 77
    .line 78
    const-string v3, "ROOM_POST"

    .line 79
    .line 80
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/push/bean/PushType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lcom/transsion/push/bean/PushType;->ROOM_POST:Lcom/transsion/push/bean/PushType;

    .line 84
    .line 85
    new-instance v0, Lcom/transsion/push/bean/PushType;

    .line 86
    .line 87
    const/4 v1, 0x7

    .line 88
    const-string v2, "6"

    .line 89
    .line 90
    const-string v3, "CUSTOMIZE"

    .line 91
    .line 92
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/push/bean/PushType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sput-object v0, Lcom/transsion/push/bean/PushType;->CUSTOMIZE:Lcom/transsion/push/bean/PushType;

    .line 96
    .line 97
    new-instance v0, Lcom/transsion/push/bean/PushType;

    .line 98
    .line 99
    const/16 v1, 0x8

    .line 100
    .line 101
    const-string v2, "7"

    .line 102
    .line 103
    const-string v3, "ROOM_TOP"

    .line 104
    .line 105
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/push/bean/PushType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    sput-object v0, Lcom/transsion/push/bean/PushType;->ROOM_TOP:Lcom/transsion/push/bean/PushType;

    .line 109
    .line 110
    new-instance v0, Lcom/transsion/push/bean/PushType;

    .line 111
    .line 112
    const/16 v1, 0x9

    .line 113
    .line 114
    const-string v2, "8"

    .line 115
    .line 116
    const-string v3, "ROOM_PUSH"

    .line 117
    .line 118
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/push/bean/PushType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    sput-object v0, Lcom/transsion/push/bean/PushType;->ROOM_PUSH:Lcom/transsion/push/bean/PushType;

    .line 122
    .line 123
    new-instance v0, Lcom/transsion/push/bean/PushType;

    .line 124
    .line 125
    const/16 v1, 0xa

    .line 126
    .line 127
    const-string v2, "9"

    .line 128
    .line 129
    const-string v3, "T_PUSH"

    .line 130
    .line 131
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/push/bean/PushType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 132
    .line 133
    .line 134
    sput-object v0, Lcom/transsion/push/bean/PushType;->T_PUSH:Lcom/transsion/push/bean/PushType;

    .line 135
    .line 136
    new-instance v0, Lcom/transsion/push/bean/PushType;

    .line 137
    .line 138
    const/16 v1, 0xb

    .line 139
    .line 140
    const-string v2, "10"

    .line 141
    .line 142
    const-string v3, "SUBJECT_SEEKING"

    .line 143
    .line 144
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/push/bean/PushType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 145
    .line 146
    .line 147
    sput-object v0, Lcom/transsion/push/bean/PushType;->SUBJECT_SEEKING:Lcom/transsion/push/bean/PushType;

    .line 148
    .line 149
    new-instance v0, Lcom/transsion/push/bean/PushType;

    .line 150
    .line 151
    const/16 v1, 0xc

    .line 152
    .line 153
    const-string v2, "11"

    .line 154
    .line 155
    const-string v3, "PERMANENT_PUSH"

    .line 156
    .line 157
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/push/bean/PushType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 158
    .line 159
    .line 160
    sput-object v0, Lcom/transsion/push/bean/PushType;->PERMANENT_PUSH:Lcom/transsion/push/bean/PushType;

    .line 161
    .line 162
    invoke-static {}, Lcom/transsion/push/bean/PushType;->$values()[Lcom/transsion/push/bean/PushType;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    sput-object v0, Lcom/transsion/push/bean/PushType;->$VALUES:[Lcom/transsion/push/bean/PushType;

    .line 167
    .line 168
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    sput-object v0, Lcom/transsion/push/bean/PushType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 173
    .line 174
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/transsion/push/bean/PushType;->type:Ljava/lang/String;

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
            "Lcom/transsion/push/bean/PushType;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/push/bean/PushType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/push/bean/PushType;
    .locals 1

    .line 1
    const-class v0, Lcom/transsion/push/bean/PushType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/transsion/push/bean/PushType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/transsion/push/bean/PushType;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/push/bean/PushType;->$VALUES:[Lcom/transsion/push/bean/PushType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/transsion/push/bean/PushType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/PushType;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
