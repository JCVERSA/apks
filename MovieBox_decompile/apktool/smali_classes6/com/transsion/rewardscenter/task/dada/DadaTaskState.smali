.class public final enum Lcom/transsion/rewardscenter/task/dada/DadaTaskState;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/rewardscenter/task/dada/DadaTaskState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\n\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/transsion/rewardscenter/task/dada/DadaTaskState;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "NORMAL",
        "DOWNLOADING",
        "INSTALLED",
        "CLAIMED_STAGE1",
        "SETTING",
        "SET_DEFAULT",
        "COMPLETED",
        "RewardsCenter_psRelease"
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

.field private static final synthetic $VALUES:[Lcom/transsion/rewardscenter/task/dada/DadaTaskState;

.field public static final enum CLAIMED_STAGE1:Lcom/transsion/rewardscenter/task/dada/DadaTaskState;

.field public static final enum COMPLETED:Lcom/transsion/rewardscenter/task/dada/DadaTaskState;

.field public static final enum DOWNLOADING:Lcom/transsion/rewardscenter/task/dada/DadaTaskState;

.field public static final enum INSTALLED:Lcom/transsion/rewardscenter/task/dada/DadaTaskState;

.field public static final enum NORMAL:Lcom/transsion/rewardscenter/task/dada/DadaTaskState;

.field public static final enum SETTING:Lcom/transsion/rewardscenter/task/dada/DadaTaskState;

.field public static final enum SET_DEFAULT:Lcom/transsion/rewardscenter/task/dada/DadaTaskState;


# direct methods
.method private static final synthetic $values()[Lcom/transsion/rewardscenter/task/dada/DadaTaskState;
    .locals 3

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v0, v0, [Lcom/transsion/rewardscenter/task/dada/DadaTaskState;

    .line 3
    .line 4
    sget-object v1, Lcom/transsion/rewardscenter/task/dada/DadaTaskState;->NORMAL:Lcom/transsion/rewardscenter/task/dada/DadaTaskState;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/transsion/rewardscenter/task/dada/DadaTaskState;->DOWNLOADING:Lcom/transsion/rewardscenter/task/dada/DadaTaskState;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/transsion/rewardscenter/task/dada/DadaTaskState;->INSTALLED:Lcom/transsion/rewardscenter/task/dada/DadaTaskState;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lcom/transsion/rewardscenter/task/dada/DadaTaskState;->CLAIMED_STAGE1:Lcom/transsion/rewardscenter/task/dada/DadaTaskState;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    sget-object v1, Lcom/transsion/rewardscenter/task/dada/DadaTaskState;->SETTING:Lcom/transsion/rewardscenter/task/dada/DadaTaskState;

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    aput-object v1, v0, v2

    .line 28
    .line 29
    sget-object v1, Lcom/transsion/rewardscenter/task/dada/DadaTaskState;->SET_DEFAULT:Lcom/transsion/rewardscenter/task/dada/DadaTaskState;

    .line 30
    .line 31
    const/4 v2, 0x5

    .line 32
    aput-object v1, v0, v2

    .line 33
    .line 34
    sget-object v1, Lcom/transsion/rewardscenter/task/dada/DadaTaskState;->COMPLETED:Lcom/transsion/rewardscenter/task/dada/DadaTaskState;

    .line 35
    .line 36
    const/4 v2, 0x6

    .line 37
    aput-object v1, v0, v2

    .line 38
    .line 39
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/transsion/rewardscenter/task/dada/DadaTaskState;

    .line 2
    .line 3
    const-string v1, "NORMAL"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/transsion/rewardscenter/task/dada/DadaTaskState;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/transsion/rewardscenter/task/dada/DadaTaskState;->NORMAL:Lcom/transsion/rewardscenter/task/dada/DadaTaskState;

    .line 10
    .line 11
    new-instance v0, Lcom/transsion/rewardscenter/task/dada/DadaTaskState;

    .line 12
    .line 13
    const-string v1, "DOWNLOADING"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/transsion/rewardscenter/task/dada/DadaTaskState;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/transsion/rewardscenter/task/dada/DadaTaskState;->DOWNLOADING:Lcom/transsion/rewardscenter/task/dada/DadaTaskState;

    .line 20
    .line 21
    new-instance v0, Lcom/transsion/rewardscenter/task/dada/DadaTaskState;

    .line 22
    .line 23
    const-string v1, "INSTALLED"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcom/transsion/rewardscenter/task/dada/DadaTaskState;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/transsion/rewardscenter/task/dada/DadaTaskState;->INSTALLED:Lcom/transsion/rewardscenter/task/dada/DadaTaskState;

    .line 30
    .line 31
    new-instance v0, Lcom/transsion/rewardscenter/task/dada/DadaTaskState;

    .line 32
    .line 33
    const-string v1, "CLAIMED_STAGE1"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lcom/transsion/rewardscenter/task/dada/DadaTaskState;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/transsion/rewardscenter/task/dada/DadaTaskState;->CLAIMED_STAGE1:Lcom/transsion/rewardscenter/task/dada/DadaTaskState;

    .line 40
    .line 41
    new-instance v0, Lcom/transsion/rewardscenter/task/dada/DadaTaskState;

    .line 42
    .line 43
    const-string v1, "SETTING"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lcom/transsion/rewardscenter/task/dada/DadaTaskState;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/transsion/rewardscenter/task/dada/DadaTaskState;->SETTING:Lcom/transsion/rewardscenter/task/dada/DadaTaskState;

    .line 50
    .line 51
    new-instance v0, Lcom/transsion/rewardscenter/task/dada/DadaTaskState;

    .line 52
    .line 53
    const-string v1, "SET_DEFAULT"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Lcom/transsion/rewardscenter/task/dada/DadaTaskState;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/transsion/rewardscenter/task/dada/DadaTaskState;->SET_DEFAULT:Lcom/transsion/rewardscenter/task/dada/DadaTaskState;

    .line 60
    .line 61
    new-instance v0, Lcom/transsion/rewardscenter/task/dada/DadaTaskState;

    .line 62
    .line 63
    const-string v1, "COMPLETED"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2}, Lcom/transsion/rewardscenter/task/dada/DadaTaskState;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lcom/transsion/rewardscenter/task/dada/DadaTaskState;->COMPLETED:Lcom/transsion/rewardscenter/task/dada/DadaTaskState;

    .line 70
    .line 71
    invoke-static {}, Lcom/transsion/rewardscenter/task/dada/DadaTaskState;->$values()[Lcom/transsion/rewardscenter/task/dada/DadaTaskState;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    sput-object v0, Lcom/transsion/rewardscenter/task/dada/DadaTaskState;->$VALUES:[Lcom/transsion/rewardscenter/task/dada/DadaTaskState;

    .line 76
    .line 77
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    sput-object v0, Lcom/transsion/rewardscenter/task/dada/DadaTaskState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 82
    .line 83
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/transsion/rewardscenter/task/dada/DadaTaskState;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/rewardscenter/task/dada/DadaTaskState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/rewardscenter/task/dada/DadaTaskState;
    .locals 1

    .line 1
    const-class v0, Lcom/transsion/rewardscenter/task/dada/DadaTaskState;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/transsion/rewardscenter/task/dada/DadaTaskState;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/transsion/rewardscenter/task/dada/DadaTaskState;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/rewardscenter/task/dada/DadaTaskState;->$VALUES:[Lcom/transsion/rewardscenter/task/dada/DadaTaskState;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/transsion/rewardscenter/task/dada/DadaTaskState;

    .line 8
    .line 9
    return-object v0
.end method
