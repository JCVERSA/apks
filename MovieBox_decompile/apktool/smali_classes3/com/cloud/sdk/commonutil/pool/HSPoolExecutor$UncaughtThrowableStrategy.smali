.class public enum Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "UncaughtThrowableStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy;

.field public static final DEFAULT:Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy;

.field public static final enum IGNORE:Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy;

.field public static final enum LOG:Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy;

.field public static final enum THROW:Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy;


# direct methods
.method private static synthetic $values()[Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy;

    .line 3
    .line 4
    sget-object v1, Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy;->IGNORE:Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy;->LOG:Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy;->THROW:Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy;

    .line 2
    .line 3
    const-string v1, "IGNORE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy;->IGNORE:Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy;

    .line 10
    .line 11
    new-instance v0, Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy$1;

    .line 12
    .line 13
    const-string v1, "LOG"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy$1;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy;->LOG:Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy;

    .line 20
    .line 21
    new-instance v1, Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy$2;

    .line 22
    .line 23
    const-string v2, "THROW"

    .line 24
    .line 25
    const/4 v3, 0x2

    .line 26
    invoke-direct {v1, v2, v3}, Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy$2;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v1, Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy;->THROW:Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy;

    .line 30
    .line 31
    invoke-static {}, Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy;->$values()[Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    sput-object v1, Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy;->$VALUES:[Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy;

    .line 36
    .line 37
    sput-object v0, Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy;->DEFAULT:Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy;

    .line 38
    .line 39
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/cloud/sdk/commonutil/pool/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy;
    .locals 1

    .line 1
    const-class v0, Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy;->$VALUES:[Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method protected handle(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    return-void
.end method
