.class public final enum Lcom/transsion/usercenterapi/ReportType;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/usercenterapi/ReportType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\r\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/transsion/usercenterapi/ReportType;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "UNKNOWN",
        "USER",
        "POST",
        "GROUP",
        "SUBJECT",
        "COMMENT",
        "STAFF",
        "UFC_VIDEO",
        "UserCenterApi_psRelease"
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

.field private static final synthetic $VALUES:[Lcom/transsion/usercenterapi/ReportType;

.field public static final enum COMMENT:Lcom/transsion/usercenterapi/ReportType;

.field public static final enum GROUP:Lcom/transsion/usercenterapi/ReportType;

.field public static final enum POST:Lcom/transsion/usercenterapi/ReportType;

.field public static final enum STAFF:Lcom/transsion/usercenterapi/ReportType;

.field public static final enum SUBJECT:Lcom/transsion/usercenterapi/ReportType;

.field public static final enum UFC_VIDEO:Lcom/transsion/usercenterapi/ReportType;

.field public static final enum UNKNOWN:Lcom/transsion/usercenterapi/ReportType;

.field public static final enum USER:Lcom/transsion/usercenterapi/ReportType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/transsion/usercenterapi/ReportType;
    .locals 3

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v0, v0, [Lcom/transsion/usercenterapi/ReportType;

    .line 4
    .line 5
    sget-object v1, Lcom/transsion/usercenterapi/ReportType;->UNKNOWN:Lcom/transsion/usercenterapi/ReportType;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    sget-object v1, Lcom/transsion/usercenterapi/ReportType;->USER:Lcom/transsion/usercenterapi/ReportType;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v1, Lcom/transsion/usercenterapi/ReportType;->POST:Lcom/transsion/usercenterapi/ReportType;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Lcom/transsion/usercenterapi/ReportType;->GROUP:Lcom/transsion/usercenterapi/ReportType;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Lcom/transsion/usercenterapi/ReportType;->SUBJECT:Lcom/transsion/usercenterapi/ReportType;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sget-object v1, Lcom/transsion/usercenterapi/ReportType;->COMMENT:Lcom/transsion/usercenterapi/ReportType;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    sget-object v1, Lcom/transsion/usercenterapi/ReportType;->STAFF:Lcom/transsion/usercenterapi/ReportType;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v1, Lcom/transsion/usercenterapi/ReportType;->UFC_VIDEO:Lcom/transsion/usercenterapi/ReportType;

    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/transsion/usercenterapi/ReportType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "TYPE_UNKNOWN"

    .line 5
    .line 6
    const-string v3, "UNKNOWN"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/usercenterapi/ReportType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/transsion/usercenterapi/ReportType;->UNKNOWN:Lcom/transsion/usercenterapi/ReportType;

    .line 12
    .line 13
    new-instance v0, Lcom/transsion/usercenterapi/ReportType;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "TYPE_USER"

    .line 17
    .line 18
    const-string v3, "USER"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/usercenterapi/ReportType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/transsion/usercenterapi/ReportType;->USER:Lcom/transsion/usercenterapi/ReportType;

    .line 24
    .line 25
    new-instance v0, Lcom/transsion/usercenterapi/ReportType;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "TYPE_POST"

    .line 29
    .line 30
    const-string v3, "POST"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/usercenterapi/ReportType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/transsion/usercenterapi/ReportType;->POST:Lcom/transsion/usercenterapi/ReportType;

    .line 36
    .line 37
    new-instance v0, Lcom/transsion/usercenterapi/ReportType;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const-string v2, "TYPE_GROUP"

    .line 41
    .line 42
    const-string v3, "GROUP"

    .line 43
    .line 44
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/usercenterapi/ReportType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/transsion/usercenterapi/ReportType;->GROUP:Lcom/transsion/usercenterapi/ReportType;

    .line 48
    .line 49
    new-instance v0, Lcom/transsion/usercenterapi/ReportType;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    const-string v2, "TYPE_SUBJECT"

    .line 53
    .line 54
    const-string v3, "SUBJECT"

    .line 55
    .line 56
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/usercenterapi/ReportType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/transsion/usercenterapi/ReportType;->SUBJECT:Lcom/transsion/usercenterapi/ReportType;

    .line 60
    .line 61
    new-instance v0, Lcom/transsion/usercenterapi/ReportType;

    .line 62
    .line 63
    const/4 v1, 0x5

    .line 64
    const-string v2, "TYPE_COMMENT"

    .line 65
    .line 66
    const-string v3, "COMMENT"

    .line 67
    .line 68
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/usercenterapi/ReportType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lcom/transsion/usercenterapi/ReportType;->COMMENT:Lcom/transsion/usercenterapi/ReportType;

    .line 72
    .line 73
    new-instance v0, Lcom/transsion/usercenterapi/ReportType;

    .line 74
    .line 75
    const/4 v1, 0x6

    .line 76
    const-string v2, "TYPE_STAFF"

    .line 77
    .line 78
    const-string v3, "STAFF"

    .line 79
    .line 80
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/usercenterapi/ReportType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lcom/transsion/usercenterapi/ReportType;->STAFF:Lcom/transsion/usercenterapi/ReportType;

    .line 84
    .line 85
    new-instance v0, Lcom/transsion/usercenterapi/ReportType;

    .line 86
    .line 87
    const/4 v1, 0x7

    .line 88
    const-string v2, "TYPE_UGC_VIDEO"

    .line 89
    .line 90
    const-string v3, "UFC_VIDEO"

    .line 91
    .line 92
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/usercenterapi/ReportType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sput-object v0, Lcom/transsion/usercenterapi/ReportType;->UFC_VIDEO:Lcom/transsion/usercenterapi/ReportType;

    .line 96
    .line 97
    invoke-static {}, Lcom/transsion/usercenterapi/ReportType;->$values()[Lcom/transsion/usercenterapi/ReportType;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    sput-object v0, Lcom/transsion/usercenterapi/ReportType;->$VALUES:[Lcom/transsion/usercenterapi/ReportType;

    .line 102
    .line 103
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    sput-object v0, Lcom/transsion/usercenterapi/ReportType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 108
    .line 109
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
    iput-object p3, p0, Lcom/transsion/usercenterapi/ReportType;->value:Ljava/lang/String;

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
            "Lcom/transsion/usercenterapi/ReportType;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/usercenterapi/ReportType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/usercenterapi/ReportType;
    .locals 1

    .line 1
    const-class v0, Lcom/transsion/usercenterapi/ReportType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/transsion/usercenterapi/ReportType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/transsion/usercenterapi/ReportType;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/usercenterapi/ReportType;->$VALUES:[Lcom/transsion/usercenterapi/ReportType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/transsion/usercenterapi/ReportType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenterapi/ReportType;->value:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
