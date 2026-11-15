.class public Lcom/transsion/playercommon/widgets/CustomTimePicker;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/widgets/CustomTimePicker$c;
    }
.end annotation


# instance fields
.field public b:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

.field public c:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

.field public d:Landroid/content/Context;

.field public e:Lcom/transsion/playercommon/widgets/CustomTimePicker$c;

.field public f:I

.field public g:I

.field public h:Ljava/lang/Runnable;

.field public i:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/transsion/playercommon/widgets/CustomTimePicker$3;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/widgets/CustomTimePicker$3;-><init>(Lcom/transsion/playercommon/widgets/CustomTimePicker;)V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/CustomTimePicker;->h:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/CustomTimePicker;->i:Landroid/os/Handler;

    .line 4
    iput-object p1, p0, Lcom/transsion/playercommon/widgets/CustomTimePicker;->d:Landroid/content/Context;

    .line 5
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CustomTimePicker;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    new-instance p2, Lcom/transsion/playercommon/widgets/CustomTimePicker$3;

    invoke-direct {p2, p0}, Lcom/transsion/playercommon/widgets/CustomTimePicker$3;-><init>(Lcom/transsion/playercommon/widgets/CustomTimePicker;)V

    iput-object p2, p0, Lcom/transsion/playercommon/widgets/CustomTimePicker;->h:Ljava/lang/Runnable;

    .line 8
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/transsion/playercommon/widgets/CustomTimePicker;->i:Landroid/os/Handler;

    .line 9
    iput-object p1, p0, Lcom/transsion/playercommon/widgets/CustomTimePicker;->d:Landroid/content/Context;

    .line 10
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CustomTimePicker;->init()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/playercommon/widgets/CustomTimePicker;)Lcom/transsion/playercommon/widgets/CustomTimePicker$c;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/CustomTimePicker;->e:Lcom/transsion/playercommon/widgets/CustomTimePicker$c;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/playercommon/widgets/CustomTimePicker;)I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/widgets/CustomTimePicker;->f:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/transsion/playercommon/widgets/CustomTimePicker;)I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/widgets/CustomTimePicker;->g:I

    return p0
.end method

.method public static bridge synthetic d(Lcom/transsion/playercommon/widgets/CustomTimePicker;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/CustomTimePicker;->h:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/transsion/playercommon/widgets/CustomTimePicker;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/CustomTimePicker;->i:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/transsion/playercommon/widgets/CustomTimePicker;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/playercommon/widgets/CustomTimePicker;->f:I

    return-void
.end method

.method public static bridge synthetic g(Lcom/transsion/playercommon/widgets/CustomTimePicker;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/playercommon/widgets/CustomTimePicker;->g:I

    return-void
.end method


# virtual methods
.method public getmSelectedHour()I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/widgets/CustomTimePicker;->f:I

    return p0
.end method

.method public getmSelectedMin()I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/widgets/CustomTimePicker;->g:I

    return p0
.end method

.method public final h()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CustomTimePicker;->i()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CustomTimePicker;->j()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CustomTimePicker;->k()V

    return-void
.end method

.method public final i()V
    .locals 3

    sget v0, Lcom/transsion/playercommon/R$id;->hourWheel:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/CustomTimePicker;->b:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setWheelBackgroundColor(I)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomTimePicker;->b:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/playercommon/R$array;->hour:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/widgets/CustomTimePicker;->intToIntegerList([I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomTimePicker;->b:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSelectedItemPosition(I)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomTimePicker;->b:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setCyclic(Z)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomTimePicker;->b:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    new-instance v1, Lcom/transsion/playercommon/widgets/CustomTimePicker$a;

    invoke-direct {v1, p0}, Lcom/transsion/playercommon/widgets/CustomTimePicker$a;-><init>(Lcom/transsion/playercommon/widgets/CustomTimePicker;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;)V

    return-void
.end method

.method public init()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomTimePicker;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$layout;->custom_picker_date_layout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CustomTimePicker;->h()V

    return-void
.end method

.method public intToIntegerList([I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final j()V
    .locals 3

    sget v0, Lcom/transsion/playercommon/R$id;->minWheel:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/CustomTimePicker;->c:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setWheelBackgroundColor(I)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomTimePicker;->c:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/playercommon/R$array;->minute:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/widgets/CustomTimePicker;->intToIntegerList([I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomTimePicker;->c:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSelectedItemPosition(I)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomTimePicker;->c:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setCyclic(Z)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomTimePicker;->c:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    new-instance v1, Lcom/transsion/playercommon/widgets/CustomTimePicker$b;

    invoke-direct {v1, p0}, Lcom/transsion/playercommon/widgets/CustomTimePicker$b;-><init>(Lcom/transsion/playercommon/widgets/CustomTimePicker;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;)V

    return-void
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomTimePicker;->c:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/CustomTimePicker;->d:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/transsion/playercommon/R$dimen;->wheel_distance:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :cond_0
    return-void
.end method

.method public removeTimeChangeUpdate()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomTimePicker;->i:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/CustomTimePicker;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setOnTimeChangeListener(Lcom/transsion/playercommon/widgets/CustomTimePicker$c;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/CustomTimePicker;->e:Lcom/transsion/playercommon/widgets/CustomTimePicker$c;

    return-void
.end method
