.class public Lcom/yandex/div/internal/widget/tabs/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/internal/widget/tabs/f$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public b:I

.field public c:I

.field public d:[I

.field public final e:Lcom/yandex/div/internal/widget/tabs/f$a;


# direct methods
.method public constructor <init>(ILcom/yandex/div/internal/widget/tabs/f$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/yandex/div/internal/widget/tabs/f;->b:I

    iput v0, p0, Lcom/yandex/div/internal/widget/tabs/f;->c:I

    iput p1, p0, Lcom/yandex/div/internal/widget/tabs/f;->a:I

    iput-object p2, p0, Lcom/yandex/div/internal/widget/tabs/f;->e:Lcom/yandex/div/internal/widget/tabs/f$a;

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/f;->d:[I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget v0, p0, Lcom/yandex/div/internal/widget/tabs/f;->b:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/f;->e:Lcom/yandex/div/internal/widget/tabs/f$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/yandex/div/internal/widget/tabs/f$a;->a(I)I

    move-result v0

    iput v0, p0, Lcom/yandex/div/internal/widget/tabs/f;->b:I

    :cond_0
    iget p0, p0, Lcom/yandex/div/internal/widget/tabs/f;->b:I

    return p0
.end method

.method public b()I
    .locals 3

    iget v0, p0, Lcom/yandex/div/internal/widget/tabs/f;->c:I

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/f;->a()I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Lcom/yandex/div/internal/widget/tabs/f;->a:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/yandex/div/internal/widget/tabs/f;->e:Lcom/yandex/div/internal/widget/tabs/f$a;

    invoke-interface {v2, v1}, Lcom/yandex/div/internal/widget/tabs/f$a;->a(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/yandex/div/internal/widget/tabs/f;->c:I

    :cond_1
    iget p0, p0, Lcom/yandex/div/internal/widget/tabs/f;->c:I

    return p0
.end method

.method public c(I)I
    .locals 2

    iget v0, p0, Lcom/yandex/div/internal/widget/tabs/f;->a:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-gez p1, :cond_1

    invoke-virtual {p0, v1}, Lcom/yandex/div/internal/widget/tabs/f;->c(I)I

    move-result p0

    return p0

    :cond_1
    if-lt p1, v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/yandex/div/internal/widget/tabs/f;->c(I)I

    move-result p0

    return p0

    :cond_2
    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/f;->d:[I

    aget v1, v0, p1

    if-gtz v1, :cond_3

    iget-object v1, p0, Lcom/yandex/div/internal/widget/tabs/f;->e:Lcom/yandex/div/internal/widget/tabs/f$a;

    invoke-interface {v1, p1}, Lcom/yandex/div/internal/widget/tabs/f$a;->a(I)I

    move-result v1

    aput v1, v0, p1

    :cond_3
    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/f;->d:[I

    aget p0, p0, p1

    return p0
.end method

.method public d(Landroid/os/Bundle;I)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FIRST_TAB_HEIGHT_PREFIX"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MAX_TAB_HEIGHT_PREFIX"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public e(Landroid/os/Bundle;I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FIRST_TAB_HEIGHT_PREFIX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yandex/div/internal/widget/tabs/f;->b:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAX_TAB_HEIGHT_PREFIX"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/yandex/div/internal/widget/tabs/f;->c:I

    return-void
.end method
