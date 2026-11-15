.class public final Lcom/vungle/ads/internal/model/c$j;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/model/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/model/c$j$b;,
        Lcom/vungle/ads/internal/model/c$j$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/model/c$j$b;


# instance fields
.field private ccpa:Lcom/vungle/ads/internal/model/c$c;

.field private coppa:Lcom/vungle/ads/internal/model/c$d;

.field private fpd:Lrx/b;

.field private gdpr:Lcom/vungle/ads/internal/model/c$f;

.field private iab:Lcom/vungle/ads/internal/model/c$g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/model/c$j$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/model/c$j$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/vungle/ads/internal/model/c$j;->Companion:Lcom/vungle/ads/internal/model/c$j$b;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 1
    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/vungle/ads/internal/model/c$j;-><init>(Lcom/vungle/ads/internal/model/c$f;Lcom/vungle/ads/internal/model/c$c;Lcom/vungle/ads/internal/model/c$d;Lrx/b;Lcom/vungle/ads/internal/model/c$g;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ILcom/vungle/ads/internal/model/c$f;Lcom/vungle/ads/internal/model/c$c;Lcom/vungle/ads/internal/model/c$d;Lrx/b;Lcom/vungle/ads/internal/model/c$g;Lkotlinx/serialization/internal/w1;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p7, p1, 0x1

    const/4 v0, 0x0

    if-nez p7, :cond_0

    iput-object v0, p0, Lcom/vungle/ads/internal/model/c$j;->gdpr:Lcom/vungle/ads/internal/model/c$f;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/vungle/ads/internal/model/c$j;->gdpr:Lcom/vungle/ads/internal/model/c$f;

    :goto_0
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    iput-object v0, p0, Lcom/vungle/ads/internal/model/c$j;->ccpa:Lcom/vungle/ads/internal/model/c$c;

    goto :goto_1

    :cond_1
    iput-object p3, p0, Lcom/vungle/ads/internal/model/c$j;->ccpa:Lcom/vungle/ads/internal/model/c$c;

    :goto_1
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2

    iput-object v0, p0, Lcom/vungle/ads/internal/model/c$j;->coppa:Lcom/vungle/ads/internal/model/c$d;

    goto :goto_2

    :cond_2
    iput-object p4, p0, Lcom/vungle/ads/internal/model/c$j;->coppa:Lcom/vungle/ads/internal/model/c$d;

    :goto_2
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_3

    iput-object v0, p0, Lcom/vungle/ads/internal/model/c$j;->fpd:Lrx/b;

    goto :goto_3

    :cond_3
    iput-object p5, p0, Lcom/vungle/ads/internal/model/c$j;->fpd:Lrx/b;

    :goto_3
    and-int/lit8 p1, p1, 0x10

    if-nez p1, :cond_4

    iput-object v0, p0, Lcom/vungle/ads/internal/model/c$j;->iab:Lcom/vungle/ads/internal/model/c$g;

    goto :goto_4

    :cond_4
    iput-object p6, p0, Lcom/vungle/ads/internal/model/c$j;->iab:Lcom/vungle/ads/internal/model/c$g;

    :goto_4
    return-void
.end method

.method public constructor <init>(Lcom/vungle/ads/internal/model/c$f;Lcom/vungle/ads/internal/model/c$c;Lcom/vungle/ads/internal/model/c$d;Lrx/b;Lcom/vungle/ads/internal/model/c$g;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/vungle/ads/internal/model/c$j;->gdpr:Lcom/vungle/ads/internal/model/c$f;

    iput-object p2, p0, Lcom/vungle/ads/internal/model/c$j;->ccpa:Lcom/vungle/ads/internal/model/c$c;

    iput-object p3, p0, Lcom/vungle/ads/internal/model/c$j;->coppa:Lcom/vungle/ads/internal/model/c$d;

    iput-object p4, p0, Lcom/vungle/ads/internal/model/c$j;->fpd:Lrx/b;

    iput-object p5, p0, Lcom/vungle/ads/internal/model/c$j;->iab:Lcom/vungle/ads/internal/model/c$g;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vungle/ads/internal/model/c$f;Lcom/vungle/ads/internal/model/c$c;Lcom/vungle/ads/internal/model/c$d;Lrx/b;Lcom/vungle/ads/internal/model/c$g;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 4

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p7, v0

    goto :goto_0

    :cond_0
    move-object p7, p1

    :goto_0
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    move-object v2, v0

    goto :goto_2

    :cond_2
    move-object v2, p3

    :goto_2
    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    move-object v3, v0

    goto :goto_3

    :cond_3
    move-object v3, p4

    :goto_3
    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_4

    move-object p6, v0

    goto :goto_4

    :cond_4
    move-object p6, p5

    :goto_4
    move-object p1, p0

    move-object p2, p7

    move-object p3, v1

    move-object p4, v2

    move-object p5, v3

    .line 5
    invoke-direct/range {p1 .. p6}, Lcom/vungle/ads/internal/model/c$j;-><init>(Lcom/vungle/ads/internal/model/c$f;Lcom/vungle/ads/internal/model/c$c;Lcom/vungle/ads/internal/model/c$d;Lrx/b;Lcom/vungle/ads/internal/model/c$g;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/vungle/ads/internal/model/c$j;Lcom/vungle/ads/internal/model/c$f;Lcom/vungle/ads/internal/model/c$c;Lcom/vungle/ads/internal/model/c$d;Lrx/b;Lcom/vungle/ads/internal/model/c$g;ILjava/lang/Object;)Lcom/vungle/ads/internal/model/c$j;
    .locals 3

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/vungle/ads/internal/model/c$j;->gdpr:Lcom/vungle/ads/internal/model/c$f;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p7, p6, 0x2

    .line 8
    .line 9
    if-eqz p7, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/vungle/ads/internal/model/c$j;->ccpa:Lcom/vungle/ads/internal/model/c$c;

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
    iget-object p3, p0, Lcom/vungle/ads/internal/model/c$j;->coppa:Lcom/vungle/ads/internal/model/c$d;

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
    iget-object p4, p0, Lcom/vungle/ads/internal/model/c$j;->fpd:Lrx/b;

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
    iget-object p5, p0, Lcom/vungle/ads/internal/model/c$j;->iab:Lcom/vungle/ads/internal/model/c$g;

    .line 33
    .line 34
    :cond_4
    move-object v2, p5

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
    move-object p7, v2

    .line 41
    invoke-virtual/range {p2 .. p7}, Lcom/vungle/ads/internal/model/c$j;->copy(Lcom/vungle/ads/internal/model/c$f;Lcom/vungle/ads/internal/model/c$c;Lcom/vungle/ads/internal/model/c$d;Lrx/b;Lcom/vungle/ads/internal/model/c$g;)Lcom/vungle/ads/internal/model/c$j;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method public static final write$Self(Lcom/vungle/ads/internal/model/c$j;Lsy/d;Lkotlinx/serialization/descriptors/f;)V
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
    iget-object v1, p0, Lcom/vungle/ads/internal/model/c$j;->gdpr:Lcom/vungle/ads/internal/model/c$f;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    :goto_0
    sget-object v1, Lcom/vungle/ads/internal/model/c$f$a;->INSTANCE:Lcom/vungle/ads/internal/model/c$f$a;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/vungle/ads/internal/model/c$j;->gdpr:Lcom/vungle/ads/internal/model/c$f;

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
    iget-object v1, p0, Lcom/vungle/ads/internal/model/c$j;->ccpa:Lcom/vungle/ads/internal/model/c$c;

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    :goto_1
    sget-object v1, Lcom/vungle/ads/internal/model/c$c$a;->INSTANCE:Lcom/vungle/ads/internal/model/c$c$a;

    .line 48
    .line 49
    iget-object v2, p0, Lcom/vungle/ads/internal/model/c$j;->ccpa:Lcom/vungle/ads/internal/model/c$c;

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
    iget-object v1, p0, Lcom/vungle/ads/internal/model/c$j;->coppa:Lcom/vungle/ads/internal/model/c$d;

    .line 63
    .line 64
    if-eqz v1, :cond_5

    .line 65
    .line 66
    :goto_2
    sget-object v1, Lcom/vungle/ads/internal/model/c$d$a;->INSTANCE:Lcom/vungle/ads/internal/model/c$d$a;

    .line 67
    .line 68
    iget-object v2, p0, Lcom/vungle/ads/internal/model/c$j;->coppa:Lcom/vungle/ads/internal/model/c$d;

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
    iget-object v1, p0, Lcom/vungle/ads/internal/model/c$j;->fpd:Lrx/b;

    .line 82
    .line 83
    if-eqz v1, :cond_7

    .line 84
    .line 85
    :goto_3
    sget-object v1, Lrx/b$a;->INSTANCE:Lrx/b$a;

    .line 86
    .line 87
    iget-object v2, p0, Lcom/vungle/ads/internal/model/c$j;->fpd:Lrx/b;

    .line 88
    .line 89
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    :cond_7
    const/4 v0, 0x4

    .line 93
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_8

    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_8
    iget-object v1, p0, Lcom/vungle/ads/internal/model/c$j;->iab:Lcom/vungle/ads/internal/model/c$g;

    .line 101
    .line 102
    if-eqz v1, :cond_9

    .line 103
    .line 104
    :goto_4
    sget-object v1, Lcom/vungle/ads/internal/model/c$g$a;->INSTANCE:Lcom/vungle/ads/internal/model/c$g$a;

    .line 105
    .line 106
    iget-object p0, p0, Lcom/vungle/ads/internal/model/c$j;->iab:Lcom/vungle/ads/internal/model/c$g;

    .line 107
    .line 108
    invoke-interface {p1, p2, v0, v1, p0}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    :cond_9
    return-void
.end method


# virtual methods
.method public final component1()Lcom/vungle/ads/internal/model/c$f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/c$j;->gdpr:Lcom/vungle/ads/internal/model/c$f;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Lcom/vungle/ads/internal/model/c$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/c$j;->ccpa:Lcom/vungle/ads/internal/model/c$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Lcom/vungle/ads/internal/model/c$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/c$j;->coppa:Lcom/vungle/ads/internal/model/c$d;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Lrx/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/c$j;->fpd:Lrx/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()Lcom/vungle/ads/internal/model/c$g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/c$j;->iab:Lcom/vungle/ads/internal/model/c$g;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Lcom/vungle/ads/internal/model/c$f;Lcom/vungle/ads/internal/model/c$c;Lcom/vungle/ads/internal/model/c$d;Lrx/b;Lcom/vungle/ads/internal/model/c$g;)Lcom/vungle/ads/internal/model/c$j;
    .locals 7

    .line 1
    new-instance v6, Lcom/vungle/ads/internal/model/c$j;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move-object v4, p4

    .line 8
    move-object v5, p5

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/vungle/ads/internal/model/c$j;-><init>(Lcom/vungle/ads/internal/model/c$f;Lcom/vungle/ads/internal/model/c$c;Lcom/vungle/ads/internal/model/c$d;Lrx/b;Lcom/vungle/ads/internal/model/c$g;)V

    .line 10
    .line 11
    .line 12
    return-object v6
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
    instance-of v1, p1, Lcom/vungle/ads/internal/model/c$j;

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
    check-cast p1, Lcom/vungle/ads/internal/model/c$j;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/vungle/ads/internal/model/c$j;->gdpr:Lcom/vungle/ads/internal/model/c$f;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/vungle/ads/internal/model/c$j;->gdpr:Lcom/vungle/ads/internal/model/c$f;

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
    iget-object v1, p0, Lcom/vungle/ads/internal/model/c$j;->ccpa:Lcom/vungle/ads/internal/model/c$c;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/vungle/ads/internal/model/c$j;->ccpa:Lcom/vungle/ads/internal/model/c$c;

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
    iget-object v1, p0, Lcom/vungle/ads/internal/model/c$j;->coppa:Lcom/vungle/ads/internal/model/c$d;

    .line 36
    .line 37
    iget-object v3, p1, Lcom/vungle/ads/internal/model/c$j;->coppa:Lcom/vungle/ads/internal/model/c$d;

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
    iget-object v1, p0, Lcom/vungle/ads/internal/model/c$j;->fpd:Lrx/b;

    .line 47
    .line 48
    iget-object v3, p1, Lcom/vungle/ads/internal/model/c$j;->fpd:Lrx/b;

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
    iget-object v1, p0, Lcom/vungle/ads/internal/model/c$j;->iab:Lcom/vungle/ads/internal/model/c$g;

    .line 58
    .line 59
    iget-object p1, p1, Lcom/vungle/ads/internal/model/c$j;->iab:Lcom/vungle/ads/internal/model/c$g;

    .line 60
    .line 61
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_6

    .line 66
    .line 67
    return v2

    .line 68
    :cond_6
    return v0
.end method

.method public final getCcpa()Lcom/vungle/ads/internal/model/c$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/c$j;->ccpa:Lcom/vungle/ads/internal/model/c$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCoppa()Lcom/vungle/ads/internal/model/c$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/c$j;->coppa:Lcom/vungle/ads/internal/model/c$d;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFpd()Lrx/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/c$j;->fpd:Lrx/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getGdpr()Lcom/vungle/ads/internal/model/c$f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/c$j;->gdpr:Lcom/vungle/ads/internal/model/c$f;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getIab()Lcom/vungle/ads/internal/model/c$g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/c$j;->iab:Lcom/vungle/ads/internal/model/c$g;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/c$j;->gdpr:Lcom/vungle/ads/internal/model/c$f;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/c$f;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lcom/vungle/ads/internal/model/c$j;->ccpa:Lcom/vungle/ads/internal/model/c$c;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    move v2, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v2}, Lcom/vungle/ads/internal/model/c$c;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    :goto_1
    add-int/2addr v0, v2

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v2, p0, Lcom/vungle/ads/internal/model/c$j;->coppa:Lcom/vungle/ads/internal/model/c$d;

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    move v2, v1

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    invoke-virtual {v2}, Lcom/vungle/ads/internal/model/c$d;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    :goto_2
    add-int/2addr v0, v2

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    iget-object v2, p0, Lcom/vungle/ads/internal/model/c$j;->fpd:Lrx/b;

    .line 41
    .line 42
    if-nez v2, :cond_3

    .line 43
    .line 44
    move v2, v1

    .line 45
    goto :goto_3

    .line 46
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    :goto_3
    add-int/2addr v0, v2

    .line 51
    mul-int/lit8 v0, v0, 0x1f

    .line 52
    .line 53
    iget-object v2, p0, Lcom/vungle/ads/internal/model/c$j;->iab:Lcom/vungle/ads/internal/model/c$g;

    .line 54
    .line 55
    if-nez v2, :cond_4

    .line 56
    .line 57
    goto :goto_4

    .line 58
    :cond_4
    invoke-virtual {v2}, Lcom/vungle/ads/internal/model/c$g;->hashCode()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    :goto_4
    add-int/2addr v0, v1

    .line 63
    return v0
