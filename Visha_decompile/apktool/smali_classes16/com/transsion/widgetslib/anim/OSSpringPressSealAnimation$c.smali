.class public Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf43$r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->p(FF)Ljv9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$c;->a:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lf43;FF)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$c;->a:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    invoke-static {v0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->i(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$c;->a:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    invoke-static {v0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->i(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$c;->a:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    invoke-static {v0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->i(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$c;->a:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    invoke-static {v0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->g(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$g;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$c;->a:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    invoke-static {p0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->g(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$g;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2, p3}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$g;->a(ZLf43;FF)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lf43;->h()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lf43;->c()V

    :cond_3
    return-void
.end method
