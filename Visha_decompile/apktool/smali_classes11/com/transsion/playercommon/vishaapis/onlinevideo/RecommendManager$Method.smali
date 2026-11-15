.class public final enum Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$Method;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$Method;

.field public static final enum GET:Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$Method;

.field public static final enum POST:Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$Method;


# direct methods
.method private static synthetic $values()[Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$Method;
    .locals 2

    sget-object v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$Method;->POST:Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$Method;

    sget-object v1, Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$Method;->GET:Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$Method;

    filled-new-array {v0, v1}, [Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$Method;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$Method;

    const-string v1, "POST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$Method;->POST:Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$Method;

    new-instance v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$Method;

    const-string v1, "GET"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$Method;->GET:Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$Method;

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$Method;->$values()[Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$Method;

    move-result-object v0

    sput-object v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$Method;->$VALUES:[Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$Method;

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

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$Method;
    .locals 1

    const-class v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$Method;

    return-object p0
.end method

.method public static values()[Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$Method;
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$Method;->$VALUES:[Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$Method;

    invoke-virtual {v0}, [Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$Method;

    return-object v0
.end method
