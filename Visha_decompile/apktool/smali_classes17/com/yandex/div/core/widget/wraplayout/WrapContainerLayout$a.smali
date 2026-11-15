.class public final Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:F


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout$a;->a:I

    .line 3
    iput p2, p0, Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout$a;->b:I

    .line 4
    iput p3, p0, Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout$a;->c:I

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout$a;->e:I

    return-void
.end method

.method public synthetic constructor <init>(IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move p3, v0

    .line 6
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout$a;-><init>(III)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout$a;->h:I

    return p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout$a;->d:I

    return p0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout$a;->j:I

    return p0
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout$a;->a:I

    return p0
.end method

.method public final e()I
    .locals 0

    iget p0, p0, Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout$a;->i:I

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout$a;

    iget v1, p0, Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout$a;->a:I

    iget v3, p1, Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout$a;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout$a;->b:I

    iget v3, p1, Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout$a;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget p0, p0, Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout$a;->c:I

    iget p1, p1, Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout$a;->c:I

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final f()I
    .locals 0

    iget p0, p0, Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout$a;->c:I

    return p0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout$a;->c:I

    iget p0, p0, Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout$a;->i:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final h()I
    .locals 0

    iget p0, p0, Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout$a;->b:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout$a;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout$a;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout$a;->c:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final i()I
    .locals 0

    iget p0, p0, Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout$a;->e:I

    return p0
.end method

.method public final j()I
    .locals 0

    iget p0, p0, Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout$a;->f:I

    return p0
.end method

.method public final k()I
    .locals 0

    iget p0, p0, Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout$a;->g:I

    return p0
.end method

.method public final l()F
    .locals 0

    iget p0, p0, Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout$a;->k:F

    return p0
.end method

.method public final m()Z
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout$a;->g()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final n(I)V
    .locals 0

    iput p1, p0, Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout$a;->h:I

    return-void
.end method

.method public final o(I)V
    .locals 0

    iput p1, p0, Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout$a;->d:I

    return-void
.end method

.method public final p(I)V
    .locals 0

    iput p1, p0, Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout$a;->j:I

    return-void
.end method

.method public final q(I)V
    .locals 0

    iput p1, p0, Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout$a;->i:I

    return-void
.end method

.method public final r(I)V
    .locals 0

    iput p1, p0, Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout$a;->c:I

    return-void
.end method

.method public final s(I)V
    .locals 0

    iput p1, p0, Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout$a;->b:I

    return-void
.end method

.method public final t(I)V
    .locals 0

    iput p1, p0, Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout$a;->e:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WrapLine(firstIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mainSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", itemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout$a;->c:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u(I)V
    .locals 0

    iput p1, p0, Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout$a;->f:I

    return-void
.end method

.method public final v(I)V
    .locals 0

    iput p1, p0, Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout$a;->g:I

    return-void
.end method

.method public final w(F)V
    .locals 0

    iput p1, p0, Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout$a;->k:F

    return-void
.end method
