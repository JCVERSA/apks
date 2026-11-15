.class public final enum Lcom/transsion/log/util/UBTLogLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/log/util/UBTLogLevel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\t\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/transsion/log/util/UBTLogLevel;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "NORMAL",
        "ACTION",
        "DEBUG",
        "NETWORK",
        "ERROR",
        "SYSTEM_ERROR",
        "UBT_release"
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

.field private static final synthetic $VALUES:[Lcom/transsion/log/util/UBTLogLevel;

.field public static final enum ACTION:Lcom/transsion/log/util/UBTLogLevel;

.field public static final enum DEBUG:Lcom/transsion/log/util/UBTLogLevel;

.field public static final enum ERROR:Lcom/transsion/log/util/UBTLogLevel;

.field public static final enum NETWORK:Lcom/transsion/log/util/UBTLogLevel;

.field public static final enum NORMAL:Lcom/transsion/log/util/UBTLogLevel;

.field public static final enum SYSTEM_ERROR:Lcom/transsion/log/util/UBTLogLevel;


# direct methods
.method private static final synthetic $values()[Lcom/transsion/log/util/UBTLogLevel;
    .locals 6

    sget-object v0, Lcom/transsion/log/util/UBTLogLevel;->NORMAL:Lcom/transsion/log/util/UBTLogLevel;

    sget-object v1, Lcom/transsion/log/util/UBTLogLevel;->ACTION:Lcom/transsion/log/util/UBTLogLevel;

    sget-object v2, Lcom/transsion/log/util/UBTLogLevel;->DEBUG:Lcom/transsion/log/util/UBTLogLevel;

    sget-object v3, Lcom/transsion/log/util/UBTLogLevel;->NETWORK:Lcom/transsion/log/util/UBTLogLevel;

    sget-object v4, Lcom/transsion/log/util/UBTLogLevel;->ERROR:Lcom/transsion/log/util/UBTLogLevel;

    sget-object v5, Lcom/transsion/log/util/UBTLogLevel;->SYSTEM_ERROR:Lcom/transsion/log/util/UBTLogLevel;

    filled-new-array/range {v0 .. v5}, [Lcom/transsion/log/util/UBTLogLevel;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/log/util/UBTLogLevel;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/log/util/UBTLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/log/util/UBTLogLevel;->NORMAL:Lcom/transsion/log/util/UBTLogLevel;

    new-instance v0, Lcom/transsion/log/util/UBTLogLevel;

    const-string v1, "ACTION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/log/util/UBTLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/log/util/UBTLogLevel;->ACTION:Lcom/transsion/log/util/UBTLogLevel;

    new-instance v0, Lcom/transsion/log/util/UBTLogLevel;

    const-string v1, "DEBUG"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/log/util/UBTLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/log/util/UBTLogLevel;->DEBUG:Lcom/transsion/log/util/UBTLogLevel;

    new-instance v0, Lcom/transsion/log/util/UBTLogLevel;

    const-string v1, "NETWORK"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/log/util/UBTLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/log/util/UBTLogLevel;->NETWORK:Lcom/transsion/log/util/UBTLogLevel;

    new-instance v0, Lcom/transsion/log/util/UBTLogLevel;

    const-string v1, "ERROR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/transsion/log/util/UBTLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/log/util/UBTLogLevel;->ERROR:Lcom/transsion/log/util/UBTLogLevel;

    new-instance v0, Lcom/transsion/log/util/UBTLogLevel;

    const-string v1, "SYSTEM_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/transsion/log/util/UBTLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/log/util/UBTLogLevel;->SYSTEM_ERROR:Lcom/transsion/log/util/UBTLogLevel;

    invoke-static {}, Lcom/transsion/log/util/UBTLogLevel;->$values()[Lcom/transsion/log/util/UBTLogLevel;

    move-result-object v0

    sput-object v0, Lcom/transsion/log/util/UBTLogLevel;->$VALUES:[Lcom/transsion/log/util/UBTLogLevel;

    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Ldb3;

    move-result-object v0

    sput-object v0, Lcom/transsion/log/util/UBTLogLevel;->$ENTRIES:Ldb3;

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

    sget-object v0, Lcom/transsion/log/util/UBTLogLevel;->$ENTRIES:Ldb3;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/log/util/UBTLogLevel;
    .locals 1

    const-class v0, Lcom/transsion/log/util/UBTLogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/log/util/UBTLogLevel;

    return-object p0
.end method

.method public static values()[Lcom/transsion/log/util/UBTLogLevel;
    .locals 1

    sget-object v0, Lcom/transsion/log/util/UBTLogLevel;->$VALUES:[Lcom/transsion/log/util/UBTLogLevel;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/log/util/UBTLogLevel;

    return-object v0
.end method
