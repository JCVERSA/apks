.class public final Lcom/vungle/ads/fpd/LengthOfResidence$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/fpd/LengthOfResidence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/vungle/ads/fpd/LengthOfResidence$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromYears$vungle_ads_release(I)Lcom/vungle/ads/fpd/LengthOfResidence;
    .locals 6

    .line 1
    invoke-static {}, Lcom/vungle/ads/fpd/LengthOfResidence;->values()[Lcom/vungle/ads/fpd/LengthOfResidence;

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
    invoke-virtual {v3}, Lcom/vungle/ads/fpd/LengthOfResidence;->getRange()Lkotlin/ranges/IntRange;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {v4}, Lkotlin/ranges/IntProgression;->f()I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    invoke-virtual {v4}, Lkotlin/ranges/IntProgression;->i()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-gt p1, v4, :cond_0

    .line 24
    .line 25
    if-gt v5, p1, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v3, 0x0

    .line 32
    :goto_1
    if-nez v3, :cond_2

    .line 33
    .line 34
    sget-object v3, Lcom/vungle/ads/fpd/LengthOfResidence;->LESS_THAN_ONE_YEAR:Lcom/vungle/ads/fpd/LengthOfResidence;

    .line 35
    .line 36
    :cond_2
    return-object v3
.end method
