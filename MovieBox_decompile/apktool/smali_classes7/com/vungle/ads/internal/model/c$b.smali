.class public final Lcom/vungle/ads/internal/model/c$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/model/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/model/c$b$b;,
        Lcom/vungle/ads/internal/model/c$b$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/model/c$b$b;


# instance fields
.field private final height:I

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/model/c$b$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/model/c$b$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/vungle/ads/internal/model/c$b;->Companion:Lcom/vungle/ads/internal/model/c$b$b;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/vungle/ads/internal/model/c$b;->width:I

    iput p2, p0, Lcom/vungle/ads/internal/model/c$b;->height:I

    return-void
.end method

.method public synthetic constructor <init>(IIILkotlinx/serialization/internal/w1;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    and-int/lit8 p4, p1, 0x3

    const/4 v0, 0x3

    if-eq v0, p4, :cond_0

    .line 3
    sget-object p4, Lcom/vungle/ads/internal/model/c$b$a;->INSTANCE:Lcom/vungle/ads/internal/model/c$b$a;

    invoke-virtual {p4}, Lcom/vungle/ads/internal/model/c$b$a;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object p4

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/m1;->a(IILkotlinx/serialization/descriptors/f;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/vungle/ads/internal/model/c$b;->width:I

    iput p3, p0, Lcom/vungle/ads/internal/model/c$b;->height:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/vungle/ads/internal/model/c$b;IIILjava/lang/Object;)Lcom/vungle/ads/internal/model/c$b;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lcom/vungle/ads/internal/model/c$b;->width:I

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    iget p2, p0, Lcom/vungle/ads/internal/model/c$b;->height:I

    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/vungle/ads/internal/model/c$b;->copy(II)Lcom/vungle/ads/internal/model/c$b;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static synthetic getHeight$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getWidth$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final write$Self(Lcom/vungle/ads/internal/model/c$b;Lsy/d;Lkotlinx/serialization/descriptors/f;)V
    .locals 2
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
    iget v0, p0, Lcom/vungle/ads/internal/model/c$b;->width:I

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-interface {p1, p2, v1, v0}, Lsy/d;->w(Lkotlinx/serialization/descriptors/f;II)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    iget p0, p0, Lcom/vungle/ads/internal/model/c$b;->height:I

    .line 24
    .line 25
    invoke-interface {p1, p2, v0, p0}, Lsy/d;->w(Lkotlinx/serialization/descriptors/f;II)V

    .line 26
    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final component1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/vungle/ads/internal/model/c$b;->width:I

    .line 2
    .line 3
    return v0
.end method

.method public final component2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/vungle/ads/internal/model/c$b;->height:I

    .line 2
    .line 3
    return v0
.end method

.method public final copy(II)Lcom/vungle/ads/internal/model/c$b;
    .locals 1

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/model/c$b;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/vungle/ads/internal/model/c$b;-><init>(II)V

    .line 4
    .line 5
    .line 6
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
    instance-of v1, p1, Lcom/vungle/ads/internal/model/c$b;

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
    check-cast p1, Lcom/vungle/ads/internal/model/c$b;

    .line 12
    .line 13
    iget v1, p0, Lcom/vungle/ads/internal/model/c$b;->width:I

    .line 14
    .line 15
    iget v3, p1, Lcom/vungle/ads/internal/model/c$b;->width:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget v1, p0, Lcom/vungle/ads/internal/model/c$b;->height:I

    .line 21
    .line 22
    iget p1, p1, Lcom/vungle/ads/internal/model/c$b;->height:I

    .line 23
    .line 24
    if-eq v1, p1, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    return v0
.end method

.method public final getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/vungle/ads/internal/model/c$b;->height:I

    .line 2
    .line 3
    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/vungle/ads/internal/model/c$b;->width:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/vungle/ads/internal/model/c$b;->width:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget v1, p0, Lcom/vungle/ads/internal/model/c$b;->height:I

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
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
    const-string v1, "AdSizeParam(width="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/vungle/ads/internal/model/c$b;->width:I

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
    iget v1, p0, Lcom/vungle/ads/internal/model/c$b;->height:I

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
