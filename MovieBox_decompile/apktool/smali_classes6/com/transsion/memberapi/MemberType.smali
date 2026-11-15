.class public final enum Lcom/transsion/memberapi/MemberType;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/memberapi/MemberType$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/memberapi/MemberType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0008\u0087\u0081\u0002\u0018\u0000 \t2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008j\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/transsion/memberapi/MemberType;",
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
        "GUEST",
        "TRIAL",
        "PREMIUM",
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

.field private static final synthetic $VALUES:[Lcom/transsion/memberapi/MemberType;

.field public static final Companion:Lcom/transsion/memberapi/MemberType$a;

.field public static final enum GUEST:Lcom/transsion/memberapi/MemberType;

.field public static final enum PREMIUM:Lcom/transsion/memberapi/MemberType;

.field public static final enum TRIAL:Lcom/transsion/memberapi/MemberType;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/transsion/memberapi/MemberType;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Lcom/transsion/memberapi/MemberType;

    .line 3
    .line 4
    sget-object v1, Lcom/transsion/memberapi/MemberType;->GUEST:Lcom/transsion/memberapi/MemberType;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/transsion/memberapi/MemberType;->TRIAL:Lcom/transsion/memberapi/MemberType;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/transsion/memberapi/MemberType;->PREMIUM:Lcom/transsion/memberapi/MemberType;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/transsion/memberapi/MemberType;

    .line 2
    .line 3
    const-string v1, "GUEST"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/memberapi/MemberType;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/transsion/memberapi/MemberType;->GUEST:Lcom/transsion/memberapi/MemberType;

    .line 10
    .line 11
    new-instance v0, Lcom/transsion/memberapi/MemberType;

    .line 12
    .line 13
    const-string v1, "TRIAL"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/memberapi/MemberType;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/transsion/memberapi/MemberType;->TRIAL:Lcom/transsion/memberapi/MemberType;

    .line 20
    .line 21
    new-instance v0, Lcom/transsion/memberapi/MemberType;

    .line 22
    .line 23
    const-string v1, "PREMIUM"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/memberapi/MemberType;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/transsion/memberapi/MemberType;->PREMIUM:Lcom/transsion/memberapi/MemberType;

    .line 30
    .line 31
    invoke-static {}, Lcom/transsion/memberapi/MemberType;->$values()[Lcom/transsion/memberapi/MemberType;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/transsion/memberapi/MemberType;->$VALUES:[Lcom/transsion/memberapi/MemberType;

    .line 36
    .line 37
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lcom/transsion/memberapi/MemberType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 42
    .line 43
    new-instance v0, Lcom/transsion/memberapi/MemberType$a;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-direct {v0, v1}, Lcom/transsion/memberapi/MemberType$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/transsion/memberapi/MemberType;->Companion:Lcom/transsion/memberapi/MemberType$a;

    .line 50
    .line 51
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
    iput p3, p0, Lcom/transsion/memberapi/MemberType;->value:I

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
            "Lcom/transsion/memberapi/MemberType;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/memberapi/MemberType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/memberapi/MemberType;
    .locals 1

    .line 1
    const-class v0, Lcom/transsion/memberapi/MemberType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/transsion/memberapi/MemberType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/transsion/memberapi/MemberType;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/memberapi/MemberType;->$VALUES:[Lcom/transsion/memberapi/MemberType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/transsion/memberapi/MemberType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/memberapi/MemberType;->value:I

    .line 2
    .line 3
    return v0
.end method
