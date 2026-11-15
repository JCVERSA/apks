.class public final Lm21;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lm21;

.field public static b:Lcom/transsion/widgetslib/dialog/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm21;

    invoke-direct {v0}, Lm21;-><init>()V

    sput-object v0, Lm21;->a:Lm21;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lm21;->f(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lm21;->e()V

    return-void
.end method

.method public static synthetic c(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0}, Lm21;->g(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static final e()V
    .locals 3

    invoke-static {}, Lcom/blankj/utilcode/util/a;->e()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    sget v1, Lcom/transsion/playercommon/R$string;->freeze_dialog_msg:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-direct {v2, v0}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/transsion/widgetslib/dialog/d$a;->k(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$string;->confirm:I

    new-instance v2, Lk21;

    invoke-direct {v2}, Lk21;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    new-instance v1, Ll21;

    invoke-direct {v1}, Ll21;-><init>()V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->r(Landroid/content/DialogInterface$OnCancelListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    sput-object v0, Lm21;->b:Lcom/transsion/widgetslib/dialog/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    :cond_0
    sget-object v0, Laz5;->a:Laz5$a;

    invoke-virtual {v0}, Laz5$a;->i()V

    :cond_1
    return-void
.end method

.method public static final f(Landroid/content/DialogInterface;I)V
    .locals 0

    sget-object p0, Lm21;->b:Lcom/transsion/widgetslib/dialog/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const/4 p0, 0x0

    sput-object p0, Lm21;->b:Lcom/transsion/widgetslib/dialog/d;

    return-void
.end method

.method public static final g(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p0, 0x0

    sput-object p0, Lm21;->b:Lcom/transsion/widgetslib/dialog/d;

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 1

    sget-object p0, Lm21;->b:Lcom/transsion/widgetslib/dialog/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lj21;

    invoke-direct {p0}, Lj21;-><init>()V

    invoke-static {p0}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    return-void
.end method
