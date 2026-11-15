.class public final Lcom/transsion/wrapperad/view/cardpage/f;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

.field private final b:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

.field private c:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;ZZ)V
    .locals 1

    const-string v0, "nativeView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adBean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/f;->a:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 3
    iput-object p2, p0, Lcom/transsion/wrapperad/view/cardpage/f;->b:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 4
    iput-object p3, p0, Lcom/transsion/wrapperad/view/cardpage/f;->c:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

    .line 5
    iput-boolean p4, p0, Lcom/transsion/wrapperad/view/cardpage/f;->d:Z

    .line 6
    iput-boolean p5, p0, Lcom/transsion/wrapperad/view/cardpage/f;->e:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const/4 p3, 0x0

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    const/4 p4, 0x0

    :cond_1
    move v4, p4

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    const/4 p5, 0x1

    :cond_2
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/transsion/wrapperad/view/cardpage/f;-><init>(Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;ZZ)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/f;->b:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/wrapperad/view/cardpage/f;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public final c()Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/f;->c:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/f;->a:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/wrapperad/view/cardpage/f;->e:Z

    .line 2
    .line 3
    return v0
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
    instance-of v1, p1, Lcom/transsion/wrapperad/view/cardpage/f;

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
    check-cast p1, Lcom/transsion/wrapperad/view/cardpage/f;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/wrapperad/view/cardpage/f;->a:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/transsion/wrapperad/view/cardpage/f;->a:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

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
    iget-object v1, p0, Lcom/transsion/wrapperad/view/cardpage/f;->b:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/transsion/wrapperad/view/cardpage/f;->b:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

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
    iget-object v1, p0, Lcom/transsion/wrapperad/view/cardpage/f;->c:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

    .line 36
    .line 37
    iget-object v3, p1, Lcom/transsion/wrapperad/view/cardpage/f;->c:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

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
    iget-boolean v1, p0, Lcom/transsion/wrapperad/view/cardpage/f;->d:Z

    .line 47
    .line 48
    iget-boolean v3, p1, Lcom/transsion/wrapperad/view/cardpage/f;->d:Z

    .line 49
    .line 50
    if-eq v1, v3, :cond_5

    .line 51
    .line 52
    return v2

    .line 53
    :cond_5
    iget-boolean v1, p0, Lcom/transsion/wrapperad/view/cardpage/f;->e:Z

    .line 54
    .line 55
    iget-boolean p1, p1, Lcom/transsion/wrapperad/view/cardpage/f;->e:Z

    .line 56
    .line 57
    if-eq v1, p1, :cond_6

    .line 58
    .line 59
    return v2

    .line 60
    :cond_6
    return v0
.end method

.method public final f(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/wrapperad/view/cardpage/f;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method public final g(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/f;->c:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

    .line 2
    .line 3
    return-void
.end method

.method public final h(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/wrapperad/view/cardpage/f;->e:Z

    .line 2
    .line 3
    return-void
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/f;->a:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/transsion/wrapperad/view/cardpage/f;->b:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->hashCode()I

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
    iget-object v1, p0, Lcom/transsion/wrapperad/view/cardpage/f;->c:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    :goto_0
    add-int/2addr v0, v1

    .line 29
    mul-int/lit8 v0, v0, 0x1f

    .line 30
    .line 31
    iget-boolean v1, p0, Lcom/transsion/wrapperad/view/cardpage/f;->d:Z

    .line 32
    .line 33
    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    add-int/2addr v0, v1

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    iget-boolean v1, p0, Lcom/transsion/wrapperad/view/cardpage/f;->e:Z

    .line 41
    .line 42
    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    add-int/2addr v0, v1

    .line 47
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/f;->a:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/wrapperad/view/cardpage/f;->b:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/wrapperad/view/cardpage/f;->c:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/transsion/wrapperad/view/cardpage/f;->d:Z

    .line 8
    .line 9
    iget-boolean v4, p0, Lcom/transsion/wrapperad/view/cardpage/f;->e:Z

    .line 10
    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v6, "NativeCardPageData(nativeView="

    .line 17
    .line 18
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v0, ", adBean="

    .line 25
    .line 26
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, ", helper="

    .line 33
    .line 34
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, ", bind="

    .line 41
    .line 42
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, ", showGuide="

    .line 49
    .line 50
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v0, ")"

    .line 57
    .line 58
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    return-object v0
.end method
