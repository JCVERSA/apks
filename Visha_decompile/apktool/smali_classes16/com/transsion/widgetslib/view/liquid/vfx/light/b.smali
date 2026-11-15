.class public Lcom/transsion/widgetslib/view/liquid/vfx/light/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/transsion/widgetslib/view/liquid/vfx/light/a;

.field public final b:Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;

.field public c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;

    invoke-direct {v0}, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/b;->a:Lcom/transsion/widgetslib/view/liquid/vfx/light/a;

    new-instance v1, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;

    invoke-direct {v1, p1}, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/b;->b:Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->setAnimValueListener(Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper$a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/b;->a:Lcom/transsion/widgetslib/view/liquid/vfx/light/a;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->f(Landroid/view/View;)V

    return-void
.end method

.method public b(Landroid/graphics/Canvas;FFF)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/b;->c:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/b;->a:Lcom/transsion/widgetslib/view/liquid/vfx/light/a;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->h(Landroid/graphics/Canvas;FFF)V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/MotionEvent;)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/b;->c:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/b;->b:Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->h(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/b;->b:Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->i()V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/b;->a:Lcom/transsion/widgetslib/view/liquid/vfx/light/a;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->i()V

    return-void
.end method

.method public e(II)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/b;->a:Lcom/transsion/widgetslib/view/liquid/vfx/light/a;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->j(II)V

    return-void
.end method

.method public f(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/b;->a:Lcom/transsion/widgetslib/view/liquid/vfx/light/a;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->k(Z)V

    return-void
.end method

.method public setLightTypeConfig(Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/b;->c:Z

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/b;->a:Lcom/transsion/widgetslib/view/liquid/vfx/light/a;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->setLightTypeConfig(Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;)V

    return-void
.end method
