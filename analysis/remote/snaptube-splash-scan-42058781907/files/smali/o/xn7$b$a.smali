.class public final Lo/xn7$b$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/xn7$b;->f(Lo/xn7$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lo/xn7$b;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lo/xn7$b;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lo/xn7$b$a;->a:Lo/xn7$b;

    iput-object p2, p0, Lo/xn7$b$a;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    iget-object v0, p0, Lo/xn7$b$a;->a:Lo/xn7$b;

    invoke-virtual {v0}, Lo/xn7$b;->d()Lo/xn7$d;

    move-result-object v0

    invoke-interface {v0}, Lo/xn7$d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lo/xn7$b$a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lo/xn7$b$a;->a:Lo/xn7$b;

    invoke-static {v0}, Lo/xn7$b;->b(Lo/xn7$b;)Lo/eo7;

    const/4 v0, 0x1

    return v0
.end method
