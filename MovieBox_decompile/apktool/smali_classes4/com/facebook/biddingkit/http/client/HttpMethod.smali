.class public final enum Lcom/facebook/biddingkit/http/client/HttpMethod;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/biddingkit/http/client/HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/biddingkit/http/client/HttpMethod;

.field public static final enum GET:Lcom/facebook/biddingkit/http/client/HttpMethod;

.field public static final enum POST:Lcom/facebook/biddingkit/http/client/HttpMethod;


# instance fields
.field private doInput:Z

.field private doOutput:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/facebook/biddingkit/http/client/HttpMethod;

    .line 2
    .line 3
    const-string v1, "GET"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3, v2}, Lcom/facebook/biddingkit/http/client/HttpMethod;-><init>(Ljava/lang/String;IZZ)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/facebook/biddingkit/http/client/HttpMethod;->GET:Lcom/facebook/biddingkit/http/client/HttpMethod;

    .line 11
    .line 12
    new-instance v1, Lcom/facebook/biddingkit/http/client/HttpMethod;

    .line 13
    .line 14
    const-string v4, "POST"

    .line 15
    .line 16
    invoke-direct {v1, v4, v3, v3, v3}, Lcom/facebook/biddingkit/http/client/HttpMethod;-><init>(Ljava/lang/String;IZZ)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/facebook/biddingkit/http/client/HttpMethod;->POST:Lcom/facebook/biddingkit/http/client/HttpMethod;

    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    new-array v4, v4, [Lcom/facebook/biddingkit/http/client/HttpMethod;

    .line 23
    .line 24
    aput-object v0, v4, v2

    .line 25
    .line 26
    aput-object v1, v4, v3

    .line 27
    .line 28
    sput-object v4, Lcom/facebook/biddingkit/http/client/HttpMethod;->$VALUES:[Lcom/facebook/biddingkit/http/client/HttpMethod;

    .line 29
    .line 30
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-boolean p3, p0, Lcom/facebook/biddingkit/http/client/HttpMethod;->doInput:Z

    .line 5
    .line 6
    iput-boolean p4, p0, Lcom/facebook/biddingkit/http/client/HttpMethod;->doOutput:Z

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/biddingkit/http/client/HttpMethod;
    .locals 1

    .line 1
    const-class v0, Lcom/facebook/biddingkit/http/client/HttpMethod;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/facebook/biddingkit/http/client/HttpMethod;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/facebook/biddingkit/http/client/HttpMethod;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/biddingkit/http/client/HttpMethod;->$VALUES:[Lcom/facebook/biddingkit/http/client/HttpMethod;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/facebook/biddingkit/http/client/HttpMethod;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/facebook/biddingkit/http/client/HttpMethod;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getDoInput()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/biddingkit/http/client/HttpMethod;->doInput:Z

    .line 2
    .line 3
    return v0
.end method

.method public getDoOutput()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/biddingkit/http/client/HttpMethod;->doOutput:Z

    .line 2
    .line 3
    return v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
