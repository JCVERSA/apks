.class public final enum Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/utils/BaseConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SCREEN_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

.field public static final enum BOOK:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

.field public static final enum FOLD:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

.field public static final enum OPEN_LAND:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

.field public static final enum OPEN_PORT:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

.field public static final enum TABLE:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;


# direct methods
.method private static synthetic $values()[Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;
    .locals 5

    sget-object v0, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->FOLD:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    sget-object v1, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->OPEN_PORT:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    sget-object v2, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->OPEN_LAND:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    sget-object v3, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->TABLE:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    sget-object v4, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->BOOK:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    const-string v1, "FOLD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->FOLD:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    new-instance v0, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    const-string v1, "OPEN_PORT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->OPEN_PORT:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    new-instance v0, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    const-string v1, "OPEN_LAND"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->OPEN_LAND:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    new-instance v0, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    const-string v1, "TABLE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->TABLE:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    new-instance v0, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    const-string v1, "BOOK"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->BOOK:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    invoke-static {}, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->$values()[Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    move-result-object v0

    sput-object v0, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->$VALUES:[Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;
    .locals 1

    const-class v0, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;
    .locals 1

    sget-object v0, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->$VALUES:[Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    invoke-virtual {v0}, [Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    return-object v0
.end method
