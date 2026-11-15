.class public final enum Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/just/agentweb/DefaultWebClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OpenOtherPageWays"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;

.field public static final enum ASK:Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;

.field public static final enum DERECT:Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;

.field public static final enum DISALLOW:Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;

.field public static final enum SPECIAL:Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;


# instance fields
.field code:I


# direct methods
.method private static synthetic $values()[Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;
    .locals 4

    sget-object v0, Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;->DERECT:Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;

    sget-object v1, Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;->ASK:Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;

    sget-object v2, Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;->DISALLOW:Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;

    sget-object v3, Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;->SPECIAL:Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;

    filled-new-array {v0, v1, v2, v3}, [Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;

    const/4 v1, 0x0

    const/16 v2, 0x3e9

    const-string v3, "DERECT"

    invoke-direct {v0, v3, v1, v2}, Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;->DERECT:Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;

    new-instance v0, Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;

    const/4 v1, 0x1

    const/16 v2, 0xfa

    const-string v3, "ASK"

    invoke-direct {v0, v3, v1, v2}, Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;->ASK:Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;

    new-instance v0, Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;

    const/4 v1, 0x2

    const/16 v2, 0x3e

    const-string v3, "DISALLOW"

    invoke-direct {v0, v3, v1, v2}, Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;->DISALLOW:Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;

    new-instance v0, Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;

    const-string v1, "SPECIAL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;->SPECIAL:Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;

    invoke-static {}, Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;->$values()[Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;

    move-result-object v0

    sput-object v0, Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;->$VALUES:[Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;

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

    iput p3, p0, Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;
    .locals 1

    const-class v0, Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;

    return-object p0
.end method

.method public static values()[Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;
    .locals 1

    sget-object v0, Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;->$VALUES:[Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;

    invoke-virtual {v0}, [Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;

    return-object v0
.end method
