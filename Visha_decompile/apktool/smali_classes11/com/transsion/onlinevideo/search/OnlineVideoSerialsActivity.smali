.class public Lcom/transsion/onlinevideo/search/OnlineVideoSerialsActivity;
.super Lcom/transsion/onlinevideo/OnlineBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public N:Ljava/lang/String;

.field public O:Ljava/util/List;

.field public P:I

.field public Q:Landroid/view/View;

.field public R:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/onlinevideo/OnlineBaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSerialsActivity;->O:Ljava/util/List;

    return-void
.end method

.method public static bridge synthetic p0(Lcom/transsion/onlinevideo/search/OnlineVideoSerialsActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSerialsActivity;->O:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/onlinevideo/R$id;->title_bar_back:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/onlinevideo/OnlineBaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/onlinevideo/R$layout;->activity_online_video_serials:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/search/OnlineVideoSerialsActivity;->q0()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/search/OnlineVideoSerialsActivity;->s0()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/search/OnlineVideoSerialsActivity;->r0()V

    return-void
.end method

.method public q0()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "bundle"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "serial_title"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSerialsActivity;->N:Ljava/lang/String;

    const-string v1, "serial_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSerialsActivity;->O:Ljava/util/List;

    const-string v1, "serial_type"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSerialsActivity;->P:I

    :cond_0
    return-void
.end method

.method public r0()V
    .locals 4

    sget v0, Lcom/transsion/onlinevideo/R$id;->rv_serials:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsion/onlinevideo/adapter/VideoSerialAdapter;

    invoke-direct {v1}, Lcom/transsion/onlinevideo/adapter/VideoSerialAdapter;-><init>()V

    iget v2, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSerialsActivity;->P:I

    invoke-virtual {v1, v2}, Lcom/transsion/onlinevideo/adapter/VideoSerialAdapter;->r(I)V

    invoke-virtual {v1}, Lcom/transsion/onlinevideo/adapter/VideoSerialAdapter;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v3, 0x6

    invoke-direct {v2, p0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    :goto_0
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v0, Lcom/transsion/onlinevideo/search/OnlineVideoSerialsActivity$a;

    invoke-direct {v0, p0}, Lcom/transsion/onlinevideo/search/OnlineVideoSerialsActivity$a;-><init>(Lcom/transsion/onlinevideo/search/OnlineVideoSerialsActivity;)V

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSerialsActivity;->O:Ljava/util/List;

    invoke-virtual {v1, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    return-void
.end method

.method public s0()V
    .locals 2

    sget v0, Lcom/transsion/onlinevideo/R$id;->title_bar_back:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSerialsActivity;->Q:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/onlinevideo/R$id;->title_bar_title:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSerialsActivity;->R:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSerialsActivity;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSerialsActivity;->R:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/transsion/onlinevideo/R$color;->os_text_primary_color:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
