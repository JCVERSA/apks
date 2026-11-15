.class public final enum Lcom/mgtv/data/aphone/core/constants/KeysContants$St;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/data/aphone/core/constants/KeysContants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "St"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mgtv/data/aphone/core/constants/KeysContants$St;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mgtv/data/aphone/core/constants/KeysContants$St;

.field public static final enum ACT:Lcom/mgtv/data/aphone/core/constants/KeysContants$St;

.field public static final enum BODY:Lcom/mgtv/data/aphone/core/constants/KeysContants$St;

.field public static final enum CTYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$St;

.field public static final enum RUNSID:Lcom/mgtv/data/aphone/core/constants/KeysContants$St;

.field public static final enum STYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$St;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$St;

    const/4 v1, 0x0

    const-string v2, "act"

    const-string v3, "ACT"

    invoke-direct {v0, v3, v1, v2}, Lcom/mgtv/data/aphone/core/constants/KeysContants$St;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$St;->ACT:Lcom/mgtv/data/aphone/core/constants/KeysContants$St;

    new-instance v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$St;

    const/4 v2, 0x1

    const-string v3, "body"

    const-string v4, "BODY"

    invoke-direct {v1, v4, v2, v3}, Lcom/mgtv/data/aphone/core/constants/KeysContants$St;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$St;->BODY:Lcom/mgtv/data/aphone/core/constants/KeysContants$St;

    new-instance v2, Lcom/mgtv/data/aphone/core/constants/KeysContants$St;

    const/4 v3, 0x2

    const-string v4, "runsid"

    const-string v5, "RUNSID"

    invoke-direct {v2, v5, v3, v4}, Lcom/mgtv/data/aphone/core/constants/KeysContants$St;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/mgtv/data/aphone/core/constants/KeysContants$St;->RUNSID:Lcom/mgtv/data/aphone/core/constants/KeysContants$St;

    new-instance v3, Lcom/mgtv/data/aphone/core/constants/KeysContants$St;

    const/4 v4, 0x3

    const-string v5, "ctype"

    const-string v6, "CTYPE"

    invoke-direct {v3, v6, v4, v5}, Lcom/mgtv/data/aphone/core/constants/KeysContants$St;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/mgtv/data/aphone/core/constants/KeysContants$St;->CTYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$St;

    new-instance v4, Lcom/mgtv/data/aphone/core/constants/KeysContants$St;

    const/4 v5, 0x4

    const-string v6, "stype"

    const-string v7, "STYPE"

    invoke-direct {v4, v7, v5, v6}, Lcom/mgtv/data/aphone/core/constants/KeysContants$St;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/mgtv/data/aphone/core/constants/KeysContants$St;->STYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$St;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/mgtv/data/aphone/core/constants/KeysContants$St;

    move-result-object v0

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$St;->$VALUES:[Lcom/mgtv/data/aphone/core/constants/KeysContants$St;

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

    iput-object p3, p0, Lcom/mgtv/data/aphone/core/constants/KeysContants$St;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mgtv/data/aphone/core/constants/KeysContants$St;
    .locals 1

    const-class v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$St;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mgtv/data/aphone/core/constants/KeysContants$St;

    return-object p0
.end method

.method public static values()[Lcom/mgtv/data/aphone/core/constants/KeysContants$St;
    .locals 1

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$St;->$VALUES:[Lcom/mgtv/data/aphone/core/constants/KeysContants$St;

    invoke-virtual {v0}, [Lcom/mgtv/data/aphone/core/constants/KeysContants$St;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mgtv/data/aphone/core/constants/KeysContants$St;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/data/aphone/core/constants/KeysContants$St;->value:Ljava/lang/String;

    return-object p0
.end method
