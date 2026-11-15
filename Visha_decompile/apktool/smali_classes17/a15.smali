.class public final La15;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La15$a;,
        La15$b;
    }
.end annotation


# static fields
.field public static final e:La15$a;

.field public static f:Ljava/lang/ref/WeakReference;


# instance fields
.field public final a:Lmdc;

.field public b:Ljava/lang/Object;

.field public c:Z

.field public final d:La15$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La15$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La15$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, La15;->e:La15$a;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div/core/view2/Div2View;Lmdc;)V
    .locals 1

    const-string v0, "div2View"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewVisibilityCalculator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, La15;->a:Lmdc;

    new-instance p2, La15$b;

    invoke-direct {p2, p0}, La15$b;-><init>(La15;)V

    iput-object p2, p0, La15;->d:La15$b;

    invoke-virtual {p1, p2}, Lcom/yandex/div/core/view2/Div2View;->addPersistentDivDataObserver$div_release(Lw08;)V

    return-void
.end method

.method public static final synthetic a(La15;Z)V
    .locals 0

    iput-boolean p1, p0, La15;->c:Z

    return-void
.end method

.method public static final synthetic b(La15;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, La15;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;Lcom/yandex/div/core/view2/divs/widgets/DivInputView;Z)V
    .locals 1

    const-string v0, "view"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, La15;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    iput-object p1, p0, La15;->b:Ljava/lang/Object;

    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p0, La15;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Landroid/widget/TextView;->length()I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, La15;->b:Ljava/lang/Object;

    sput-object p1, La15;->f:Ljava/lang/ref/WeakReference;

    :cond_2
    :goto_0
    return-void
.end method

.method public final d()V
    .locals 0

    sget-object p0, La15;->f:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    invoke-static {p0}, Leg2;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final e(Landroid/view/View;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, La15;->b:Ljava/lang/Object;

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, La15;->c:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, La15;->d:La15$b;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, La15$b;->c(Z)V

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method
