.class public final enum Lcom/facebook/biddingkit/http/util/HttpStatusCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/biddingkit/http/util/HttpStatusCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/biddingkit/http/util/HttpStatusCode;

.field public static final enum BAD_REQUEST:Lcom/facebook/biddingkit/http/util/HttpStatusCode;

.field public static final enum NO_BID:Lcom/facebook/biddingkit/http/util/HttpStatusCode;

.field public static final enum SUCCESS:Lcom/facebook/biddingkit/http/util/HttpStatusCode;

.field public static final enum TIMEOUT:Lcom/facebook/biddingkit/http/util/HttpStatusCode;

.field public static final enum UNKNOWN:Lcom/facebook/biddingkit/http/util/HttpStatusCode;


# instance fields
.field private mStatusCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    const/4 v1, 0x0

    const/16 v2, 0xc8

    const-string v3, "SUCCESS"

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/biddingkit/http/util/HttpStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/biddingkit/http/util/HttpStatusCode;->SUCCESS:Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    new-instance v1, Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    const/4 v2, 0x1

    const/16 v3, 0xcc

    const-string v4, "NO_BID"

    invoke-direct {v1, v4, v2, v3}, Lcom/facebook/biddingkit/http/util/HttpStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/facebook/biddingkit/http/util/HttpStatusCode;->NO_BID:Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    new-instance v2, Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    const/4 v3, 0x2

    const/16 v4, 0x190

    const-string v5, "BAD_REQUEST"

    invoke-direct {v2, v5, v3, v4}, Lcom/facebook/biddingkit/http/util/HttpStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/facebook/biddingkit/http/util/HttpStatusCode;->BAD_REQUEST:Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    new-instance v3, Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    const/4 v4, 0x3

    const/16 v5, 0x1f8

    const-string v6, "TIMEOUT"

    invoke-direct {v3, v6, v4, v5}, Lcom/facebook/biddingkit/http/util/HttpStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/facebook/biddingkit/http/util/HttpStatusCode;->TIMEOUT:Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    new-instance v4, Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    const/4 v5, 0x4

    const/4 v6, -0x1

    const-string v7, "UNKNOWN"

    invoke-direct {v4, v7, v5, v6}, Lcom/facebook/biddingkit/http/util/HttpStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/facebook/biddingkit/http/util/HttpStatusCode;->UNKNOWN:Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    move-result-object v0

    sput-object v0, Lcom/facebook/biddingkit/http/util/HttpStatusCode;->$VALUES:[Lcom/facebook/biddingkit/http/util/HttpStatusCode;

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

    iput p3, p0, Lcom/facebook/biddingkit/http/util/HttpStatusCode;->mStatusCode:I

    return-void
.end method

.method public static getValue(I)Lcom/facebook/biddingkit/http/util/HttpStatusCode;
    .locals 5

    invoke-static {}, Lcom/facebook/biddingkit/http/util/HttpStatusCode;->values()[Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/facebook/biddingkit/http/util/HttpStatusCode;->mStatusCode:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/facebook/biddingkit/http/util/HttpStatusCode;->UNKNOWN:Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/biddingkit/http/util/HttpStatusCode;
    .locals 1

    const-class v0, Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    return-object p0
.end method

.method public static values()[Lcom/facebook/biddingkit/http/util/HttpStatusCode;
    .locals 1

    sget-object v0, Lcom/facebook/biddingkit/http/util/HttpStatusCode;->$VALUES:[Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    invoke-virtual {v0}, [Lcom/facebook/biddingkit/http/util/HttpStatusCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    return-object v0
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/facebook/biddingkit/http/util/HttpStatusCode$1;->$SwitchMap$com$facebook$biddingkit$http$util$HttpStatusCode:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string p0, "Unknown error"

    return-object p0

    :cond_0
    const-string p0, "Server timeout"

    return-object p0

    :cond_1
    const-string p0, "Invalid request"

    return-object p0

    :cond_2
    const-string p0, "No bid"

    return-object p0

    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method public getStatusCode()I
    .locals 0

    iget p0, p0, Lcom/facebook/biddingkit/http/util/HttpStatusCode;->mStatusCode:I

    return p0
.end method
