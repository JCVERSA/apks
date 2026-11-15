.class public Lcom/gyf/immersionbar/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public A:Landroid/view/View;

.field public B:Z

.field public C:I

.field public D:I

.field public E:Z

.field public F:Z

.field public G:I

.field public H:Z

.field public I:Z

.field public J:Z

.field public K:Z

.field L:Lcom/gyf/immersionbar/n;

.field public a:I

.field public b:I

.field public c:I

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:Z

.field public i:Z

.field public j:Lcom/gyf/immersionbar/BarHide;

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:F

.field public p:F

.field public q:Z

.field public r:I

.field public s:I

.field t:Ljava/util/Map;

.field public u:F

.field public v:I

.field public w:I

.field public x:F

.field public y:Z

.field public z:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/gyf/immersionbar/b;->a:I

    .line 6
    .line 7
    const/high16 v1, -0x1000000

    .line 8
    .line 9
    iput v1, p0, Lcom/gyf/immersionbar/b;->b:I

    .line 10
    .line 11
    iput v1, p0, Lcom/gyf/immersionbar/b;->c:I

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    iput v2, p0, Lcom/gyf/immersionbar/b;->d:F

    .line 15
    .line 16
    iput v2, p0, Lcom/gyf/immersionbar/b;->e:F

    .line 17
    .line 18
    iput v2, p0, Lcom/gyf/immersionbar/b;->f:F

    .line 19
    .line 20
    iput v2, p0, Lcom/gyf/immersionbar/b;->g:F

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/gyf/immersionbar/b;->h:Z

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/gyf/immersionbar/b;->i:Z

    .line 25
    .line 26
    sget-object v3, Lcom/gyf/immersionbar/BarHide;->FLAG_SHOW_BAR:Lcom/gyf/immersionbar/BarHide;

    .line 27
    .line 28
    iput-object v3, p0, Lcom/gyf/immersionbar/b;->j:Lcom/gyf/immersionbar/BarHide;

    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/gyf/immersionbar/b;->k:Z

    .line 31
    .line 32
    iput-boolean v0, p0, Lcom/gyf/immersionbar/b;->l:Z

    .line 33
    .line 34
    iput-boolean v0, p0, Lcom/gyf/immersionbar/b;->m:Z

    .line 35
    .line 36
    iput-boolean v0, p0, Lcom/gyf/immersionbar/b;->n:Z

    .line 37
    .line 38
    iput v2, p0, Lcom/gyf/immersionbar/b;->o:F

    .line 39
    .line 40
    iput v2, p0, Lcom/gyf/immersionbar/b;->p:F

    .line 41
    .line 42
    const/4 v3, 0x1

    .line 43
    iput-boolean v3, p0, Lcom/gyf/immersionbar/b;->q:Z

    .line 44
    .line 45
    iput v1, p0, Lcom/gyf/immersionbar/b;->r:I

    .line 46
    .line 47
    iput v1, p0, Lcom/gyf/immersionbar/b;->s:I

    .line 48
    .line 49
    new-instance v4, Ljava/util/HashMap;

    .line 50
    .line 51
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v4, p0, Lcom/gyf/immersionbar/b;->t:Ljava/util/Map;

    .line 55
    .line 56
    iput v2, p0, Lcom/gyf/immersionbar/b;->u:F

    .line 57
    .line 58
    iput v0, p0, Lcom/gyf/immersionbar/b;->v:I

    .line 59
    .line 60
    iput v1, p0, Lcom/gyf/immersionbar/b;->w:I

    .line 61
    .line 62
    iput v2, p0, Lcom/gyf/immersionbar/b;->x:F

    .line 63
    .line 64
    iput-boolean v0, p0, Lcom/gyf/immersionbar/b;->y:Z

    .line 65
    .line 66
    iput-boolean v3, p0, Lcom/gyf/immersionbar/b;->B:Z

    .line 67
    .line 68
    iput-boolean v0, p0, Lcom/gyf/immersionbar/b;->E:Z

    .line 69
    .line 70
    iput-boolean v0, p0, Lcom/gyf/immersionbar/b;->F:Z

    .line 71
    .line 72
    const/16 v0, 0x12

    .line 73
    .line 74
    iput v0, p0, Lcom/gyf/immersionbar/b;->G:I

    .line 75
    .line 76
    iput-boolean v3, p0, Lcom/gyf/immersionbar/b;->H:Z

    .line 77
    .line 78
    iput-boolean v3, p0, Lcom/gyf/immersionbar/b;->I:Z

    .line 79
    .line 80
    iput-boolean v3, p0, Lcom/gyf/immersionbar/b;->J:Z

    .line 81
    .line 82
    iput-boolean v3, p0, Lcom/gyf/immersionbar/b;->K:Z

    .line 83
    .line 84
    return-void
.end method


# virtual methods
.method protected a()Lcom/gyf/immersionbar/b;
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/gyf/immersionbar/b;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :catch_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/gyf/immersionbar/b;->a()Lcom/gyf/immersionbar/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
