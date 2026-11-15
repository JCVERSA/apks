.class public final Llj2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llj2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final b:Lcom/yandex/div/core/view2/a;

.field public c:Lcom/yandex/div2/DivBorder;

.field public d:Lcom/yandex/div2/DivBorder;

.field public e:Ljava/util/List;

.field public f:Ljava/util/List;

.field public final synthetic g:Llj2;


# direct methods
.method public constructor <init>(Llj2;Lcom/yandex/div/core/view2/a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Llj2$a;->g:Llj2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Llj2$a;->b:Lcom/yandex/div/core/view2/a;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lcom/yandex/div2/DivBorder;)V
    .locals 1

    iget-object v0, p0, Llj2$a;->g:Llj2;

    iget-object p0, p0, Llj2$a;->b:Lcom/yandex/div/core/view2/a;

    invoke-static {v0, p1, p0, p2}, Llj2;->a(Llj2;Landroid/view/View;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivBorder;)V

    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Llj2$a;->f:Ljava/util/List;

    return-object p0
.end method

.method public final c()Lcom/yandex/div2/DivBorder;
    .locals 0

    iget-object p0, p0, Llj2$a;->d:Lcom/yandex/div2/DivBorder;

    return-object p0
.end method

.method public final d()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Llj2$a;->e:Ljava/util/List;

    return-object p0
.end method

.method public final e()Lcom/yandex/div2/DivBorder;
    .locals 0

    iget-object p0, p0, Llj2$a;->c:Lcom/yandex/div2/DivBorder;

    return-object p0
.end method

.method public final f(Ljava/util/List;Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Llj2$a;->g:Llj2;

    invoke-static {v0}, Llj2;->b(Llj2;)Lcom/yandex/div/core/view2/divs/DivActionBinder;

    move-result-object v0

    iget-object p0, p0, Llj2$a;->b:Lcom/yandex/div/core/view2/a;

    invoke-virtual {v0, p0, p2, p1, p3}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->J(Lcom/yandex/div/core/view2/a;Landroid/view/View;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public final g(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Llj2$a;->e:Ljava/util/List;

    iput-object p2, p0, Llj2$a;->f:Ljava/util/List;

    return-void
.end method

.method public final h(Lcom/yandex/div2/DivBorder;Lcom/yandex/div2/DivBorder;)V
    .locals 0

    iput-object p1, p0, Llj2$a;->c:Lcom/yandex/div2/DivBorder;

    iput-object p2, p0, Llj2$a;->d:Lcom/yandex/div2/DivBorder;

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object p2, p0, Llj2$a;->c:Lcom/yandex/div2/DivBorder;

    invoke-virtual {p0, p1, p2}, Llj2$a;->a(Landroid/view/View;Lcom/yandex/div2/DivBorder;)V

    iget-object p2, p0, Llj2$a;->e:Ljava/util/List;

    if-eqz p2, :cond_2

    const-string v0, "focus"

    invoke-virtual {p0, p2, p1, v0}, Llj2$a;->f(Ljava/util/List;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Llj2$a;->c:Lcom/yandex/div2/DivBorder;

    if-eqz p2, :cond_1

    iget-object p2, p0, Llj2$a;->d:Lcom/yandex/div2/DivBorder;

    invoke-virtual {p0, p1, p2}, Llj2$a;->a(Landroid/view/View;Lcom/yandex/div2/DivBorder;)V

    :cond_1
    iget-object p2, p0, Llj2$a;->f:Ljava/util/List;

    if-eqz p2, :cond_2

    const-string v0, "blur"

    invoke-virtual {p0, p2, p1, v0}, Llj2$a;->f(Ljava/util/List;Landroid/view/View;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
