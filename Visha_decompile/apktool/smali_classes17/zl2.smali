.class public final Lzl2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/yandex/div2/Div;

.field public final b:Loj3;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/Div;Loj3;)V
    .locals 1

    const-string v0, "div"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expressionResolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzl2;->a:Lcom/yandex/div2/Div;

    iput-object p2, p0, Lzl2;->b:Loj3;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/div2/Div;
    .locals 0

    iget-object p0, p0, Lzl2;->a:Lcom/yandex/div2/Div;

    return-object p0
.end method

.method public final b()Loj3;
    .locals 0

    iget-object p0, p0, Lzl2;->b:Loj3;

    return-object p0
.end method

.method public final c()Lcom/yandex/div2/Div;
    .locals 0

    iget-object p0, p0, Lzl2;->a:Lcom/yandex/div2/Div;

    return-object p0
.end method

.method public final d()Loj3;
    .locals 0

    iget-object p0, p0, Lzl2;->b:Loj3;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lzl2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lzl2;

    iget-object v1, p0, Lzl2;->a:Lcom/yandex/div2/Div;

    iget-object v3, p1, Lzl2;->a:Lcom/yandex/div2/Div;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lzl2;->b:Loj3;

    iget-object p1, p1, Lzl2;->b:Loj3;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lzl2;->a:Lcom/yandex/div2/Div;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lzl2;->b:Loj3;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DivItemBuilderResult(div="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzl2;->a:Lcom/yandex/div2/Div;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", expressionResolver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lzl2;->b:Loj3;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
