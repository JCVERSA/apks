.class public final enum Lcom/transsion/NetState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/NetState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/NetState;

.field public static final enum EFFECTIVE:Lcom/transsion/NetState;

.field public static final enum EMPTY:Lcom/transsion/NetState;

.field public static final enum FAILED:Lcom/transsion/NetState;

.field public static final enum LOADING:Lcom/transsion/NetState;

.field public static final enum START:Lcom/transsion/NetState;


# direct methods
.method private static synthetic $values()[Lcom/transsion/NetState;
    .locals 5

    sget-object v0, Lcom/transsion/NetState;->START:Lcom/transsion/NetState;

    sget-object v1, Lcom/transsion/NetState;->LOADING:Lcom/transsion/NetState;

    sget-object v2, Lcom/transsion/NetState;->EMPTY:Lcom/transsion/NetState;

    sget-object v3, Lcom/transsion/NetState;->EFFECTIVE:Lcom/transsion/NetState;

    sget-object v4, Lcom/transsion/NetState;->FAILED:Lcom/transsion/NetState;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/transsion/NetState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/NetState;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/NetState;->START:Lcom/transsion/NetState;

    new-instance v0, Lcom/transsion/NetState;

    const-string v1, "LOADING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/NetState;->LOADING:Lcom/transsion/NetState;

    new-instance v0, Lcom/transsion/NetState;

    const-string v1, "EMPTY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/NetState;->EMPTY:Lcom/transsion/NetState;

    new-instance v0, Lcom/transsion/NetState;

    const-string v1, "EFFECTIVE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/NetState;->EFFECTIVE:Lcom/transsion/NetState;

    new-instance v0, Lcom/transsion/NetState;

    const-string v1, "FAILED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/transsion/NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/NetState;->FAILED:Lcom/transsion/NetState;

    invoke-static {}, Lcom/transsion/NetState;->$values()[Lcom/transsion/NetState;

    move-result-object v0

    sput-object v0, Lcom/transsion/NetState;->$VALUES:[Lcom/transsion/NetState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/NetState;
    .locals 1

    const-class v0, Lcom/transsion/NetState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/NetState;

    return-object p0
.end method

.method public static values()[Lcom/transsion/NetState;
    .locals 1

    sget-object v0, Lcom/transsion/NetState;->$VALUES:[Lcom/transsion/NetState;

    invoke-virtual {v0}, [Lcom/transsion/NetState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/NetState;

    return-object v0
.end method
