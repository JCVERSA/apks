.class public abstract Lcom/yandex/div/internal/widget/tabs/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout$a;


# instance fields
.field public final a:Landroid/view/ViewGroup;

.field public final b:Lcom/yandex/div/internal/widget/tabs/d$b;

.field public final c:Lcom/yandex/div/internal/widget/tabs/d$a;

.field public final d:Landroid/util/SparseArray;

.field public e:Landroid/os/Bundle;

.field public f:I

.field public g:F


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/yandex/div/internal/widget/tabs/d$b;Lcom/yandex/div/internal/widget/tabs/d$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/yandex/div/internal/widget/tabs/a;->d:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/yandex/div/internal/widget/tabs/a;->f:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/yandex/div/internal/widget/tabs/a;->g:F

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/a;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/yandex/div/internal/widget/tabs/a;->b:Lcom/yandex/div/internal/widget/tabs/d$b;

    iput-object p3, p0, Lcom/yandex/div/internal/widget/tabs/a;->c:Lcom/yandex/div/internal/widget/tabs/d$a;

    return-void
.end method

.method public static synthetic e(Lcom/yandex/div/internal/widget/tabs/a;III)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/internal/widget/tabs/a;->h(III)I

    move-result p0

    return p0
.end method

.method public static i(IIF)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New optimal height for tab "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " with position offset "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " is "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "[Y:BaseCardHeightCalculator]"

    invoke-static {p2, p1}, Lpp5;->a(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method


# virtual methods
.method public a(II)I
    .locals 4

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div/internal/widget/tabs/f;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/a;->c:Lcom/yandex/div/internal/widget/tabs/d$a;

    invoke-interface {v0}, Lcom/yandex/div/internal/widget/tabs/d$a;->apply()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    new-instance v2, Lcom/yandex/div/internal/widget/tabs/f;

    new-instance v3, Lq90;

    invoke-direct {v3, p0, v1, p2}, Lq90;-><init>(Lcom/yandex/div/internal/widget/tabs/a;II)V

    invoke-direct {v2, v0, v3}, Lcom/yandex/div/internal/widget/tabs/f;-><init>(ILcom/yandex/div/internal/widget/tabs/f$a;)V

    iget-object p2, p0, Lcom/yandex/div/internal/widget/tabs/a;->e:Landroid/os/Bundle;

    if-eqz p2, :cond_1

    invoke-virtual {v2, p2, p1}, Lcom/yandex/div/internal/widget/tabs/f;->e(Landroid/os/Bundle;I)V

    iget-object p2, p0, Lcom/yandex/div/internal/widget/tabs/a;->e:Landroid/os/Bundle;

    invoke-virtual {v2, p2, p1}, Lcom/yandex/div/internal/widget/tabs/f;->d(Landroid/os/Bundle;I)V

    iget-object p2, p0, Lcom/yandex/div/internal/widget/tabs/a;->e:Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/yandex/div/internal/widget/tabs/a;->e:Landroid/os/Bundle;

    :cond_1
    iget-object p2, p0, Lcom/yandex/div/internal/widget/tabs/a;->d:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v0, v2

    :cond_2
    iget p1, p0, Lcom/yandex/div/internal/widget/tabs/a;->f:I

    iget p2, p0, Lcom/yandex/div/internal/widget/tabs/a;->g:F

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/div/internal/widget/tabs/a;->f(Lcom/yandex/div/internal/widget/tabs/f;IF)I

    move-result p1

    iget p2, p0, Lcom/yandex/div/internal/widget/tabs/a;->f:I

    iget p0, p0, Lcom/yandex/div/internal/widget/tabs/a;->g:F

    invoke-static {p1, p2, p0}, Lcom/yandex/div/internal/widget/tabs/a;->i(IIF)I

    move-result p0

    return p0
.end method

.method public b()V
    .locals 2

    const-string v0, "[Y:BaseCardHeightCalculator]"

    const-string v1, "reseting layout..."

    invoke-static {v0, v1}, Lpp5;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/div/internal/widget/tabs/a;->e:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/a;->d:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public d(IF)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request layout for tab "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " with position offset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[Y:BaseCardHeightCalculator]"

    invoke-static {v1, v0}, Lpp5;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/yandex/div/internal/widget/tabs/a;->f:I

    iput p2, p0, Lcom/yandex/div/internal/widget/tabs/a;->g:F

    return-void
.end method

.method public abstract f(Lcom/yandex/div/internal/widget/tabs/f;IF)I
.end method

.method public g()Z
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/a;->d:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final synthetic h(III)I
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/a;->b:Lcom/yandex/div/internal/widget/tabs/d$b;

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/a;->a:Landroid/view/ViewGroup;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/yandex/div/internal/widget/tabs/d$b;->a(Landroid/view/ViewGroup;III)I

    move-result p0

    return p0
.end method
