.class public Lqk0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqk0$c;
    }
.end annotation


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Landroid/widget/ImageView;

.field public c:Lqk0$c;

.field public d:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lqk0;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lqk0;->d:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public final b(Landroid/app/Activity;)V
    .locals 6

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/questionnaire/sdk/R$layout;->questionsdk_bubble_view:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lqk0;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v1, v1

    const-wide v3, 0x3fea3d70a3d70a3dL    # 0.82

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v1, p0, Lqk0;->d:Landroid/view/View;

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lcom/questionnaire/sdk/R$id;->questionsdk_bubble:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lqk0;->a:Landroid/widget/ImageView;

    sget v0, Lcom/questionnaire/sdk/R$id;->questionsdk_bubble_close:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lqk0;->b:Landroid/widget/ImageView;

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lqk0;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lqk0;->b:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lqk0$a;

    invoke-direct {v1, p0}, Lqk0$a;-><init>(Lqk0;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lqk0;->b:Landroid/widget/ImageView;

    new-instance v1, Lqk0$b;

    invoke-direct {v1, p0}, Lqk0$b;-><init>(Lqk0;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p0, p1}, Lqk0;->b(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lqk0;->c()V

    return-void
.end method

.method public setOnClickListener(Lqk0$c;)V
    .locals 0

    iput-object p1, p0, Lqk0;->c:Lqk0$c;

    return-void
.end method
