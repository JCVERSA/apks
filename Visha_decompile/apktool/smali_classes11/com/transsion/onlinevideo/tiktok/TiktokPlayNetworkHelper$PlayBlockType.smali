.class public final enum Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlayBlockType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "NONE",
        "NO_NET",
        "NO_WIFI",
        "onlinevideo_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Ldb3;

.field private static final synthetic $VALUES:[Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;

.field public static final enum NONE:Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;

.field public static final enum NO_NET:Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;

.field public static final enum NO_WIFI:Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;


# direct methods
.method private static final synthetic $values()[Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;
    .locals 3

    sget-object v0, Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;->NONE:Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;

    sget-object v1, Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;->NO_NET:Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;

    sget-object v2, Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;->NO_WIFI:Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;

    filled-new-array {v0, v1, v2}, [Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;->NONE:Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;

    new-instance v0, Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;

    const-string v1, "NO_NET"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;->NO_NET:Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;

    new-instance v0, Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;

    const-string v1, "NO_WIFI"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;->NO_WIFI:Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;

    invoke-static {}, Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;->$values()[Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;

    move-result-object v0

    sput-object v0, Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;->$VALUES:[Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;

    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Ldb3;

    move-result-object v0

    sput-object v0, Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;->$ENTRIES:Ldb3;

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

.method public static getEntries()Ldb3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldb3;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;->$ENTRIES:Ldb3;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;
    .locals 1

    const-class v0, Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;
    .locals 1

    sget-object v0, Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;->$VALUES:[Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;

    return-object v0
.end method
