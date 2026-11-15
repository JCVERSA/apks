.class public Lc80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public A:Landroid/view/View;

.field public B:Landroid/view/View;

.field public C:Z

.field public D:I

.field public E:I

.field public F:Z

.field public G:Z

.field public H:I

.field public I:Z

.field public J:Z

.field public K:Z

.field public L:Z

.field public M:Lff7;

.field public b:I

.field public c:I

.field public d:I

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:Z

.field public j:Z

.field public k:Lcom/transsion/sysbar/BarHide;

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:F

.field public q:F

.field public r:Z

.field public s:I

.field public t:I

.field public u:Ljava/util/Map;

.field public v:F

.field public w:I

.field public x:I

.field public y:F

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lc80;->b:I

    const/high16 v1, -0x1000000

    iput v1, p0, Lc80;->c:I

    iput v1, p0, Lc80;->d:I

    const/4 v2, 0x0

    iput v2, p0, Lc80;->e:F

    iput v2, p0, Lc80;->f:F

    iput v2, p0, Lc80;->g:F

    iput v2, p0, Lc80;->h:F

    iput-boolean v0, p0, Lc80;->i:Z

    iput-boolean v0, p0, Lc80;->j:Z

    sget-object v3, Lcom/transsion/sysbar/BarHide;->FLAG_SHOW_BAR:Lcom/transsion/sysbar/BarHide;

    iput-object v3, p0, Lc80;->k:Lcom/transsion/sysbar/BarHide;

    iput-boolean v0, p0, Lc80;->l:Z

    iput-boolean v0, p0, Lc80;->m:Z

    iput-boolean v0, p0, Lc80;->n:Z

    iput-boolean v0, p0, Lc80;->o:Z

    iput v2, p0, Lc80;->p:F

    iput v2, p0, Lc80;->q:F

    const/4 v3, 0x1

    iput-boolean v3, p0, Lc80;->r:Z

    iput v1, p0, Lc80;->s:I

    iput v1, p0, Lc80;->t:I

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lc80;->u:Ljava/util/Map;

    iput v2, p0, Lc80;->v:F

    iput v0, p0, Lc80;->w:I

    iput v1, p0, Lc80;->x:I

    iput v2, p0, Lc80;->y:F

    iput-boolean v0, p0, Lc80;->z:Z

    iput-boolean v3, p0, Lc80;->C:Z

    iput-boolean v0, p0, Lc80;->F:Z

    iput-boolean v0, p0, Lc80;->G:Z

    const/16 v0, 0x12

    iput v0, p0, Lc80;->H:I

    iput-boolean v3, p0, Lc80;->I:Z

    iput-boolean v3, p0, Lc80;->J:Z

    iput-boolean v3, p0, Lc80;->K:Z

    iput-boolean v3, p0, Lc80;->L:Z

    return-void
.end method


# virtual methods
.method public a()Lc80;
    .locals 0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc80;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lc80;->a()Lc80;

    move-result-object p0

    return-object p0
.end method
