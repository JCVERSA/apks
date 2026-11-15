.class public final enum Lcom/transsion/dbdata/utils/SortUtil$SortType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/dbdata/utils/SortUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SortType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/utils/SortUtil$SortType$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/dbdata/utils/SortUtil$SortType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u0010\u0008\u0086\u0081\u0002\u0018\u0000 \t2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008j\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/transsion/dbdata/utils/SortUtil$SortType;",
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
        "DATE",
        "NAME",
        "SIZE",
        "DURATION",
        "COUNT",
        "MANUAL",
        "NUMBER",
        "dbdata_release"
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
.field private static final synthetic $ENTRIES:Ldb3;

.field private static final synthetic $VALUES:[Lcom/transsion/dbdata/utils/SortUtil$SortType;

.field public static final enum COUNT:Lcom/transsion/dbdata/utils/SortUtil$SortType;

.field public static final Companion:Lcom/transsion/dbdata/utils/SortUtil$SortType$a;

.field public static final enum DATE:Lcom/transsion/dbdata/utils/SortUtil$SortType;

.field public static final enum DURATION:Lcom/transsion/dbdata/utils/SortUtil$SortType;

.field public static final enum MANUAL:Lcom/transsion/dbdata/utils/SortUtil$SortType;

.field public static final enum NAME:Lcom/transsion/dbdata/utils/SortUtil$SortType;

.field public static final enum NUMBER:Lcom/transsion/dbdata/utils/SortUtil$SortType;

.field public static final enum SIZE:Lcom/transsion/dbdata/utils/SortUtil$SortType;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/transsion/dbdata/utils/SortUtil$SortType;
    .locals 7

    sget-object v0, Lcom/transsion/dbdata/utils/SortUtil$SortType;->DATE:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    sget-object v1, Lcom/transsion/dbdata/utils/SortUtil$SortType;->NAME:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    sget-object v2, Lcom/transsion/dbdata/utils/SortUtil$SortType;->SIZE:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    sget-object v3, Lcom/transsion/dbdata/utils/SortUtil$SortType;->DURATION:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    sget-object v4, Lcom/transsion/dbdata/utils/SortUtil$SortType;->COUNT:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    sget-object v5, Lcom/transsion/dbdata/utils/SortUtil$SortType;->MANUAL:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    sget-object v6, Lcom/transsion/dbdata/utils/SortUtil$SortType;->NUMBER:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    filled-new-array/range {v0 .. v6}, [Lcom/transsion/dbdata/utils/SortUtil$SortType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/dbdata/utils/SortUtil$SortType;

    const-string v1, "DATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/dbdata/utils/SortUtil$SortType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/dbdata/utils/SortUtil$SortType;->DATE:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    new-instance v0, Lcom/transsion/dbdata/utils/SortUtil$SortType;

    const-string v1, "NAME"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/dbdata/utils/SortUtil$SortType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/dbdata/utils/SortUtil$SortType;->NAME:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    new-instance v0, Lcom/transsion/dbdata/utils/SortUtil$SortType;

    const-string v1, "SIZE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/dbdata/utils/SortUtil$SortType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/dbdata/utils/SortUtil$SortType;->SIZE:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    new-instance v0, Lcom/transsion/dbdata/utils/SortUtil$SortType;

    const-string v1, "DURATION"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/dbdata/utils/SortUtil$SortType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/dbdata/utils/SortUtil$SortType;->DURATION:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    new-instance v0, Lcom/transsion/dbdata/utils/SortUtil$SortType;

    const-string v1, "COUNT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/dbdata/utils/SortUtil$SortType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/dbdata/utils/SortUtil$SortType;->COUNT:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    new-instance v0, Lcom/transsion/dbdata/utils/SortUtil$SortType;

    const-string v1, "MANUAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/dbdata/utils/SortUtil$SortType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/dbdata/utils/SortUtil$SortType;->MANUAL:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    new-instance v0, Lcom/transsion/dbdata/utils/SortUtil$SortType;

    const-string v1, "NUMBER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/dbdata/utils/SortUtil$SortType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/dbdata/utils/SortUtil$SortType;->NUMBER:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    invoke-static {}, Lcom/transsion/dbdata/utils/SortUtil$SortType;->$values()[Lcom/transsion/dbdata/utils/SortUtil$SortType;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/utils/SortUtil$SortType;->$VALUES:[Lcom/transsion/dbdata/utils/SortUtil$SortType;

    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Ldb3;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/utils/SortUtil$SortType;->$ENTRIES:Ldb3;

    new-instance v0, Lcom/transsion/dbdata/utils/SortUtil$SortType$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/dbdata/utils/SortUtil$SortType$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/dbdata/utils/SortUtil$SortType;->Companion:Lcom/transsion/dbdata/utils/SortUtil$SortType$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/transsion/dbdata/utils/SortUtil$SortType;->value:I

    return-void
.end method

.method public static final fromValue(I)Lcom/transsion/dbdata/utils/SortUtil$SortType;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/utils/SortUtil$SortType;->Companion:Lcom/transsion/dbdata/utils/SortUtil$SortType$a;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/utils/SortUtil$SortType$a;->a(I)Lcom/transsion/dbdata/utils/SortUtil$SortType;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries()Ldb3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldb3;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/dbdata/utils/SortUtil$SortType;->$ENTRIES:Ldb3;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/dbdata/utils/SortUtil$SortType;
    .locals 1

    const-class v0, Lcom/transsion/dbdata/utils/SortUtil$SortType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/utils/SortUtil$SortType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/dbdata/utils/SortUtil$SortType;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/utils/SortUtil$SortType;->$VALUES:[Lcom/transsion/dbdata/utils/SortUtil$SortType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/dbdata/utils/SortUtil$SortType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/utils/SortUtil$SortType;->value:I

    return p0
.end method
