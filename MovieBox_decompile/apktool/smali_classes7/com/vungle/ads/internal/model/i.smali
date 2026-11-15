.class public final Lcom/vungle/ads/internal/model/i;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/model/i$b;,
        Lcom/vungle/ads/internal/model/i$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/model/i$b;


# instance fields
.field private final device:Lcom/vungle/ads/internal/model/d;

.field private final ext:Lcom/vungle/ads/internal/model/c$h;

.field private final ordinalView:I

.field private final request:Lcom/vungle/ads/internal/model/h;

.field private final user:Lcom/vungle/ads/internal/model/c$j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/model/i$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/model/i$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/vungle/ads/internal/model/i;->Companion:Lcom/vungle/ads/internal/model/i$b;

    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(ILcom/vungle/ads/internal/model/d;Lcom/vungle/ads/internal/model/c$j;Lcom/vungle/ads/internal/model/c$h;Lcom/vungle/ads/internal/model/h;ILkotlinx/serialization/internal/w1;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    and-int/lit8 p7, p1, 0x11

    const/16 v0, 0x11

    if-eq v0, p7, :cond_0

    .line 1
    sget-object p7, Lcom/vungle/ads/internal/model/i$a;->INSTANCE:Lcom/vungle/ads/internal/model/i$a;

    invoke-virtual {p7}, Lcom/vungle/ads/internal/model/i$a;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object p7

    invoke-static {p1, v0, p7}, Lkotlinx/serialization/internal/m1;->a(IILkotlinx/serialization/descriptors/f;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vungle/ads/internal/model/i;->device:Lcom/vungle/ads/internal/model/d;

    and-int/lit8 p2, p1, 0x2

    const/4 p7, 0x0

    if-nez p2, :cond_1

    iput-object p7, p0, Lcom/vungle/ads/internal/model/i;->user:Lcom/vungle/ads/internal/model/c$j;

    goto :goto_0

    :cond_1
    iput-object p3, p0, Lcom/vungle/ads/internal/model/i;->user:Lcom/vungle/ads/internal/model/c$j;

    :goto_0
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2

    iput-object p7, p0, Lcom/vungle/ads/internal/model/i;->ext:Lcom/vungle/ads/internal/model/c$h;

    goto :goto_1

    :cond_2
    iput-object p4, p0, Lcom/vungle/ads/internal/model/i;->ext:Lcom/vungle/ads/internal/model/c$h;

    :goto_1
    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_3

    iput-object p7, p0, Lcom/vungle/ads/internal/model/i;->request:Lcom/vungle/ads/internal/model/h;

    goto :goto_2

    :cond_3
    iput-object p5, p0, Lcom/vungle/ads/internal/model/i;->request:Lcom/vungle/ads/internal/model/h;

    :goto_2
    iput p6, p0, Lcom/vungle/ads/internal/model/i;->ordinalView:I

    return-void
.end method

.method public constructor <init>(Lcom/vungle/ads/internal/model/d;Lcom/vungle/ads/internal/model/c$j;Lcom/vungle/ads/internal/model/c$h;Lcom/vungle/ads/internal/model/h;I)V
    .locals 1

    const-string v0, "device"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/vungle/ads/internal/model/i;->device:Lcom/vungle/ads/internal/model/d;

    .line 4
    iput-object p2, p0, Lcom/vungle/ads/internal/model/i;->user:Lcom/vungle/ads/internal/model/c$j;

    .line 5
    iput-object p3, p0, Lcom/vungle/ads/internal/model/i;->ext:Lcom/vungle/ads/internal/model/c$h;

    .line 6
    iput-object p4, p0, Lcom/vungle/ads/internal/model/i;->request:Lcom/vungle/ads/internal/model/h;

    .line 7
    iput p5, p0, Lcom/vungle/ads/internal/model/i;->ordinalView:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vungle/ads/internal/model/d;Lcom/vungle/ads/internal/model/c$j;Lcom/vungle/ads/internal/model/c$h;Lcom/vungle/ads/internal/model/h;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    move-object v5, v0

    goto :goto_2

    :cond_2
    move-object v5, p4

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move v6, p5

    .line 8
    invoke-direct/range {v1 .. v6}, Lcom/vungle/ads/internal/model/i;-><init>(Lcom/vungle/ads/internal/model/d;Lcom/vungle/ads/internal/model/c$j;Lcom/vungle/ads/internal/model/c$h;Lcom/vungle/ads/internal/model/h;I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/vungle/ads/internal/model/i;Lcom/vungle/ads/internal/model/d;Lcom/vungle/ads/internal/model/c$j;Lcom/vungle/ads/internal/model/c$h;Lcom/vungle/ads/internal/model/h;IILjava/lang/Object;)Lcom/vungle/ads/internal/model/i;
    .locals 3

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/vungle/ads/internal/model/i;->device:Lcom/vungle/ads/internal/model/d;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p7, p6, 0x2

    .line 8
    .line 9
    if-eqz p7, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/vungle/ads/internal/model/i;->user:Lcom/vungle/ads/internal/model/c$j;

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
    iget-object p3, p0, Lcom/vungle/ads/internal/model/i;->ext:Lcom/vungle/ads/internal/model/c$h;

    .line 19
    .line 20
    :cond_2
    move-object v0, p3

    .line 21
    and-int/lit8 p2, p6, 0x8

    .line 22
    .line 23
    if-eqz p2, :cond_3

    .line 24
    .line 25
    iget-object p4, p0, Lcom/vungle/ads/internal/model/i;->request:Lcom/vungle/ads/internal/model/h;

    .line 26
    .line 27
    :cond_3
    move-object v1, p4

    .line 28
    and-int/lit8 p2, p6, 0x10

    .line 29
    .line 30
    if-eqz p2, :cond_4

    .line 31
    .line 32
    iget p5, p0, Lcom/vungle/ads/internal/model/i;->ordinalView:I

    .line 33
    .line 34
    :cond_4
    move v2, p5

    .line 35
    move-object p2, p0

    .line 36
    move-object p3, p1

    .line 37
    move-object p4, p7

    .line 38
    move-object p5, v0

    .line 39
    move-object p6, v1

    .line 40
    move p7, v2

    .line 41
    invoke-virtual/range {p2 .. p7}, Lcom/vungle/ads/internal/model/i;->copy(Lcom/vungle/ads/internal/model/d;Lcom/vungle/ads/internal/model/c$j;Lcom/vungle/ads/internal/model/c$h;Lcom/vungle/ads/internal/model/h;I)Lcom/vungle/ads/internal/model/i;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method public static synthetic getOrdinalView$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final write$Self(Lcom/vungle/ads/internal/model/i;Lsy/d;Lkotlinx/serialization/descriptors/f;)V
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
    sget-object v0, Lcom/vungle/ads/internal/model/d$a;->INSTANCE:Lcom/vungle/ads/internal/model/d$a;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/vungle/ads/internal/model/i;->device:Lcom/vungle/ads/internal/model/d;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-interface {p1, p2, v2, v0, v1}, Lsy/d;->C(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/vungle/ads/internal/model/i;->user:Lcom/vungle/ads/internal/model/c$j;

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    :goto_0
    sget-object v1, Lcom/vungle/ads/internal/model/c$j$a;->INSTANCE:Lcom/vungle/ads/internal/model/c$j$a;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/vungle/ads/internal/model/i;->user:Lcom/vungle/ads/internal/model/c$j;

    .line 39
    .line 40
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    const/4 v0, 0x2

    .line 44
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    iget-object v1, p0, Lcom/vungle/ads/internal/model/i;->ext:Lcom/vungle/ads/internal/model/c$h;

    .line 52
    .line 53
    if-eqz v1, :cond_3

    .line 54
    .line 55
    :goto_1
    sget-object v1, Lcom/vungle/ads/internal/model/c$h$a;->INSTANCE:Lcom/vungle/ads/internal/model/c$h$a;

    .line 56
    .line 57
    iget-object v2, p0, Lcom/vungle/ads/internal/model/i;->ext:Lcom/vungle/ads/internal/model/c$h;

    .line 58
    .line 59
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    :cond_3
    const/4 v0, 0x3

    .line 63
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_4

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_4
    iget-object v1, p0, Lcom/vungle/ads/internal/model/i;->request:Lcom/vungle/ads/internal/model/h;

    .line 71
    .line 72
    if-eqz v1, :cond_5

    .line 73
    .line 74
    :goto_2
    sget-object v1, Lcom/vungle/ads/internal/model/h$a;->INSTANCE:Lcom/vungle/ads/internal/model/h$a;

    .line 75
    .line 76
    iget-object v2, p0, Lcom/vungle/ads/internal/model/i;->request:Lcom/vungle/ads/internal/model/h;

    .line 77
    .line 78
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :cond_5
    const/4 v0, 0x4

    .line 82
    iget p0, p0, Lcom/vungle/ads/internal/model/i;->ordinalView:I

    .line 83
    .line 84
    invoke-interface {p1, p2, v0, p0}, Lsy/d;->w(Lkotlinx/serialization/descriptors/f;II)V

    .line 85
    .line 86
    .line 87
    return-void
.end method


# virtual methods
.method public final component1()Lcom/vungle/ads/internal/model/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/i;->device:Lcom/vungle/ads/internal/model/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Lcom/vungle/ads/internal/model/c$j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/i;->user:Lcom/vungle/ads/internal/model/c$j;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Lcom/vungle/ads/internal/model/c$h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/i;->ext:Lcom/vungle/ads/internal/model/c$h;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Lcom/vungle/ads/internal/model/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/i;->request:Lcom/vungle/ads/internal/model/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/vungle/ads/internal/model/i;->ordinalView:I

    .line 2
    .line 3
    return v0
.end method

.method public final copy(Lcom/vungle/ads/internal/model/d;Lcom/vungle/ads/internal/model/c$j;Lcom/vungle/ads/internal/model/c$h;Lcom/vungle/ads/internal/model/h;I)Lcom/vungle/ads/internal/model/i;
    .locals 7

    .line 1
    const-string v0, "device"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/vungle/ads/internal/model/i;

    .line 7
    .line 8
    move-object v1, v0

    .line 9
    move-object v2, p1

    .line 10
    move-object v3, p2

    .line 11
    move-object v4, p3

    .line 12
    move-object v5, p4

    .line 13
    move v6, p5

    .line 14
    invoke-direct/range {v1 .. v6}, Lcom/vungle/ads/internal/model/i;-><init>(Lcom/vungle/ads/internal/model/d;Lcom/vungle/ads/internal/model/c$j;Lcom/vungle/ads/internal/model/c$h;Lcom/vungle/ads/internal/model/h;I)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/vungle/ads/internal/model/i;

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
    check-cast p1, Lcom/vungle/ads/internal/model/i;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/vungle/ads/internal/model/i;->device:Lcom/vungle/ads/internal/model/d;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/vungle/ads/internal/model/i;->device:Lcom/vungle/ads/internal/model/d;

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
    iget-object v1, p0, Lcom/vungle/ads/internal/model/i;->user:Lcom/vungle/ads/internal/model/c$j;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/vungle/ads/internal/model/i;->user:Lcom/vungle/ads/internal/model/c$j;

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
    iget-object v1, p0, Lcom/vungle/ads/internal/model/i;->ext:Lcom/vungle/ads/internal/model/c$h;

    .line 36
    .line 37
    iget-object v3, p1, Lcom/vungle/ads/internal/model/i;->ext:Lcom/vungle/ads/internal/model/c$h;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-object v1, p0, Lcom/vungle/ads/internal/model/i;->request:Lcom/vungle/ads/internal/model/h;

    .line 47
    .line 48
    iget-object v3, p1, Lcom/vungle/ads/internal/model/i;->request:Lcom/vungle/ads/internal/model/h;

    .line 49
    .line 50
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    iget v1, p0, Lcom/vungle/ads/internal/model/i;->ordinalView:I

    .line 58
    .line 59
    iget p1, p1, Lcom/vungle/ads/internal/model/i;->ordinalView:I

    .line 60
    .line 61
    if-eq v1, p1, :cond_6

    .line 62
    .line 63
    return v2

    .line 64
    :cond_6
    return v0
.end method

.method public final getDevice()Lcom/vungle/ads/internal/model/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/i;->device:Lcom/vungle/ads/internal/model/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getExt()Lcom/vungle/ads/internal/model/c$h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/i;->ext:Lcom/vungle/ads/internal/model/c$h;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOrdinalView()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/vungle/ads/internal/model/i;->ordinalView:I

    .line 2
    .line 3
    return v0
.end method

.method public final getRequest()Lcom/vungle/ads/internal/model/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/i;->request:Lcom/vungle/ads/internal/model/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUser()Lcom/vungle/ads/internal/model/c$j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/i;->user:Lcom/vungle/ads/internal/model/c$j;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/i;->device:Lcom/vungle/ads/internal/model/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/d;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/vungle/ads/internal/model/i;->user:Lcom/vungle/ads/internal/model/c$j;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    move v1, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/c$j;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    :goto_0
    add-int/2addr v0, v1

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget-object v1, p0, Lcom/vungle/ads/internal/model/i;->ext:Lcom/vungle/ads/internal/model/c$h;

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    move v1, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/c$h;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    :goto_1
    add-int/2addr v0, v1

    .line 34
    mul-int/lit8 v0, v0, 0x1f

    .line 35
    .line 36
    iget-object v1, p0, Lcom/vungle/ads/internal/model/i;->request:Lcom/vungle/ads/internal/model/h;

    .line 37
    .line 38
    if-nez v1, :cond_2

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/h;->hashCode()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    :goto_2
    add-int/2addr v0, v2

    .line 46
    mul-int/lit8 v0, v0, 0x1f

    .line 47
    .line 48
    iget v1, p0, Lcom/vungle/ads/internal/model/i;->ordinalView:I

    .line 49
    .line 50
    add-int/2addr v0, v1

    .line 51
    return v0
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
    const-string v1, "RtbToken(device="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/vungle/ads/internal/model/i;->device:Lcom/vungle/ads/internal/model/d;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", user="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/vungle/ads/internal/model/i;->user:Lcom/vungle/ads/internal/model/c$j;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", ext="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/vungle/ads/internal/model/i;->ext:Lcom/vungle/ads/internal/model/c$h;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", request="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/vungle/ads/internal/model/i;->request:Lcom/vungle/ads/internal/model/h;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", ordinalView="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget v1, p0, Lcom/vungle/ads/internal/model/i;->ordinalView:I

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const/16 v1, 0x29

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    return-object v0
.end method
