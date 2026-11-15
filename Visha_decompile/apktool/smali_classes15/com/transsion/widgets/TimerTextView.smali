.class public Lcom/transsion/widgets/TimerTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"


# instance fields
.field handler:Landroid/os/Handler;

.field runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgets/TimerTextView;->handler:Landroid/os/Handler;

    .line 3
    new-instance p1, Looa;

    invoke-direct {p1, p0}, Looa;-><init>(Lcom/transsion/widgets/TimerTextView;)V

    iput-object p1, p0, Lcom/transsion/widgets/TimerTextView;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgets/TimerTextView;->handler:Landroid/os/Handler;

    .line 6
    new-instance p1, Looa;

    invoke-direct {p1, p0}, Looa;-><init>(Lcom/transsion/widgets/TimerTextView;)V

    iput-object p1, p0, Lcom/transsion/widgets/TimerTextView;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgets/TimerTextView;->handler:Landroid/os/Handler;

    .line 9
    new-instance p1, Looa;

    invoke-direct {p1, p0}, Looa;-><init>(Lcom/transsion/widgets/TimerTextView;)V

    iput-object p1, p0, Lcom/transsion/widgets/TimerTextView;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/widgets/TimerTextView;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgets/TimerTextView;->lambda$new$0()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgets/TimerTextView;->runTimeUpdate()V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/transsion/widgets/TimerTextView;->runTimeUpdate()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/transsion/widgets/TimerTextView;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/widgets/TimerTextView;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public runTimeUpdate()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/widgets/TimerTextView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/widgets/TimerTextView;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getSeconds()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x3c

    iget-object v1, p0, Lcom/transsion/widgets/TimerTextView;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/transsion/widgets/TimerTextView;->runnable:Ljava/lang/Runnable;

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "HH:mm"

    invoke-static {v0}, Lit1;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
