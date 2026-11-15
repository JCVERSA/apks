.class public Lomb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lj83;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj83;

    invoke-direct {v0}, Lj83;-><init>()V

    iput-object v0, p0, Lomb;->a:Lj83;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lomb;->a:Lj83;

    invoke-virtual {p0, p1}, Lj83;->j(Landroid/view/View;)V

    return-void
.end method

.method public b(Landroid/view/MotionEvent;)V
    .locals 1

    iget-boolean v0, p0, Lomb;->b:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lomb;->a:Lj83;

    invoke-virtual {p0, p1}, Lj83;->v(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    iget-object p0, p0, Lomb;->a:Lj83;

    invoke-virtual {p0}, Lj83;->w()V

    return-void
.end method

.method public d(II)V
    .locals 0

    iget-object p0, p0, Lomb;->a:Lj83;

    invoke-virtual {p0, p1, p2}, Lj83;->C(II)V

    return-void
.end method

.method public setElasticTypeConfig(Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lomb;->b:Z

    iget-object p0, p0, Lomb;->a:Lj83;

    invoke-virtual {p0, p1}, Lj83;->y(Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;)V

    return-void
.end method
