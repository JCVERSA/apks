.class public final enum Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayType;

.field public static final enum DETAIL:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayType;

.field public static final enum PREVIEW:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayType;


# instance fields
.field final value:I


# direct methods
.method private static synthetic $values()[Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayType;
    .locals 2

    sget-object v0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayType;->PREVIEW:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayType;

    sget-object v1, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayType;->DETAIL:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayType;

    filled-new-array {v0, v1}, [Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayType;

    const-string v1, "PREVIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayType;->PREVIEW:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayType;

    new-instance v0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayType;

    const-string v1, "DETAIL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayType;->DETAIL:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayType;

    invoke-static {}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayType;->$values()[Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayType;

    move-result-object v0

    sput-object v0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayType;->$VALUES:[Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayType;

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

    iput p3, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayType;
    .locals 1

    const-class v0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayType;
    .locals 1

    sget-object v0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayType;->$VALUES:[Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayType;

    invoke-virtual {v0}, [Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayType;->value:I

    return p0
.end method
