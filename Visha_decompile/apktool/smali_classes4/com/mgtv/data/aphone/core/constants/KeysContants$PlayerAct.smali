.class public final enum Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/data/aphone/core/constants/KeysContants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlayerAct"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;

.field public static final enum BUFFER:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;

.field public static final enum END:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;

.field public static final enum ERR:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;

.field public static final enum HEARTBEAT:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;

.field public static final enum PV:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;

.field public static final enum SEEK:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;

.field public static final enum VV:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;

    const/4 v1, 0x0

    const-string v2, "ppv"

    const-string v3, "PV"

    invoke-direct {v0, v3, v1, v2}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;->PV:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;

    new-instance v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;

    const/4 v2, 0x1

    const-string v3, "pvv"

    const-string v4, "VV"

    invoke-direct {v1, v4, v2, v3}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;->VV:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;

    new-instance v2, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;

    const/4 v3, 0x2

    const-string v4, "perr"

    const-string v5, "ERR"

    invoke-direct {v2, v5, v3, v4}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;->ERR:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;

    new-instance v3, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;

    const/4 v4, 0x3

    const-string v5, "pend"

    const-string v6, "END"

    invoke-direct {v3, v6, v4, v5}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;->END:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;

    new-instance v4, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;

    const/4 v5, 0x4

    const-string v6, "buffer"

    const-string v7, "BUFFER"

    invoke-direct {v4, v7, v5, v6}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;->BUFFER:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;

    new-instance v5, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;

    const/4 v6, 0x5

    const-string v7, "seek"

    const-string v8, "SEEK"

    invoke-direct {v5, v8, v6, v7}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;->SEEK:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;

    new-instance v6, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;

    const/4 v7, 0x6

    const-string v8, "heartbeat"

    const-string v9, "HEARTBEAT"

    invoke-direct {v6, v9, v7, v8}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;->HEARTBEAT:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;

    filled-new-array/range {v0 .. v6}, [Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;

    move-result-object v0

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;->$VALUES:[Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;
    .locals 1

    const-class v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;

    return-object p0
.end method

.method public static values()[Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;
    .locals 1

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;->$VALUES:[Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;

    invoke-virtual {v0}, [Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;->value:Ljava/lang/String;

    return-object p0
.end method
