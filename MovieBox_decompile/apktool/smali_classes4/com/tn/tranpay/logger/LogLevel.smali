.class public final enum Lcom/tn/tranpay/logger/LogLevel;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tn/tranpay/logger/LogLevel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/tn/tranpay/logger/LogLevel;",
        "",
        "(Ljava/lang/String;I)V",
        "DEBUG",
        "INFO",
        "WARNING",
        "ERROR",
        "lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tn/tranpay/logger/LogLevel;

.field public static final enum DEBUG:Lcom/tn/tranpay/logger/LogLevel;

.field public static final enum ERROR:Lcom/tn/tranpay/logger/LogLevel;

.field public static final enum INFO:Lcom/tn/tranpay/logger/LogLevel;

.field public static final enum WARNING:Lcom/tn/tranpay/logger/LogLevel;


# direct methods
.method private static final synthetic $values()[Lcom/tn/tranpay/logger/LogLevel;
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Lcom/tn/tranpay/logger/LogLevel;

    .line 3
    .line 4
    sget-object v1, Lcom/tn/tranpay/logger/LogLevel;->DEBUG:Lcom/tn/tranpay/logger/LogLevel;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/tn/tranpay/logger/LogLevel;->INFO:Lcom/tn/tranpay/logger/LogLevel;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/tn/tranpay/logger/LogLevel;->WARNING:Lcom/tn/tranpay/logger/LogLevel;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lcom/tn/tranpay/logger/LogLevel;->ERROR:Lcom/tn/tranpay/logger/LogLevel;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/tn/tranpay/logger/LogLevel;

    .line 2
    .line 3
    const-string v1, "DEBUG"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/tn/tranpay/logger/LogLevel;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/tn/tranpay/logger/LogLevel;->DEBUG:Lcom/tn/tranpay/logger/LogLevel;

    .line 10
    .line 11
    new-instance v0, Lcom/tn/tranpay/logger/LogLevel;

    .line 12
    .line 13
    const-string v1, "INFO"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/tn/tranpay/logger/LogLevel;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/tn/tranpay/logger/LogLevel;->INFO:Lcom/tn/tranpay/logger/LogLevel;

    .line 20
    .line 21
    new-instance v0, Lcom/tn/tranpay/logger/LogLevel;

    .line 22
    .line 23
    const-string v1, "WARNING"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcom/tn/tranpay/logger/LogLevel;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/tn/tranpay/logger/LogLevel;->WARNING:Lcom/tn/tranpay/logger/LogLevel;

    .line 30
    .line 31
    new-instance v0, Lcom/tn/tranpay/logger/LogLevel;

    .line 32
    .line 33
    const-string v1, "ERROR"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lcom/tn/tranpay/logger/LogLevel;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/tn/tranpay/logger/LogLevel;->ERROR:Lcom/tn/tranpay/logger/LogLevel;

    .line 40
    .line 41
    invoke-static {}, Lcom/tn/tranpay/logger/LogLevel;->$values()[Lcom/tn/tranpay/logger/LogLevel;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lcom/tn/tranpay/logger/LogLevel;->$VALUES:[Lcom/tn/tranpay/logger/LogLevel;

    .line 46
    .line 47
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tn/tranpay/logger/LogLevel;
    .locals 1

    .line 1
    const-class v0, Lcom/tn/tranpay/logger/LogLevel;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/tn/tranpay/logger/LogLevel;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/tn/tranpay/logger/LogLevel;
    .locals 1

    .line 1
    sget-object v0, Lcom/tn/tranpay/logger/LogLevel;->$VALUES:[Lcom/tn/tranpay/logger/LogLevel;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/tn/tranpay/logger/LogLevel;

    .line 8
    .line 9
    return-object v0
.end method
