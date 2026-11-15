.class public final enum Lcom/transsion/log/enums/ResultEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/log/enums/ResultEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/log/enums/ResultEnum;

.field public static final enum ERROR_DATABASE:Lcom/transsion/log/enums/ResultEnum;

.field public static final enum ERROR_DECRYPT:Lcom/transsion/log/enums/ResultEnum;

.field public static final enum ERROR_LOG_PATH:Lcom/transsion/log/enums/ResultEnum;

.field public static final enum ERROR_PARAM:Lcom/transsion/log/enums/ResultEnum;

.field public static final enum EXCEPTION:Lcom/transsion/log/enums/ResultEnum;

.field public static final enum SUCCESS:Lcom/transsion/log/enums/ResultEnum;


# direct methods
.method private static synthetic $values()[Lcom/transsion/log/enums/ResultEnum;
    .locals 6

    sget-object v0, Lcom/transsion/log/enums/ResultEnum;->SUCCESS:Lcom/transsion/log/enums/ResultEnum;

    sget-object v1, Lcom/transsion/log/enums/ResultEnum;->ERROR_PARAM:Lcom/transsion/log/enums/ResultEnum;

    sget-object v2, Lcom/transsion/log/enums/ResultEnum;->EXCEPTION:Lcom/transsion/log/enums/ResultEnum;

    sget-object v3, Lcom/transsion/log/enums/ResultEnum;->ERROR_LOG_PATH:Lcom/transsion/log/enums/ResultEnum;

    sget-object v4, Lcom/transsion/log/enums/ResultEnum;->ERROR_DECRYPT:Lcom/transsion/log/enums/ResultEnum;

    sget-object v5, Lcom/transsion/log/enums/ResultEnum;->ERROR_DATABASE:Lcom/transsion/log/enums/ResultEnum;

    filled-new-array/range {v0 .. v5}, [Lcom/transsion/log/enums/ResultEnum;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/log/enums/ResultEnum;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/log/enums/ResultEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/log/enums/ResultEnum;->SUCCESS:Lcom/transsion/log/enums/ResultEnum;

    new-instance v0, Lcom/transsion/log/enums/ResultEnum;

    const-string v1, "ERROR_PARAM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/log/enums/ResultEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/log/enums/ResultEnum;->ERROR_PARAM:Lcom/transsion/log/enums/ResultEnum;

    new-instance v0, Lcom/transsion/log/enums/ResultEnum;

    const-string v1, "EXCEPTION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/log/enums/ResultEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/log/enums/ResultEnum;->EXCEPTION:Lcom/transsion/log/enums/ResultEnum;

    new-instance v0, Lcom/transsion/log/enums/ResultEnum;

    const-string v1, "ERROR_LOG_PATH"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/log/enums/ResultEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/log/enums/ResultEnum;->ERROR_LOG_PATH:Lcom/transsion/log/enums/ResultEnum;

    new-instance v0, Lcom/transsion/log/enums/ResultEnum;

    const-string v1, "ERROR_DECRYPT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/transsion/log/enums/ResultEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/log/enums/ResultEnum;->ERROR_DECRYPT:Lcom/transsion/log/enums/ResultEnum;

    new-instance v0, Lcom/transsion/log/enums/ResultEnum;

    const-string v1, "ERROR_DATABASE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/transsion/log/enums/ResultEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/log/enums/ResultEnum;->ERROR_DATABASE:Lcom/transsion/log/enums/ResultEnum;

    invoke-static {}, Lcom/transsion/log/enums/ResultEnum;->$values()[Lcom/transsion/log/enums/ResultEnum;

    move-result-object v0

    sput-object v0, Lcom/transsion/log/enums/ResultEnum;->$VALUES:[Lcom/transsion/log/enums/ResultEnum;

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

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/log/enums/ResultEnum;
    .locals 1

    const-class v0, Lcom/transsion/log/enums/ResultEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/log/enums/ResultEnum;

    return-object p0
.end method

.method public static values()[Lcom/transsion/log/enums/ResultEnum;
    .locals 1

    sget-object v0, Lcom/transsion/log/enums/ResultEnum;->$VALUES:[Lcom/transsion/log/enums/ResultEnum;

    invoke-virtual {v0}, [Lcom/transsion/log/enums/ResultEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/log/enums/ResultEnum;

    return-object v0
.end method
