.class public final enum Lcom/transsion/push/tpush/TMsgType;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/push/tpush/TMsgType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000f\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/transsion/push/tpush/TMsgType;",
        "",
        "type",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getType",
        "()Ljava/lang/String;",
        "LikePost",
        "Follow",
        "LikeComment",
        "JoinGroup",
        "GroupPost",
        "Customize",
        "GroupPostTop",
        "Group",
        "Manual",
        "SubjectSeeking",
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

.field private static final synthetic $VALUES:[Lcom/transsion/push/tpush/TMsgType;

.field public static final enum Customize:Lcom/transsion/push/tpush/TMsgType;

.field public static final enum Follow:Lcom/transsion/push/tpush/TMsgType;

.field public static final enum Group:Lcom/transsion/push/tpush/TMsgType;

.field public static final enum GroupPost:Lcom/transsion/push/tpush/TMsgType;

.field public static final enum GroupPostTop:Lcom/transsion/push/tpush/TMsgType;

.field public static final enum JoinGroup:Lcom/transsion/push/tpush/TMsgType;

.field public static final enum LikeComment:Lcom/transsion/push/tpush/TMsgType;

.field public static final enum LikePost:Lcom/transsion/push/tpush/TMsgType;

.field public static final enum Manual:Lcom/transsion/push/tpush/TMsgType;

.field public static final enum SubjectSeeking:Lcom/transsion/push/tpush/TMsgType;


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/transsion/push/tpush/TMsgType;
    .locals 3

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    new-array v0, v0, [Lcom/transsion/push/tpush/TMsgType;

    .line 4
    .line 5
    sget-object v1, Lcom/transsion/push/tpush/TMsgType;->LikePost:Lcom/transsion/push/tpush/TMsgType;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    sget-object v1, Lcom/transsion/push/tpush/TMsgType;->Follow:Lcom/transsion/push/tpush/TMsgType;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v1, Lcom/transsion/push/tpush/TMsgType;->LikeComment:Lcom/transsion/push/tpush/TMsgType;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Lcom/transsion/push/tpush/TMsgType;->JoinGroup:Lcom/transsion/push/tpush/TMsgType;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Lcom/transsion/push/tpush/TMsgType;->GroupPost:Lcom/transsion/push/tpush/TMsgType;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sget-object v1, Lcom/transsion/push/tpush/TMsgType;->Customize:Lcom/transsion/push/tpush/TMsgType;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    sget-object v1, Lcom/transsion/push/tpush/TMsgType;->GroupPostTop:Lcom/transsion/push/tpush/TMsgType;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v1, Lcom/transsion/push/tpush/TMsgType;->Group:Lcom/transsion/push/tpush/TMsgType;

    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    sget-object v1, Lcom/transsion/push/tpush/TMsgType;->Manual:Lcom/transsion/push/tpush/TMsgType;

    .line 46
    .line 47
    const/16 v2, 0x8

    .line 48
    .line 49
    aput-object v1, v0, v2

    .line 50
    .line 51
    sget-object v1, Lcom/transsion/push/tpush/TMsgType;->SubjectSeeking:Lcom/transsion/push/tpush/TMsgType;

    .line 52
    .line 53
    const/16 v2, 0x9

    .line 54
    .line 55
    aput-object v1, v0, v2

    .line 56
    .line 57
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/transsion/push/tpush/TMsgType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "1"

    .line 5
    .line 6
    const-string v3, "LikePost"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/push/tpush/TMsgType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/transsion/push/tpush/TMsgType;->LikePost:Lcom/transsion/push/tpush/TMsgType;

    .line 12
    .line 13
    new-instance v0, Lcom/transsion/push/tpush/TMsgType;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "2"

    .line 17
    .line 18
    const-string v3, "Follow"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/push/tpush/TMsgType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/transsion/push/tpush/TMsgType;->Follow:Lcom/transsion/push/tpush/TMsgType;

    .line 24
    .line 25
    new-instance v0, Lcom/transsion/push/tpush/TMsgType;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "3"

    .line 29
    .line 30
    const-string v3, "LikeComment"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/push/tpush/TMsgType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/transsion/push/tpush/TMsgType;->LikeComment:Lcom/transsion/push/tpush/TMsgType;

    .line 36
    .line 37
    new-instance v0, Lcom/transsion/push/tpush/TMsgType;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const-string v2, "4"

    .line 41
    .line 42
    const-string v3, "JoinGroup"

    .line 43
    .line 44
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/push/tpush/TMsgType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/transsion/push/tpush/TMsgType;->JoinGroup:Lcom/transsion/push/tpush/TMsgType;

    .line 48
    .line 49
    new-instance v0, Lcom/transsion/push/tpush/TMsgType;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    const-string v2, "5"

    .line 53
    .line 54
    const-string v3, "GroupPost"

    .line 55
    .line 56
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/push/tpush/TMsgType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/transsion/push/tpush/TMsgType;->GroupPost:Lcom/transsion/push/tpush/TMsgType;

    .line 60
    .line 61
    new-instance v0, Lcom/transsion/push/tpush/TMsgType;

    .line 62
    .line 63
    const/4 v1, 0x5

    .line 64
    const-string v2, "6"

    .line 65
    .line 66
    const-string v3, "Customize"

    .line 67
    .line 68
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/push/tpush/TMsgType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lcom/transsion/push/tpush/TMsgType;->Customize:Lcom/transsion/push/tpush/TMsgType;

    .line 72
    .line 73
    new-instance v0, Lcom/transsion/push/tpush/TMsgType;

    .line 74
    .line 75
    const/4 v1, 0x6

    .line 76
    const-string v2, "7"

    .line 77
    .line 78
    const-string v3, "GroupPostTop"

    .line 79
    .line 80
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/push/tpush/TMsgType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lcom/transsion/push/tpush/TMsgType;->GroupPostTop:Lcom/transsion/push/tpush/TMsgType;

    .line 84
    .line 85
    new-instance v0, Lcom/transsion/push/tpush/TMsgType;

    .line 86
    .line 87
    const/4 v1, 0x7

    .line 88
    const-string v2, "8"

    .line 89
    .line 90
    const-string v3, "Group"

    .line 91
    .line 92
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/push/tpush/TMsgType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sput-object v0, Lcom/transsion/push/tpush/TMsgType;->Group:Lcom/transsion/push/tpush/TMsgType;

    .line 96
    .line 97
    new-instance v0, Lcom/transsion/push/tpush/TMsgType;

    .line 98
    .line 99
    const/16 v1, 0x8

    .line 100
    .line 101
    const-string v2, "9"

    .line 102
    .line 103
    const-string v3, "Manual"

    .line 104
    .line 105
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/push/tpush/TMsgType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    sput-object v0, Lcom/transsion/push/tpush/TMsgType;->Manual:Lcom/transsion/push/tpush/TMsgType;

    .line 109
    .line 110
    new-instance v0, Lcom/transsion/push/tpush/TMsgType;

    .line 111
    .line 112
    const/16 v1, 0x9

    .line 113
    .line 114
    const-string v2, "10"

    .line 115
    .line 116
    const-string v3, "SubjectSeeking"

    .line 117
    .line 118
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/push/tpush/TMsgType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    sput-object v0, Lcom/transsion/push/tpush/TMsgType;->SubjectSeeking:Lcom/transsion/push/tpush/TMsgType;

    .line 122
    .line 123
    invoke-static {}, Lcom/transsion/push/tpush/TMsgType;->$values()[Lcom/transsion/push/tpush/TMsgType;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    sput-object v0, Lcom/transsion/push/tpush/TMsgType;->$VALUES:[Lcom/transsion/push/tpush/TMsgType;

    .line 128
    .line 129
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    sput-object v0, Lcom/transsion/push/tpush/TMsgType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 134
    .line 135
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
    iput-object p3, p0, Lcom/transsion/push/tpush/TMsgType;->type:Ljava/lang/String;

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
            "Lcom/transsion/push/tpush/TMsgType;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/push/tpush/TMsgType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/push/tpush/TMsgType;
    .locals 1

    .line 1
    const-class v0, Lcom/transsion/push/tpush/TMsgType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/transsion/push/tpush/TMsgType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/transsion/push/tpush/TMsgType;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/push/tpush/TMsgType;->$VALUES:[Lcom/transsion/push/tpush/TMsgType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/transsion/push/tpush/TMsgType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/tpush/TMsgType;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
