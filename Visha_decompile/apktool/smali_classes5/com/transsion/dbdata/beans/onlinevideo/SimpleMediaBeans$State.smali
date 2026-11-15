.class public final enum Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;

.field public static final enum EMPTY:Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;

.field public static final enum ERROR:Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;

.field public static final enum SUCESS:Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;


# direct methods
.method private static synthetic $values()[Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;
    .locals 3

    sget-object v0, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;->ERROR:Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;

    sget-object v1, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;->EMPTY:Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;

    sget-object v2, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;->SUCESS:Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;

    filled-new-array {v0, v1, v2}, [Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;

    const-string v1, "ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;->ERROR:Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;

    new-instance v0, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;

    const-string v1, "EMPTY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;->EMPTY:Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;

    new-instance v0, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;

    const-string v1, "SUCESS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;->SUCESS:Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;

    invoke-static {}, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;->$values()[Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;->$VALUES:[Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;
    .locals 1

    const-class v0, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;

    return-object p0
.end method

.method public static values()[Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;->$VALUES:[Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;

    invoke-virtual {v0}, [Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;

    return-object v0
.end method
