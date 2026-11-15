.class public final enum Lcom/facebook/biddingkit/bidders/LossCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/biddingkit/bidders/LossCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/biddingkit/bidders/LossCode;

.field public static final enum DID_NOT_PARTICIPATE:Lcom/facebook/biddingkit/bidders/LossCode;

.field public static final enum NO_BID:Lcom/facebook/biddingkit/bidders/LossCode;

.field public static final enum OUTBID:Lcom/facebook/biddingkit/bidders/LossCode;

.field public static final enum TIMEOUT:Lcom/facebook/biddingkit/bidders/LossCode;

.field public static final enum WIN:Lcom/facebook/biddingkit/bidders/LossCode;


# instance fields
.field private final mCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/facebook/biddingkit/bidders/LossCode;

    const-string v1, "WIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/biddingkit/bidders/LossCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/biddingkit/bidders/LossCode;->WIN:Lcom/facebook/biddingkit/bidders/LossCode;

    new-instance v1, Lcom/facebook/biddingkit/bidders/LossCode;

    const-string v2, "TIMEOUT"

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/biddingkit/bidders/LossCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/facebook/biddingkit/bidders/LossCode;->TIMEOUT:Lcom/facebook/biddingkit/bidders/LossCode;

    new-instance v2, Lcom/facebook/biddingkit/bidders/LossCode;

    const-string v3, "NO_BID"

    const/16 v5, 0x9

    invoke-direct {v2, v3, v4, v5}, Lcom/facebook/biddingkit/bidders/LossCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/facebook/biddingkit/bidders/LossCode;->NO_BID:Lcom/facebook/biddingkit/bidders/LossCode;

    new-instance v3, Lcom/facebook/biddingkit/bidders/LossCode;

    const/4 v4, 0x3

    const/16 v5, 0x66

    const-string v6, "OUTBID"

    invoke-direct {v3, v6, v4, v5}, Lcom/facebook/biddingkit/bidders/LossCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/facebook/biddingkit/bidders/LossCode;->OUTBID:Lcom/facebook/biddingkit/bidders/LossCode;

    new-instance v4, Lcom/facebook/biddingkit/bidders/LossCode;

    const/4 v5, 0x4

    const/16 v6, 0x7d3

    const-string v7, "DID_NOT_PARTICIPATE"

    invoke-direct {v4, v7, v5, v6}, Lcom/facebook/biddingkit/bidders/LossCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/facebook/biddingkit/bidders/LossCode;->DID_NOT_PARTICIPATE:Lcom/facebook/biddingkit/bidders/LossCode;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/facebook/biddingkit/bidders/LossCode;

    move-result-object v0

    sput-object v0, Lcom/facebook/biddingkit/bidders/LossCode;->$VALUES:[Lcom/facebook/biddingkit/bidders/LossCode;

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

    iput p3, p0, Lcom/facebook/biddingkit/bidders/LossCode;->mCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/biddingkit/bidders/LossCode;
    .locals 1

    const-class v0, Lcom/facebook/biddingkit/bidders/LossCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/biddingkit/bidders/LossCode;

    return-object p0
.end method

.method public static values()[Lcom/facebook/biddingkit/bidders/LossCode;
    .locals 1

    sget-object v0, Lcom/facebook/biddingkit/bidders/LossCode;->$VALUES:[Lcom/facebook/biddingkit/bidders/LossCode;

    invoke-virtual {v0}, [Lcom/facebook/biddingkit/bidders/LossCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/biddingkit/bidders/LossCode;

    return-object v0
.end method


# virtual methods
.method public getStringValue()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/facebook/biddingkit/bidders/LossCode;->mCode:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
