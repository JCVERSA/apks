.class public Lr5/a;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field public A:Landroid/view/ViewGroup;

.field public B:I

.field public C:Landroid/content/Context;

.field public D:Ljava/lang/String;

.field public E:Ljava/lang/String;

.field public F:Ljava/lang/String;

.field public G:I

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public Q:I

.field public R:I

.field public S:F

.field public T:Z

.field public U:Z

.field public V:Z

.field public W:Landroid/graphics/Typeface;

.field public X:Lcom/contrarywind/view/WheelView$DividerType;

.field public a:Ls5/c;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:[Z

.field public g:Ljava/util/Calendar;

.field public h:Ljava/util/Calendar;

.field public i:Ljava/util/Calendar;

.field public j:I

.field public k:I

.field public l:Z

.field public m:Z

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lr5/a;->b:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lr5/a;->c:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lr5/a;->d:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lr5/a;->e:Z

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x6

    .line 15
    new-array v2, v2, [Z

    .line 16
    .line 17
    fill-array-data v2, :array_0

    .line 18
    .line 19
    .line 20
    iput-object v2, p0, Lr5/a;->f:[Z

    .line 21
    .line 22
    iput-boolean v0, p0, Lr5/a;->l:Z

    .line 23
    .line 24
    iput-boolean v0, p0, Lr5/a;->m:Z

    .line 25
    .line 26
    const/16 v0, 0x11

    .line 27
    .line 28
    iput v0, p0, Lr5/a;->B:I

    .line 29
    .line 30
    const v2, -0xfa8201

    .line 31
    .line 32
    .line 33
    iput v2, p0, Lr5/a;->G:I

    .line 34
    .line 35
    iput v2, p0, Lr5/a;->H:I

    .line 36
    .line 37
    const/high16 v2, -0x1000000

    .line 38
    .line 39
    iput v2, p0, Lr5/a;->I:I

    .line 40
    .line 41
    const/4 v2, -0x1

    .line 42
    iput v2, p0, Lr5/a;->J:I

    .line 43
    .line 44
    const v3, -0xa0a0b

    .line 45
    .line 46
    .line 47
    iput v3, p0, Lr5/a;->K:I

    .line 48
    .line 49
    iput v0, p0, Lr5/a;->L:I

    .line 50
    .line 51
    const/16 v0, 0x12

    .line 52
    .line 53
    iput v0, p0, Lr5/a;->M:I

    .line 54
    .line 55
    iput v0, p0, Lr5/a;->N:I

    .line 56
    .line 57
    const v0, -0x666667

    .line 58
    .line 59
    .line 60
    iput v0, p0, Lr5/a;->O:I

    .line 61
    .line 62
    const v0, -0xcccccd

    .line 63
    .line 64
    .line 65
    iput v0, p0, Lr5/a;->P:I

    .line 66
    .line 67
    const v0, -0x111112

    .line 68
    .line 69
    .line 70
    iput v0, p0, Lr5/a;->Q:I

    .line 71
    .line 72
    iput v2, p0, Lr5/a;->R:I

    .line 73
    .line 74
    const v0, 0x3fcccccd    # 1.6f

    .line 75
    .line 76
    .line 77
    iput v0, p0, Lr5/a;->S:F

    .line 78
    .line 79
    iput-boolean v1, p0, Lr5/a;->U:Z

    .line 80
    .line 81
    iput-boolean v1, p0, Lr5/a;->V:Z

    .line 82
    .line 83
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 84
    .line 85
    iput-object v0, p0, Lr5/a;->W:Landroid/graphics/Typeface;

    .line 86
    .line 87
    sget-object v0, Lcom/contrarywind/view/WheelView$DividerType;->FILL:Lcom/contrarywind/view/WheelView$DividerType;

    .line 88
    .line 89
    iput-object v0, p0, Lr5/a;->X:Lcom/contrarywind/view/WheelView$DividerType;

    .line 90
    .line 91
    if-ne p1, v1, :cond_0

    .line 92
    .line 93
    sget p1, Lcom/bigkoo/pickerview/R$layout;->pickerview_options:I

    .line 94
    .line 95
    iput p1, p0, Lr5/a;->z:I

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_0
    sget p1, Lcom/bigkoo/pickerview/R$layout;->pickerview_time:I

    .line 99
    .line 100
    iput p1, p0, Lr5/a;->z:I

    .line 101
    .line 102
    :goto_0
    return-void

    .line 103
    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
