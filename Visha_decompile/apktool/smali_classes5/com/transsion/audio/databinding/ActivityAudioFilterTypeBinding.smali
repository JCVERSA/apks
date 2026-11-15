.class public final Lcom/transsion/audio/databinding/ActivityAudioFilterTypeBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final b:Landroid/widget/LinearLayout;

.field public final c:Landroid/widget/LinearLayout;

.field public final d:Landroid/view/ViewStub;

.field public final e:Landroidx/recyclerview/widget/RecyclerView;

.field public final f:Landroidx/recyclerview/widget/RecyclerView;

.field public final g:Landroid/view/View;

.field public final h:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/ViewStub;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/audio/databinding/ActivityAudioFilterTypeBinding;->b:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/transsion/audio/databinding/ActivityAudioFilterTypeBinding;->c:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/transsion/audio/databinding/ActivityAudioFilterTypeBinding;->d:Landroid/view/ViewStub;

    iput-object p4, p0, Lcom/transsion/audio/databinding/ActivityAudioFilterTypeBinding;->e:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p5, p0, Lcom/transsion/audio/databinding/ActivityAudioFilterTypeBinding;->f:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p6, p0, Lcom/transsion/audio/databinding/ActivityAudioFilterTypeBinding;->g:Landroid/view/View;

    iput-object p7, p0, Lcom/transsion/audio/databinding/ActivityAudioFilterTypeBinding;->h:Landroid/widget/TextView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lcom/transsion/audio/databinding/ActivityAudioFilterTypeBinding;
    .locals 10

    sget v0, Lcom/transsion/audio/R$id;->ll_filter_list_header:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    sget v0, Lcom/transsion/audio/R$id;->main_empty_view:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/view/ViewStub;

    if-eqz v5, :cond_0

    sget v0, Lcom/transsion/audio/R$id;->rv_filter_current_result_list:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v6, :cond_0

    sget v0, Lcom/transsion/audio/R$id;->rv_filter_type_choice:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v7, :cond_0

    sget v0, Lcom/transsion/audio/R$id;->title_bar:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_0

    sget v0, Lcom/transsion/audio/R$id;->tv_filter_hint:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    new-instance v0, Lcom/transsion/audio/databinding/ActivityAudioFilterTypeBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/transsion/audio/databinding/ActivityAudioFilterTypeBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/ViewStub;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/widget/TextView;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Landroid/view/LayoutInflater;)Lcom/transsion/audio/databinding/ActivityAudioFilterTypeBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/transsion/audio/databinding/ActivityAudioFilterTypeBinding;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/transsion/audio/databinding/ActivityAudioFilterTypeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/transsion/audio/databinding/ActivityAudioFilterTypeBinding;
    .locals 2

    sget v0, Lcom/transsion/audio/R$layout;->activity_audio_filter_type:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/transsion/audio/databinding/ActivityAudioFilterTypeBinding;->a(Landroid/view/View;)Lcom/transsion/audio/databinding/ActivityAudioFilterTypeBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/databinding/ActivityAudioFilterTypeBinding;->b:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/databinding/ActivityAudioFilterTypeBinding;->b()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method
