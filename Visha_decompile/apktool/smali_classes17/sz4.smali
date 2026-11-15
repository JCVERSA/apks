.class public final Lsz4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/yandex/div/internal/widget/indicator/IndicatorParams$Animation;

.field public final b:Lcom/yandex/div/internal/widget/indicator/c;

.field public final c:Lcom/yandex/div/internal/widget/indicator/c;

.field public final d:Lcom/yandex/div/internal/widget/indicator/c;

.field public final e:Lcom/yandex/div/internal/widget/indicator/a;


# direct methods
.method public constructor <init>(Lcom/yandex/div/internal/widget/indicator/IndicatorParams$Animation;Lcom/yandex/div/internal/widget/indicator/c;Lcom/yandex/div/internal/widget/indicator/c;Lcom/yandex/div/internal/widget/indicator/c;Lcom/yandex/div/internal/widget/indicator/a;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activeShape"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inactiveShape"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "minimumShape"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemsPlacement"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsz4;->a:Lcom/yandex/div/internal/widget/indicator/IndicatorParams$Animation;

    iput-object p2, p0, Lsz4;->b:Lcom/yandex/div/internal/widget/indicator/c;

    iput-object p3, p0, Lsz4;->c:Lcom/yandex/div/internal/widget/indicator/c;

    iput-object p4, p0, Lsz4;->d:Lcom/yandex/div/internal/widget/indicator/c;

    iput-object p5, p0, Lsz4;->e:Lcom/yandex/div/internal/widget/indicator/a;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/div/internal/widget/indicator/c;
    .locals 0

    iget-object p0, p0, Lsz4;->b:Lcom/yandex/div/internal/widget/indicator/c;

    return-object p0
.end method

.method public final b()Lcom/yandex/div/internal/widget/indicator/IndicatorParams$Animation;
    .locals 0

    iget-object p0, p0, Lsz4;->a:Lcom/yandex/div/internal/widget/indicator/IndicatorParams$Animation;

    return-object p0
.end method

.method public final c()Lcom/yandex/div/internal/widget/indicator/c;
    .locals 0

    iget-object p0, p0, Lsz4;->c:Lcom/yandex/div/internal/widget/indicator/c;

    return-object p0
.end method

.method public final d()Lcom/yandex/div/internal/widget/indicator/a;
    .locals 0

    iget-object p0, p0, Lsz4;->e:Lcom/yandex/div/internal/widget/indicator/a;

    return-object p0
.end method

.method public final e()Lcom/yandex/div/internal/widget/indicator/c;
    .locals 0

    iget-object p0, p0, Lsz4;->d:Lcom/yandex/div/internal/widget/indicator/c;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lsz4;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lsz4;

    iget-object v1, p0, Lsz4;->a:Lcom/yandex/div/internal/widget/indicator/IndicatorParams$Animation;

    iget-object v3, p1, Lsz4;->a:Lcom/yandex/div/internal/widget/indicator/IndicatorParams$Animation;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lsz4;->b:Lcom/yandex/div/internal/widget/indicator/c;

    iget-object v3, p1, Lsz4;->b:Lcom/yandex/div/internal/widget/indicator/c;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lsz4;->c:Lcom/yandex/div/internal/widget/indicator/c;

    iget-object v3, p1, Lsz4;->c:Lcom/yandex/div/internal/widget/indicator/c;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lsz4;->d:Lcom/yandex/div/internal/widget/indicator/c;

    iget-object v3, p1, Lsz4;->d:Lcom/yandex/div/internal/widget/indicator/c;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lsz4;->e:Lcom/yandex/div/internal/widget/indicator/a;

    iget-object p1, p1, Lsz4;->e:Lcom/yandex/div/internal/widget/indicator/a;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lsz4;->a:Lcom/yandex/div/internal/widget/indicator/IndicatorParams$Animation;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lsz4;->b:Lcom/yandex/div/internal/widget/indicator/c;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lsz4;->c:Lcom/yandex/div/internal/widget/indicator/c;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lsz4;->d:Lcom/yandex/div/internal/widget/indicator/c;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lsz4;->e:Lcom/yandex/div/internal/widget/indicator/a;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Style(animation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsz4;->a:Lcom/yandex/div/internal/widget/indicator/IndicatorParams$Animation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", activeShape="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsz4;->b:Lcom/yandex/div/internal/widget/indicator/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", inactiveShape="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsz4;->c:Lcom/yandex/div/internal/widget/indicator/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", minimumShape="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsz4;->d:Lcom/yandex/div/internal/widget/indicator/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", itemsPlacement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lsz4;->e:Lcom/yandex/div/internal/widget/indicator/a;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
