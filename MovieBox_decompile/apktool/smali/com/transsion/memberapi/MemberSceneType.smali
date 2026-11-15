.class public final enum Lcom/transsion/memberapi/MemberSceneType;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/memberapi/MemberSceneType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u000e\u001a\u00020\u0003H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/transsion/memberapi/MemberSceneType;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "SCENE_AD",
        "SCENE_STREAM_ACTIVATE",
        "SCENE_START_RESOLUTION",
        "SCENE_PREDL",
        "SCENE_HDDL",
        "SCENE_MULTIDL",
        "toString",
        "MemberApi_psRelease"
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

.field private static final synthetic $VALUES:[Lcom/transsion/memberapi/MemberSceneType;

.field public static final enum SCENE_AD:Lcom/transsion/memberapi/MemberSceneType;

.field public static final enum SCENE_HDDL:Lcom/transsion/memberapi/MemberSceneType;

.field public static final enum SCENE_MULTIDL:Lcom/transsion/memberapi/MemberSceneType;

.field public static final enum SCENE_PREDL:Lcom/transsion/memberapi/MemberSceneType;

.field public static final enum SCENE_START_RESOLUTION:Lcom/transsion/memberapi/MemberSceneType;

.field public static final enum SCENE_STREAM_ACTIVATE:Lcom/transsion/memberapi/MemberSceneType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/transsion/memberapi/MemberSceneType;
    .locals 3

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [Lcom/transsion/memberapi/MemberSceneType;

    .line 3
    .line 4
    sget-object v1, Lcom/transsion/memberapi/MemberSceneType;->SCENE_AD:Lcom/transsion/memberapi/MemberSceneType;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/transsion/memberapi/MemberSceneType;->SCENE_STREAM_ACTIVATE:Lcom/transsion/memberapi/MemberSceneType;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/transsion/memberapi/MemberSceneType;->SCENE_START_RESOLUTION:Lcom/transsion/memberapi/MemberSceneType;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lcom/transsion/memberapi/MemberSceneType;->SCENE_PREDL:Lcom/transsion/memberapi/MemberSceneType;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    sget-object v1, Lcom/transsion/memberapi/MemberSceneType;->SCENE_HDDL:Lcom/transsion/memberapi/MemberSceneType;

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    aput-object v1, v0, v2

    .line 28
    .line 29
    sget-object v1, Lcom/transsion/memberapi/MemberSceneType;->SCENE_MULTIDL:Lcom/transsion/memberapi/MemberSceneType;

    .line 30
    .line 31
    const/4 v2, 0x5

    .line 32
    aput-object v1, v0, v2

    .line 33
    .line 34
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/transsion/memberapi/MemberSceneType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "AD"

    .line 5
    .line 6
    const-string v3, "SCENE_AD"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/memberapi/MemberSceneType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/transsion/memberapi/MemberSceneType;->SCENE_AD:Lcom/transsion/memberapi/MemberSceneType;

    .line 12
    .line 13
    new-instance v0, Lcom/transsion/memberapi/MemberSceneType;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "STREAM_ACTIVATE"

    .line 17
    .line 18
    const-string v3, "SCENE_STREAM_ACTIVATE"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/memberapi/MemberSceneType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/transsion/memberapi/MemberSceneType;->SCENE_STREAM_ACTIVATE:Lcom/transsion/memberapi/MemberSceneType;

    .line 24
    .line 25
    new-instance v0, Lcom/transsion/memberapi/MemberSceneType;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "START_RESOLUTION"

    .line 29
    .line 30
    const-string v3, "SCENE_START_RESOLUTION"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/memberapi/MemberSceneType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/transsion/memberapi/MemberSceneType;->SCENE_START_RESOLUTION:Lcom/transsion/memberapi/MemberSceneType;

    .line 36
    .line 37
    new-instance v0, Lcom/transsion/memberapi/MemberSceneType;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const-string v2, "PREDL"

    .line 41
    .line 42
    const-string v3, "SCENE_PREDL"

    .line 43
    .line 44
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/memberapi/MemberSceneType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/transsion/memberapi/MemberSceneType;->SCENE_PREDL:Lcom/transsion/memberapi/MemberSceneType;

    .line 48
    .line 49
    new-instance v0, Lcom/transsion/memberapi/MemberSceneType;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    const-string v2, "HDDL"

    .line 53
    .line 54
    const-string v3, "SCENE_HDDL"

    .line 55
    .line 56
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/memberapi/MemberSceneType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/transsion/memberapi/MemberSceneType;->SCENE_HDDL:Lcom/transsion/memberapi/MemberSceneType;

    .line 60
    .line 61
    new-instance v0, Lcom/transsion/memberapi/MemberSceneType;

    .line 62
    .line 63
    const/4 v1, 0x5

    .line 64
    const-string v2, "MultiDL"

    .line 65
    .line 66
    const-string v3, "SCENE_MULTIDL"

    .line 67
    .line 68
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/memberapi/MemberSceneType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lcom/transsion/memberapi/MemberSceneType;->SCENE_MULTIDL:Lcom/transsion/memberapi/MemberSceneType;

    .line 72
    .line 73
    invoke-static {}, Lcom/transsion/memberapi/MemberSceneType;->$values()[Lcom/transsion/memberapi/MemberSceneType;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sput-object v0, Lcom/transsion/memberapi/MemberSceneType;->$VALUES:[Lcom/transsion/memberapi/MemberSceneType;

    .line 78
    .line 79
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    sput-object v0, Lcom/transsion/memberapi/MemberSceneType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 84
    .line 85
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
    iput-object p3, p0, Lcom/transsion/memberapi/MemberSceneType;->value:Ljava/lang/String;

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
            "Lcom/transsion/memberapi/MemberSceneType;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/memberapi/MemberSceneType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/memberapi/MemberSceneType;
    .locals 1

    .line 1
    const-class v0, Lcom/transsion/memberapi/MemberSceneType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/transsion/memberapi/MemberSceneType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/transsion/memberapi/MemberSceneType;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/memberapi/MemberSceneType;->$VALUES:[Lcom/transsion/memberapi/MemberSceneType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/transsion/memberapi/MemberSceneType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/memberapi/MemberSceneType;->value:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/memberapi/MemberSceneType;->value:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
