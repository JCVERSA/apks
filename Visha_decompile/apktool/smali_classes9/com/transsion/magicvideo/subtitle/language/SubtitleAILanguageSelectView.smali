.class public Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView$d;
    }
.end annotation


# instance fields
.field public b:Landroid/content/Context;

.field public c:Landroid/view/View;

.field public d:Lcom/transsion/magicvideo/adapter/AISubtitleLanguageAdapter;

.field public e:Landroid/view/View;

.field public f:Landroidx/recyclerview/widget/RecyclerView;

.field public g:Lcom/transsion/utils/CustomLinearLayoutManager;

.field public h:Ljava/util/List;

.field public i:Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView$d;

.field public j:Ljava/lang/String;

.field public k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;->h:Ljava/util/List;

    .line 6
    iput-object p1, p0, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;->b:Landroid/content/Context;

    .line 7
    invoke-virtual {p0}, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;->e()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;->k:Z

    return p0
.end method

.method public static bridge synthetic b(Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;->j:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;)Lcom/transsion/magicvideo/adapter/AISubtitleLanguageAdapter;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;->d:Lcom/transsion/magicvideo/adapter/AISubtitleLanguageAdapter;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;)Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView$d;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;->i:Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView$d;

    return-object p0
.end method


# virtual methods
.method public final e()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$layout;->subtitle_ai_language_dialog:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;->c:Landroid/view/View;

    sget v1, Lcom/transsion/magicvideo/R$id;->rv_subtitle_language_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;->f:Landroidx/recyclerview/widget/RecyclerView;

    sget v0, Lcom/transsion/magicvideo/R$id;->title_bar_back:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;->e:Landroid/view/View;

    new-instance v0, Lcom/transsion/utils/CustomLinearLayoutManager;

    iget-object v1, p0, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/utils/CustomLinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;->g:Lcom/transsion/utils/CustomLinearLayoutManager;

    iget-object v1, p0, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/transsion/magicvideo/adapter/AISubtitleLanguageAdapter;

    iget-object v1, p0, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/magicvideo/adapter/AISubtitleLanguageAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;->d:Lcom/transsion/magicvideo/adapter/AISubtitleLanguageAdapter;

    iget-object v1, p0, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;->c:Landroid/view/View;

    sget v1, Lcom/transsion/magicvideo/R$id;->tv_jump_language_management:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lw;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView$a;

    invoke-direct {v1, p0}, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView$a;-><init>(Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;->d:Lcom/transsion/magicvideo/adapter/AISubtitleLanguageAdapter;

    new-instance v1, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView$b;

    invoke-direct {v1, p0}, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView$b;-><init>(Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;->d:Lcom/transsion/magicvideo/adapter/AISubtitleLanguageAdapter;

    new-instance v1, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView$c;

    invoke-direct {v1, p0}, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView$c;-><init>(Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    return-void
.end method

.method public initSubtitleRv(ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;->h:Ljava/util/List;

    invoke-static {}, Lw5a;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-boolean p1, p0, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;->k:Z

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;->h:Ljava/util/List;

    const/4 v1, 0x0

    const-string v2, "none"

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;->c:Landroid/view/View;

    sget v1, Lcom/transsion/magicvideo/R$id;->tv_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/transsion/magicvideo/R$string;->visha_subtile_select_translate_language:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;->c:Landroid/view/View;

    sget v0, Lcom/transsion/magicvideo/R$id;->tv_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    sget v0, Lcom/transsion/magicvideo/R$string;->visha_subtitle_select_subtitle_language:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    xor-int/lit8 p1, p1, 0x1

    iget-object p2, p0, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;->h:Ljava/util/List;

    invoke-static {p1, p2}, Lj;->a(ZLjava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;->d:Lcom/transsion/magicvideo/adapter/AISubtitleLanguageAdapter;

    invoke-virtual {p2, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;->f()V

    return-void
.end method

.method public setSelectLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;->j:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;->d:Lcom/transsion/magicvideo/adapter/AISubtitleLanguageAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/adapter/AISubtitleLanguageAdapter;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setSubtitleItemSelectCallback(Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView$d;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;->i:Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView$d;

    return-void
.end method
