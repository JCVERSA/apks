.class public final Lmo/b;
.super Landroidx/appcompat/app/w;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmo/b$a;,
        Lmo/b$b;
    }
.end annotation


# instance fields
.field private a:Lro/j;

.field private b:Lmo/b$b;

.field private c:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lmo/b$b;Landroid/view/View;)V
    .locals 8

    .line 2
    sget v0, Lcom/transsion/publish/R$style;->CommentEditInputDialogTheme:I

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/w;-><init>(Landroid/content/Context;I)V

    .line 3
    iput-object p2, p0, Lmo/b;->b:Lmo/b$b;

    .line 4
    iput-object p3, p0, Lmo/b;->c:Landroid/view/View;

    .line 5
    sget p1, Lcom/transsion/publish/R$layout;->dialog_link_input_edit:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/w;->setContentView(I)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_3

    const/16 p3, 0x50

    .line 7
    invoke-virtual {p1, p3}, Landroid/view/Window;->setGravity(I)V

    .line 8
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget v0, p3, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 10
    iput v1, p3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 11
    :cond_1
    iget v0, p3, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2

    .line 12
    iput v1, p3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 13
    :cond_2
    invoke-virtual {p1, p3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 p3, 0x4

    .line 14
    invoke-virtual {p1, p3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 15
    :cond_3
    :goto_0
    iget-object v4, p0, Lmo/b;->c:Landroid/view/View;

    new-instance p1, Lro/j;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    move-object v2, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lro/j;-><init>(Landroid/view/View;Landroid/app/Dialog;Lmo/b$b;Landroid/view/View;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lmo/b;->a:Lro/j;

    .line 16
    new-instance p1, Lro/b;

    invoke-direct {p1}, Lro/b;-><init>()V

    .line 17
    iget-object p2, p0, Lmo/b;->a:Lro/j;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p1}, Lro/j;->k(Lro/b;)V

    .line 18
    :cond_4
    new-instance p1, Lmo/a;

    invoke-direct {p1, p0}, Lmo/a;-><init>(Lmo/b;)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lmo/b$b;Landroid/view/View;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lmo/b;-><init>(Landroid/content/Context;Lmo/b$b;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lmo/b;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lmo/b;->g(Lmo/b;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final g(Lmo/b;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    const/4 p1, 0x4

    .line 2
    if-ne p2, p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lmo/b;->dismiss()V

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method private final h()V
    .locals 0

    .line 1
    return-void
.end method

.method private final i()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/w;->dismiss()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lmo/b;->c:Landroid/view/View;

    .line 6
    .line 7
    iget-object v0, p0, Lmo/b;->a:Lro/j;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lro/j;->j()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-static {v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->e(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/w;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/activity/q;->onStart()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lmo/b;->h()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/w;->onStop()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lmo/b;->i()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
