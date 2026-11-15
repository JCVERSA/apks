.class public final enum Lcom/facebook/biddingkit/http/util/HttpStatusCode;
.super Ljava/lang/Enum;
.source "source.java"


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
    .locals 12

    .line 1
    new-instance v0, Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0xc8

    .line 5
    .line 6
    const-string v3, "SUCCESS"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/biddingkit/http/util/HttpStatusCode;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/facebook/biddingkit/http/util/HttpStatusCode;->SUCCESS:Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    .line 12
    .line 13
    new-instance v2, Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    const/16 v4, 0xcc

    .line 17
    .line 18
    const-string v5, "NO_BID"

    .line 19
    .line 20
    invoke-direct {v2, v5, v3, v4}, Lcom/facebook/biddingkit/http/util/HttpStatusCode;-><init>(Ljava/lang/String;II)V

    .line 21
    .line 22
    .line 23
    sput-object v2, Lcom/facebook/biddingkit/http/util/HttpStatusCode;->NO_BID:Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    .line 24
    .line 25
    new-instance v4, Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    .line 26
    .line 27
    const/4 v5, 0x2

    .line 28
    const/16 v6, 0x190

    .line 29
    .line 30
    const-string v7, "BAD_REQUEST"

    .line 31
    .line 32
    invoke-direct {v4, v7, v5, v6}, Lcom/facebook/biddingkit/http/util/HttpStatusCode;-><init>(Ljava/lang/String;II)V

    .line 33
    .line 34
    .line 35
    sput-object v4, Lcom/facebook/biddingkit/http/util/HttpStatusCode;->BAD_REQUEST:Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    .line 36
    .line 37
    new-instance v6, Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    .line 38
    .line 39
    const/4 v7, 0x3

    .line 40
    const/16 v8, 0x1f8

    .line 41
    .line 42
    const-string v9, "TIMEOUT"

    .line 43
    .line 44
    invoke-direct {v6, v9, v7, v8}, Lcom/facebook/biddingkit/http/util/HttpStatusCode;-><init>(Ljava/lang/String;II)V

    .line 45
    .line 46
    .line 47
    sput-object v6, Lcom/facebook/biddingkit/http/util/HttpStatusCode;->TIMEOUT:Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    .line 48
    .line 49
    new-instance v8, Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    .line 50
    .line 51
    const/4 v9, 0x4

    .line 52
    const/4 v10, -0x1

    .line 53
    const-string v11, "UNKNOWN"

    .line 54
    .line 55
    invoke-direct {v8, v11, v9, v10}, Lcom/facebook/biddingkit/http/util/HttpStatusCode;-><init>(Ljava/lang/String;II)V

    .line 56
    .line 57
    .line 58
    sput-object v8, Lcom/facebook/biddingkit/http/util/HttpStatusCode;->UNKNOWN:Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    .line 59
    .line 60
    const/4 v10, 0x5

    .line 61
    new-array v10, v10, [Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    .line 62
    .line 63
    aput-object v0, v10, v1

    .line 64
    .line 65
    aput-object v2, v10, v3

    .line 66
    .line 67
    aput-object v4, v10, v5

    .line 68
    .line 69
    aput-object v6, v10, v7

    .line 70
    .line 71
    aput-object v8, v10, v9

    .line 72
    .line 73
    sput-object v10, Lcom/facebook/biddingkit/http/util/HttpStatusCode;->$VALUES:[Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    .line 74
    .line 75
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/facebook/biddingkit/http/util/HttpStatusCode;->mStatusCode:I

    .line 5
    .line 6
    return-void
.end method

.method public static getValue(I)Lcom/facebook/biddingkit/http/util/HttpStatusCode;
    .locals 5

    .line 1
    invoke-static {}, Lcom/facebook/biddingkit/http/util/HttpStatusCode;->values()[Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    iget v4, v3, Lcom/facebook/biddingkit/http/util/HttpStatusCode;->mStatusCode:I

    .line 12
    .line 13
    if-ne v4, p0, :cond_0

    .line 14
    .line 15
    return-object v3

    .line 16
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    sget-object p0, Lcom/facebook/biddingkit/http/util/HttpStatusCode;->UNKNOWN:Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    .line 20
    .line 21
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/biddingkit/http/util/HttpStatusCode;
    .locals 1

    .line 1
    const-class v0, Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/facebook/biddingkit/http/util/HttpStatusCode;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/biddingkit/http/util/HttpStatusCode;->$VALUES:[Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/facebook/biddingkit/http/util/HttpStatusCode;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/facebook/biddingkit/http/util/HttpStatusCode$a;->a:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_3

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x4

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    const-string v0, "Unknown error"

    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_0
    const-string v0, "Server timeout"

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_1
    const-string v0, "Invalid request"

    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_2
    const-string v0, "No bid"

    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_3
    const-string v0, ""

    .line 34
    .line 35
    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/biddingkit/http/util/HttpStatusCode;->mStatusCode:I

    .line 2
    .line 3
    return v0
.end method
