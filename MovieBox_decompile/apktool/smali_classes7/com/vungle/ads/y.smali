.class public final Lcom/vungle/ads/y;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/y$a;
    }
.end annotation


# static fields
.field public static final BANNER:Lcom/vungle/ads/y;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final BANNER_LEADERBOARD:Lcom/vungle/ads/y;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final BANNER_SHORT:Lcom/vungle/ads/y;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final Companion:Lcom/vungle/ads/y$a;

.field public static final MREC:Lcom/vungle/ads/y;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# instance fields
.field private final height:I

.field private isAdaptiveHeight:Z

.field private isAdaptiveWidth:Z

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/vungle/ads/y$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/vungle/ads/y$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/vungle/ads/y;->Companion:Lcom/vungle/ads/y$a;

    .line 8
    .line 9
    new-instance v0, Lcom/vungle/ads/y;

    .line 10
    .line 11
    const/16 v1, 0x140

    .line 12
    .line 13
    const/16 v2, 0x32

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/y;-><init>(II)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/vungle/ads/y;->BANNER:Lcom/vungle/ads/y;

    .line 19
    .line 20
    new-instance v0, Lcom/vungle/ads/y;

    .line 21
    .line 22
    const/16 v1, 0x12c

    .line 23
    .line 24
    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/y;-><init>(II)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/vungle/ads/y;->BANNER_SHORT:Lcom/vungle/ads/y;

    .line 28
    .line 29
    new-instance v0, Lcom/vungle/ads/y;

    .line 30
    .line 31
    const/16 v2, 0x2d8

    .line 32
    .line 33
    const/16 v3, 0x5a

    .line 34
    .line 35
    invoke-direct {v0, v2, v3}, Lcom/vungle/ads/y;-><init>(II)V

    .line 36
    .line 37
    .line 38
    sput-object v0, Lcom/vungle/ads/y;->BANNER_LEADERBOARD:Lcom/vungle/ads/y;

    .line 39
    .line 40
    new-instance v0, Lcom/vungle/ads/y;

    .line 41
    .line 42
    const/16 v2, 0xfa

    .line 43
    .line 44
    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/y;-><init>(II)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/vungle/ads/y;->MREC:Lcom/vungle/ads/y;

    .line 48
    .line 49
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/vungle/ads/y;->width:I

    .line 5
    .line 6
    iput p2, p0, Lcom/vungle/ads/y;->height:I

    .line 7
    .line 8
    return-void
.end method

.method public static final getAdSizeWithWidth(Landroid/content/Context;I)Lcom/vungle/ads/y;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/vungle/ads/y;->Companion:Lcom/vungle/ads/y$a;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Lcom/vungle/ads/y$a;->getAdSizeWithWidth(Landroid/content/Context;I)Lcom/vungle/ads/y;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static final getAdSizeWithWidthAndHeight(II)Lcom/vungle/ads/y;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/vungle/ads/y;->Companion:Lcom/vungle/ads/y$a;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Lcom/vungle/ads/y$a;->getAdSizeWithWidthAndHeight(II)Lcom/vungle/ads/y;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static final getValidAdSizeFromSize(IILjava/lang/String;)Lcom/vungle/ads/y;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/vungle/ads/y;->Companion:Lcom/vungle/ads/y$a;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lcom/vungle/ads/y$a;->getValidAdSizeFromSize(IILjava/lang/String;)Lcom/vungle/ads/y;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method


# virtual methods
.method public final getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/vungle/ads/y;->height:I

    .line 2
    .line 3
    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/vungle/ads/y;->width:I

    .line 2
    .line 3
    return v0
.end method

.method public final isAdaptiveHeight$vungle_ads_release()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/vungle/ads/y;->isAdaptiveHeight:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isAdaptiveWidth$vungle_ads_release()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/vungle/ads/y;->isAdaptiveWidth:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isValidSize$vungle_ads_release()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/vungle/ads/y;->width:I

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/vungle/ads/y;->height:I

    .line 6
    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public final setAdaptiveHeight$vungle_ads_release(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/vungle/ads/y;->isAdaptiveHeight:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setAdaptiveWidth$vungle_ads_release(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/vungle/ads/y;->isAdaptiveWidth:Z

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "VungleAdSize(width="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/vungle/ads/y;->width:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", height="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/vungle/ads/y;->height:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x29

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method
