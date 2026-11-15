.class public final enum Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVideoType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/data/aphone/core/constants/KeysContants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlayerVideoType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVideoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVideoType;

.field public static final enum ADVERTISING:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVideoType;

.field public static final enum LIVE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVideoType;

.field public static final enum OFF_LINE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVideoType;

.field public static final enum ON_DEMAND:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVideoType;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVideoType;

    const/4 v1, 0x0

    const-string v2, "1"

    const-string v3, "ON_DEMAND"

    invoke-direct {v0, v3, v1, v2}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVideoType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVideoType;->ON_DEMAND:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVideoType;

    new-instance v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVideoType;

    const/4 v2, 0x1

    const-string v3, "2"

    const-string v4, "LIVE"

    invoke-direct {v1, v4, v2, v3}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVideoType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVideoType;->LIVE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVideoType;

    new-instance v2, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVideoType;

    const/4 v3, 0x2

    const-string v4, "3"

    const-string v5, "OFF_LINE"

    invoke-direct {v2, v5, v3, v4}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVideoType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVideoType;->OFF_LINE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVideoType;

    new-instance v3, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVideoType;

    const/4 v4, 0x3

    const-string v5, "4"

    const-string v6, "ADVERTISING"

    invoke-direct {v3, v6, v4, v5}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVideoType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVideoType;->ADVERTISING:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVideoType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVideoType;

    move-result-object v0

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVideoType;->$VALUES:[Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVideoType;

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

    iput-object p3, p0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVideoType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVideoType;
    .locals 1

    const-class v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVideoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVideoType;

    return-object p0
.end method

.method public static values()[Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVideoType;
    .locals 1

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVideoType;->$VALUES:[Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVideoType;

    invoke-virtual {v0}, [Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVideoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVideoType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVideoType;->value:Ljava/lang/String;

    return-object p0
.end method
