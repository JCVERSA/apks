.class public abstract Lo1d;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# instance fields
.field public b:Landroid/content/Context;

.field public c:Landroid/view/WindowManager;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;

.field public f:I

.field public g:Le6d$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le6d$a;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lo1d;->b:Landroid/content/Context;

    iput-object p2, p0, Lo1d;->g:Le6d$a;

    iput p3, p0, Lo1d;->f:I

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lo1d;->c:Landroid/view/WindowManager;

    invoke-virtual {p0}, Lo1d;->a()Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lo1d;->e:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lo1d;->e()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-virtual {p0}, Lo1d;->f()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x106000d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic b(Lo1d;)V
    .locals 0

    invoke-virtual {p0}, Lo1d;->g()V

    return-void
.end method


# virtual methods
.method public abstract a()Landroid/view/View;
.end method

.method public c(Landroid/os/IBinder;)V
    .locals 2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v1, 0x3e8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    new-instance p1, Landroid/view/View;

    iget-object v1, p0, Lo1d;->b:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lo1d;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lo1d;->d:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    iget-object p1, p0, Lo1d;->d:Landroid/view/View;

    new-instance v1, Lo1d$b;

    invoke-direct {v1, p0}, Lo1d$b;-><init>(Lo1d;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object p1, p0, Lo1d;->c:Landroid/view/WindowManager;

    iget-object p0, p0, Lo1d;->d:Landroid/view/View;

    invoke-interface {p1, p0, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public d(Landroid/view/View$OnClickListener;[I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lo1d;->e:Landroid/view/View;

    aget v2, p2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lo1d$a;

    invoke-direct {v2, p0, p1}, Lo1d$a;-><init>(Lo1d;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 0

    invoke-virtual {p0}, Lo1d;->g()V

    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public abstract e()I
.end method

.method public abstract f()I
.end method

.method public final g()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lo1d;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lo1d;->c:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lo1d;->d:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo1d;->c(Landroid/os/IBinder;)V

    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    return-void
.end method
