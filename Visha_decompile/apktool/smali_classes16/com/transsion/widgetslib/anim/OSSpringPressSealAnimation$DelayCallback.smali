.class Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$DelayCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DelayCallback"
.end annotation


# instance fields
.field private mHostViewWR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOsSpringPressSealAnimationWR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$DelayCallback;->mHostViewWR:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$DelayCallback;->mOsSpringPressSealAnimationWR:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$DelayCallback;->mOsSpringPressSealAnimationWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$DelayCallback;->mOsSpringPressSealAnimationWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    invoke-static {p0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->b(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)Ljv9;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->b(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)Ljv9;

    move-result-object v0

    invoke-virtual {v0}, Lf43;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->b(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)Ljv9;

    move-result-object v0

    invoke-virtual {v0}, Ljv9;->c()V

    :cond_0
    invoke-static {p0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->d(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)F

    move-result v0

    invoke-static {p0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->c(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->e(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)F

    move-result v0

    invoke-static {p0, v0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->k(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;F)V

    :cond_1
    invoke-static {p0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->d(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)F

    move-result v0

    invoke-static {p0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->c(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)F

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->o(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;FF)Ljv9;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->n(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;Ljv9;)V

    invoke-static {p0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->j(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)Ljv9;

    move-result-object p0

    invoke-virtual {p0}, Ljv9;->p()V

    :cond_2
    return-void
.end method
