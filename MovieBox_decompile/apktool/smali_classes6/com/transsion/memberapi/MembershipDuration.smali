.class public final enum Lcom/transsion/memberapi/MembershipDuration;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/memberapi/MembershipDuration$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/memberapi/MembershipDuration;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u000f\u0008\u0087\u0081\u0002\u0018\u0000 \t2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008j\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/transsion/memberapi/MembershipDuration;",
        "",
        "",
        "value",
        "<init>",
        "(Ljava/lang/String;II)V",
        "I",
        "getValue",
        "()I",
        "Companion",
        "a",
        "DAY",
        "WEEK",
        "MONTH",
        "QUARTER",
        "HALF_YEAR",
        "YEAR",
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

.field private static final synthetic $VALUES:[Lcom/transsion/memberapi/MembershipDuration;

.field public static final Companion:Lcom/transsion/memberapi/MembershipDuration$a;

.field public static final enum DAY:Lcom/transsion/memberapi/MembershipDuration;

.field public static final enum HALF_YEAR:Lcom/transsion/memberapi/MembershipDuration;

.field public static final enum MONTH:Lcom/transsion/memberapi/MembershipDuration;

.field public static final enum QUARTER:Lcom/transsion/memberapi/MembershipDuration;

.field public static final enum WEEK:Lcom/transsion/memberapi/MembershipDuration;

.field public static final enum YEAR:Lcom/transsion/memberapi/MembershipDuration;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/transsion/memberapi/MembershipDuration;
    .locals 3

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [Lcom/transsion/memberapi/MembershipDuration;

    .line 3
    .line 4
    sget-object v1, Lcom/transsion/memberapi/MembershipDuration;->DAY:Lcom/transsion/memberapi/MembershipDuration;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/transsion/memberapi/MembershipDuration;->WEEK:Lcom/transsion/memberapi/MembershipDuration;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/transsion/memberapi/MembershipDuration;->MONTH:Lcom/transsion/memberapi/MembershipDuration;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lcom/transsion/memberapi/MembershipDuration;->QUARTER:Lcom/transsion/memberapi/MembershipDuration;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    sget-object v1, Lcom/transsion/memberapi/MembershipDuration;->HALF_YEAR:Lcom/transsion/memberapi/MembershipDuration;

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    aput-object v1, v0, v2

    .line 28
    .line 29
    sget-object v1, Lcom/transsion/memberapi/MembershipDuration;->YEAR:Lcom/transsion/memberapi/MembershipDuration;

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
    new-instance v0, Lcom/transsion/memberapi/MembershipDuration;

    .line 2
    .line 3
    const-string v1, "DAY"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/memberapi/MembershipDuration;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/transsion/memberapi/MembershipDuration;->DAY:Lcom/transsion/memberapi/MembershipDuration;

    .line 11
    .line 12
    new-instance v0, Lcom/transsion/memberapi/MembershipDuration;

    .line 13
    .line 14
    const-string v1, "WEEK"

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-direct {v0, v1, v3, v2}, Lcom/transsion/memberapi/MembershipDuration;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/transsion/memberapi/MembershipDuration;->WEEK:Lcom/transsion/memberapi/MembershipDuration;

    .line 21
    .line 22
    new-instance v0, Lcom/transsion/memberapi/MembershipDuration;

    .line 23
    .line 24
    const-string v1, "MONTH"

    .line 25
    .line 26
    const/4 v3, 0x3

    .line 27
    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/memberapi/MembershipDuration;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/transsion/memberapi/MembershipDuration;->MONTH:Lcom/transsion/memberapi/MembershipDuration;

    .line 31
    .line 32
    new-instance v0, Lcom/transsion/memberapi/MembershipDuration;

    .line 33
    .line 34
    const-string v1, "QUARTER"

    .line 35
    .line 36
    const/4 v2, 0x4

    .line 37
    invoke-direct {v0, v1, v3, v2}, Lcom/transsion/memberapi/MembershipDuration;-><init>(Ljava/lang/String;II)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lcom/transsion/memberapi/MembershipDuration;->QUARTER:Lcom/transsion/memberapi/MembershipDuration;

    .line 41
    .line 42
    new-instance v0, Lcom/transsion/memberapi/MembershipDuration;

    .line 43
    .line 44
    const-string v1, "HALF_YEAR"

    .line 45
    .line 46
    const/4 v3, 0x5

    .line 47
    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/memberapi/MembershipDuration;-><init>(Ljava/lang/String;II)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lcom/transsion/memberapi/MembershipDuration;->HALF_YEAR:Lcom/transsion/memberapi/MembershipDuration;

    .line 51
    .line 52
    new-instance v0, Lcom/transsion/memberapi/MembershipDuration;

    .line 53
    .line 54
    const-string v1, "YEAR"

    .line 55
    .line 56
    const/4 v2, 0x6

    .line 57
    invoke-direct {v0, v1, v3, v2}, Lcom/transsion/memberapi/MembershipDuration;-><init>(Ljava/lang/String;II)V

    .line 58
    .line 59
    .line 60
    sput-object v0, Lcom/transsion/memberapi/MembershipDuration;->YEAR:Lcom/transsion/memberapi/MembershipDuration;

    .line 61
    .line 62
    invoke-static {}, Lcom/transsion/memberapi/MembershipDuration;->$values()[Lcom/transsion/memberapi/MembershipDuration;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    sput-object v0, Lcom/transsion/memberapi/MembershipDuration;->$VALUES:[Lcom/transsion/memberapi/MembershipDuration;

    .line 67
    .line 68
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    sput-object v0, Lcom/transsion/memberapi/MembershipDuration;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 73
    .line 74
    new-instance v0, Lcom/transsion/memberapi/MembershipDuration$a;

    .line 75
    .line 76
    const/4 v1, 0x0

    .line 77
    invoke-direct {v0, v1}, Lcom/transsion/memberapi/MembershipDuration$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 78
    .line 79
    .line 80
    sput-object v0, Lcom/transsion/memberapi/MembershipDuration;->Companion:Lcom/transsion/memberapi/MembershipDuration$a;

    .line 81
    .line 82
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
    iput p3, p0, Lcom/transsion/memberapi/MembershipDuration;->value:I

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
            "Lcom/transsion/memberapi/MembershipDuration;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/memberapi/MembershipDuration;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/memberapi/MembershipDuration;
    .locals 1

    .line 1
    const-class v0, Lcom/transsion/memberapi/MembershipDuration;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/transsion/memberapi/MembershipDuration;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/transsion/memberapi/MembershipDuration;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/memberapi/MembershipDuration;->$VALUES:[Lcom/transsion/memberapi/MembershipDuration;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/transsion/memberapi/MembershipDuration;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/memberapi/MembershipDuration;->value:I

    .line 2
    .line 3
    return v0
.end method
