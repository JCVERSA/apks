.class public Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf43$q;


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

    iput-object p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$d;->a:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lf43;ZFF)V
    .locals 8

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$d;->a:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->m(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;Z)V

    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$d;->a:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    invoke-static {v0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->h(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->l(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$d;->a:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    invoke-static {v0, p3}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->l(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;F)V

    :goto_0
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$d;->a:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    invoke-static {v0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->e(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->k(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;F)V

    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$d;->a:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    invoke-static {v0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->f(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$f;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$d;->a:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    invoke-static {v0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->f(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$f;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$d;->a:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    iget-boolean v5, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->z:Z

    const/4 v2, 0x0

    move-object v3, p1

    move v4, p2

    move v6, p3

    move v7, p4

    invoke-interface/range {v1 .. v7}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$f;->a(ZLf43;ZZFF)V

    :cond_1
    return-void
.end method
