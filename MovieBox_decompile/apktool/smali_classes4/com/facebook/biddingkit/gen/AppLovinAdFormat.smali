.class public final enum Lcom/facebook/biddingkit/gen/AppLovinAdFormat;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/biddingkit/gen/AppLovinAdFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/biddingkit/gen/AppLovinAdFormat;

.field public static final enum BANNER:Lcom/facebook/biddingkit/gen/AppLovinAdFormat;

.field public static final enum INTERSTITIAL:Lcom/facebook/biddingkit/gen/AppLovinAdFormat;

.field public static final enum MREC:Lcom/facebook/biddingkit/gen/AppLovinAdFormat;

.field public static final enum REWARDED_VIDEO:Lcom/facebook/biddingkit/gen/AppLovinAdFormat;


# instance fields
.field private final mFirstFormatLabel:Ljava/lang/String;

.field private final mHeight:I

.field private final mInstl:I

.field private final mRewarded:Ljava/lang/String;

.field private final mSecondFormatLabel:Ljava/lang/String;

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 1
    new-instance v9, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;

    .line 2
    .line 3
    const-string v7, "banner"

    .line 4
    .line 5
    const-string v8, "video"

    .line 6
    .line 7
    const-string v1, "INTERSTITIAL"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/16 v3, 0x140

    .line 11
    .line 12
    const/16 v4, 0x1e0

    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    const-string v6, ""

    .line 16
    .line 17
    move-object v0, v9

    .line 18
    invoke-direct/range {v0 .. v8}, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sput-object v9, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->INTERSTITIAL:Lcom/facebook/biddingkit/gen/AppLovinAdFormat;

    .line 22
    .line 23
    new-instance v0, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;

    .line 24
    .line 25
    const-string v16, ""

    .line 26
    .line 27
    const-string v17, "banner"

    .line 28
    .line 29
    const-string v11, "BANNER"

    .line 30
    .line 31
    const/4 v12, 0x1

    .line 32
    const/16 v13, 0x140

    .line 33
    .line 34
    const/16 v14, 0x32

    .line 35
    .line 36
    const/4 v15, 0x0

    .line 37
    move-object v10, v0

    .line 38
    invoke-direct/range {v10 .. v17}, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->BANNER:Lcom/facebook/biddingkit/gen/AppLovinAdFormat;

    .line 42
    .line 43
    new-instance v10, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;

    .line 44
    .line 45
    const-string v7, ""

    .line 46
    .line 47
    const-string v8, "banner"

    .line 48
    .line 49
    const-string v2, "MREC"

    .line 50
    .line 51
    const/4 v3, 0x2

    .line 52
    const/16 v4, 0x12c

    .line 53
    .line 54
    const/16 v5, 0xfa

    .line 55
    .line 56
    const/4 v6, 0x0

    .line 57
    move-object v1, v10

    .line 58
    invoke-direct/range {v1 .. v8}, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    sput-object v10, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->MREC:Lcom/facebook/biddingkit/gen/AppLovinAdFormat;

    .line 62
    .line 63
    new-instance v1, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;

    .line 64
    .line 65
    const-string v18, "banner"

    .line 66
    .line 67
    const-string v19, "video"

    .line 68
    .line 69
    const-string v12, "REWARDED_VIDEO"

    .line 70
    .line 71
    const/4 v13, 0x3

    .line 72
    const/16 v14, 0x1e0

    .line 73
    .line 74
    const/16 v15, 0x140

    .line 75
    .line 76
    const/16 v16, 0x0

    .line 77
    .line 78
    const-string v17, "rewarded"

    .line 79
    .line 80
    move-object v11, v1

    .line 81
    invoke-direct/range {v11 .. v19}, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    sput-object v1, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->REWARDED_VIDEO:Lcom/facebook/biddingkit/gen/AppLovinAdFormat;

    .line 85
    .line 86
    const/4 v2, 0x4

    .line 87
    new-array v2, v2, [Lcom/facebook/biddingkit/gen/AppLovinAdFormat;

    .line 88
    .line 89
    const/4 v3, 0x0

    .line 90
    aput-object v9, v2, v3

    .line 91
    .line 92
    const/4 v3, 0x1

    .line 93
    aput-object v0, v2, v3

    .line 94
    .line 95
    const/4 v0, 0x2

    .line 96
    aput-object v10, v2, v0

    .line 97
    .line 98
    const/4 v0, 0x3

    .line 99
    aput-object v1, v2, v0

    .line 100
    .line 101
    sput-object v2, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->$VALUES:[Lcom/facebook/biddingkit/gen/AppLovinAdFormat;

    .line 102
    .line 103
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 8
    const-string v8, ""

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->mWidth:I

    .line 3
    iput p4, p0, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->mHeight:I

    .line 4
    iput p5, p0, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->mInstl:I

    .line 5
    iput-object p6, p0, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->mRewarded:Ljava/lang/String;

    .line 6
    iput-object p7, p0, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->mFirstFormatLabel:Ljava/lang/String;

    .line 7
    iput-object p8, p0, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->mSecondFormatLabel:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/biddingkit/gen/AppLovinAdFormat;
    .locals 1

    .line 1
    const-class v0, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/facebook/biddingkit/gen/AppLovinAdFormat;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->$VALUES:[Lcom/facebook/biddingkit/gen/AppLovinAdFormat;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/facebook/biddingkit/gen/AppLovinAdFormat;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getFormatLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->mFirstFormatLabel:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHeight(Z)I
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->mWidth:I

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget p1, p0, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->mHeight:I

    .line 7
    .line 8
    :goto_0
    return p1
.end method

.method public getInstl()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->mInstl:I

    .line 2
    .line 3
    return v0
.end method

.method public getRewarded()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->mRewarded:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSecondFormatLabelLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->mSecondFormatLabel:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWidth(Z)I
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->mHeight:I

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget p1, p0, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->mWidth:I

    .line 7
    .line 8
    :goto_0
    return p1
.end method
