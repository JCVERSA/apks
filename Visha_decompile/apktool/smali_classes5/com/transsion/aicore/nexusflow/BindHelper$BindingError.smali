.class public final enum Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\r\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\u0004\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0007\u001a\u0004\u0008\u0008\u0010\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "com/transsion/aicore/nexusflow/BindHelper$BindingError",
        "",
        "Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;",
        "",
        "message",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "Ljava/lang/String;",
        "getMessage",
        "()Ljava/lang/String;",
        "SECURITY_EXCEPTION",
        "PACKAGE_NOT_FOUND",
        "SERVICE_NOT_BINDABLE",
        "ALL_METHODS_FAILED",
        "TIMEOUT",
        "UNKNOWN",
        "ipc_business_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Ldb3;

.field private static final synthetic $VALUES:[Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;

.field public static final enum ALL_METHODS_FAILED:Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;

.field public static final enum PACKAGE_NOT_FOUND:Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;

.field public static final enum SECURITY_EXCEPTION:Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;

.field public static final enum SERVICE_NOT_BINDABLE:Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;

.field public static final enum TIMEOUT:Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;

.field public static final enum UNKNOWN:Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;


# instance fields
.field private final message:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;
    .locals 6

    sget-object v0, Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;->SECURITY_EXCEPTION:Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;

    sget-object v1, Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;->PACKAGE_NOT_FOUND:Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;

    sget-object v2, Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;->SERVICE_NOT_BINDABLE:Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;

    sget-object v3, Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;->ALL_METHODS_FAILED:Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;

    sget-object v4, Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;->TIMEOUT:Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;

    sget-object v5, Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;->UNKNOWN:Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;

    filled-new-array/range {v0 .. v5}, [Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;

    const/4 v1, 0x0

    const-string v2, "\u5b89\u5168\u5f02\u5e38: \u6743\u9650\u4e0d\u8db3"

    const-string v3, "SECURITY_EXCEPTION"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;->SECURITY_EXCEPTION:Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;

    new-instance v0, Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;

    const/4 v1, 0x1

    const-string v2, "\u76ee\u6807\u5305\u672a\u627e\u5230"

    const-string v3, "PACKAGE_NOT_FOUND"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;->PACKAGE_NOT_FOUND:Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;

    new-instance v0, Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;

    const/4 v1, 0x2

    const-string v2, "\u670d\u52a1\u4e0d\u53ef\u7ed1\u5b9a"

    const-string v3, "SERVICE_NOT_BINDABLE"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;->SERVICE_NOT_BINDABLE:Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;

    new-instance v0, Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;

    const/4 v1, 0x3

    const-string v2, "\u6240\u6709\u7ed1\u5b9a\u65b9\u6cd5\u5747\u5931\u8d25"

    const-string v3, "ALL_METHODS_FAILED"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;->ALL_METHODS_FAILED:Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;

    new-instance v0, Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;

    const/4 v1, 0x4

    const-string v2, "\u7ed1\u5b9a\u8d85\u65f6"

    const-string v3, "TIMEOUT"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;->TIMEOUT:Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;

    new-instance v0, Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;

    const/4 v1, 0x5

    const-string v2, "\u672a\u77e5\u9519\u8bef"

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;->UNKNOWN:Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;

    invoke-static {}, Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;->$values()[Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;

    move-result-object v0

    sput-object v0, Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;->$VALUES:[Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;

    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Ldb3;

    move-result-object v0

    sput-object v0, Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;->$ENTRIES:Ldb3;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;->message:Ljava/lang/String;

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

    sget-object v0, Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;->$ENTRIES:Ldb3;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;
    .locals 1

    const-class v0, Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;

    return-object p0
.end method

.method public static values()[Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;
    .locals 1

    sget-object v0, Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;->$VALUES:[Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;

    return-object v0
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;->message:Ljava/lang/String;

    return-object p0
.end method
