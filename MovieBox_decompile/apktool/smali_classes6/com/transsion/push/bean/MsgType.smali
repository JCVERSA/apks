.class public final enum Lcom/transsion/push/bean/MsgType;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/push/bean/MsgType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/transsion/push/bean/MsgType;",
        "",
        "type",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getType",
        "()Ljava/lang/String;",
        "LOCAL_PUSH",
        "DOWNLOAD_PUSH",
        "PERMANENT",
        "TOP10_PUSH",
        "SUBJECT_SEEKING",
        "ONLINE_JSON_PUSH",
        "FIREBASE_PUSH",
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

.field private static final synthetic $VALUES:[Lcom/transsion/push/bean/MsgType;

.field public static final enum DOWNLOAD_PUSH:Lcom/transsion/push/bean/MsgType;

.field public static final enum FIREBASE_PUSH:Lcom/transsion/push/bean/MsgType;

.field public static final enum LOCAL_PUSH:Lcom/transsion/push/bean/MsgType;

.field public static final enum ONLINE_JSON_PUSH:Lcom/transsion/push/bean/MsgType;

.field public static final enum PERMANENT:Lcom/transsion/push/bean/MsgType;

.field public static final enum SUBJECT_SEEKING:Lcom/transsion/push/bean/MsgType;

.field public static final enum TOP10_PUSH:Lcom/transsion/push/bean/MsgType;


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/transsion/push/bean/MsgType;
    .locals 3

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v0, v0, [Lcom/transsion/push/bean/MsgType;

    .line 3
    .line 4
    sget-object v1, Lcom/transsion/push/bean/MsgType;->LOCAL_PUSH:Lcom/transsion/push/bean/MsgType;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/transsion/push/bean/MsgType;->DOWNLOAD_PUSH:Lcom/transsion/push/bean/MsgType;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/transsion/push/bean/MsgType;->PERMANENT:Lcom/transsion/push/bean/MsgType;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lcom/transsion/push/bean/MsgType;->TOP10_PUSH:Lcom/transsion/push/bean/MsgType;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    sget-object v1, Lcom/transsion/push/bean/MsgType;->SUBJECT_SEEKING:Lcom/transsion/push/bean/MsgType;

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    aput-object v1, v0, v2

    .line 28
    .line 29
    sget-object v1, Lcom/transsion/push/bean/MsgType;->ONLINE_JSON_PUSH:Lcom/transsion/push/bean/MsgType;

    .line 30
    .line 31
    const/4 v2, 0x5

    .line 32
    aput-object v1, v0, v2

    .line 33
    .line 34
    sget-object v1, Lcom/transsion/push/bean/MsgType;->FIREBASE_PUSH:Lcom/transsion/push/bean/MsgType;

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
    .locals 4

    .line 1
    new-instance v0, Lcom/transsion/push/bean/MsgType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "1"

    .line 5
    .line 6
    const-string v3, "LOCAL_PUSH"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/push/bean/MsgType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/transsion/push/bean/MsgType;->LOCAL_PUSH:Lcom/transsion/push/bean/MsgType;

    .line 12
    .line 13
    new-instance v0, Lcom/transsion/push/bean/MsgType;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "4"

    .line 17
    .line 18
    const-string v3, "DOWNLOAD_PUSH"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/push/bean/MsgType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/transsion/push/bean/MsgType;->DOWNLOAD_PUSH:Lcom/transsion/push/bean/MsgType;

    .line 24
    .line 25
    new-instance v0, Lcom/transsion/push/bean/MsgType;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "5"

    .line 29
    .line 30
    const-string v3, "PERMANENT"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/push/bean/MsgType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/transsion/push/bean/MsgType;->PERMANENT:Lcom/transsion/push/bean/MsgType;

    .line 36
    .line 37
    new-instance v0, Lcom/transsion/push/bean/MsgType;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const-string v2, "6"

    .line 41
    .line 42
    const-string v3, "TOP10_PUSH"

    .line 43
    .line 44
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/push/bean/MsgType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/transsion/push/bean/MsgType;->TOP10_PUSH:Lcom/transsion/push/bean/MsgType;

    .line 48
    .line 49
    new-instance v0, Lcom/transsion/push/bean/MsgType;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    const-string v2, "10"

    .line 53
    .line 54
    const-string v3, "SUBJECT_SEEKING"

    .line 55
    .line 56
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/push/bean/MsgType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/transsion/push/bean/MsgType;->SUBJECT_SEEKING:Lcom/transsion/push/bean/MsgType;

    .line 60
    .line 61
    new-instance v0, Lcom/transsion/push/bean/MsgType;

    .line 62
    .line 63
    const/4 v1, 0x5

    .line 64
    const-string v2, "11"

    .line 65
    .line 66
    const-string v3, "ONLINE_JSON_PUSH"

    .line 67
    .line 68
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/push/bean/MsgType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lcom/transsion/push/bean/MsgType;->ONLINE_JSON_PUSH:Lcom/transsion/push/bean/MsgType;

    .line 72
    .line 73
    new-instance v0, Lcom/transsion/push/bean/MsgType;

    .line 74
    .line 75
    const/4 v1, 0x6

    .line 76
    const-string v2, "101"

    .line 77
    .line 78
    const-string v3, "FIREBASE_PUSH"

    .line 79
    .line 80
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/push/bean/MsgType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lcom/transsion/push/bean/MsgType;->FIREBASE_PUSH:Lcom/transsion/push/bean/MsgType;

    .line 84
    .line 85
    invoke-static {}, Lcom/transsion/push/bean/MsgType;->$values()[Lcom/transsion/push/bean/MsgType;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    sput-object v0, Lcom/transsion/push/bean/MsgType;->$VALUES:[Lcom/transsion/push/bean/MsgType;

    .line 90
    .line 91
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    sput-object v0, Lcom/transsion/push/bean/MsgType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 96
    .line 97
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
    iput-object p3, p0, Lcom/transsion/push/bean/MsgType;->type:Ljava/lang/String;

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
            "Lcom/transsion/push/bean/MsgType;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/push/bean/MsgType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/push/bean/MsgType;
    .locals 1

    .line 1
    const-class v0, Lcom/transsion/push/bean/MsgType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/transsion/push/bean/MsgType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/transsion/push/bean/MsgType;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/push/bean/MsgType;->$VALUES:[Lcom/transsion/push/bean/MsgType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/transsion/push/bean/MsgType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/MsgType;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
