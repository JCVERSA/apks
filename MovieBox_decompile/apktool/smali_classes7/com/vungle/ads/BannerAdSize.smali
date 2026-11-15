.class public final enum Lcom/vungle/ads/BannerAdSize;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vungle/ads/BannerAdSize;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Deprecated;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0008\u0087\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0007R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\tj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/vungle/ads/BannerAdSize;",
        "",
        "sizeName",
        "",
        "width",
        "",
        "height",
        "(Ljava/lang/String;ILjava/lang/String;II)V",
        "getHeight",
        "()I",
        "getSizeName",
        "()Ljava/lang/String;",
        "getWidth",
        "VUNGLE_MREC",
        "BANNER",
        "BANNER_SHORT",
        "BANNER_LEADERBOARD",
        "vungle-ads_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vungle/ads/BannerAdSize;

.field public static final enum BANNER:Lcom/vungle/ads/BannerAdSize;

.field public static final enum BANNER_LEADERBOARD:Lcom/vungle/ads/BannerAdSize;

.field public static final enum BANNER_SHORT:Lcom/vungle/ads/BannerAdSize;

.field public static final enum VUNGLE_MREC:Lcom/vungle/ads/BannerAdSize;


# instance fields
.field private final height:I

.field private final sizeName:Ljava/lang/String;

.field private final width:I


# direct methods
.method private static final synthetic $values()[Lcom/vungle/ads/BannerAdSize;
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Lcom/vungle/ads/BannerAdSize;

    .line 3
    .line 4
    sget-object v1, Lcom/vungle/ads/BannerAdSize;->VUNGLE_MREC:Lcom/vungle/ads/BannerAdSize;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/vungle/ads/BannerAdSize;->BANNER:Lcom/vungle/ads/BannerAdSize;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/vungle/ads/BannerAdSize;->BANNER_SHORT:Lcom/vungle/ads/BannerAdSize;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lcom/vungle/ads/BannerAdSize;->BANNER_LEADERBOARD:Lcom/vungle/ads/BannerAdSize;

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
    .locals 13

    .line 1
    new-instance v6, Lcom/vungle/ads/BannerAdSize;

    .line 2
    .line 3
    const/16 v4, 0x12c

    .line 4
    .line 5
    const/16 v5, 0xfa

    .line 6
    .line 7
    const-string v1, "VUNGLE_MREC"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const-string v3, "mrec"

    .line 11
    .line 12
    move-object v0, v6

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/vungle/ads/BannerAdSize;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    .line 14
    .line 15
    .line 16
    sput-object v6, Lcom/vungle/ads/BannerAdSize;->VUNGLE_MREC:Lcom/vungle/ads/BannerAdSize;

    .line 17
    .line 18
    new-instance v0, Lcom/vungle/ads/BannerAdSize;

    .line 19
    .line 20
    const/16 v11, 0x140

    .line 21
    .line 22
    const/16 v12, 0x32

    .line 23
    .line 24
    const-string v8, "BANNER"

    .line 25
    .line 26
    const/4 v9, 0x1

    .line 27
    const-string v10, "banner"

    .line 28
    .line 29
    move-object v7, v0

    .line 30
    invoke-direct/range {v7 .. v12}, Lcom/vungle/ads/BannerAdSize;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    .line 31
    .line 32
    .line 33
    sput-object v0, Lcom/vungle/ads/BannerAdSize;->BANNER:Lcom/vungle/ads/BannerAdSize;

    .line 34
    .line 35
    new-instance v0, Lcom/vungle/ads/BannerAdSize;

    .line 36
    .line 37
    const/16 v5, 0x12c

    .line 38
    .line 39
    const/16 v6, 0x32

    .line 40
    .line 41
    const-string v2, "BANNER_SHORT"

    .line 42
    .line 43
    const/4 v3, 0x2

    .line 44
    const-string v4, "banner_short"

    .line 45
    .line 46
    move-object v1, v0

    .line 47
    invoke-direct/range {v1 .. v6}, Lcom/vungle/ads/BannerAdSize;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lcom/vungle/ads/BannerAdSize;->BANNER_SHORT:Lcom/vungle/ads/BannerAdSize;

    .line 51
    .line 52
    new-instance v0, Lcom/vungle/ads/BannerAdSize;

    .line 53
    .line 54
    const/16 v11, 0x2d8

    .line 55
    .line 56
    const/16 v12, 0x5a

    .line 57
    .line 58
    const-string v8, "BANNER_LEADERBOARD"

    .line 59
    .line 60
    const/4 v9, 0x3

    .line 61
    const-string v10, "banner_leaderboard"

    .line 62
    .line 63
    move-object v7, v0

    .line 64
    invoke-direct/range {v7 .. v12}, Lcom/vungle/ads/BannerAdSize;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    .line 65
    .line 66
    .line 67
    sput-object v0, Lcom/vungle/ads/BannerAdSize;->BANNER_LEADERBOARD:Lcom/vungle/ads/BannerAdSize;

    .line 68
    .line 69
    invoke-static {}, Lcom/vungle/ads/BannerAdSize;->$values()[Lcom/vungle/ads/BannerAdSize;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    sput-object v0, Lcom/vungle/ads/BannerAdSize;->$VALUES:[Lcom/vungle/ads/BannerAdSize;

    .line 74
    .line 75
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/vungle/ads/BannerAdSize;->sizeName:Ljava/lang/String;

    .line 5
    .line 6
    iput p4, p0, Lcom/vungle/ads/BannerAdSize;->width:I

    .line 7
    .line 8
    iput p5, p0, Lcom/vungle/ads/BannerAdSize;->height:I

    .line 9
    .line 10
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/ads/BannerAdSize;
    .locals 1

    .line 1
    const-class v0, Lcom/vungle/ads/BannerAdSize;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/vungle/ads/BannerAdSize;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/vungle/ads/BannerAdSize;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/ads/BannerAdSize;->$VALUES:[Lcom/vungle/ads/BannerAdSize;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/vungle/ads/BannerAdSize;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/vungle/ads/BannerAdSize;->height:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSizeName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BannerAdSize;->sizeName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/vungle/ads/BannerAdSize;->width:I

    .line 2
    .line 3
    return v0
.end method
