.class public Lcom/transsion/playercommon/widgets/SeekView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/widgets/SeekView$b;
    }
.end annotation


# instance fields
.field public A:Landroid/graphics/Path;

.field public B:Z

.field public C:Landroid/view/GestureDetector;

.field public D:F

.field public E:Lcom/transsion/playercommon/widgets/SeekView$b;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:Landroid/graphics/Paint;

.field public r:Landroid/graphics/Paint;

.field public s:Landroid/graphics/Paint;

.field public t:Landroid/graphics/Paint;

.field public u:Landroid/graphics/Paint;

.field public v:Ljava/text/DecimalFormat;

.field public w:Ljava/text/DecimalFormat;

.field public x:Z

.field public y:I

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x19

    .line 2
    iput v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->d:I

    const/16 v0, 0x32

    .line 3
    iput v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->e:I

    const/16 v0, 0x190

    .line 4
    iput v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->f:I

    const/16 v0, 0x64

    .line 5
    iput v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->g:I

    .line 6
    iput v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->o:I

    const/16 v0, 0x10

    .line 7
    iput v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->p:I

    .line 8
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->q:Landroid/graphics/Paint;

    .line 9
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->r:Landroid/graphics/Paint;

    .line 10
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->s:Landroid/graphics/Paint;

    .line 11
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->t:Landroid/graphics/Paint;

    .line 12
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->u:Landroid/graphics/Paint;

    .line 13
    new-instance v0, Ljava/text/DecimalFormat;

    new-instance v1, Ljava/text/DecimalFormatSymbols;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    const-string v3, "0.0"

    invoke-direct {v0, v3, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->v:Ljava/text/DecimalFormat;

    .line 14
    new-instance v0, Ljava/text/DecimalFormat;

    new-instance v1, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v1, v2}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    const-string v2, "0.00"

    invoke-direct {v0, v2, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->w:Ljava/text/DecimalFormat;

    .line 15
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->A:Landroid/graphics/Path;

    .line 16
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/transsion/playercommon/widgets/SeekView$a;

    invoke-direct {v2, p0}, Lcom/transsion/playercommon/widgets/SeekView$a;-><init>(Lcom/transsion/playercommon/widgets/SeekView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->C:Landroid/view/GestureDetector;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 17
    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/playercommon/widgets/SeekView;->e(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x19

    .line 19
    iput v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->d:I

    const/16 v0, 0x32

    .line 20
    iput v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->e:I

    const/16 v0, 0x190

    .line 21
    iput v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->f:I

    const/16 v0, 0x64

    .line 22
    iput v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->g:I

    .line 23
    iput v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->o:I

    const/16 v0, 0x10

    .line 24
    iput v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->p:I

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->q:Landroid/graphics/Paint;

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->r:Landroid/graphics/Paint;

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->s:Landroid/graphics/Paint;

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->t:Landroid/graphics/Paint;

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->u:Landroid/graphics/Paint;

    .line 30
    new-instance v0, Ljava/text/DecimalFormat;

    new-instance v1, Ljava/text/DecimalFormatSymbols;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    const-string v3, "0.0"

    invoke-direct {v0, v3, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->v:Ljava/text/DecimalFormat;

    .line 31
    new-instance v0, Ljava/text/DecimalFormat;

    new-instance v1, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v1, v2}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    const-string v2, "0.00"

    invoke-direct {v0, v2, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->w:Ljava/text/DecimalFormat;

    .line 32
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->A:Landroid/graphics/Path;

    .line 33
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/transsion/playercommon/widgets/SeekView$a;

    invoke-direct {v2, p0}, Lcom/transsion/playercommon/widgets/SeekView$a;-><init>(Lcom/transsion/playercommon/widgets/SeekView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->C:Landroid/view/GestureDetector;

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/playercommon/widgets/SeekView;->e(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x19

    .line 36
    iput v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->d:I

    const/16 v0, 0x32

    .line 37
    iput v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->e:I

    const/16 v0, 0x190

    .line 38
    iput v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->f:I

    const/16 v0, 0x64

    .line 39
    iput v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->g:I

    .line 40
    iput v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->o:I

    const/16 v0, 0x10

    .line 41
    iput v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->p:I

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->q:Landroid/graphics/Paint;

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->r:Landroid/graphics/Paint;

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->s:Landroid/graphics/Paint;

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->t:Landroid/graphics/Paint;

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->u:Landroid/graphics/Paint;

    .line 47
    new-instance v0, Ljava/text/DecimalFormat;

    new-instance v1, Ljava/text/DecimalFormatSymbols;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    const-string v3, "0.0"

    invoke-direct {v0, v3, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->v:Ljava/text/DecimalFormat;

    .line 48
    new-instance v0, Ljava/text/DecimalFormat;

    new-instance v1, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v1, v2}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    const-string v2, "0.00"

    invoke-direct {v0, v2, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->w:Ljava/text/DecimalFormat;

    .line 49
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->A:Landroid/graphics/Path;

    .line 50
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/transsion/playercommon/widgets/SeekView$a;

    invoke-direct {v2, p0}, Lcom/transsion/playercommon/widgets/SeekView$a;-><init>(Lcom/transsion/playercommon/widgets/SeekView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->C:Landroid/view/GestureDetector;

    .line 51
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/playercommon/widgets/SeekView;->e(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static Vibrate(Landroid/app/Activity;J)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method public static Vibrate(Landroid/app/Activity;[JZ)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, -0x1

    .line 4
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/os/Vibrator;->vibrate([JI)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/playercommon/widgets/SeekView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/playercommon/widgets/SeekView;->B:Z

    return-void
.end method

.method public static bridge synthetic b(Lcom/transsion/playercommon/widgets/SeekView;FZ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/widgets/SeekView;->d(FZ)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 5

    iget v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->o:I

    int-to-float v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    rem-int/lit8 v0, v0, 0x32

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->v:Ljava/text/DecimalFormat;

    :goto_1
    float-to-double v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->w:Ljava/text/DecimalFormat;

    goto :goto_1

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "X"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->z:Ljava/lang/String;

    return-void
.end method

.method public final d(FZ)V
    .locals 2

    iput p1, p0, Lcom/transsion/playercommon/widgets/SeekView;->D:F

    iget v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->h:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->y:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->x:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->f:I

    iget v1, p0, Lcom/transsion/playercommon/widgets/SeekView;->d:I

    mul-int/2addr p1, v1

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->e:I

    iget v1, p0, Lcom/transsion/playercommon/widgets/SeekView;->d:I

    mul-int/2addr p1, v1

    add-int/2addr v0, p1

    :goto_0
    iget p1, p0, Lcom/transsion/playercommon/widgets/SeekView;->e:I

    if-ge v0, p1, :cond_1

    move v0, p1

    :cond_1
    iget p1, p0, Lcom/transsion/playercommon/widgets/SeekView;->f:I

    if-le v0, p1, :cond_2

    move v0, p1

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/transsion/playercommon/widgets/SeekView;->f(IZZ)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/SeekView;->c()V

    return-void
.end method

.method public final e(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/transsion/playercommon/R$attr;->os_platform_basic_color:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->data:I

    sget-object v1, Lcom/transsion/playercommon/R$styleable;->SeekView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/transsion/playercommon/R$styleable;->SeekView_seek_small_tick_color:I

    const v1, -0x979798

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/SeekView;->q:Landroid/graphics/Paint;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p3, p0, Lcom/transsion/playercommon/widgets/SeekView;->q:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p1, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p3, p0, Lcom/transsion/playercommon/widgets/SeekView;->q:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p3, p0, Lcom/transsion/playercommon/widgets/SeekView;->q:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget p3, Lcom/transsion/playercommon/R$styleable;->SeekView_seek_integer_tick_color:I

    const v6, -0x404041

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iget-object v7, p0, Lcom/transsion/playercommon/widgets/SeekView;->r:Landroid/graphics/Paint;

    invoke-virtual {v7, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p3, p0, Lcom/transsion/playercommon/widgets/SeekView;->r:Landroid/graphics/Paint;

    invoke-static {p1, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p3, p0, Lcom/transsion/playercommon/widgets/SeekView;->r:Landroid/graphics/Paint;

    invoke-virtual {p3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p3, p0, Lcom/transsion/playercommon/widgets/SeekView;->r:Landroid/graphics/Paint;

    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget p3, Lcom/transsion/playercommon/R$styleable;->SeekView_seek_text_color:I

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/SeekView;->u:Landroid/graphics/Paint;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p3, p0, Lcom/transsion/playercommon/widgets/SeekView;->u:Landroid/graphics/Paint;

    invoke-virtual {p3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p3, p0, Lcom/transsion/playercommon/widgets/SeekView;->u:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p1, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p3, p0, Lcom/transsion/playercommon/widgets/SeekView;->s:Landroid/graphics/Paint;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p3, p0, Lcom/transsion/playercommon/widgets/SeekView;->s:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {p1, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p3, p0, Lcom/transsion/playercommon/widgets/SeekView;->s:Landroid/graphics/Paint;

    invoke-virtual {p3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p3, p0, Lcom/transsion/playercommon/widgets/SeekView;->s:Landroid/graphics/Paint;

    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p3, p0, Lcom/transsion/playercommon/widgets/SeekView;->t:Landroid/graphics/Paint;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p3, p0, Lcom/transsion/playercommon/widgets/SeekView;->t:Landroid/graphics/Paint;

    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {p1, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p3, p0, Lcom/transsion/playercommon/widgets/SeekView;->t:Landroid/graphics/Paint;

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    const/high16 p3, 0x41b80000    # 23.0f

    invoke-static {p1, p3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p3

    iput p3, p0, Lcom/transsion/playercommon/widgets/SeekView;->h:I

    const/high16 p3, 0x41800000    # 16.0f

    invoke-static {p1, p3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->i:I

    invoke-static {p1, p3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->j:I

    const/high16 v0, 0x41e00000    # 28.0f

    invoke-static {p1, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->k:I

    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {p1, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->l:I

    const/high16 v0, 0x41880000    # 17.0f

    invoke-static {p1, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->m:I

    const/high16 v0, 0x429a0000    # 77.0f

    invoke-static {p1, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->n:I

    invoke-static {p1, p3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/widgets/SeekView;->p:I

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/SeekView;->c()V

    const/4 p1, 0x2

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iput-boolean v3, p0, Lcom/transsion/playercommon/widgets/SeekView;->x:Z

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final f(IZZ)V
    .locals 1

    iget v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->o:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/transsion/playercommon/widgets/SeekView;->o:I

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/SeekView;->c()V

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    if-eqz p3, :cond_2

    rem-int/lit8 p1, p1, 0x64

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    const-wide/16 p1, 0x64

    invoke-static {p0, p1, p2}, Lcom/transsion/playercommon/widgets/SeekView;->Vibrate(Landroid/app/Activity;J)V

    :cond_2
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/SeekView;->A:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    const v1, 0x1fa1a1a1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    iget v1, p0, Lcom/transsion/playercommon/widgets/SeekView;->f:I

    iget v2, p0, Lcom/transsion/playercommon/widgets/SeekView;->e:I

    sub-int/2addr v1, v2

    iget v3, p0, Lcom/transsion/playercommon/widgets/SeekView;->d:I

    div-int/2addr v1, v3

    add-int/lit8 v4, v1, 0x1

    const/16 v5, 0x64

    if-nez v1, :cond_0

    iput v5, p0, Lcom/transsion/playercommon/widgets/SeekView;->y:I

    goto :goto_0

    :cond_0
    iget v6, p0, Lcom/transsion/playercommon/widgets/SeekView;->b:I

    iget v7, p0, Lcom/transsion/playercommon/widgets/SeekView;->h:I

    sub-int/2addr v6, v7

    sub-int/2addr v6, v7

    div-int/2addr v6, v1

    iput v6, p0, Lcom/transsion/playercommon/widgets/SeekView;->y:I

    :goto_0
    iget v1, p0, Lcom/transsion/playercommon/widgets/SeekView;->y:I

    if-nez v1, :cond_1

    iput v5, p0, Lcom/transsion/playercommon/widgets/SeekView;->y:I

    :cond_1
    iget v1, p0, Lcom/transsion/playercommon/widgets/SeekView;->c:I

    iget v5, p0, Lcom/transsion/playercommon/widgets/SeekView;->l:I

    sub-int v6, v1, v5

    int-to-float v6, v6

    sub-int/2addr v1, v5

    iget v5, p0, Lcom/transsion/playercommon/widgets/SeekView;->i:I

    sub-int/2addr v1, v5

    int-to-float v1, v1

    iget v5, p0, Lcom/transsion/playercommon/widgets/SeekView;->o:I

    sub-int/2addr v5, v2

    div-int/2addr v5, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_a

    iget v3, p0, Lcom/transsion/playercommon/widgets/SeekView;->h:I

    iget v7, p0, Lcom/transsion/playercommon/widgets/SeekView;->y:I

    mul-int/2addr v7, v2

    add-int/2addr v3, v7

    int-to-float v3, v3

    iget v7, p0, Lcom/transsion/playercommon/widgets/SeekView;->e:I

    iget v8, p0, Lcom/transsion/playercommon/widgets/SeekView;->d:I

    mul-int/2addr v8, v2

    add-int/2addr v7, v8

    iget v8, p0, Lcom/transsion/playercommon/widgets/SeekView;->g:I

    rem-int/2addr v7, v8

    const/high16 v13, 0x40000000    # 2.0f

    if-nez v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/transsion/playercommon/widgets/SeekView;->v:Ljava/text/DecimalFormat;

    iget v9, p0, Lcom/transsion/playercommon/widgets/SeekView;->e:I

    iget v10, p0, Lcom/transsion/playercommon/widgets/SeekView;->d:I

    mul-int/2addr v10, v2

    add-int/2addr v9, v10

    int-to-float v9, v9

    const/high16 v10, 0x42c80000    # 100.0f

    div-float/2addr v9, v10

    float-to-double v9, v9

    invoke-virtual {v8, v9, v10}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "X"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/transsion/playercommon/widgets/SeekView;->u:Landroid/graphics/Paint;

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    iget-boolean v9, p0, Lcom/transsion/playercommon/widgets/SeekView;->x:Z

    if-eqz v9, :cond_2

    iget v9, p0, Lcom/transsion/playercommon/widgets/SeekView;->b:I

    int-to-float v9, v9

    div-float/2addr v8, v13

    add-float/2addr v8, v3

    sub-float/2addr v9, v8

    iget v8, p0, Lcom/transsion/playercommon/widgets/SeekView;->c:I

    iget v10, p0, Lcom/transsion/playercommon/widgets/SeekView;->m:I

    sub-int/2addr v8, v10

    int-to-float v8, v8

    iget-object v10, p0, Lcom/transsion/playercommon/widgets/SeekView;->u:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v9, v8, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_2
    div-float/2addr v8, v13

    sub-float v8, v3, v8

    iget v9, p0, Lcom/transsion/playercommon/widgets/SeekView;->c:I

    iget v10, p0, Lcom/transsion/playercommon/widgets/SeekView;->m:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    iget-object v10, p0, Lcom/transsion/playercommon/widgets/SeekView;->u:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_3
    :goto_2
    if-ne v5, v2, :cond_6

    iget v7, p0, Lcom/transsion/playercommon/widgets/SeekView;->o:I

    iget v8, p0, Lcom/transsion/playercommon/widgets/SeekView;->e:I

    if-lt v7, v8, :cond_6

    iget v8, p0, Lcom/transsion/playercommon/widgets/SeekView;->f:I

    if-gt v7, v8, :cond_6

    iget v7, p0, Lcom/transsion/playercommon/widgets/SeekView;->h:I

    iget v8, p0, Lcom/transsion/playercommon/widgets/SeekView;->y:I

    mul-int/2addr v8, v5

    add-int/2addr v7, v8

    int-to-float v10, v7

    iget v7, p0, Lcom/transsion/playercommon/widgets/SeekView;->c:I

    iget v8, p0, Lcom/transsion/playercommon/widgets/SeekView;->l:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/transsion/playercommon/widgets/SeekView;->k:I

    sub-int/2addr v7, v8

    int-to-float v11, v7

    iget-boolean v7, p0, Lcom/transsion/playercommon/widgets/SeekView;->x:Z

    if-eqz v7, :cond_4

    iget v7, p0, Lcom/transsion/playercommon/widgets/SeekView;->b:I

    int-to-float v8, v7

    sub-float/2addr v8, v10

    int-to-float v7, v7

    sub-float v10, v7, v10

    iget-object v12, p0, Lcom/transsion/playercommon/widgets/SeekView;->s:Landroid/graphics/Paint;

    move-object v7, p1

    move v9, v6

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_4
    iget-object v12, p0, Lcom/transsion/playercommon/widgets/SeekView;->s:Landroid/graphics/Paint;

    move-object v7, p1

    move v8, v10

    move v9, v6

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    iget-object v8, p0, Lcom/transsion/playercommon/widgets/SeekView;->t:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/transsion/playercommon/widgets/SeekView;->z:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    iget-boolean v9, p0, Lcom/transsion/playercommon/widgets/SeekView;->x:Z

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/transsion/playercommon/widgets/SeekView;->z:Ljava/lang/String;

    iget v10, p0, Lcom/transsion/playercommon/widgets/SeekView;->b:I

    int-to-float v10, v10

    div-float/2addr v8, v13

    add-float/2addr v3, v8

    sub-float/2addr v10, v3

    iget v3, p0, Lcom/transsion/playercommon/widgets/SeekView;->c:I

    iget v8, p0, Lcom/transsion/playercommon/widgets/SeekView;->n:I

    sub-int/2addr v3, v8

    int-to-float v3, v3

    iget-object v8, p0, Lcom/transsion/playercommon/widgets/SeekView;->t:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v3, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_5
    iget-object v9, p0, Lcom/transsion/playercommon/widgets/SeekView;->z:Ljava/lang/String;

    div-float/2addr v8, v13

    sub-float/2addr v3, v8

    iget v8, p0, Lcom/transsion/playercommon/widgets/SeekView;->c:I

    iget v10, p0, Lcom/transsion/playercommon/widgets/SeekView;->n:I

    sub-int/2addr v8, v10

    int-to-float v8, v8

    iget-object v10, p0, Lcom/transsion/playercommon/widgets/SeekView;->t:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v3, v8, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_4
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_5

    :cond_6
    iget v7, p0, Lcom/transsion/playercommon/widgets/SeekView;->e:I

    iget v8, p0, Lcom/transsion/playercommon/widgets/SeekView;->d:I

    mul-int/2addr v8, v2

    add-int/2addr v7, v8

    iget v8, p0, Lcom/transsion/playercommon/widgets/SeekView;->g:I

    rem-int/2addr v7, v8

    if-nez v7, :cond_8

    iget v7, p0, Lcom/transsion/playercommon/widgets/SeekView;->c:I

    iget v8, p0, Lcom/transsion/playercommon/widgets/SeekView;->l:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/transsion/playercommon/widgets/SeekView;->j:I

    sub-int/2addr v7, v8

    iget-boolean v8, p0, Lcom/transsion/playercommon/widgets/SeekView;->x:Z

    if-eqz v8, :cond_7

    iget v8, p0, Lcom/transsion/playercommon/widgets/SeekView;->b:I

    int-to-float v9, v8

    sub-float/2addr v9, v3

    int-to-float v8, v8

    sub-float v10, v8, v3

    int-to-float v11, v7

    iget-object v12, p0, Lcom/transsion/playercommon/widgets/SeekView;->r:Landroid/graphics/Paint;

    move-object v7, p1

    move v8, v9

    move v9, v6

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_7
    int-to-float v11, v7

    iget-object v12, p0, Lcom/transsion/playercommon/widgets/SeekView;->r:Landroid/graphics/Paint;

    move-object v7, p1

    move v8, v3

    move v9, v6

    move v10, v3

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_8
    iget-boolean v7, p0, Lcom/transsion/playercommon/widgets/SeekView;->x:Z

    if-eqz v7, :cond_9

    iget v7, p0, Lcom/transsion/playercommon/widgets/SeekView;->b:I

    int-to-float v8, v7

    sub-float/2addr v8, v3

    int-to-float v7, v7

    sub-float v10, v7, v3

    iget-object v12, p0, Lcom/transsion/playercommon/widgets/SeekView;->q:Landroid/graphics/Paint;

    move-object v7, p1

    move v9, v6

    move v11, v1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_9
    iget-object v12, p0, Lcom/transsion/playercommon/widgets/SeekView;->q:Landroid/graphics/Paint;

    move-object v7, p1

    move v8, v3

    move v9, v6

    move v10, v3

    move v11, v1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/transsion/playercommon/widgets/SeekView;->x:Z

    return-void
.end method

.method public onMeasure(II)V
    .locals 8

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/widgets/SeekView;->b:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/widgets/SeekView;->c:I

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->A:Landroid/graphics/Path;

    iget p2, p0, Lcom/transsion/playercommon/widgets/SeekView;->b:I

    int-to-float v3, p2

    int-to-float v4, p1

    iget p0, p0, Lcom/transsion/playercommon/widgets/SeekView;->p:I

    int-to-float v5, p0

    int-to-float v6, p0

    sget-object v7, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SeekView;->C:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/SeekView;->E:Lcom/transsion/playercommon/widgets/SeekView$b;

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/transsion/playercommon/widgets/SeekView;->o:I

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/SeekView;->z:Ljava/lang/String;

    invoke-interface {p1, v1, p0}, Lcom/transsion/playercommon/widgets/SeekView$b;->a(ILjava/lang/String;)V

    :cond_0
    return v0
.end method

.method public setRange(IIZ)V
    .locals 0

    iput p1, p0, Lcom/transsion/playercommon/widgets/SeekView;->e:I

    iput p2, p0, Lcom/transsion/playercommon/widgets/SeekView;->f:I

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSelectValue(IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/playercommon/widgets/SeekView;->f(IZZ)V

    return-void
.end method

.method public setStep(IZ)V
    .locals 0

    iput p1, p0, Lcom/transsion/playercommon/widgets/SeekView;->d:I

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTextStep(IZ)V
    .locals 0

    iput p1, p0, Lcom/transsion/playercommon/widgets/SeekView;->g:I

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setValueChange(Lcom/transsion/playercommon/widgets/SeekView$b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/SeekView;->E:Lcom/transsion/playercommon/widgets/SeekView$b;

    return-void
.end method
