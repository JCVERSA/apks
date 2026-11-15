.class public final Lcom/vungle/ads/internal/signals/b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/signals/b$b;,
        Lcom/vungle/ads/internal/signals/b$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/signals/b$b;


# instance fields
.field private adAvailabilityCallbackTime:J

.field private eventId:Ljava/lang/String;

.field private final lastAdLoadTime:Ljava/lang/Long;

.field private final loadAdTime:J

.field private playAdTime:J

.field private screenOrientation:I

.field private templateSignals:Ljava/lang/String;

.field private timeBetweenAdAvailabilityAndPlayAd:J

.field private final timeSinceLastAdLoad:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/signals/b$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/signals/b$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/vungle/ads/internal/signals/b;->Companion:Lcom/vungle/ads/internal/signals/b$b;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/vungle/ads/internal/signals/b;-><init>(Ljava/lang/Long;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;JLjava/lang/String;JILkotlinx/serialization/internal/w1;)V
    .locals 4
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    and-int/lit8 p9, p1, 0x2

    const/4 v0, 0x2

    if-eq v0, p9, :cond_0

    .line 2
    sget-object p9, Lcom/vungle/ads/internal/signals/b$a;->INSTANCE:Lcom/vungle/ads/internal/signals/b$a;

    invoke-virtual {p9}, Lcom/vungle/ads/internal/signals/b$a;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object p9

    invoke-static {p1, v0, p9}, Lkotlinx/serialization/internal/m1;->a(IILkotlinx/serialization/descriptors/f;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p9

    .line 4
    iput-object p9, p0, Lcom/vungle/ads/internal/signals/b;->lastAdLoadTime:Ljava/lang/Long;

    iput-wide v0, p0, Lcom/vungle/ads/internal/signals/b;->loadAdTime:J

    and-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iput-object v3, p0, Lcom/vungle/ads/internal/signals/b;->templateSignals:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lcom/vungle/ads/internal/signals/b;->templateSignals:Ljava/lang/String;

    :goto_0
    iput-wide p3, p0, Lcom/vungle/ads/internal/signals/b;->timeSinceLastAdLoad:J

    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2

    iput-object v3, p0, Lcom/vungle/ads/internal/signals/b;->eventId:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iput-object p5, p0, Lcom/vungle/ads/internal/signals/b;->eventId:Ljava/lang/String;

    :goto_1
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_3

    iput-wide v0, p0, Lcom/vungle/ads/internal/signals/b;->timeBetweenAdAvailabilityAndPlayAd:J

    goto :goto_2

    :cond_3
    iput-wide p6, p0, Lcom/vungle/ads/internal/signals/b;->timeBetweenAdAvailabilityAndPlayAd:J

    :goto_2
    and-int/lit8 p1, p1, 0x10

    if-nez p1, :cond_4

    const/4 p1, 0x0

    iput p1, p0, Lcom/vungle/ads/internal/signals/b;->screenOrientation:I

    goto :goto_3

    :cond_4
    iput p8, p0, Lcom/vungle/ads/internal/signals/b;->screenOrientation:I

    :goto_3
    iput-wide v0, p0, Lcom/vungle/ads/internal/signals/b;->adAvailabilityCallbackTime:J

    iput-wide v0, p0, Lcom/vungle/ads/internal/signals/b;->playAdTime:J

    .line 5
    invoke-direct {p0, p9, v0, v1}, Lcom/vungle/ads/internal/signals/b;->getTimeDifference(Ljava/lang/Long;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/vungle/ads/internal/signals/b;->timeSinceLastAdLoad:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;J)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/vungle/ads/internal/signals/b;->lastAdLoadTime:Ljava/lang/Long;

    .line 8
    iput-wide p2, p0, Lcom/vungle/ads/internal/signals/b;->loadAdTime:J

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/ads/internal/signals/b;->getTimeDifference(Ljava/lang/Long;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/vungle/ads/internal/signals/b;->timeSinceLastAdLoad:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Long;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p5, p4, 0x1

    const-wide/16 v0, 0x0

    if-eqz p5, :cond_0

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    move-wide p2, v0

    .line 11
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/ads/internal/signals/b;-><init>(Ljava/lang/Long;J)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/vungle/ads/internal/signals/b;Ljava/lang/Long;JILjava/lang/Object;)Lcom/vungle/ads/internal/signals/b;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/vungle/ads/internal/signals/b;->lastAdLoadTime:Ljava/lang/Long;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x2

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    iget-wide p2, p0, Lcom/vungle/ads/internal/signals/b;->loadAdTime:J

    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/ads/internal/signals/b;->copy(Ljava/lang/Long;J)Lcom/vungle/ads/internal/signals/b;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static synthetic getAdAvailabilityCallbackTime$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getEventId$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getLastAdLoadTime$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getLoadAdTime$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getPlayAdTime$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getScreenOrientation$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getTemplateSignals$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getTimeBetweenAdAvailabilityAndPlayAd$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private final getTimeDifference(Ljava/lang/Long;J)J
    .locals 4

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    sub-long/2addr p2, v2

    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    cmp-long p1, p2, v2

    .line 13
    .line 14
    if-gez p1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-wide v0, p2

    .line 18
    :cond_1
    :goto_0
    return-wide v0
.end method

.method public static synthetic getTimeSinceLastAdLoad$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final write$Self(Lcom/vungle/ads/internal/signals/b;Lsy/d;Lkotlinx/serialization/descriptors/f;)V
    .locals 5
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
    iget-object v1, p0, Lcom/vungle/ads/internal/signals/b;->templateSignals:Ljava/lang/String;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    :goto_0
    sget-object v1, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/vungle/ads/internal/signals/b;->templateSignals:Ljava/lang/String;

    .line 31
    .line 32
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-wide v0, p0, Lcom/vungle/ads/internal/signals/b;->timeSinceLastAdLoad:J

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    invoke-interface {p1, p2, v2, v0, v1}, Lsy/d;->F(Lkotlinx/serialization/descriptors/f;IJ)V

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x2

    .line 42
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    iget-object v1, p0, Lcom/vungle/ads/internal/signals/b;->eventId:Ljava/lang/String;

    .line 50
    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    :goto_1
    sget-object v1, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    .line 54
    .line 55
    iget-object v2, p0, Lcom/vungle/ads/internal/signals/b;->eventId:Ljava/lang/String;

    .line 56
    .line 57
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    const/4 v0, 0x3

    .line 61
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_4

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_4
    iget-wide v1, p0, Lcom/vungle/ads/internal/signals/b;->timeBetweenAdAvailabilityAndPlayAd:J

    .line 69
    .line 70
    const-wide/16 v3, 0x0

    .line 71
    .line 72
    cmp-long v1, v1, v3

    .line 73
    .line 74
    if-eqz v1, :cond_5

    .line 75
    .line 76
    :goto_2
    iget-wide v1, p0, Lcom/vungle/ads/internal/signals/b;->timeBetweenAdAvailabilityAndPlayAd:J

    .line 77
    .line 78
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->F(Lkotlinx/serialization/descriptors/f;IJ)V

    .line 79
    .line 80
    .line 81
    :cond_5
    const/4 v0, 0x4

    .line 82
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_6

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_6
    iget v1, p0, Lcom/vungle/ads/internal/signals/b;->screenOrientation:I

    .line 90
    .line 91
    if-eqz v1, :cond_7

    .line 92
    .line 93
    :goto_3
    iget p0, p0, Lcom/vungle/ads/internal/signals/b;->screenOrientation:I

    .line 94
    .line 95
    invoke-interface {p1, p2, v0, p0}, Lsy/d;->w(Lkotlinx/serialization/descriptors/f;II)V

    .line 96
    .line 97
    .line 98
    :cond_7
    return-void
.end method


# virtual methods
.method public final calculateTimeBetweenAdAvailabilityAndPlayAd()V
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/vungle/ads/internal/signals/b;->adAvailabilityCallbackTime:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-wide v1, p0, Lcom/vungle/ads/internal/signals/b;->playAdTime:J

    .line 8
    .line 9
    invoke-direct {p0, v0, v1, v2}, Lcom/vungle/ads/internal/signals/b;->getTimeDifference(Ljava/lang/Long;J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p0, Lcom/vungle/ads/internal/signals/b;->timeBetweenAdAvailabilityAndPlayAd:J

    .line 14
    .line 15
    return-void
.end method

.method public final component1()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/signals/b;->lastAdLoadTime:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/vungle/ads/internal/signals/b;->loadAdTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final copy(Ljava/lang/Long;J)Lcom/vungle/ads/internal/signals/b;
    .locals 1

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/signals/b;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Lcom/vungle/ads/internal/signals/b;-><init>(Ljava/lang/Long;J)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/vungle/ads/internal/signals/b;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/vungle/ads/internal/signals/b;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/vungle/ads/internal/signals/b;->lastAdLoadTime:Ljava/lang/Long;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/vungle/ads/internal/signals/b;->lastAdLoadTime:Ljava/lang/Long;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-wide v3, p0, Lcom/vungle/ads/internal/signals/b;->loadAdTime:J

    .line 25
    .line 26
    iget-wide v5, p1, Lcom/vungle/ads/internal/signals/b;->loadAdTime:J

    .line 27
    .line 28
    cmp-long p1, v3, v5

    .line 29
    .line 30
    if-eqz p1, :cond_3

    .line 31
    .line 32
    return v2

    .line 33
    :cond_3
    return v0
.end method

.method public final getAdAvailabilityCallbackTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/vungle/ads/internal/signals/b;->adAvailabilityCallbackTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getEventId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/signals/b;->eventId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLastAdLoadTime()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/signals/b;->lastAdLoadTime:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLoadAdTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/vungle/ads/internal/signals/b;->loadAdTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getPlayAdTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/vungle/ads/internal/signals/b;->playAdTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getScreenOrientation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/vungle/ads/internal/signals/b;->screenOrientation:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTemplateSignals()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/signals/b;->templateSignals:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTimeBetweenAdAvailabilityAndPlayAd()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/vungle/ads/internal/signals/b;->timeBetweenAdAvailabilityAndPlayAd:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getTimeSinceLastAdLoad()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/vungle/ads/internal/signals/b;->timeSinceLastAdLoad:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/signals/b;->lastAdLoadTime:Ljava/lang/Long;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 12
    .line 13
    iget-wide v1, p0, Lcom/vungle/ads/internal/signals/b;->loadAdTime:J

    .line 14
    .line 15
    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    add-int/2addr v0, v1

    .line 20
    return v0
.end method

.method public final setAdAvailabilityCallbackTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/vungle/ads/internal/signals/b;->adAvailabilityCallbackTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setEventId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/signals/b;->eventId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPlayAdTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/vungle/ads/internal/signals/b;->playAdTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setScreenOrientation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/vungle/ads/internal/signals/b;->screenOrientation:I

    .line 2
    .line 3
    return-void
.end method

.method public final setTemplateSignals(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/signals/b;->templateSignals:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setTimeBetweenAdAvailabilityAndPlayAd(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/vungle/ads/internal/signals/b;->timeBetweenAdAvailabilityAndPlayAd:J

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "SignaledAd(lastAdLoadTime="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/vungle/ads/internal/signals/b;->lastAdLoadTime:Ljava/lang/Long;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", loadAdTime="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-wide v1, p0, Lcom/vungle/ads/internal/signals/b;->loadAdTime:J

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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
