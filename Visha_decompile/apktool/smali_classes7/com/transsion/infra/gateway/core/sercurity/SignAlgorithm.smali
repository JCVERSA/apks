.class public final enum Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;

.field public static final enum HmacMD5:Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;

.field public static final enum HmacSHA1:Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;

.field public static final enum HmacSHA256:Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;

    const-string v1, "HmacSHA1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;->HmacSHA1:Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;

    new-instance v1, Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;

    const-string v2, "HmacSHA256"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;->HmacSHA256:Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;

    new-instance v2, Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;

    const-string v3, "HmacMD5"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;->HmacMD5:Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;

    filled-new-array {v0, v1, v2}, [Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;

    move-result-object v0

    sput-object v0, Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;->$VALUES:[Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;

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

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;
    .locals 1

    const-class v0, Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;

    return-object p0
.end method

.method public static values()[Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;
    .locals 1

    sget-object v0, Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;->$VALUES:[Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;

    invoke-virtual {v0}, [Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;

    return-object v0
.end method
