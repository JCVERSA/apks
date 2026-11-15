.class public final Lcom/transsion/widgetslib/util/InputDialogInputManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/View;

.field public b:Z

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/util/InputDialogInputManager;->a:Landroid/view/View;

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/widgetslib/util/InputDialogInputManager;->e:I

    if-eqz p1, :cond_0

    new-instance v0, Lx05;

    invoke-direct {v0, p0, p1}, Lx05;-><init>(Lcom/transsion/widgetslib/util/InputDialogInputManager;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/transsion/widgetslib/util/InputDialogInputManager;->e:I

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogInputManager;->g()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/widgetslib/util/InputDialogInputManager;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/util/InputDialogInputManager;->c(Lcom/transsion/widgetslib/util/InputDialogInputManager;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/widgetslib/util/InputDialogInputManager;Le74;Landroid/view/View;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/widgetslib/util/InputDialogInputManager;->f(Lcom/transsion/widgetslib/util/InputDialogInputManager;Le74;Landroid/view/View;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lcom/transsion/widgetslib/util/InputDialogInputManager;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_run"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/util/InputDialogInputManager;->d:I

    return-void
.end method

.method public static final f(Lcom/transsion/widgetslib/util/InputDialogInputManager;Le74;Landroid/view/View;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$block"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_run"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "insets"

    invoke-static {p4, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lzr9;->a()I

    move-result p3

    invoke-static {p4, p3}, Ldoc;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object p3

    const-string v0, "insets.getInsets(WindowInsets.Type.ime())"

    invoke-static {p3, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lzr9;->a()I

    move-result v0

    invoke-static {p4, v0}, Lfoc;->a(Landroid/view/WindowInsets;I)Z

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/util/InputDialogInputManager;->e:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget p0, p0, Lcom/transsion/widgetslib/util/InputDialogInputManager;->d:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setOnApplyWindowInsetsListener: ime visible = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " ime = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " windowHeight = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lbq5;->o(Ljava/lang/String;)V

    return-object p4
.end method


# virtual methods
.method public final d(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfigure"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/transsion/widgetslib/util/InputDialogInputManager;->e:I

    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogInputManager;->g()V

    iget-object p0, p0, Lcom/transsion/widgetslib/util/InputDialogInputManager;->a:Landroid/view/View;

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move p1, v0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onConfigurationChanged:  "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lbq5;->o(Ljava/lang/String;)V

    return-void
.end method

.method public final e(Le74;)V
    .locals 2

    const-string v0, "block"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/util/InputDialogInputManager;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/widgetslib/util/InputDialogInputManager$registerListener$1$1;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/util/InputDialogInputManager$registerListener$1$1;-><init>(Lcom/transsion/widgetslib/util/InputDialogInputManager;)V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setWindowInsetsAnimationCallback(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V

    new-instance v1, Lw05;

    invoke-direct {v1, p0, p1, v0}, Lw05;-><init>(Lcom/transsion/widgetslib/util/InputDialogInputManager;Le74;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/widgetslib/util/InputDialogInputManager;->a:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/transsion/widgetslib/util/InputDialogInputManager;->d:I

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lolb;->D(Landroid/content/Context;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lolb;->D(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    :cond_1
    :goto_0
    iput v1, p0, Lcom/transsion/widgetslib/util/InputDialogInputManager;->c:I

    return-void
.end method

.method public final getMIsSoftInputStatusInChanging()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/util/InputDialogInputManager;->b:Z

    return p0
.end method

.method public final getMOffset()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/util/InputDialogInputManager;->c:I

    return p0
.end method

.method public final getMWindowHeight()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/util/InputDialogInputManager;->d:I

    return p0
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/util/InputDialogInputManager;->a:Landroid/view/View;

    return-object p0
.end method

.method public final setMIsSoftInputStatusInChanging(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/util/InputDialogInputManager;->b:Z

    return-void
.end method

.method public final setMOffset(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/util/InputDialogInputManager;->c:I

    return-void
.end method

.method public final setMWindowHeight(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/util/InputDialogInputManager;->d:I

    return-void
.end method
