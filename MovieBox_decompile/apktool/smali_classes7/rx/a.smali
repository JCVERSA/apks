.class public final Lrx/a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/a$b;,
        Lrx/a$a;
    }
.end annotation


# static fields
.field public static final Companion:Lrx/a$b;


# instance fields
.field private ageRange:Ljava/lang/Integer;

.field private lengthOfResidence:Ljava/lang/Integer;

.field private medianHomeValueUSD:Ljava/lang/Integer;

.field private monthlyHousingPaymentUSD:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lrx/a$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lrx/a$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lrx/a;->Companion:Lrx/a$b;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlinx/serialization/internal/w1;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p6, p1, 0x1

    const/4 v0, 0x0

    if-nez p6, :cond_0

    iput-object v0, p0, Lrx/a;->ageRange:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lrx/a;->ageRange:Ljava/lang/Integer;

    :goto_0
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    iput-object v0, p0, Lrx/a;->lengthOfResidence:Ljava/lang/Integer;

    goto :goto_1

    :cond_1
    iput-object p3, p0, Lrx/a;->lengthOfResidence:Ljava/lang/Integer;

    :goto_1
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2

    iput-object v0, p0, Lrx/a;->medianHomeValueUSD:Ljava/lang/Integer;

    goto :goto_2

    :cond_2
    iput-object p4, p0, Lrx/a;->medianHomeValueUSD:Ljava/lang/Integer;

    :goto_2
    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_3

    iput-object v0, p0, Lrx/a;->monthlyHousingPaymentUSD:Ljava/lang/Integer;

    goto :goto_3

    :cond_3
    iput-object p5, p0, Lrx/a;->monthlyHousingPaymentUSD:Ljava/lang/Integer;

    :goto_3
    return-void
.end method

.method private static synthetic getAgeRange$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic getLengthOfResidence$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic getMedianHomeValueUSD$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic getMonthlyHousingPaymentUSD$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final write$Self(Lrx/a;Lsy/d;Lkotlinx/serialization/descriptors/f;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "self"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "output"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "serialDesc"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v1, p0, Lrx/a;->ageRange:Ljava/lang/Integer;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    :goto_0
    sget-object v1, Lkotlinx/serialization/internal/r0;->a:Lkotlinx/serialization/internal/r0;

    .line 29
    .line 30
    iget-object v2, p0, Lrx/a;->ageRange:Ljava/lang/Integer;

    .line 31
    .line 32
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    const/4 v0, 0x1

    .line 36
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    iget-object v1, p0, Lrx/a;->lengthOfResidence:Ljava/lang/Integer;

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    :goto_1
    sget-object v1, Lkotlinx/serialization/internal/r0;->a:Lkotlinx/serialization/internal/r0;

    .line 48
    .line 49
    iget-object v2, p0, Lrx/a;->lengthOfResidence:Ljava/lang/Integer;

    .line 50
    .line 51
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :cond_3
    const/4 v0, 0x2

    .line 55
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_4
    iget-object v1, p0, Lrx/a;->medianHomeValueUSD:Ljava/lang/Integer;

    .line 63
    .line 64
    if-eqz v1, :cond_5

    .line 65
    .line 66
    :goto_2
    sget-object v1, Lkotlinx/serialization/internal/r0;->a:Lkotlinx/serialization/internal/r0;

    .line 67
    .line 68
    iget-object v2, p0, Lrx/a;->medianHomeValueUSD:Ljava/lang/Integer;

    .line 69
    .line 70
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :cond_5
    const/4 v0, 0x3

    .line 74
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_6

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_6
    iget-object v1, p0, Lrx/a;->monthlyHousingPaymentUSD:Ljava/lang/Integer;

    .line 82
    .line 83
    if-eqz v1, :cond_7

    .line 84
    .line 85
    :goto_3
    sget-object v1, Lkotlinx/serialization/internal/r0;->a:Lkotlinx/serialization/internal/r0;

    .line 86
    .line 87
    iget-object p0, p0, Lrx/a;->monthlyHousingPaymentUSD:Ljava/lang/Integer;

    .line 88
    .line 89
    invoke-interface {p1, p2, v0, v1, p0}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    :cond_7
    return-void
.end method


# virtual methods
.method public final setAgeRange(I)Lrx/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/ads/fpd/AgeRange;->Companion:Lcom/vungle/ads/fpd/AgeRange$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/vungle/ads/fpd/AgeRange$a;->fromAge$vungle_ads_release(I)Lcom/vungle/ads/fpd/AgeRange;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/vungle/ads/fpd/AgeRange;->getId()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lrx/a;->ageRange:Ljava/lang/Integer;

    .line 16
    .line 17
    return-object p0
.end method

.method public final setLengthOfResidence(I)Lrx/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/ads/fpd/LengthOfResidence;->Companion:Lcom/vungle/ads/fpd/LengthOfResidence$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/vungle/ads/fpd/LengthOfResidence$a;->fromYears$vungle_ads_release(I)Lcom/vungle/ads/fpd/LengthOfResidence;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/vungle/ads/fpd/LengthOfResidence;->getId()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lrx/a;->lengthOfResidence:Ljava/lang/Integer;

    .line 16
    .line 17
    return-object p0
.end method

.method public final setMedianHomeValueUSD(I)Lrx/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->Companion:Lcom/vungle/ads/fpd/MedianHomeValueUSD$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/vungle/ads/fpd/MedianHomeValueUSD$a;->fromPrice$vungle_ads_release(I)Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->getId()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lrx/a;->medianHomeValueUSD:Ljava/lang/Integer;

    .line 16
    .line 17
    return-object p0
.end method

.method public final setMonthlyHousingCosts(I)Lrx/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/ads/fpd/MonthlyHousingCosts;->Companion:Lcom/vungle/ads/fpd/MonthlyHousingCosts$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/vungle/ads/fpd/MonthlyHousingCosts$a;->fromCost$vungle_ads_release(I)Lcom/vungle/ads/fpd/MonthlyHousingCosts;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/vungle/ads/fpd/MonthlyHousingCosts;->getId()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lrx/a;->monthlyHousingPaymentUSD:Ljava/lang/Integer;

    .line 16
    .line 17
    return-object p0
.end method
