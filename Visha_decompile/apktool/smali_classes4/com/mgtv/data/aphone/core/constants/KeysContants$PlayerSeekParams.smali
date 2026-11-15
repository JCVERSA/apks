.class public final enum Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerSeekParams;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/data/aphone/core/constants/KeysContants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlayerSeekParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerSeekParams;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerSeekParams;

.field public static final enum SEEK_TYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerSeekParams;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerSeekParams;

    const/4 v1, 0x0

    const-string v2, "seek_type"

    const-string v3, "SEEK_TYPE"

    invoke-direct {v0, v3, v1, v2}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerSeekParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerSeekParams;->SEEK_TYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerSeekParams;

    filled-new-array {v0}, [Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerSeekParams;

    move-result-object v0

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerSeekParams;->$VALUES:[Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerSeekParams;

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

    iput-object p3, p0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerSeekParams;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerSeekParams;
    .locals 1

    const-class v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerSeekParams;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerSeekParams;

    return-object p0
.end method

.method public static values()[Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerSeekParams;
    .locals 1

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerSeekParams;->$VALUES:[Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerSeekParams;

    invoke-virtual {v0}, [Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerSeekParams;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerSeekParams;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerSeekParams;->value:Ljava/lang/String;

    return-object p0
.end method
