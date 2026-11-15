.class public final Lcom/yandex/div/internal/widget/indicator/c$a;
.super Lcom/yandex/div/internal/widget/indicator/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/internal/widget/indicator/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/yandex/div/internal/widget/indicator/b$a;


# direct methods
.method public constructor <init>(ILcom/yandex/div/internal/widget/indicator/b$a;)V
    .locals 1

    const-string v0, "itemSize"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yandex/div/internal/widget/indicator/c;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/yandex/div/internal/widget/indicator/c$a;->a:I

    iput-object p2, p0, Lcom/yandex/div/internal/widget/indicator/c$a;->b:Lcom/yandex/div/internal/widget/indicator/b$a;

    return-void
.end method


# virtual methods
.method public c()I
    .locals 0

    iget p0, p0, Lcom/yandex/div/internal/widget/indicator/c$a;->a:I

    return p0
.end method

.method public bridge synthetic d()Lcom/yandex/div/internal/widget/indicator/b;
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/indicator/c$a;->e()Lcom/yandex/div/internal/widget/indicator/b$a;

    move-result-object p0

    return-object p0
.end method

.method public e()Lcom/yandex/div/internal/widget/indicator/b$a;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/indicator/c$a;->b:Lcom/yandex/div/internal/widget/indicator/b$a;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/div/internal/widget/indicator/c$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/div/internal/widget/indicator/c$a;

    iget v1, p0, Lcom/yandex/div/internal/widget/indicator/c$a;->a:I

    iget v3, p1, Lcom/yandex/div/internal/widget/indicator/c$a;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/yandex/div/internal/widget/indicator/c$a;->b:Lcom/yandex/div/internal/widget/indicator/b$a;

    iget-object p1, p1, Lcom/yandex/div/internal/widget/indicator/c$a;->b:Lcom/yandex/div/internal/widget/indicator/b$a;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/yandex/div/internal/widget/indicator/c$a;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/yandex/div/internal/widget/indicator/c$a;->b:Lcom/yandex/div/internal/widget/indicator/b$a;

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/indicator/b$a;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Circle(color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yandex/div/internal/widget/indicator/c$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", itemSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yandex/div/internal/widget/indicator/c$a;->b:Lcom/yandex/div/internal/widget/indicator/b$a;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
