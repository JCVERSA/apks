.class public final Lcom/transsion/mediationads/beans/AdDisplayResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/mediationads/beans/AdDisplayResponse$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fBE\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0010\u0008\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0010\u0008\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0005\u0012\u0010\u0008\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\u0011\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\u00c6\u0003J\u0011\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0005H\u00c6\u0003J\u0011\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0005H\u00c6\u0003JI\u0010\u0019\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0010\u0008\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\u0010\u0008\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00052\u0010\u0008\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u00d6\u0003J\t\u0010\u001e\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0019\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0019\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010R\u0019\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0010\u00a8\u0006 "
    }
    d2 = {
        "Lcom/transsion/mediationads/beans/AdDisplayResponse;",
        "Ljava/io/Serializable;",
        "displayStatus",
        "",
        "tabStrategyList",
        "",
        "Lcom/transsion/mediationads/beans/TabStrategy;",
        "splashList",
        "Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;",
        "ttStrategyList",
        "Lcom/transsion/mediationads/beans/TTStrategy;",
        "<init>",
        "(ILjava/util/List;Ljava/util/List;Ljava/util/List;)V",
        "getDisplayStatus",
        "()I",
        "getTabStrategyList",
        "()Ljava/util/List;",
        "getSplashList",
        "getTtStrategyList",
        "toString",
        "",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "Companion",
        "mediationads-api_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/mediationads/beans/AdDisplayResponse$Companion;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final displayStatus:I

.field private final splashList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private final tabStrategyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/mediationads/beans/TabStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private final ttStrategyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/mediationads/beans/TTStrategy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/mediationads/beans/AdDisplayResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/mediationads/beans/AdDisplayResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/mediationads/beans/AdDisplayResponse;->Companion:Lcom/transsion/mediationads/beans/AdDisplayResponse$Companion;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/transsion/mediationads/beans/TabStrategy;",
            ">;",
            "Ljava/util/List<",
            "Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;",
            ">;",
            "Ljava/util/List<",
            "Lcom/transsion/mediationads/beans/TTStrategy;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/transsion/mediationads/beans/AdDisplayResponse;->displayStatus:I

    .line 3
    iput-object p2, p0, Lcom/transsion/mediationads/beans/AdDisplayResponse;->tabStrategyList:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcom/transsion/mediationads/beans/AdDisplayResponse;->splashList:Ljava/util/List;

    .line 5
    iput-object p4, p0, Lcom/transsion/mediationads/beans/AdDisplayResponse;->ttStrategyList:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move-object p4, v0

    .line 6
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/mediationads/beans/AdDisplayResponse;-><init>(ILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/mediationads/beans/AdDisplayResponse;ILjava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lcom/transsion/mediationads/beans/AdDisplayResponse;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/transsion/mediationads/beans/AdDisplayResponse;->displayStatus:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/transsion/mediationads/beans/AdDisplayResponse;->tabStrategyList:Ljava/util/List;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/transsion/mediationads/beans/AdDisplayResponse;->splashList:Ljava/util/List;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/transsion/mediationads/beans/AdDisplayResponse;->ttStrategyList:Ljava/util/List;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/mediationads/beans/AdDisplayResponse;->copy(ILjava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/transsion/mediationads/beans/AdDisplayResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/transsion/mediationads/beans/AdDisplayResponse;->displayStatus:I

    return p0
.end method

.method public final component2()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/mediationads/beans/TabStrategy;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/mediationads/beans/AdDisplayResponse;->tabStrategyList:Ljava/util/List;

    return-object p0
.end method

.method public final component3()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/mediationads/beans/AdDisplayResponse;->splashList:Ljava/util/List;

    return-object p0
.end method

.method public final component4()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/mediationads/beans/TTStrategy;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/mediationads/beans/AdDisplayResponse;->ttStrategyList:Ljava/util/List;

    return-object p0
.end method

.method public final copy(ILjava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/transsion/mediationads/beans/AdDisplayResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/transsion/mediationads/beans/TabStrategy;",
            ">;",
            "Ljava/util/List<",
            "Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;",
            ">;",
            "Ljava/util/List<",
            "Lcom/transsion/mediationads/beans/TTStrategy;",
            ">;)",
            "Lcom/transsion/mediationads/beans/AdDisplayResponse;"
        }
    .end annotation

    new-instance p0, Lcom/transsion/mediationads/beans/AdDisplayResponse;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/mediationads/beans/AdDisplayResponse;-><init>(ILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/mediationads/beans/AdDisplayResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/mediationads/beans/AdDisplayResponse;

    iget v1, p0, Lcom/transsion/mediationads/beans/AdDisplayResponse;->displayStatus:I

    iget v3, p1, Lcom/transsion/mediationads/beans/AdDisplayResponse;->displayStatus:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/mediationads/beans/AdDisplayResponse;->tabStrategyList:Ljava/util/List;

    iget-object v3, p1, Lcom/transsion/mediationads/beans/AdDisplayResponse;->tabStrategyList:Ljava/util/List;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/transsion/mediationads/beans/AdDisplayResponse;->splashList:Ljava/util/List;

    iget-object v3, p1, Lcom/transsion/mediationads/beans/AdDisplayResponse;->splashList:Ljava/util/List;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/transsion/mediationads/beans/AdDisplayResponse;->ttStrategyList:Ljava/util/List;

    iget-object p1, p1, Lcom/transsion/mediationads/beans/AdDisplayResponse;->ttStrategyList:Ljava/util/List;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getDisplayStatus()I
    .locals 0

    iget p0, p0, Lcom/transsion/mediationads/beans/AdDisplayResponse;->displayStatus:I

    return p0
.end method

.method public final getSplashList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/mediationads/beans/AdDisplayResponse;->splashList:Ljava/util/List;

    return-object p0
.end method

.method public final getTabStrategyList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/mediationads/beans/TabStrategy;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/mediationads/beans/AdDisplayResponse;->tabStrategyList:Ljava/util/List;

    return-object p0
.end method

.method public final getTtStrategyList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/mediationads/beans/TTStrategy;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/mediationads/beans/AdDisplayResponse;->ttStrategyList:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/transsion/mediationads/beans/AdDisplayResponse;->displayStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/mediationads/beans/AdDisplayResponse;->tabStrategyList:Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/mediationads/beans/AdDisplayResponse;->splashList:Ljava/util/List;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/transsion/mediationads/beans/AdDisplayResponse;->ttStrategyList:Ljava/util/List;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    iget-object v0, p0, Lcom/transsion/mediationads/beans/AdDisplayResponse;->tabStrategyList:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    const-string v1, "]"

    const-string v2, "["

    const-string v3, "null"

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/mediationads/beans/AdDisplayResponse;->tabStrategyList:Ljava/util/List;

    move-object v4, v0

    check-cast v4, Ljava/lang/Iterable;

    const/16 v11, 0x3e

    const/4 v12, 0x0

    const-string v5, ", "

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v12}, Li81;->y0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le74;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, v3

    :goto_1
    iget-object v4, p0, Lcom/transsion/mediationads/beans/AdDisplayResponse;->ttStrategyList:Ljava/util/List;

    check-cast v4, Ljava/util/Collection;

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/transsion/mediationads/beans/AdDisplayResponse;->ttStrategyList:Ljava/util/List;

    move-object v4, v3

    check-cast v4, Ljava/lang/Iterable;

    const/16 v11, 0x3e

    const/4 v12, 0x0

    const-string v5, ", "

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v12}, Li81;->y0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le74;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    :goto_2
    iget v1, p0, Lcom/transsion/mediationads/beans/AdDisplayResponse;->displayStatus:I

    iget-object p0, p0, Lcom/transsion/mediationads/beans/AdDisplayResponse;->splashList:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AdDisplayResponse(displayStatus="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tabStrategyList="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",splashList="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ",ttStrategyList="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