.end method

.method public final setCcpa(Lcom/vungle/ads/internal/model/c$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/model/c$j;->ccpa:Lcom/vungle/ads/internal/model/c$c;

    .line 2
    .line 3
    return-void
.end method

.method public final setCoppa(Lcom/vungle/ads/internal/model/c$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/model/c$j;->coppa:Lcom/vungle/ads/internal/model/c$d;

    .line 2
    .line 3
    return-void
.end method

.method public final setFpd(Lrx/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/model/c$j;->fpd:Lrx/b;

    .line 2
    .line 3
    return-void
.end method

.method public final setGdpr(Lcom/vungle/ads/internal/model/c$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/model/c$j;->gdpr:Lcom/vungle/ads/internal/model/c$f;

    .line 2
    .line 3
    return-void
.end method

.method public final setIab(Lcom/vungle/ads/internal/model/c$g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/model/c$j;->iab:Lcom/vungle/ads/internal/model/c$g;

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
    const-string v1, "User(gdpr="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/vungle/ads/internal/model/c$j;->gdpr:Lcom/vungle/ads/internal/model/c$f;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", ccpa="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/vungle/ads/internal/model/c$j;->ccpa:Lcom/vungle/ads/internal/model/c$c;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", coppa="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/vungle/ads/internal/model/c$j;->coppa:Lcom/vungle/ads/internal/model/c$d;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", fpd="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/vungle/ads/internal/model/c$j;->fpd:Lrx/b;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", iab="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/vungle/ads/internal/model/c$j;->iab:Lcom/vungle/ads/internal/model/c$g;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
