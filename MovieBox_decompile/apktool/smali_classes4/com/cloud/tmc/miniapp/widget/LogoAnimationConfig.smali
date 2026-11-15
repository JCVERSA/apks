.class public final Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;
.super Lcom/cloud/tmc/kernel/model/BaseBean;
.source "source.java"


# instance fields
.field private loadingAnimMemorySize:I

.field private miniAnimateEnable:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;->miniAnimateEnable:Ljava/lang/Boolean;

    .line 5
    .line 6
    iput p2, p0, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;->loadingAnimMemorySize:I

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;Ljava/lang/Boolean;IILjava/lang/Object;)Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;->miniAnimateEnable:Ljava/lang/Boolean;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    iget p2, p0, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;->loadingAnimMemorySize:I

    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;->copy(Ljava/lang/Boolean;I)Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;->miniAnimateEnable:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;->loadingAnimMemorySize:I

    .line 2
    .line 3
    return v0
.end method

.method public final copy(Ljava/lang/Boolean;I)Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;-><init>(Ljava/lang/Boolean;I)V

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
    instance-of v1, p1, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;

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
    check-cast p1, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;->miniAnimateEnable:Ljava/lang/Boolean;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;->miniAnimateEnable:Ljava/lang/Boolean;

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
    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;->loadingAnimMemorySize:I

    .line 25
    .line 26
    iget p1, p1, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;->loadingAnimMemorySize:I

    .line 27
    .line 28
    if-eq v1, p1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    return v0
.end method

.method public final getLoadingAnimMemorySize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;->loadingAnimMemorySize:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMiniAnimateEnable()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;->miniAnimateEnable:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;->miniAnimateEnable:Ljava/lang/Boolean;

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
    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;->loadingAnimMemorySize:I

    .line 14
    .line 15
    add-int/2addr v1, v0

    .line 16
    return v1
.end method

.method public final setLoadingAnimMemorySize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;->loadingAnimMemorySize:I

    .line 2
    .line 3
    return-void
.end method

.method public final setMiniAnimateEnable(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;->miniAnimateEnable:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;->miniAnimateEnable:Ljava/lang/Boolean;

    .line 2
    .line 3
    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;->loadingAnimMemorySize:I

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "LogoAnimationConfig(miniAnimateEnable="

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v0, ", loadingAnimMemorySize="

    .line 19
    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, ")"

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method
