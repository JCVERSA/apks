.class public Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$j;,
        Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$k;,
        Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$i;
    }
.end annotation


# static fields
.field public static final END_YEAR:I = 0x834

.field public static final FORMAT_H_M:Ljava/lang/String; = "HH:mm"

.field public static final FORMAT_M_D:Ljava/lang/String; = "MM-dd"

.field public static final FORMAT_M_D_H_M:Ljava/lang/String; = "MM-dd HH:mm"

.field public static final FORMAT_Y_M_D:Ljava/lang/String; = "yyyy-MM-dd"

.field public static final FORMAT_Y_M_D_H_M:Ljava/lang/String; = "yyyy-MM-dd HH:mm"

.field public static final LIMIT_CUSTOM:I = 0x3

.field public static final LIMIT_FUTURE:I = 0x1

.field public static final LIMIT_NONE:I = 0x0

.field public static final LIMIT_PAST:I = 0x2

.field public static final START_YEAR:I = 0x76c


# instance fields
.field public A:Z

.field public B:I

.field public C:I

.field public D:I

.field public E:Z

.field public F:I

.field public final G:Ljava/util/Calendar;

.field public H:Ljava/util/List;

.field public I:Ljava/util/Calendar;

.field public J:Ljava/util/Calendar;

.field public K:Z

.field public L:Z

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public Q:I

.field public R:I

.field public S:I

.field public T:I

.field public U:I

.field public V:I

.field public W:I

.field public a0:I

.field public b:Ljava/util/Calendar;

.field public final b0:Landroid/os/Handler;

.field public c:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

.field public final c0:Ljava/lang/Runnable;

.field public d:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

.field public d0:Z

.field public e:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

.field public e0:Ljava/lang/Runnable;

.field public f:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

.field public g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

.field public h:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

.field public i:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

.field public j:Ljava/util/ArrayList;

.field public k:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$j;

.field public l:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$e;

.field public m:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

.field public mEndYear:I

.field public mMonthList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mStartYear:I

.field public n:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

.field public o:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

.field public p:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

.field public q:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

.field public r:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

.field public s:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

.field public t:Z

.field public u:Ljava/lang/String;

.field public v:Landroid/content/Context;

.field public final w:I

.field public x:Ljava/lang/String;

.field public y:Landroid/os/Vibrator;

