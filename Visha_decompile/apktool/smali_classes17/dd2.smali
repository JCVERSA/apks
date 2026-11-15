.class public Ldd2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/yandex/div/core/view2/DivViewCreator;

.field public final b:Lrg2;

.field public final c:Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/DivViewCreator;Lrg2;Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;)V
    .locals 1

    const-string v0, "viewCreator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewBinder"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runtimeVisitor"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldd2;->a:Lcom/yandex/div/core/view2/DivViewCreator;

    iput-object p2, p0, Ldd2;->b:Lrg2;

    iput-object p3, p0, Ldd2;->c:Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/div2/Div;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)Landroid/view/View;
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Ldd2;->b(Lcom/yandex/div2/Div;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Ldd2;->b:Lrg2;

    invoke-virtual {p0, p2, v0, p1, p3}, Lrg2;->b(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/Div;Lcom/yandex/div/core/state/DivStatePath;)V

    return-object v0
.end method

.method public b(Lcom/yandex/div2/Div;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)Landroid/view/View;
    .locals 2

    const-string v0, "data"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v0

    iget-object v1, p0, Ldd2;->c:Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object p2

    invoke-virtual {v1, p1, p3, p2}, Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;->b(Lcom/yandex/div2/Div;Lcom/yandex/div/core/state/DivStatePath;Lcom/yandex/div/core/view2/Div2View;)V

    iget-object p0, p0, Ldd2;->a:Lcom/yandex/div/core/view2/DivViewCreator;

    invoke-virtual {p0, p1, v0}, Lcom/yandex/div/core/view2/DivViewCreator;->L(Lcom/yandex/div2/Div;Loj3;)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/yandex/div/internal/widget/DivLayoutParams;

    const/4 p2, -0x1

    const/4 p3, -0x2

    invoke-direct {p1, p2, p3}, Lcom/yandex/div/internal/widget/DivLayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method
