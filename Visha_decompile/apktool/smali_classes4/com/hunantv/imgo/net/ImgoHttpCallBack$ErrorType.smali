.class public final enum Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/imgo/net/ImgoHttpCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;

.field public static final enum BUSINESS_ERROR:Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;

.field public static final enum HTTP_ERROR:Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;

.field public static final enum PARSE_ERROR:Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;

    const-string v1, "HTTP_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;->HTTP_ERROR:Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;

    new-instance v1, Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;

    const-string v2, "PARSE_ERROR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;->PARSE_ERROR:Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;

    new-instance v2, Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;

    const-string v3, "BUSINESS_ERROR"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;->BUSINESS_ERROR:Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;

    filled-new-array {v0, v1, v2}, [Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;

    move-result-object v0

    sput-object v0, Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;->$VALUES:[Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;
    .locals 1

    const-class v0, Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;

    return-object p0
.end method

.method public static values()[Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;
    .locals 1

    sget-object v0, Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;->$VALUES:[Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;

    invoke-virtual {v0}, [Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;

    return-object v0
.end method
