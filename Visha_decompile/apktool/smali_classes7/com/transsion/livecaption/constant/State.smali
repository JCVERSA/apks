.class public final enum Lcom/transsion/livecaption/constant/State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/livecaption/constant/State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/livecaption/constant/State;

.field public static final enum BOUND:Lcom/transsion/livecaption/constant/State;

.field public static final enum CONNECTED:Lcom/transsion/livecaption/constant/State;

.field public static final enum DISCONNECTED:Lcom/transsion/livecaption/constant/State;

.field public static final enum NONE:Lcom/transsion/livecaption/constant/State;

.field public static final enum RELEASED:Lcom/transsion/livecaption/constant/State;

.field public static final enum STARTED:Lcom/transsion/livecaption/constant/State;

.field public static final enum STOPPED:Lcom/transsion/livecaption/constant/State;


# direct methods
.method private static synthetic $values()[Lcom/transsion/livecaption/constant/State;
    .locals 7

    sget-object v0, Lcom/transsion/livecaption/constant/State;->NONE:Lcom/transsion/livecaption/constant/State;

    sget-object v1, Lcom/transsion/livecaption/constant/State;->BOUND:Lcom/transsion/livecaption/constant/State;

    sget-object v2, Lcom/transsion/livecaption/constant/State;->CONNECTED:Lcom/transsion/livecaption/constant/State;

    sget-object v3, Lcom/transsion/livecaption/constant/State;->STARTED:Lcom/transsion/livecaption/constant/State;

    sget-object v4, Lcom/transsion/livecaption/constant/State;->STOPPED:Lcom/transsion/livecaption/constant/State;

    sget-object v5, Lcom/transsion/livecaption/constant/State;->RELEASED:Lcom/transsion/livecaption/constant/State;

    sget-object v6, Lcom/transsion/livecaption/constant/State;->DISCONNECTED:Lcom/transsion/livecaption/constant/State;

    filled-new-array/range {v0 .. v6}, [Lcom/transsion/livecaption/constant/State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/livecaption/constant/State;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/livecaption/constant/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/livecaption/constant/State;->NONE:Lcom/transsion/livecaption/constant/State;

    new-instance v0, Lcom/transsion/livecaption/constant/State;

    const-string v1, "BOUND"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/livecaption/constant/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/livecaption/constant/State;->BOUND:Lcom/transsion/livecaption/constant/State;

    new-instance v0, Lcom/transsion/livecaption/constant/State;

    const-string v1, "CONNECTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/livecaption/constant/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/livecaption/constant/State;->CONNECTED:Lcom/transsion/livecaption/constant/State;

    new-instance v0, Lcom/transsion/livecaption/constant/State;

    const-string v1, "STARTED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/livecaption/constant/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/livecaption/constant/State;->STARTED:Lcom/transsion/livecaption/constant/State;

    new-instance v0, Lcom/transsion/livecaption/constant/State;

    const-string v1, "STOPPED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/transsion/livecaption/constant/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/livecaption/constant/State;->STOPPED:Lcom/transsion/livecaption/constant/State;

    new-instance v0, Lcom/transsion/livecaption/constant/State;

    const-string v1, "RELEASED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/transsion/livecaption/constant/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/livecaption/constant/State;->RELEASED:Lcom/transsion/livecaption/constant/State;

    new-instance v0, Lcom/transsion/livecaption/constant/State;

    const-string v1, "DISCONNECTED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/transsion/livecaption/constant/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/livecaption/constant/State;->DISCONNECTED:Lcom/transsion/livecaption/constant/State;

    invoke-static {}, Lcom/transsion/livecaption/constant/State;->$values()[Lcom/transsion/livecaption/constant/State;

    move-result-object v0

    sput-object v0, Lcom/transsion/livecaption/constant/State;->$VALUES:[Lcom/transsion/livecaption/constant/State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/livecaption/constant/State;
    .locals 1

    const-class v0, Lcom/transsion/livecaption/constant/State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/livecaption/constant/State;

    return-object p0
.end method

.method public static values()[Lcom/transsion/livecaption/constant/State;
    .locals 1

    sget-object v0, Lcom/transsion/livecaption/constant/State;->$VALUES:[Lcom/transsion/livecaption/constant/State;

    invoke-virtual {v0}, [Lcom/transsion/livecaption/constant/State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/livecaption/constant/State;

    return-object v0
.end method
