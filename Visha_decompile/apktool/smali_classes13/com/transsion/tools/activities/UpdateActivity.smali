.class public Lcom/transsion/tools/activities/UpdateActivity;
.super Lcom/transsion/playercommon/activities/BaseActivity;
.source "SourceFile"


# instance fields
.field public N:Landroid/widget/TextView;

.field public O:Landroid/widget/TextView;

.field public P:Landroid/widget/TextView;

.field public Q:Landroid/widget/TextView;

.field public R:Landroid/widget/TextView;

.field public S:Landroid/widget/TextView;

.field public T:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/BaseActivity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/tools/activities/UpdateActivity;->T:Landroid/view/View;

    new-instance v1, Logb;

    invoke-direct {v1, p0}, Logb;-><init>(Lcom/transsion/tools/activities/UpdateActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/tools/activities/UpdateActivity;->S:Landroid/widget/TextView;

    new-instance v1, Lpgb;

    invoke-direct {v1, p0}, Lpgb;-><init>(Lcom/transsion/tools/activities/UpdateActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/tools/activities/UpdateActivity;->N:Landroid/widget/TextView;

    sget v1, Lcom/transsion/tools/R$string;->version_update:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/transsion/tools/activities/UpdateActivity;->P:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/tools/R$string;->current_version:I

    invoke-static {p0}, Lcom/transsion/playercommon/utils/UpdateUtils;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/tools/activities/UpdateActivity;->O:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/tools/R$string;->find_new_version:I

    sget-object v3, Lbs8;->a:Lcom/transsion/playercommon/data/CloudVersionControl;

    const-string v4, ""

    if-nez v3, :cond_0

    move-object v3, v4

    goto :goto_0

    :cond_0
    sget-object v3, Lbs8;->a:Lcom/transsion/playercommon/data/CloudVersionControl;

    invoke-virtual {v3}, Lcom/transsion/playercommon/data/CloudVersionControl;->getVersionName()Ljava/lang/String;

    move-result-object v3

    :goto_0
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/tools/activities/UpdateActivity;->Q:Landroid/widget/TextView;

    sget-object v1, Lbs8;->a:Lcom/transsion/playercommon/data/CloudVersionControl;

    if-nez v1, :cond_1

    move-object v1, v4

    goto :goto_1

    :cond_1
    sget-object v1, Lbs8;->a:Lcom/transsion/playercommon/data/CloudVersionControl;

    invoke-virtual {v1}, Lcom/transsion/playercommon/data/CloudVersionControl;->getVersionDesAll()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/tools/activities/UpdateActivity;->R:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/transsion/tools/R$string;->version_size:I

    sget-object v2, Lbs8;->a:Lcom/transsion/playercommon/data/CloudVersionControl;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    sget-object v2, Lbs8;->a:Lcom/transsion/playercommon/data/CloudVersionControl;

    iget-object v4, v2, Lcom/transsion/playercommon/data/CloudVersionControl;->fileSize:Ljava/lang/String;

    :goto_2
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic p0(Lcom/transsion/tools/activities/UpdateActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/tools/activities/UpdateActivity;->s0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q0(Lcom/transsion/tools/activities/UpdateActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/activities/UpdateActivity;->t0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic s0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/tools/R$layout;->activity_update:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/transsion/tools/activities/UpdateActivity;->r0()V

    invoke-direct {p0}, Lcom/transsion/tools/activities/UpdateActivity;->initView()V

    return-void
.end method

.method public final r0()V
    .locals 2

    sget v0, Lcom/transsion/tools/R$id;->title_bar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/tools/R$id;->title_bar_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/tools/activities/UpdateActivity;->N:Landroid/widget/TextView;

    sget v1, Lcom/transsion/tools/R$id;->title_bar_back:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/tools/activities/UpdateActivity;->T:Landroid/view/View;

    sget v0, Lcom/transsion/tools/R$id;->tv_new_version:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/tools/activities/UpdateActivity;->O:Landroid/widget/TextView;

    sget v0, Lcom/transsion/tools/R$id;->tv_version:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/tools/activities/UpdateActivity;->P:Landroid/widget/TextView;

    sget v0, Lcom/transsion/tools/R$id;->tv_des:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/tools/activities/UpdateActivity;->Q:Landroid/widget/TextView;

    sget v0, Lcom/transsion/tools/R$id;->tv_size:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/tools/activities/UpdateActivity;->R:Landroid/widget/TextView;

    sget v0, Lcom/transsion/tools/R$id;->tv_update:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/tools/activities/UpdateActivity;->S:Landroid/widget/TextView;

    sget v0, Lcom/transsion/tools/R$id;->tv_app_name:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    sget-boolean v0, Lpp3;->c:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/transsion/tools/R$string;->visha_Player_pre:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/tools/R$string;->visha_Player:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public final synthetic t0(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lge;->a()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pkg feature "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UpdateActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lbs8;->a:Lcom/transsion/playercommon/data/CloudVersionControl;

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    sget-object p1, Lbs8;->a:Lcom/transsion/playercommon/data/CloudVersionControl;

    invoke-virtual {p1}, Lcom/transsion/playercommon/data/CloudVersionControl;->getVersionName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p0}, Lcom/transsion/playercommon/utils/UpdateUtils;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "version_updat_cl"

    invoke-static {p1, v0, v1}, Lp06;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/transsion/playercommon/utils/UpdateUtils;->p(Landroid/content/Context;)V

    return-void
.end method
