.class public final enum Lcom/transsion/data/Repository;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/data/Repository;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/data/Repository;

.field public static final enum INSTANCE:Lcom/transsion/data/Repository;


# instance fields
.field public isLrcMode:Z

.field private listFlag:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public mainTab:I


# direct methods
.method private static synthetic $values()[Lcom/transsion/data/Repository;
    .locals 1

    sget-object v0, Lcom/transsion/data/Repository;->INSTANCE:Lcom/transsion/data/Repository;

    filled-new-array {v0}, [Lcom/transsion/data/Repository;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/data/Repository;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/data/Repository;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/data/Repository;->INSTANCE:Lcom/transsion/data/Repository;

    invoke-static {}, Lcom/transsion/data/Repository;->$values()[Lcom/transsion/data/Repository;

    move-result-object v0

    sput-object v0, Lcom/transsion/data/Repository;->$VALUES:[Lcom/transsion/data/Repository;

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

    const/4 p1, 0x0

    iput p1, p0, Lcom/transsion/data/Repository;->mainTab:I

    iput-boolean p1, p0, Lcom/transsion/data/Repository;->isLrcMode:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/data/Repository;
    .locals 1

    const-class v0, Lcom/transsion/data/Repository;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/data/Repository;

    return-object p0
.end method

.method public static values()[Lcom/transsion/data/Repository;
    .locals 1

    sget-object v0, Lcom/transsion/data/Repository;->$VALUES:[Lcom/transsion/data/Repository;

    invoke-virtual {v0}, [Lcom/transsion/data/Repository;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/data/Repository;

    return-object v0
.end method


# virtual methods
.method public getListFlag()I
    .locals 0

    iget p0, p0, Lcom/transsion/data/Repository;->listFlag:I

    return p0
.end method

.method public setListFlag(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/data/Repository;->listFlag:I

    return-void
.end method
