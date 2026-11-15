.class public final enum Lcom/transsion/sysbar/NavigationBarType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/sysbar/NavigationBarType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/sysbar/NavigationBarType;

.field public static final enum CLASSIC:Lcom/transsion/sysbar/NavigationBarType;

.field public static final enum DOUBLE:Lcom/transsion/sysbar/NavigationBarType;

.field public static final enum GESTURES:Lcom/transsion/sysbar/NavigationBarType;

.field public static final enum GESTURES_THREE_STAGE:Lcom/transsion/sysbar/NavigationBarType;

.field public static final enum UNKNOWN:Lcom/transsion/sysbar/NavigationBarType;


# instance fields
.field private final type:I


# direct methods
.method private static synthetic $values()[Lcom/transsion/sysbar/NavigationBarType;
    .locals 5

    sget-object v0, Lcom/transsion/sysbar/NavigationBarType;->CLASSIC:Lcom/transsion/sysbar/NavigationBarType;

    sget-object v1, Lcom/transsion/sysbar/NavigationBarType;->GESTURES:Lcom/transsion/sysbar/NavigationBarType;

    sget-object v2, Lcom/transsion/sysbar/NavigationBarType;->GESTURES_THREE_STAGE:Lcom/transsion/sysbar/NavigationBarType;

    sget-object v3, Lcom/transsion/sysbar/NavigationBarType;->DOUBLE:Lcom/transsion/sysbar/NavigationBarType;

    sget-object v4, Lcom/transsion/sysbar/NavigationBarType;->UNKNOWN:Lcom/transsion/sysbar/NavigationBarType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/transsion/sysbar/NavigationBarType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/transsion/sysbar/NavigationBarType;

    const-string v1, "CLASSIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/sysbar/NavigationBarType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/sysbar/NavigationBarType;->CLASSIC:Lcom/transsion/sysbar/NavigationBarType;

    new-instance v0, Lcom/transsion/sysbar/NavigationBarType;

    const-string v1, "GESTURES"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/sysbar/NavigationBarType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/sysbar/NavigationBarType;->GESTURES:Lcom/transsion/sysbar/NavigationBarType;

    new-instance v0, Lcom/transsion/sysbar/NavigationBarType;

    const-string v1, "GESTURES_THREE_STAGE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/sysbar/NavigationBarType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/sysbar/NavigationBarType;->GESTURES_THREE_STAGE:Lcom/transsion/sysbar/NavigationBarType;

    new-instance v0, Lcom/transsion/sysbar/NavigationBarType;

    const-string v1, "DOUBLE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/sysbar/NavigationBarType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/sysbar/NavigationBarType;->DOUBLE:Lcom/transsion/sysbar/NavigationBarType;

    new-instance v0, Lcom/transsion/sysbar/NavigationBarType;

    const/4 v1, 0x4

    const/4 v2, -0x1

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/sysbar/NavigationBarType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/sysbar/NavigationBarType;->UNKNOWN:Lcom/transsion/sysbar/NavigationBarType;

    invoke-static {}, Lcom/transsion/sysbar/NavigationBarType;->$values()[Lcom/transsion/sysbar/NavigationBarType;

    move-result-object v0

    sput-object v0, Lcom/transsion/sysbar/NavigationBarType;->$VALUES:[Lcom/transsion/sysbar/NavigationBarType;

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

    iput p3, p0, Lcom/transsion/sysbar/NavigationBarType;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/sysbar/NavigationBarType;
    .locals 1

    const-class v0, Lcom/transsion/sysbar/NavigationBarType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/sysbar/NavigationBarType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/sysbar/NavigationBarType;
    .locals 1

    sget-object v0, Lcom/transsion/sysbar/NavigationBarType;->$VALUES:[Lcom/transsion/sysbar/NavigationBarType;

    invoke-virtual {v0}, [Lcom/transsion/sysbar/NavigationBarType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/sysbar/NavigationBarType;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 0

    iget p0, p0, Lcom/transsion/sysbar/NavigationBarType;->type:I

    return p0
.end method
