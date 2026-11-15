.class public final Lcom/vungle/ads/internal/model/c$f;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/model/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/model/c$f$b;,
        Lcom/vungle/ads/internal/model/c$f$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/model/c$f$b;


# instance fields
.field private final consentMessageVersion:Ljava/lang/String;

.field private final consentSource:Ljava/lang/String;

.field private final consentStatus:Ljava/lang/String;

.field private final consentTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/model/c$f$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/model/c$f$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/vungle/ads/internal/model/c$f;->Companion:Lcom/vungle/ads/internal/model/c$f$b;

    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Lkotlinx/serialization/internal/w1;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    and-int/lit8 p7, p1, 0xf

    const/16 v0, 0xf

    if-eq v0, p7, :cond_0

    .line 1
    sget-object p7, Lcom/vungle/ads/internal/model/c$f$a;->INSTANCE:Lcom/vungle/ads/internal/model/c$f$a;

    invoke-virtual {p7}, Lcom/vungle/ads/internal/model/c$f$a;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object p7

    invoke-static {p1, v0, p7}, Lkotlinx/serialization/internal/m1;->a(IILkotlinx/serialization/descriptors/f;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vungle/ads/internal/model/c$f;->consentStatus:Ljava/lang/String;

    iput-object p3, p0, Lcom/vungle/ads/internal/model/c$f;->consentSource:Ljava/lang/String;

    iput-wide p4, p0, Lcom/vungle/ads/internal/model/c$f;->consentTimestamp:J

    iput-object p6, p0, Lcom/vungle/ads/internal/model/c$f;->consentMessageVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    const-string v0, "consentStatus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentSource"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentMessageVersion"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/vungle/ads/internal/model/c$f;->consentStatus:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/vungle/ads/internal/model/c$f;->consentSource:Ljava/lang/String;

    .line 5
    iput-wide p3, p0, Lcom/vungle/ads/internal/model/c$f;->consentTimestamp:J

    .line 6
    iput-object p5, p0, Lcom/vungle/ads/internal/model/c$f;->consentMessageVersion:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/vungle/ads/internal/model/c$f;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/Object;)Lcom/vungle/ads/internal/model/c$f;
    .locals 3

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/vungle/ads/internal/model/c$f;->consentStatus:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p7, p6, 0x2

    .line 8
    .line 9
    if-eqz p7, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/vungle/ads/internal/model/c$f;->consentSource:Ljava/lang/String;

    .line 12
    .line 13
    :cond_1
    move-object p7, p2

    .line 14
    and-int/lit8 p2, p6, 0x4

    .line 15
    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    iget-wide p3, p0, Lcom/vungle/ads/internal/model/c$f;->consentTimestamp:J

    .line 19
    .line 20
    :cond_2
    move-wide v0, p3

    .line 21
    and-int/lit8 p2, p6, 0x8

    .line 22
    .line 23
    if-eqz p2, :cond_3

    .line 24
    .line 25
    iget-object p5, p0, Lcom/vungle/ads/internal/model/c$f;->consentMessageVersion:Ljava/lang/String;

    .line 26
    .line 27
    :cond_3
    move-object v2, p5

    .line 28
    move-object p2, p0

    .line 29
    move-object p3, p1

    .line 30
    move-object p4, p7

    .line 31
    move-wide p5, v0

    .line 32
    move-object p7, v2

    .line 33
    invoke-virtual/range {p2 .. p7}, Lcom/vungle/ads/internal/model/c$f;->copy(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/vungle/ads/internal/model/c$f;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method public static synthetic getConsentMessageVersion$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getConsentSource$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getConsentStatus$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getConsentTimestamp$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final write$Self(Lcom/vungle/ads/internal/model/c$f;Lsy/d;Lkotlinx/serialization/descriptors/f;)V
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
    iget-object v0, p0, Lcom/vungle/ads/internal/model/c$f;->consentStatus:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-interface {p1, p2, v1, v0}, Lsy/d;->y(Lkotlinx/serialization/descriptors/f;ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    iget-object v1, p0, Lcom/vungle/ads/internal/model/c$f;->consentSource:Ljava/lang/String;

    .line 24
    .line 25
    invoke-interface {p1, p2, v0, v1}, Lsy/d;->y(Lkotlinx/serialization/descriptors/f;ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x2

    .line 29
    iget-wide v1, p0, Lcom/vungle/ads/internal/model/c$f;->consentTimestamp:J

    .line 30
    .line 31
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->F(Lkotlinx/serialization/descriptors/f;IJ)V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x3

    .line 35
    iget-object p0, p0, Lcom/vungle/ads/internal/model/c$f;->consentMessageVersion:Ljava/lang/String;

    .line 36
    .line 37
    invoke-interface {p1, p2, v0, p0}, Lsy/d;->y(Lkotlinx/serialization/descriptors/f;ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/c$f;->consentStatus:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/c$f;->consentSource:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/vungle/ads/internal/model/c$f;->consentTimestamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/c$f;->consentMessageVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/vungle/ads/internal/model/c$f;
    .locals 7

    .line 1
    const-string v0, "consentStatus"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "consentSource"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "consentMessageVersion"

    .line 12
    .line 13
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/vungle/ads/internal/model/c$f;

    .line 17
    .line 18
    move-object v1, v0

    .line 19
    move-object v2, p1

    .line 20
    move-object v3, p2

    .line 21
    move-wide v4, p3

    .line 22
    move-object v6, p5

    .line 23
    invoke-direct/range {v1 .. v6}, Lcom/vungle/ads/internal/model/c$f;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 24
    .line 25
    .line 26
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
    instance-of v1, p1, Lcom/vungle/ads/internal/model/c$f;

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
    check-cast p1, Lcom/vungle/ads/internal/model/c$f;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/vungle/ads/internal/model/c$f;->consentStatus:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/vungle/ads/internal/model/c$f;->consentStatus:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/vungle/ads/internal/model/c$f;->consentSource:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/vungle/ads/internal/model/c$f;->consentSource:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-wide v3, p0, Lcom/vungle/ads/internal/model/c$f;->consentTimestamp:J

    .line 36
    .line 37
    iget-wide v5, p1, Lcom/vungle/ads/internal/model/c$f;->consentTimestamp:J

    .line 38
    .line 39
    cmp-long v1, v3, v5

    .line 40
    .line 41
    if-eqz v1, :cond_4

    .line 42
    .line 43
    return v2

    .line 44
    :cond_4
    iget-object v1, p0, Lcom/vungle/ads/internal/model/c$f;->consentMessageVersion:Ljava/lang/String;

    .line 45
    .line 46
    iget-object p1, p1, Lcom/vungle/ads/internal/model/c$f;->consentMessageVersion:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_5

    .line 53
    .line 54
    return v2

    .line 55
    :cond_5
    return v0
.end method

.method public final getConsentMessageVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/c$f;->consentMessageVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getConsentSource()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/c$f;->consentSource:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getConsentStatus()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/c$f;->consentStatus:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getConsentTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/vungle/ads/internal/model/c$f;->consentTimestamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/c$f;->consentStatus:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/vungle/ads/internal/model/c$f;->consentSource:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-wide v1, p0, Lcom/vungle/ads/internal/model/c$f;->consentTimestamp:J

    .line 19
    .line 20
    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v1, p0, Lcom/vungle/ads/internal/model/c$f;->consentMessageVersion:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    return v0
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
    const-string v1, "GDPR(consentStatus="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/vungle/ads/internal/model/c$f;->consentStatus:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", consentSource="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/vungle/ads/internal/model/c$f;->consentSource:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", consentTimestamp="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-wide v1, p0, Lcom/vungle/ads/internal/model/c$f;->consentTimestamp:J

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", consentMessageVersion="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/vungle/ads/internal/model/c$f;->consentMessageVersion:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const/16 v1, 0x29

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method
