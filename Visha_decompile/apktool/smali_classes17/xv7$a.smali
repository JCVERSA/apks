.class public final Lxv7$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxv7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/yandex/div/core/view2/divs/widgets/DivPagerIndicatorView;

.field public final b:Lcom/yandex/div2/DivPager;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/widgets/DivPagerIndicatorView;Lcom/yandex/div2/DivPager;)V
    .locals 1

    const-string v0, "indicator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pagerDiv"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxv7$a;->a:Lcom/yandex/div/core/view2/divs/widgets/DivPagerIndicatorView;

    iput-object p2, p0, Lxv7$a;->b:Lcom/yandex/div2/DivPager;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/div/core/view2/divs/widgets/DivPagerIndicatorView;
    .locals 0

    iget-object p0, p0, Lxv7$a;->a:Lcom/yandex/div/core/view2/divs/widgets/DivPagerIndicatorView;

    return-object p0
.end method

.method public final b()Lcom/yandex/div2/DivPager;
    .locals 0

    iget-object p0, p0, Lxv7$a;->b:Lcom/yandex/div2/DivPager;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lxv7$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lxv7$a;

    iget-object v1, p0, Lxv7$a;->a:Lcom/yandex/div/core/view2/divs/widgets/DivPagerIndicatorView;

    iget-object v3, p1, Lxv7$a;->a:Lcom/yandex/div/core/view2/divs/widgets/DivPagerIndicatorView;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lxv7$a;->b:Lcom/yandex/div2/DivPager;

    iget-object p1, p1, Lxv7$a;->b:Lcom/yandex/div2/DivPager;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lxv7$a;->a:Lcom/yandex/div/core/view2/divs/widgets/DivPagerIndicatorView;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lxv7$a;->b:Lcom/yandex/div2/DivPager;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IndicatorData(indicator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lxv7$a;->a:Lcom/yandex/div/core/view2/divs/widgets/DivPagerIndicatorView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pagerDiv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lxv7$a;->b:Lcom/yandex/div2/DivPager;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