.field public z:Landroid/os/VibrationEffect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthList:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->j:Ljava/util/ArrayList;

    const/16 v0, 0x76c

    .line 5
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mStartYear:I

    const/16 v0, 0x834

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mEndYear:I

    .line 6
    new-instance v0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$a;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$a;-><init>(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->l:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$e;

    const/4 v0, 0x5

    .line 7
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->w:I

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->x:Ljava/lang/String;

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->B:I

    const/4 v1, 0x1

    .line 10
    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->C:I

    .line 11
    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->D:I

    const/4 v2, 0x0

    .line 12
    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->E:Z

    .line 13
    iput v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->F:I

    .line 14
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->G:Ljava/util/Calendar;

    .line 15
    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->K:Z

    .line 16
    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->L:Z

    .line 17
    iput v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->M:I

    .line 18
    iput v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->N:I

    .line 19
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->O:I

    .line 20
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->P:I

    .line 21
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->Q:I

    .line 22
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->R:I

    .line 23
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->S:I

    .line 24
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->T:I

    .line 25
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->U:I

    .line 26
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->V:I

    .line 27
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->W:I

    .line 28
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->a0:I

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b0:Landroid/os/Handler;

    .line 30
    new-instance v0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$2;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$2;-><init>(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c0:Ljava/lang/Runnable;

    .line 31
    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->d0:Z

    .line 32
    new-instance v0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$10;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$10;-><init>(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->e0:Ljava/lang/Runnable;

    .line 33
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->v:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    .line 36
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthList:Ljava/util/ArrayList;

    .line 37
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->j:Ljava/util/ArrayList;

    const/16 p2, 0x76c

    .line 38
    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mStartYear:I

    const/16 p2, 0x834

    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mEndYear:I

    .line 39
    new-instance p2, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$a;

    invoke-direct {p2, p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$a;-><init>(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->l:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$e;

    const/4 p2, 0x5

    .line 40
    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->w:I

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->x:Ljava/lang/String;

    const/4 p2, -0x1

    .line 42
    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->B:I

    const/4 v0, 0x1

    .line 43
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->C:I

    .line 44
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->D:I

    const/4 v1, 0x0

    .line 45
    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->E:Z

    .line 46
    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->F:I

    .line 47
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->G:Ljava/util/Calendar;

    .line 48
    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->K:Z

    .line 49
    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->L:Z

    .line 50
    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->M:I

    .line 51
    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->N:I

    .line 52
    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->O:I

    .line 53
    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->P:I

    .line 54
    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->Q:I

    .line 55
    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->R:I

    .line 56
    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->S:I

    .line 57
    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->T:I

    .line 58
    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->U:I

    .line 59
    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->V:I

    .line 60
    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->W:I

    .line 61
    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->a0:I

    .line 62
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b0:Landroid/os/Handler;

    .line 63
    new-instance p2, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$2;

    invoke-direct {p2, p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$2;-><init>(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c0:Ljava/lang/Runnable;

    .line 64
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->d0:Z

    .line 65
    new-instance p2, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$10;

    invoke-direct {p2, p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$10;-><init>(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->e0:Ljava/lang/Runnable;

    .line 66
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->v:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic A(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->q0(I)V

    return-void
.end method

.method public static bridge synthetic B(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->s0()V

    return-void
.end method

.method public static bridge synthetic C(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->t0()V

    return-void
.end method

.method public static bridge synthetic D(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->y0()V

    return-void
.end method

.method public static bridge synthetic E(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->A0()V

    return-void
.end method

.method public static bridge synthetic F(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->B0()V

    return-void
.end method

.method public static bridge synthetic G(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;IZ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->C0(IZ)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->Z()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->j:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->C:I

    return p0
.end method

.method public static bridge synthetic e(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->L:Z

    return p0
.end method

.method public static bridge synthetic f(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->h:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    return-object p0
.end method

.method private getSelectedHourOfDay()I
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->t:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    add-int/lit8 v0, v0, 0xc

    rem-int/lit8 v0, v0, 0x18

    :cond_1
    return v0
.end method

.method public static bridge synthetic h(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->E:Z

    return p0
.end method

.method public static bridge synthetic i(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->t:Z

    return p0
.end method

.method public static bridge synthetic j(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->F:I

    return p0
.end method

.method public static bridge synthetic k(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->i:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->D:I

    return p0
.end method

.method public static bridge synthetic m(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->H:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic o(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->G:Ljava/util/Calendar;

    return-object p0
.end method

.method public static bridge synthetic p(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->p:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    return-object p0
.end method

.method public static bridge synthetic q(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$k;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static bridge synthetic r(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->L:Z

    return-void
.end method

.method public static bridge synthetic s(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->E:Z

    return-void
.end method

.method public static bridge synthetic t(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->B:I

    return-void
.end method

.method public static bridge synthetic u(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->K()V

    return-void
.end method

.method public static bridge synthetic v(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->M()V

    return-void
.end method

.method public static bridge synthetic w(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;Z)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->N(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic x(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->Y()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic y(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->a0()V

    return-void
.end method

.method public static bridge synthetic z(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->e0()V

    return-void
.end method


# virtual methods
.method public final A0()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->L:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->h:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->s0()V

    :cond_1
    return-void
.end method

.method public final B0()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->L:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->i:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->t0()V

    :cond_1
    return-void
.end method

.method public final C0(IZ)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "yearvalue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OSDateTimePicker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    if-eqz p2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMinimum(I)I

    move-result p2

    :goto_0
    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    iget p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mStartYear:I

    if-eq p1, p2, :cond_4

    iget p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mEndYear:I

    if-ne p1, p2, :cond_1

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->p:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->abortFinishScroll()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    if-gt v0, v3, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setData(Ljava/util/List;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setCyclic(Z)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    sub-int/2addr p1, v2

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSelectedItemPosition(I)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->safeResetScrollOffsetY(I)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->W:I

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->a0:I

    :cond_3
    return-void

    :cond_4
    :goto_2
    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->K:Z

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->u0()V

    return-void
.end method

.method public final D0()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->u0()V

    :cond_0
    return-void
.end method

.method public final H(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->K()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->e0()V

    goto/16 :goto_2

    :pswitch_1
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->t:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->L()V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->t0()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->K()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->e0()V

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->s0()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->t0()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->K()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->e0()V

    goto/16 :goto_2

    :pswitch_3
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getSelectedItemPosition()I

    move-result p1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getItemData(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->D:I

    add-int/2addr p1, v0

    :goto_1
    const/4 v0, 0x6

    invoke-virtual {v1, v0, p1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->A0()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->B0()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->K()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->e0()V

    goto :goto_2

    :pswitch_4
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->e:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getSelectedItemPosition()I

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->C:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c0(I)V

    goto :goto_2

    :pswitch_5
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->d:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getSelectedItemPosition()I

    move-result p1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->H:Ljava/util/List;

    if-eqz v0, :cond_3

    if-ltz p1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->H:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->d0(I)V

    goto :goto_2

    :pswitch_6
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getSelectedItemPosition()I

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mStartYear:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f0(I)V

    :cond_4
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final I(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;Ljava/util/List;IZZZLcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;)V
    .locals 0

    if-nez p4, :cond_0

    if-nez p5, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;)V

    if-eqz p4, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setData(Ljava/util/List;)V

    invoke-virtual {p1, p6}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setCyclic(Z)V

    :cond_1
    iget-boolean p0, p1, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mIsTouchStatus:Z

    if-eqz p0, :cond_2

    invoke-virtual {p1, p3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->safeResetScrollOffsetY(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->abortFinishScroll()V

    invoke-virtual {p1, p3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSelectedItemPosition(I)V

    :goto_0
    invoke-virtual {p1, p7}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;)V

    return-void
.end method

.method public final J()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->l:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$e;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnInputInvalidListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$e;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->d:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->l:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$e;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnInputInvalidListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$e;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->e:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->l:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$e;

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnInputInvalidListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$e;)V

    :cond_2
    return-void
.end method

.method public final K()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->L:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->k:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$j;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    invoke-interface {v0, p0, v1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$j;->a(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;Ljava/util/Calendar;)V

    :cond_1
    return-void
.end method

.method public final L()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->h:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->t:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0xc

    if-nez v0, :cond_1

    move v0, v1

    :cond_1
    iget v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->B:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->B:I

    return-void

    :cond_2
    const/16 v3, 0xb

    if-ne v0, v1, :cond_3

    if-eq v2, v3, :cond_4

    :cond_3
    if-ne v0, v3, :cond_7

    if-ne v2, v1, :cond_7

    :cond_4
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getSelectedItemPosition()I

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    :goto_0
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->s:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;)V

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v3, v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSelectedItemPosition(I)V

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v3, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;)V

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    const/16 v3, 0x9

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->s0()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->t0()V

    :cond_7
    :goto_1
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->B:I

    :cond_8
    :goto_2
    return-void
.end method

.method public final M()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->L:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->L:Z

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->N:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->N:I

    and-int/lit8 v0, v1, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->H(I)V

    goto :goto_0

    :cond_1
    and-int/lit8 v0, v1, 0x4

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->H(I)V

    goto :goto_0

    :cond_2
    and-int/lit8 v0, v1, 0x8

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->H(I)V

    goto :goto_0

    :cond_3
    and-int/lit8 v0, v1, 0x10

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->H(I)V

    goto :goto_0

    :cond_4
    and-int/lit8 v0, v1, 0x20

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->H(I)V

    goto :goto_0

    :cond_5
    and-int/lit8 v0, v1, 0x40

    if-eqz v0, :cond_6

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->H(I)V

    goto :goto_0

    :cond_6
    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->H(I)V

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->M:I

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->H(I)V

    :goto_0
    return-void
.end method

.method public final N(Z)Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    goto :goto_0

    :cond_0
    const/16 p1, 0xe

    :goto_0
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    new-instance p1, Landroid/icu/text/SimpleDateFormat;

    const-string v0, "aa"

    invoke-direct {p1, v0}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final O(I)I
    .locals 0

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g0()F

    move-result p0

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public final P()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->u:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "MM-dd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v2, "HH:mm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v2, "yyyy-MM-dd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "MM-dd HH:mm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v2, "yyyy-MM-dd HH:mm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->V()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->Q()V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->R()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->S()V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->W()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->V()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->Q()V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->T()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->R()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->S()V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->W()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->V()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->Q()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->R()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->S()V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x45dc2bc6 -> :sswitch_4
        -0x347fb3b9 -> :sswitch_3
        -0x985fe00 -> :sswitch_2
        0x4183e5a -> :sswitch_1
        0x460c7cd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final Q()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->e:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-nez v0, :cond_0

    sget v0, Lcom/transsion/widgetslib/R$id;->dayWheel:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->e:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->e:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->e:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setVisibleItems(I)V

    const-string v0, "yyyy-MM-dd"

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->u:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->e:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setEditingEnabled(Z)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->e:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setDayWheel(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->e:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setEditingEnabled(Z)V

    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->S:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->T:I

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->r0()V

    new-instance v0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$d;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$d;-><init>(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;I)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->o:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->e:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;)V

    return-void
.end method

.method public final R()V
    .locals 8

    sget v0, Lcom/transsion/widgetslib/R$id;->hourWheel:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->h:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->h:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const v2, 0x3eaa7efa    # 0.333f

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->h:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lcom/transsion/widgetslib/R$id;->formatWheel:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setEditingEnabled(Z)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->v:Landroid/content/Context;

    invoke-static {v0}, Lolb;->P(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->t:Z

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->h:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setHourWheel(Z)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->h:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iget-boolean v4, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->t:Z

    invoke-virtual {v0, v4}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->set24HoursFormat(Z)V

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->t:Z

    const/16 v4, 0xb

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    :goto_0
    iget-boolean v5, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->t:Z

    const/4 v6, 0x5

    if-eqz v5, :cond_2

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    const/16 v3, 0x18

    if-ge v1, v3, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->h:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setData(Ljava/util/List;)V

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->B:I

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->h:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSelectedItemPosition(I)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->s0()V

    goto/16 :goto_3

    :cond_2
    iget-object v5, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->j:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->N(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->j:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->N(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v5, v3

    :goto_2
    const/16 v7, 0xd

    if-ge v5, v7, :cond_3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->h:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v5, v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setData(Ljava/util/List;)V

    add-int/2addr v0, v4

    rem-int/lit8 v0, v0, 0xc

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->B:I

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->h:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v2, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSelectedItemPosition(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iget-object v4, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setData(Ljava/util/List;)V

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setVisibleItems(I)V

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v2, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setCyclic(Z)V

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSelectedItemPosition(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0, v3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setAmPmWheel(Z)V

    new-instance v0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$f;

    invoke-direct {v0, p0, v6}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$f;-><init>(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;I)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->s:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->s0()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->t0()V

    :goto_3
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->h:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0, v6}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setVisibleItems(I)V

    new-instance v0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$g;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$g;-><init>(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;I)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->q:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->h:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;)V

    return-void
.end method

.method public final S()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sget v1, Lcom/transsion/widgetslib/R$id;->minWheel:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->i:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->i:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const v3, 0x3eaa7efa    # 0.333f

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->i:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const/16 v3, 0x3c

    if-ge v2, v3, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->i:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setMinuteWheel(Z)V

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->i:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v2, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setData(Ljava/util/List;)V

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->i:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSelectedItemPosition(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->i:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setVisibleItems(I)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->t0()V

    new-instance v0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$h;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$h;-><init>(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;I)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->r:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->i:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;)V

    return-void
.end method

.method public final T()V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->U()V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    sget v0, Lcom/transsion/widgetslib/R$id;->monthDayWheel:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setYearDays(Ljava/util/Calendar;Z)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setMonthList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setVisibleItems(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setEditingEnabled(Z)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->W:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->a0:I

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->u0()V

    new-instance v0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;-><init>(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->p:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;)V

    return-void
.end method

.method public final U()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->v:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthList:Ljava/util/ArrayList;

    sget v2, Lcom/transsion/widgetslib/R$string;->jan:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthList:Ljava/util/ArrayList;

    sget v2, Lcom/transsion/widgetslib/R$string;->feb:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthList:Ljava/util/ArrayList;

    sget v2, Lcom/transsion/widgetslib/R$string;->mar:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthList:Ljava/util/ArrayList;

    sget v2, Lcom/transsion/widgetslib/R$string;->apr:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthList:Ljava/util/ArrayList;

    sget v2, Lcom/transsion/widgetslib/R$string;->may:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthList:Ljava/util/ArrayList;

    sget v2, Lcom/transsion/widgetslib/R$string;->jun:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthList:Ljava/util/ArrayList;

    sget v2, Lcom/transsion/widgetslib/R$string;->jul:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthList:Ljava/util/ArrayList;

    sget v2, Lcom/transsion/widgetslib/R$string;->aug:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthList:Ljava/util/ArrayList;

    sget v2, Lcom/transsion/widgetslib/R$string;->sep:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthList:Ljava/util/ArrayList;

    sget v2, Lcom/transsion/widgetslib/R$string;->oct:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthList:Ljava/util/ArrayList;

    sget v2, Lcom/transsion/widgetslib/R$string;->nov:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthList:Ljava/util/ArrayList;

    sget v1, Lcom/transsion/widgetslib/R$string;->dec:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final V()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    sget v0, Lcom/transsion/widgetslib/R$id;->monthWheel:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->d:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->U()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->U:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->V:I

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->v0()V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->d:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setVisibleItems(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->d:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setEditingEnabled(Z)V

    new-instance v0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$c;

    invoke-direct {v0, p0, v1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$c;-><init>(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;I)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->n:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->d:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;)V

    return-void
.end method

.method public final W()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sget v2, Lcom/transsion/widgetslib/R$id;->yearWheel:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iput-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;)V

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->abortFinishScroll()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget v4, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mStartYear:I

    :goto_0
    iget v5, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mEndYear:I

    if-gt v4, v5, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v4, v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setData(Ljava/util/List;)V

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setVisibleItems(I)V

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v2, v3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setCyclic(Z)V

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v2, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setNeedMaxPullLimit(Z)V

    iget v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mStartYear:I

    iget v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mEndYear:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iget v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mStartYear:I

    sub-int v3, v0, v3

    invoke-virtual {v2, v3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSelectedItemPosition(I)V

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {v2, v1, v0}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setEditingEnabled(Z)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setYearWheel(Z)V

    new-instance v0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$b;

    invoke-direct {v0, p0, v1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$b;-><init>(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;I)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->m:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;)V

    return-void
.end method

.method public final X()Z
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final Y()Z
    .locals 4

    const-string v0, "HH:mm"

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->G:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->G:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->G:Ljava/util/Calendar;

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-ne v0, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final synthetic Z()V
    .locals 1

    sget v0, Lcom/transsion/widgetslib/R$id;->os_wheels_parent:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final a0()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->y:Landroid/os/Vibrator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->y:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    sget-boolean v0, Lolb;->Z:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lolb;->I:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lolb;->a0:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->v:Landroid/content/Context;

    invoke-static {p0}, Lvob;->d(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    sget-boolean v0, Lolb;->D:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->z:Landroid/os/VibrationEffect;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->y:Landroid/os/Vibrator;

    invoke-virtual {p0, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->y:Landroid/os/Vibrator;

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_3
    :goto_0
    return-void

    :array_0
    .array-data 8
        0x0
        0x28
    .end array-data
.end method

.method public abortFinishScroll()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->i:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->abortFinishScroll()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->h:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->abortFinishScroll()V

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->e:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->abortFinishScroll()V

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->d:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->abortFinishScroll()V

    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->abortFinishScroll()V

    :cond_4
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->abortFinishScroll()V

    :cond_5
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->abortFinishScroll()V

    :cond_6
    return-void
.end method

.method public final b0()V
    .locals 10

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->F:I

    const/4 v1, 0x3

    const/16 v2, 0xe

    const/16 v3, 0xd

    const/4 v4, 0x2

    const/16 v5, 0xc

    const/16 v6, 0xb

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->I:Ljava/util/Calendar;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->J:Ljava/util/Calendar;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->J:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->I:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    :goto_0
    move v1, v7

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->I:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->J:Ljava/util/Calendar;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->J:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {v0, v6, v8}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v5, v8}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v3, v8}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v2, v8}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_3
    if-ne v0, v7, :cond_4

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->G:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->G:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    goto :goto_0

    :cond_4
    if-ne v0, v4, :cond_5

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->G:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->G:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    move v1, v8

    :goto_1
    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v1, v7, v9}, Ljava/util/Calendar;->set(II)V

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v1, v4, v7}, Ljava/util/Calendar;->set(II)V

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v1, v4, v7}, Ljava/util/Calendar;->set(II)V

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v6, v4}, Ljava/util/Calendar;->set(II)V

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v5, v0}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {v0, v3, v8}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {v0, v2, v8}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->z0()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->D0()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->A0()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->B0()V

    :cond_6
    return-void
.end method

.method public final c0(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->A0()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->B0()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->K()V

    return-void
.end method

.method public final d0(I)V
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {v3, v1, v0}, Ljava/util/Calendar;->set(II)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->z0()V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->e:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->Q()V

    :cond_1
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->C:I

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->e:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getSelectedItemPosition()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->A0()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->B0()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->K()V

    return-void
.end method

.method public final e0()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-boolean v1, Lolb;->Y:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->e0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->e0:Ljava/lang/Runnable;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final f0(I)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v5, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    const/4 v6, 0x1

    invoke-virtual {v5, v6, p1}, Ljava/util/Calendar;->set(II)V

    if-ne v2, v1, :cond_0

    const/16 v2, 0x1d

    if-ne v3, v2, :cond_0

    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v2, p1}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    const/16 v0, 0x1c

    invoke-virtual {p1, v4, v0}, Ljava/util/Calendar;->set(II)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->d:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->v0()V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->z0()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->D0()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->A0()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->B0()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->K()V

    return-void
.end method

.method public finishEditing()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->h:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->finishEditing()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->i:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->finishEditing()V

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->finishEditing()V

    :cond_2
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->e:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->finishEditing()V

    :cond_3
    return-void
.end method

.method public final g0()F
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    invoke-static {v0, p0}, Lolb;->E0(Landroid/content/Context;I)I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x43a40000    # 328.0f

    div-float/2addr p0, v0

    return p0
.end method

.method public getDayWheel()Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->e:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    return-object p0
.end method

.method public getEndYear()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mEndYear:I

    return p0
.end method

.method public getFormatWheel()Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    return-object p0
.end method

.method public getHourWheel()Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->h:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    return-object p0
.end method

.method public getMinuteWheel()Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->i:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    return-object p0
.end method

.method public getMonthDayWheel()Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    return-object p0
.end method

.method public getMonthWheel()Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->d:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    return-object p0
.end method

.method public getStartYear()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mStartYear:I

    return p0
.end method

.method public getYearWheelView()Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    return-object p0
.end method

.method public final h0()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->P()V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->k:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$j;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->K()V

    :cond_0
    return-void
.end method

.method public final i0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->e:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->o:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->o:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->e:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    :cond_0
    return-void
.end method

.method public init(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->init(Ljava/lang/String;I)V

    return-void
.end method

.method public init(Ljava/lang/String;I)V
    .locals 4

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->O:I

    .line 8
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->P:I

    .line 9
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->Q:I

    .line 10
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->R:I

    .line 11
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->u:Ljava/lang/String;

    .line 12
    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->F:I

    .line 13
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->v:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/transsion/widgetslib/R$layout;->os_picker_date_layout:I

    const/4 v1, 0x1

    invoke-virtual {p1, p2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    iget p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->F:I

    const/4 p2, 0x2

    const/16 v2, 0x76c

    if-ne p1, p2, :cond_0

    .line 15
    iput v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mStartYear:I

    .line 16
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->G:Ljava/util/Calendar;

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0, v2, p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->setYearDuration(II)V

    goto :goto_2

    :cond_0
    const/16 p2, 0x834

    if-ne p1, v1, :cond_1

    .line 17
    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mEndYear:I

    .line 18
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->G:Ljava/util/Calendar;

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mEndYear:I

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->setYearDuration(II)V

    goto :goto_2

    :cond_1
    const/4 v3, 0x3

    if-ne p1, v3, :cond_6

    .line 19
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->I:Ljava/util/Calendar;

    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->J:Ljava/util/Calendar;

    if-nez v3, :cond_2

    goto :goto_0

    .line 20
    :cond_2
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mStartYear:I

    .line 21
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->J:Ljava/util/Calendar;

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mEndYear:I

    .line 22
    iget p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mStartYear:I

    invoke-virtual {p0, p2, p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->setYearDuration(II)V

    goto :goto_2

    .line 23
    :cond_3
    :goto_0
    iput v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mStartYear:I

    .line 24
    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mEndYear:I

    if-eqz p1, :cond_4

    .line 25
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mStartYear:I

    goto :goto_1

    .line 26
    :cond_4
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->J:Ljava/util/Calendar;

    if-eqz p1, :cond_5

    .line 27
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mEndYear:I

    .line 28
    :cond_5
    :goto_1
    iget p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mStartYear:I

    iget p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mEndYear:I

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->setYearDuration(II)V

    goto :goto_2

    .line 29
    :cond_6
    iput v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mStartYear:I

    .line 30
    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mEndYear:I

    .line 31
    invoke-virtual {p0, v2, p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->setYearDuration(II)V

    .line 32
    :goto_2
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b0()V

    .line 33
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->P()V

    .line 34
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->v:Landroid/content/Context;

    const-string p2, "vibrator"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->y:Landroid/os/Vibrator;

    .line 35
    sget-boolean p1, Lolb;->Z:Z

    if-eqz p1, :cond_7

    sget-boolean p1, Lolb;->D:Z

    if-eqz p1, :cond_7

    const-wide/32 p1, 0x78a2764f    # 9.999459027E-315

    .line 36
    invoke-static {p1, p2, v0}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->z:Landroid/os/VibrationEffect;

    .line 37
    :cond_7
    new-instance p1, Le57;

    invoke-direct {p1, p0}, Le57;-><init>(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    const-wide/16 v0, 0x3c

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 39
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->J()V

    .line 40
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->p0()V

    return-void
.end method

.method public init(Ljava/util/Calendar;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p2, p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->init(Ljava/lang/String;I)V

    return-void
.end method

.method public init(Ljava/util/Calendar;Ljava/lang/String;I)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    .line 4
    invoke-virtual {p0, p2, p3}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->init(Ljava/lang/String;I)V

    return-void
.end method

.method public is24Format()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->t:Z

    return p0
.end method

.method public isRequireRelayout()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->d0:Z

    return p0
.end method

.method public isSoundEffect()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->A:Z

    return p0
.end method

.method public final j0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->s:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->s:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    :cond_0
    return-void
.end method

.method public final k0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->h:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->q:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->q:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->h:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    :cond_0
    return-void
.end method

.method public final l0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->i:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->r:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->r:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->i:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    :cond_0
    return-void
.end method

.method public final m0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->p:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->p:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    :cond_0
    return-void
.end method

.method public final n0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->d:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->n:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->n:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->d:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    :cond_0
    return-void
.end method

.method public final o0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->m:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->m:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->isRequireRelayout()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->updateMargins()V

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public final p0()V
    .locals 8

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->X()Z

    move-result v0

    if-eqz v0, :cond_6

    sget v0, Lcom/transsion/widgetslib/R$id;->os_wheels_parent:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    sget v1, Lcom/transsion/widgetslib/R$id;->monthWheel:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$id;->dayWheel:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$id;->yearWheel:I

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/transsion/widgetslib/R$id;->monthDayWheel:I

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/transsion/widgetslib/R$id;->hourWheel:I

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    sget v6, Lcom/transsion/widgetslib/R$id;->minWheel:I

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    sget v7, Lcom/transsion/widgetslib/R$id;->formatWheel:I

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    if-eqz v4, :cond_0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    if-eqz v6, :cond_1

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_6
    return-void
.end method

.method public final q0(I)V
    .locals 2

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->M:I

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->N:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->N:I

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b0:Landroid/os/Handler;

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c0:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b0:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c0:Ljava/lang/Runnable;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final r0()V
    .locals 12

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->e:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v4, v3, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v8, 0x5

    invoke-virtual {v4, v8, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v4

    iget-object v5, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->G:Ljava/util/Calendar;

    invoke-virtual {v5, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v6, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->G:Ljava/util/Calendar;

    invoke-virtual {v6, v3}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iget-object v7, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->G:Ljava/util/Calendar;

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iget v9, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->F:I

    const/4 v10, 0x0

    if-ne v9, v1, :cond_1

    if-ne v0, v5, :cond_5

    if-ne v2, v6, :cond_5

    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v9, v0

    move v6, v1

    goto :goto_1

    :cond_1
    if-ne v9, v3, :cond_2

    if-ne v0, v5, :cond_5

    if-ne v2, v6, :cond_5

    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v6, v1

    move v9, v6

    goto :goto_1

    :cond_2
    const/4 v5, 0x3

    if-ne v9, v5, :cond_5

    iget-object v5, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->I:Ljava/util/Calendar;

    if-eqz v5, :cond_3

    invoke-virtual {v5, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v6, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->I:Ljava/util/Calendar;

    invoke-virtual {v6, v3}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v0, v5, :cond_3

    if-ne v2, v6, :cond_3

    iget-object v5, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->I:Ljava/util/Calendar;

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v6, v1

    goto :goto_0

    :cond_3
    move v5, v1

    move v6, v10

    :goto_0
    iget-object v7, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->J:Ljava/util/Calendar;

    if-eqz v7, :cond_4

    invoke-virtual {v7, v1}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iget-object v9, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->J:Ljava/util/Calendar;

    invoke-virtual {v9, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v0, v7, :cond_4

    if-ne v2, v3, :cond_4

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->J:Ljava/util/Calendar;

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v6, v1

    :cond_4
    move v9, v5

    goto :goto_1

    :cond_5
    move v9, v1

    move v6, v10

    :goto_1
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->S:I

    if-ne v9, v0, :cond_7

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->T:I

    if-eq v4, v0, :cond_6

    goto :goto_2

    :cond_6
    move v5, v10

    goto :goto_3

    :cond_7
    :goto_2
    move v5, v1

    :goto_3
    if-eqz v5, :cond_9

    iput v9, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->S:I

    iput v4, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->T:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v2, v9

    :goto_4
    if-gt v2, v4, :cond_8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    move-object v2, v0

    goto :goto_6

    :cond_9
    const/4 v0, 0x0

    goto :goto_5

    :goto_6
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ge v0, v9, :cond_a

    move v3, v9

    goto :goto_7

    :cond_a
    move v3, v0

    :goto_7
    if-le v3, v4, :cond_b

    move v11, v4

    goto :goto_8

    :cond_b
    move v11, v3

    :goto_8
    if-eq v11, v0, :cond_c

    move v10, v1

    :cond_c
    sub-int v3, v11, v9

    iget-object v4, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->e:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    xor-int/2addr v6, v1

    iget-object v7, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->o:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    move-object v0, p0

    move-object v1, v4

    move v4, v5

    move v5, v10

    invoke-virtual/range {v0 .. v7}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->I(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;Ljava/util/List;IZZZLcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {v0, v8, v11}, Ljava/util/Calendar;->set(II)V

    iput v9, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->C:I

    return-void
.end method

.method public release()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->o0()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->n0()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->i0()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->m0()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->k0()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->l0()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->j0()V

    return-void
.end method

.method public final s0()V
    .locals 17

    move-object/from16 v8, p0

    iget-object v0, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->h:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->Y()Z

    move-result v0

    iget-object v1, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->G:Ljava/util/Calendar;

    const/16 v9, 0xb

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-boolean v2, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->t:Z

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x2

    const/4 v10, 0x1

    if-eqz v2, :cond_c

    iget v2, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->F:I

    const/16 v11, 0x17

    if-ne v2, v10, :cond_1

    if-eqz v0, :cond_1

    move v0, v10

    goto :goto_1

    :cond_1
    if-ne v2, v6, :cond_2

    if-eqz v0, :cond_2

    move v11, v1

    move v0, v10

    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    if-ne v2, v3, :cond_4

    iget-object v2, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {v2, v10}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v12, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {v12, v5}, Ljava/util/Calendar;->get(I)I

    move-result v12

    iget-object v13, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->I:Ljava/util/Calendar;

    if-eqz v13, :cond_3

    invoke-virtual {v13, v10}, Ljava/util/Calendar;->get(I)I

    move-result v13

    if-ne v2, v13, :cond_3

    iget-object v13, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->I:Ljava/util/Calendar;

    invoke-virtual {v13, v6}, Ljava/util/Calendar;->get(I)I

    move-result v13

    if-ne v3, v13, :cond_3

    iget-object v13, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->I:Ljava/util/Calendar;

    invoke-virtual {v13, v5}, Ljava/util/Calendar;->get(I)I

    move-result v13

    if-ne v12, v13, :cond_3

    iget-object v0, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->I:Ljava/util/Calendar;

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v0, v10

    :cond_3
    iget-object v13, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->J:Ljava/util/Calendar;

    if-eqz v13, :cond_4

    invoke-virtual {v13, v10}, Ljava/util/Calendar;->get(I)I

    move-result v13

    if-ne v2, v13, :cond_4

    iget-object v2, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->J:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v3, v2, :cond_4

    iget-object v2, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->J:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v12, v2, :cond_4

    iget-object v0, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->J:Ljava/util/Calendar;

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v11

    move v0, v10

    :cond_4
    iget v2, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->Q:I

    if-ne v1, v2, :cond_6

    iget v2, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->R:I

    if-eq v11, v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    move v5, v10

    :goto_3
    if-eqz v5, :cond_7

    iput v1, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->Q:I

    iput v11, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->R:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    :goto_4
    if-gt v3, v11, :cond_8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    move-object v2, v4

    :cond_8
    iget-object v3, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ge v3, v1, :cond_9

    move v4, v1

    goto :goto_5

    :cond_9
    move v4, v3

    :goto_5
    if-le v4, v11, :cond_a

    goto :goto_6

    :cond_a
    move v11, v4

    :goto_6
    if-eq v11, v3, :cond_b

    move v7, v10

    goto :goto_7

    :cond_b
    const/4 v7, 0x0

    :goto_7
    sub-int v3, v11, v1

    iget-object v1, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->h:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    xor-int/lit8 v6, v0, 0x1

    iget-object v10, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->q:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    move-object/from16 v0, p0

    move v4, v5

    move v5, v7

    move-object v7, v10

    invoke-virtual/range {v0 .. v7}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->I(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;Ljava/util/List;IZZZLcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;)V

    iget-object v0, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {v0, v9, v11}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_18

    :cond_c
    iget-object v1, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->G:Ljava/util/Calendar;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v11, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->G:Ljava/util/Calendar;

    const/16 v12, 0xa

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v11

    add-int/2addr v11, v9

    const/16 v13, 0xc

    rem-int/2addr v11, v13

    add-int/2addr v11, v10

    iget-object v14, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {v14, v2}, Ljava/util/Calendar;->get(I)I

    move-result v14

    if-eqz v0, :cond_e

    iget v15, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->F:I

    if-ne v15, v10, :cond_d

    if-ne v1, v10, :cond_d

    move/from16 v16, v10

    const/4 v15, 0x0

    goto :goto_9

    :cond_d
    if-ne v15, v6, :cond_e

    if-nez v1, :cond_e

    move v15, v10

    :goto_8
    const/16 v16, 0x0

    goto :goto_9

    :cond_e
    const/4 v15, 0x0

    goto :goto_8

    :goto_9
    iget v13, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->F:I

    if-ne v13, v3, :cond_12

    iget-object v13, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {v13, v10}, Ljava/util/Calendar;->get(I)I

    move-result v13

    iget-object v9, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {v9, v6}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iget-object v12, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {v12, v5}, Ljava/util/Calendar;->get(I)I

    move-result v12

    iget-object v3, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->I:Ljava/util/Calendar;

    if-eqz v3, :cond_f

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v13, v3, :cond_f

    iget-object v3, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->I:Ljava/util/Calendar;

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v9, v3, :cond_f

    iget-object v3, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->I:Ljava/util/Calendar;

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v12, v3, :cond_f

    move v3, v10

    goto :goto_a

    :cond_f
    const/4 v3, 0x0

    :goto_a
    iget-object v7, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->J:Ljava/util/Calendar;

    if-eqz v7, :cond_10

    invoke-virtual {v7, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v13, v7, :cond_10

    iget-object v7, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->J:Ljava/util/Calendar;

    invoke-virtual {v7, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v9, v7, :cond_10

    iget-object v7, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->J:Ljava/util/Calendar;

    invoke-virtual {v7, v5}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v12, v7, :cond_10

    move v7, v10

    goto :goto_b

    :cond_10
    const/4 v7, 0x0

    :goto_b
    if-eqz v3, :cond_11

    iget-object v3, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->I:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, v10, :cond_11

    move/from16 v16, v10

    :cond_11
    if-eqz v7, :cond_12

    iget-object v3, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->J:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-nez v3, :cond_12

    move v15, v10

    :cond_12
    if-nez v15, :cond_14

    if-eqz v16, :cond_13

    goto :goto_c

    :cond_13
    const/4 v3, 0x0

    goto :goto_d

    :cond_14
    :goto_c
    move v3, v10

    :goto_d
    iget-object v7, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v7, :cond_17

    iget-object v9, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->s:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    invoke-virtual {v7, v4}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;)V

    iget-object v7, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->j:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    if-eqz v3, :cond_16

    if-eqz v15, :cond_15

    iget-object v3, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->j:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->N(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iget-object v7, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->j:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setData(Ljava/util/List;)V

    iget-object v3, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSelectedItemPosition(I)V

    iget-object v3, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {v3, v2, v7}, Ljava/util/Calendar;->set(II)V

    move v14, v7

    goto :goto_e

    :cond_15
    const/4 v7, 0x0

    iget-object v3, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->j:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->N(Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iget-object v12, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->j:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setData(Ljava/util/List;)V

    iget-object v3, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v3, v7}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSelectedItemPosition(I)V

    iget-object v3, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {v3, v2, v10}, Ljava/util/Calendar;->set(II)V

    move v14, v10

    goto :goto_e

    :cond_16
    const/4 v7, 0x0

    iget-object v3, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->j:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->N(Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->j:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->N(Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iget-object v12, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->j:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setData(Ljava/util/List;)V

    iget-object v3, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v3, v14}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSelectedItemPosition(I)V

    :goto_e
    iget-object v3, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v3, v9}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;)V

    goto :goto_f

    :cond_17
    const/4 v7, 0x0

    :goto_f
    if-eqz v0, :cond_1a

    iget v0, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->F:I

    if-ne v0, v10, :cond_1b

    if-ge v14, v1, :cond_19

    iget-object v0, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    iget-object v0, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_18

    iget-object v3, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->s:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    invoke-virtual {v0, v4}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;)V

    iget-object v0, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSelectedItemPosition(I)V

    iget-object v0, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0, v3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;)V

    :cond_18
    move v14, v1

    :cond_19
    if-ne v14, v1, :cond_1a

    move v1, v10

    :goto_10
    const/16 v0, 0xc

    goto :goto_11

    :cond_1a
    move v1, v7

    move v11, v10

    goto :goto_10

    :cond_1b
    if-ne v0, v6, :cond_1a

    if-le v14, v1, :cond_1d

    iget-object v0, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    iget-object v0, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_1c

    iget-object v3, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->s:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    invoke-virtual {v0, v4}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;)V

    iget-object v0, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSelectedItemPosition(I)V

    iget-object v0, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0, v3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;)V

    :cond_1c
    move v14, v1

    :cond_1d
    if-ne v14, v1, :cond_1a

    move v1, v10

    move v0, v11

    move v11, v1

    :goto_11
    iget v3, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->F:I

    const/4 v9, 0x3

    if-ne v3, v9, :cond_1f

    iget-object v3, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v9, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {v9, v6}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iget-object v12, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {v12, v5}, Ljava/util/Calendar;->get(I)I

    move-result v12

    iget-object v13, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->I:Ljava/util/Calendar;

    if-eqz v13, :cond_1e

    invoke-virtual {v13, v10}, Ljava/util/Calendar;->get(I)I

    move-result v13

    if-ne v3, v13, :cond_1e

    iget-object v13, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->I:Ljava/util/Calendar;

    invoke-virtual {v13, v6}, Ljava/util/Calendar;->get(I)I

    move-result v13

    if-ne v9, v13, :cond_1e

    iget-object v13, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->I:Ljava/util/Calendar;

    invoke-virtual {v13, v5}, Ljava/util/Calendar;->get(I)I

    move-result v13

    if-ne v12, v13, :cond_1e

    iget-object v13, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->I:Ljava/util/Calendar;

    invoke-virtual {v13, v2}, Ljava/util/Calendar;->get(I)I

    move-result v13

    iget-object v15, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->I:Ljava/util/Calendar;

    const/16 v4, 0xa

    invoke-virtual {v15, v4}, Ljava/util/Calendar;->get(I)I

    move-result v15

    const/16 v4, 0xb

    add-int/2addr v15, v4

    const/16 v4, 0xc

    rem-int/2addr v15, v4

    add-int/2addr v15, v10

    if-ne v14, v13, :cond_1e

    invoke-static {v11, v15}, Ljava/lang/Math;->max(II)I

    move-result v11

    move v1, v10

    :cond_1e
    iget-object v4, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->J:Ljava/util/Calendar;

    if-eqz v4, :cond_1f

    invoke-virtual {v4, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_1f

    iget-object v3, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->J:Ljava/util/Calendar;

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v9, v3, :cond_1f

    iget-object v3, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->J:Ljava/util/Calendar;

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v12, v3, :cond_1f

    iget-object v3, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->J:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->J:Ljava/util/Calendar;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0xb

    add-int/2addr v3, v4

    const/16 v4, 0xc

    rem-int/2addr v3, v4

    add-int/2addr v3, v10

    if-ne v14, v2, :cond_1f

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v10

    :cond_1f
    iget v2, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->Q:I

    if-ne v11, v2, :cond_21

    iget v2, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->R:I

    if-eq v0, v2, :cond_20

    goto :goto_12

    :cond_20
    move v4, v7

    goto :goto_13

    :cond_21
    :goto_12
    move v4, v10

    :goto_13
    if-eqz v4, :cond_22

    iput v11, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->Q:I

    iput v0, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->R:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v11

    :goto_14
    if-gt v3, v0, :cond_23

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_22
    const/4 v2, 0x0

    :cond_23
    iget-object v3, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v5, 0xb

    add-int/2addr v3, v5

    const/16 v5, 0xc

    rem-int/2addr v3, v5

    add-int/2addr v3, v10

    if-ge v3, v11, :cond_24

    move v5, v11

    goto :goto_15

    :cond_24
    move v5, v3

    :goto_15
    if-le v5, v0, :cond_25

    move v9, v0

    goto :goto_16

    :cond_25
    move v9, v5

    :goto_16
    if-eq v9, v3, :cond_26

    move v5, v10

    goto :goto_17

    :cond_26
    move v5, v7

    :goto_17
    sub-int v3, v9, v11

    iget-object v6, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->h:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    xor-int/lit8 v7, v1, 0x1

    iget-object v10, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->q:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    move-object/from16 v0, p0

    move-object v1, v6

    move v6, v7

    move-object v7, v10

    invoke-virtual/range {v0 .. v7}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->I(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;Ljava/util/List;IZZZLcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;)V

    iget-object v0, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    rem-int/lit8 v1, v9, 0xc

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    iput v9, v8, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->B:I

    :goto_18
    return-void
.end method

.method public setBlackMode()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->i:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setBlackMode()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->h:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setBlackMode()V

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->e:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setBlackMode()V

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->d:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setBlackMode()V

    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setBlackMode()V

    :cond_4
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setBlackMode()V

    :cond_5
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setBlackMode()V

    :cond_6
    return-void
.end method

.method public setCustomLimit(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->I:Ljava/util/Calendar;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->J:Ljava/util/Calendar;

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ljava/util/Calendar;

    :cond_2
    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    :cond_3
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->I:Ljava/util/Calendar;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->J:Ljava/util/Calendar;

    iget p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->F:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_5

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b0()V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->d:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->v0()V

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->z0()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->D0()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->A0()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->B0()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->K()V

    :cond_5
    return-void
.end method

.method public setMarginStart(IIIIIII)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->d:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    if-eq v0, p2, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->d:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->d:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->e:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p2

    if-eq p2, p3, :cond_1

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->e:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object p3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->e:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p3, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz p2, :cond_2

    if-eqz p4, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p2

    if-eq p2, p4, :cond_2

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p2, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object p3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p3, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p2

    if-eq p2, p1, :cond_3

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->h:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz p1, :cond_4

    if-eqz p5, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p1

    if-eq p1, p5, :cond_4

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->h:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->h:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->i:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz p1, :cond_5

    if-eqz p6, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p1

    if-eq p1, p6, :cond_5

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->i:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, p6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->i:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz p1, :cond_6

    if-eqz p7, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p1

    if-eq p1, p7, :cond_6

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, p7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    return-void
.end method

.method public setOnDateChangeListener(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$j;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->k:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$j;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->K()V

    return-void
.end method

.method public setOnDialogDismissListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$d;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnDialogDismissListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$d;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->e:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnDialogDismissListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$d;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->h:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnDialogDismissListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$d;)V

    :cond_2
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->i:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnDialogDismissListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$d;)V

    :cond_3
    return-void
.end method

.method public setOnWheelInvalidInputListener(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$k;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->J()V

    return-void
.end method

.method public setRequireRelayout(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->d0:Z

    return-void
.end method

.method public setSoundEffect(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->A:Z

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->i:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSoundEffect(Z)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->h:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSoundEffect(Z)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->e:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSoundEffect(Z)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->d:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSoundEffect(Z)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSoundEffect(Z)V

    :cond_4
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSoundEffect(Z)V

    :cond_5
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz p0, :cond_6

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSoundEffect(Z)V

    :cond_6
    return-void
.end method

.method public setSoundEffectResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->i:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSoundEffectResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->h:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSoundEffectResource(I)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->e:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSoundEffectResource(I)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->d:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSoundEffectResource(I)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSoundEffectResource(I)V

    :cond_4
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSoundEffectResource(I)V

    :cond_5
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz p0, :cond_6

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSoundEffectResource(I)V

    :cond_6
    return-void
.end method

.method public setTimeLimitType(I)V
    .locals 1

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->F:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->F:I

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b0()V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->d:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->v0()V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->z0()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->D0()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->A0()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->B0()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->K()V

    return-void
.end method

.method public setWheelBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->w0(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->d:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->w0(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->e:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->w0(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->w0(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->w0(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->h:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->w0(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->i:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->w0(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;I)V

    return-void
.end method

.method public setWheelBackgroundColorRes(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->v:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->setWheelBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setWheelTextColor(II)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->x0(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;II)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->d:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->x0(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;II)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->e:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->x0(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;II)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->x0(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;II)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->x0(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;II)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->h:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->x0(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;II)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->i:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->x0(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;II)V

    return-void
.end method

.method public setWheelWidth()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->picker_wheel_width_month:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->d:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->O(I)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->d:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->d:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->O(I)I

    move-result v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->d:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->picker_wheel_width_day:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->e:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->O(I)I

    move-result v0

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->e:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->e:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->O(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->e:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->picker_wheel_width_month_day:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->O(I)I

    move-result v0

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->O(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->picker_wheel_width_year:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v2, :cond_3

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->O(I)I

    move-result v0

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->O(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->picker_wheel_width_hour:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->h:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v2, :cond_4

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->O(I)I

    move-result v0

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->h:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->h:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->O(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->h:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->picker_wheel_width_minute:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->i:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v2, :cond_5

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->O(I)I

    move-result v0

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->i:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-eq v0, v2, :cond_5

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->i:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->O(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->i:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->picker_wheel_width_format:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v2, :cond_6

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->O(I)I

    move-result v0

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-eq v0, v2, :cond_6

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->O(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    return-void
.end method

.method public setYearDuration(II)V
    .locals 3

    if-ge p2, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mStartYear:I

    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mEndYear:I

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->I:Ljava/util/Calendar;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->I:Ljava/util/Calendar;

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->J:Ljava/util/Calendar;

    if-nez v0, :cond_2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->J:Ljava/util/Calendar;

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->I:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->J:Ljava/util/Calendar;

    invoke-virtual {p1, v1, p2}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->m:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mStartYear:I

    :goto_0
    iget v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mEndYear:I

    if-gt v0, v2, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setData(Ljava/util/List;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mStartYear:I

    iget v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mEndYear:I

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iget v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mStartYear:I

    sub-int v2, p1, v2

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSelectedItemPosition(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->d:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->v0()V

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->z0()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->D0()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->A0()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->B0()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->K()V

    :cond_5
    return-void
.end method

.method public final t0()V
    .locals 14

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->i:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->Y()Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->G:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->G:Ljava/util/Calendar;

    const/16 v8, 0xc

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->getSelectedHourOfDay()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v9, 0x3b

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->F:I

    if-ne v0, v7, :cond_1

    if-ne v4, v1, :cond_2

    :goto_0
    move v0, v7

    goto :goto_1

    :cond_1
    if-ne v0, v5, :cond_2

    if-ne v4, v1, :cond_2

    move v9, v3

    move v3, v6

    goto :goto_0

    :cond_2
    move v0, v6

    move v3, v0

    :goto_1
    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->F:I

    const/4 v10, 0x3

    if-ne v1, v10, :cond_4

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v10, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {v10, v5}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iget-object v11, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v11

    iget-object v13, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->I:Ljava/util/Calendar;

    if-eqz v13, :cond_3

    invoke-virtual {v13, v7}, Ljava/util/Calendar;->get(I)I

    move-result v13

    if-ne v1, v13, :cond_3

    iget-object v13, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->I:Ljava/util/Calendar;

    invoke-virtual {v13, v5}, Ljava/util/Calendar;->get(I)I

    move-result v13

    if-ne v10, v13, :cond_3

    iget-object v13, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->I:Ljava/util/Calendar;

    invoke-virtual {v13, v12}, Ljava/util/Calendar;->get(I)I

    move-result v13

    if-ne v11, v13, :cond_3

    iget-object v13, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->I:Ljava/util/Calendar;

    invoke-virtual {v13, v2}, Ljava/util/Calendar;->get(I)I

    move-result v13

    if-ne v4, v13, :cond_3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->I:Ljava/util/Calendar;

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v7

    :cond_3
    iget-object v13, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->J:Ljava/util/Calendar;

    if-eqz v13, :cond_4

    invoke-virtual {v13, v7}, Ljava/util/Calendar;->get(I)I

    move-result v13

    if-ne v1, v13, :cond_4

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->J:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v10, v1, :cond_4

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->J:Ljava/util/Calendar;

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v11, v1, :cond_4

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->J:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v4, v1, :cond_4

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->J:Ljava/util/Calendar;

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    move v0, v7

    :cond_4
    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->O:I

    if-ne v3, v1, :cond_6

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->P:I

    if-eq v9, v1, :cond_5

    goto :goto_2

    :cond_5
    move v4, v6

    goto :goto_3

    :cond_6
    :goto_2
    move v4, v7

    :goto_3
    if-eqz v4, :cond_8

    iput v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->O:I

    iput v9, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->P:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    :goto_4
    if-gt v2, v9, :cond_7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    move-object v2, v1

    goto :goto_6

    :cond_8
    const/4 v1, 0x0

    goto :goto_5

    :goto_6
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ge v1, v3, :cond_9

    move v5, v3

    goto :goto_7

    :cond_9
    move v5, v1

    :goto_7
    if-le v5, v9, :cond_a

    goto :goto_8

    :cond_a
    move v9, v5

    :goto_8
    if-eq v9, v1, :cond_b

    move v5, v7

    goto :goto_9

    :cond_b
    move v5, v6

    :goto_9
    sub-int v3, v9, v3

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->i:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    xor-int/lit8 v6, v0, 0x1

    iget-object v7, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->r:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->I(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;Ljava/util/List;IZZZLcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method public final u0()V
    .locals 14

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->p:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->abortFinishScroll()V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Ljava/util/Calendar;->set(II)V

    const/4 v4, 0x6

    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    iget-object v5, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->G:Ljava/util/Calendar;

    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v6, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->G:Ljava/util/Calendar;

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget v8, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->F:I

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x0

    if-ne v8, v2, :cond_2

    if-ne v0, v5, :cond_5

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "maxDaysOfYear: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "OSDateTimePicker"

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v0

    :goto_0
    if-gt v5, v3, :cond_1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v5, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->K:Z

    if-eqz v5, :cond_10

    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->E:Z

    iget-object v5, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    add-int/2addr v6, v2

    invoke-virtual {v5, v6}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->safeResetScrollOffsetY(I)V

    iput-boolean v12, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->K:Z

    goto/16 :goto_8

    :cond_2
    if-ne v8, v11, :cond_6

    if-ne v0, v5, :cond_5

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v5, v3, -0x3

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v3, -0x2

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v3, -0x1

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v2

    :goto_1
    if-gt v3, v0, :cond_3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-boolean v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->K:Z

    if-eqz v3, :cond_4

    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->E:Z

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v3, v9}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->safeResetScrollOffsetY(I)V

    iput-boolean v12, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->K:Z

    :cond_4
    :goto_2
    move v3, v0

    :cond_5
    move v0, v2

    goto/16 :goto_8

    :cond_6
    if-ne v8, v10, :cond_f

    iget-object v5, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->I:Ljava/util/Calendar;

    if-nez v5, :cond_7

    iget-object v6, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->J:Ljava/util/Calendar;

    if-eqz v6, :cond_5

    :cond_7
    iget v6, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mStartYear:I

    iget v8, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mEndYear:I

    if-eqz v5, :cond_8

    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    :cond_8
    iget-object v5, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->J:Ljava/util/Calendar;

    if-eqz v5, :cond_9

    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v8

    :cond_9
    iget-object v5, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->I:Ljava/util/Calendar;

    if-eqz v5, :cond_a

    iget-object v13, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->J:Ljava/util/Calendar;

    if-eqz v13, :cond_a

    if-ne v6, v8, :cond_a

    if-ne v0, v6, :cond_a

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v5, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->J:Ljava/util/Calendar;

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v5, v0

    :goto_3
    if-gt v5, v3, :cond_10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_a
    if-eqz v5, :cond_c

    if-ne v0, v6, :cond_c

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v5, v0

    :goto_4
    if-gt v5, v3, :cond_b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v5, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->K:Z

    if-eqz v5, :cond_10

    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->E:Z

    iget-object v5, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    sub-int v6, v3, v0

    add-int/2addr v6, v2

    invoke-virtual {v5, v6}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->safeResetScrollOffsetY(I)V

    goto/16 :goto_8

    :cond_c
    iget-object v5, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->J:Ljava/util/Calendar;

    if-eqz v5, :cond_e

    if-ne v0, v8, :cond_e

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v5, v3, -0x3

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v3, -0x2

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v3, -0x1

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v2

    :goto_5
    if-gt v3, v0, :cond_d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_d
    iget-boolean v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->K:Z

    if-eqz v3, :cond_4

    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->E:Z

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v3, v9}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->safeResetScrollOffsetY(I)V

    iput-boolean v12, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->K:Z

    goto/16 :goto_2

    :cond_e
    move v0, v2

    :goto_6
    if-gt v0, v3, :cond_5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_f
    move v0, v2

    :goto_7
    if-gt v0, v3, :cond_5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_10
    :goto_8
    if-ne v0, v2, :cond_12

    iget-object v5, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    if-eq v3, v5, :cond_11

    goto :goto_9

    :cond_11
    move v5, v12

    goto :goto_a

    :cond_12
    :goto_9
    move v5, v2

    :goto_a
    iget-object v6, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ge v6, v0, :cond_13

    move v6, v0

    :cond_13
    if-le v6, v3, :cond_14

    move v6, v3

    :cond_14
    move v8, v12

    :goto_b
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_16

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v6, :cond_15

    goto :goto_c

    :cond_15
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_16
    move v8, v12

    :goto_c
    iget v9, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->W:I

    if-ne v0, v9, :cond_18

    iget v9, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->a0:I

    if-ne v3, v9, :cond_18

    iget-boolean v9, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->K:Z

    if-eqz v9, :cond_17

    goto :goto_d

    :cond_17
    move v9, v12

    goto :goto_e

    :cond_18
    :goto_d
    move v9, v2

    :goto_e
    if-eqz v9, :cond_19

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->W:I

    iput v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->a0:I

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v3, v7}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setData(Ljava/util/List;)V

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    xor-int/2addr v5, v2

    invoke-virtual {v3, v5}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setCyclic(Z)V

    :cond_19
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eq v6, v3, :cond_1a

    goto :goto_f

    :cond_1a
    move v2, v12

    :goto_f
    if-nez v9, :cond_1b

    if-nez v2, :cond_1b

    goto :goto_10

    :cond_1b
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iget-boolean v3, v2, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mIsTouchStatus:Z

    if-eqz v3, :cond_1d

    iget-boolean v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->K:Z

    if-eqz v3, :cond_1c

    add-int/lit8 v3, v8, 0x1

    invoke-virtual {v2, v3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->safeResetScrollOffsetY(I)V

    goto :goto_10

    :cond_1c
    invoke-virtual {v2, v8}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->safeResetScrollOffsetY(I)V

    goto :goto_10

    :cond_1d
    invoke-virtual {v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->abortFinishScroll()V

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v2, v8}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSelectedItemPosition(I)V

    :goto_10
    iput-boolean v12, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->K:Z

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->x:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMonthDayWheelDataByLimit: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {v2, v4, v6}, Ljava/util/Calendar;->set(II)V

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->D:I

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;)V

    return-void
.end method

.method public updateDate(III)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->release()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->h0()V

    :cond_0
    return-void
.end method

.method public updateDateTime(IIIII)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    const/16 p2, 0xb

    invoke-virtual {p1, p2, p4}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    const/16 p2, 0xc

    invoke-virtual {p1, p2, p5}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->release()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->h0()V

    :cond_0
    return-void
.end method

.method public updateMargins()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->u:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const v1, 0x3e4ccccd    # 0.2f

    const v2, 0x3e8a3d71    # 0.27f

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v6, "HH:mm"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_1
    const-string v6, "yyyy-MM-dd"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    goto :goto_0

    :sswitch_2
    const-string v6, "MM-dd HH:mm"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v5, v4

    :goto_0
    packed-switch v5, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->t:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->h:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const v1, 0x3edc28f6    # 0.43f

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->h:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->i:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->i:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->h:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const v1, 0x3e947ae1    # 0.29f

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->h:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->i:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->i:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->d:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const v2, 0x3ea8f5c3    # 0.33f

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->d:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->e:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->e:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    :pswitch_2
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->t:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const v2, 0x3ecccccd    # 0.4f

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->h:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->h:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->i:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const v1, 0x3e851eb8    # 0.26f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->i:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_b
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const v1, 0x3ebd70a4    # 0.37f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->h:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const v1, 0x3e19999a    # 0.15f

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->h:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_d
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->i:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->i:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_e
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->g:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_f
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x347fb3b9 -> :sswitch_2
        -0x985fe00 -> :sswitch_1
        0x4183e5a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateTime(II)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    const/16 v0, 0xc

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->release()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->h0()V

    :cond_0
    return-void
.end method

.method public final v0()V
    .locals 10

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->G:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->G:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v5, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget v6, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->F:I

    const/4 v7, 0x0

    const/16 v8, 0xb

    if-ne v6, v2, :cond_0

    if-ne v5, v1, :cond_1

    goto :goto_1

    :cond_0
    if-ne v6, v4, :cond_2

    if-ne v5, v1, :cond_1

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    :cond_1
    move v3, v7

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    if-ne v6, v1, :cond_1

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->I:Ljava/util/Calendar;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->J:Ljava/util/Calendar;

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->J:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v5, v1, :cond_3

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->I:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    goto :goto_0

    :cond_3
    move v1, v7

    :goto_0
    if-ne v5, v3, :cond_4

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->J:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v8

    :cond_4
    move v3, v1

    :goto_1
    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->U:I

    if-ne v3, v1, :cond_6

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->V:I

    if-eq v8, v1, :cond_5

    goto :goto_2

    :cond_5
    move v5, v7

    goto :goto_3

    :cond_6
    :goto_2
    move v5, v2

    :goto_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v5, :cond_8

    iput v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->U:I

    iput v8, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->V:I

    :goto_4
    if-gt v3, v8, :cond_7

    iget-object v9, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthList:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    iput-object v6, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->H:Ljava/util/List;

    goto :goto_6

    :cond_8
    iget-object v9, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->H:Ljava/util/List;

    if-nez v9, :cond_a

    :goto_5
    if-gt v3, v8, :cond_9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_9
    iput-object v6, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->H:Ljava/util/List;

    goto :goto_6

    :cond_a
    move-object v6, v9

    :goto_6
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_c

    iget v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->F:I

    if-ne v3, v4, :cond_b

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    goto :goto_7

    :cond_b
    move v3, v7

    :goto_7
    iget-object v8, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b:Ljava/util/Calendar;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v4, v9}, Ljava/util/Calendar;->set(II)V

    move v8, v2

    goto :goto_8

    :cond_c
    move v8, v7

    :goto_8
    iget-object v4, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->d:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v5, :cond_d

    :goto_9
    move-object v9, v1

    goto :goto_a

    :cond_d
    const/4 v1, 0x0

    goto :goto_9

    :goto_a
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    const/16 v6, 0xc

    if-lt v1, v6, :cond_e

    move v6, v2

    goto :goto_b

    :cond_e
    move v6, v7

    :goto_b
    iget-object v7, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->n:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    move-object v0, p0

    move-object v1, v4

    move-object v2, v9

    move v4, v5

    move v5, v8

    invoke-virtual/range {v0 .. v7}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->I(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;Ljava/util/List;IZZZLcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;)V

    return-void
.end method

.method public final w0(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;I)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setWheelBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public final x0(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;II)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setTextSecondColor(I)V

    invoke-virtual {p1, p3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setTextSelectColor(I)V

    :cond_0
    return-void
.end method

.method public final y0()V
    .locals 5

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->F:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->v:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$string;->os_date_time_future_limit:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->v:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$string;->os_date_time_past_limit:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->v:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$string;->os_date_time_valid_limit:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    new-instance v1, Landroid/widget/Toast;

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->v:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->v:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/transsion/widgetslib/R$color;->os_toast_text_color:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->v:Landroid/content/Context;

    const/16 v3, 0x8

    invoke-static {v0, v3}, Lolb;->h(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->v:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->v:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v4, Lcom/transsion/widgetslib/R$dimen;->os_fontsize_icon:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v3, v0, v0, p0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 p0, 0x0

    invoke-virtual {v2, v3, p0, p0, p0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget p0, Lcom/transsion/widgetslib/R$drawable;->os_toast_background:I

    invoke-virtual {v2, p0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setDuration(I)V

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final z0()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->e:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->r0()V

    :cond_0
    return-void
.end method
