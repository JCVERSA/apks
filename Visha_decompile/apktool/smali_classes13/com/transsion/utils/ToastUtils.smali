.class public abstract Lcom/transsion/utils/ToastUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/utils/ToastUtils$a;,
        Lcom/transsion/utils/ToastUtils$d;,
        Lcom/transsion/utils/ToastUtils$b;,
        Lcom/transsion/utils/ToastUtils$c;
    }
.end annotation


# static fields
.field public static final a:Landroid/os/Handler;

.field public static b:Lcom/transsion/utils/ToastUtils$a;

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:I

.field public static g:I

.field public static h:I

.field public static i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/transsion/utils/ToastUtils;->a:Landroid/os/Handler;

    const/4 v0, -0x1

    sput v0, Lcom/transsion/utils/ToastUtils;->c:I

    sput v0, Lcom/transsion/utils/ToastUtils;->d:I

    sput v0, Lcom/transsion/utils/ToastUtils;->e:I

    const v1, -0x1000001

    sput v1, Lcom/transsion/utils/ToastUtils;->f:I

    sput v0, Lcom/transsion/utils/ToastUtils;->g:I

    sput v1, Lcom/transsion/utils/ToastUtils;->h:I

    sput v0, Lcom/transsion/utils/ToastUtils;->i:I

    return-void
.end method

.method public static bridge synthetic a()I
    .locals 1

    sget v0, Lcom/transsion/utils/ToastUtils;->c:I

    return v0
.end method

.method public static bridge synthetic b()Lcom/transsion/utils/ToastUtils$a;
    .locals 1

    sget-object v0, Lcom/transsion/utils/ToastUtils;->b:Lcom/transsion/utils/ToastUtils$a;

    return-object v0
.end method

.method public static bridge synthetic c()I
    .locals 1

    sget v0, Lcom/transsion/utils/ToastUtils;->d:I

    return v0
.end method

.method public static bridge synthetic d()I
    .locals 1

    sget v0, Lcom/transsion/utils/ToastUtils;->e:I

    return v0
.end method

.method public static bridge synthetic e(Lcom/transsion/utils/ToastUtils$a;)V
    .locals 0

    sput-object p0, Lcom/transsion/utils/ToastUtils;->b:Lcom/transsion/utils/ToastUtils$a;

    return-void
.end method

.method public static bridge synthetic f(I)Landroid/view/View;
    .locals 0

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->i(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic g()V
    .locals 0

    invoke-static {}, Lcom/transsion/utils/ToastUtils;->j()V

    return-void
.end method

.method public static h()V
    .locals 1

    sget-object v0, Lcom/transsion/utils/ToastUtils;->b:Lcom/transsion/utils/ToastUtils$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/utils/ToastUtils$a;->cancel()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/transsion/utils/ToastUtils;->b:Lcom/transsion/utils/ToastUtils$a;

    return-void
.end method

.method public static i(I)Landroid/view/View;
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static j()V
    .locals 4

    sget v0, Lcom/transsion/utils/ToastUtils;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/transsion/utils/ToastUtils;->b:Lcom/transsion/utils/ToastUtils$a;

    invoke-interface {v0}, Lcom/transsion/utils/ToastUtils$a;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/utils/ToastUtils;->g:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/utils/ToastUtils;->f:I

    const v1, -0x1000001

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/transsion/utils/ToastUtils;->b:Lcom/transsion/utils/ToastUtils$a;

    invoke-interface {v0}, Lcom/transsion/utils/ToastUtils$a;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lcom/transsion/utils/ToastUtils;->f:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    sget v2, Lcom/transsion/utils/ToastUtils;->f:I

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static k(II)V
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/transsion/utils/ToastUtils;->o(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static varargs l(II[Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/transsion/utils/ToastUtils;->o(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static m(Landroid/content/Context;II)V
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/transsion/utils/ToastUtils;->n(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static n(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .locals 2

    sget-object v0, Lcom/transsion/utils/ToastUtils;->a:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/utils/ToastUtils$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/utils/ToastUtils$2;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static o(Ljava/lang/CharSequence;I)V
    .locals 2

    sget-object v0, Lcom/transsion/utils/ToastUtils;->a:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/utils/ToastUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/utils/ToastUtils$1;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static varargs p(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "null"

    goto :goto_0

    :cond_0
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {p0, p1}, Lcom/transsion/utils/ToastUtils;->o(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static q(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/transsion/utils/ToastUtils;->k(II)V

    return-void
.end method

.method public static r(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "null"

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/transsion/utils/ToastUtils;->o(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static s(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/utils/ToastUtils;->k(II)V

    return-void
.end method

.method public static varargs t(I[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/transsion/utils/ToastUtils;->l(II[Ljava/lang/Object;)V

    return-void
.end method

.method public static u(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/transsion/utils/ToastUtils;->m(Landroid/content/Context;II)V

    return-void
.end method

.method public static v(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "null"

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/transsion/utils/ToastUtils;->n(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static w(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "null"

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/utils/ToastUtils;->o(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static varargs x(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/transsion/utils/ToastUtils;->p(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method
