.class public final Lcom/transsion/audio/databinding/DialogFilterFolderAudioListBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final b:Landroid/widget/LinearLayout;

.field public final c:Landroid/view/ViewStub;

.field public final d:Landroid/widget/RelativeLayout;

.field public final e:Landroidx/recyclerview/widget/RecyclerView;

.field public final f:Landroid/widget/TextView;

.field public final g:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;Landroid/view/ViewStub;Landroid/widget/RelativeLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/audio/databinding/DialogFilterFolderAudioListBinding;->b:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/transsion/audio/databinding/DialogFilterFolderAudioListBinding;->c:Landroid/view/ViewStub;

    iput-object p3, p0, Lcom/transsion/audio/databinding/DialogFilterFolderAudioListBinding;->d:Landroid/widget/RelativeLayout;

    iput-object p4, p0, Lcom/transsion/audio/databinding/DialogFilterFolderAudioListBinding;->e:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p5, p0, Lcom/transsion/audio/databinding/DialogFilterFolderAudioListBinding;->f:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/transsion/audio/databinding/DialogFilterFolderAudioListBinding;->g:Landroid/widget/TextView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lcom/transsion/audio/databinding/DialogFilterFolderAudioListBinding;
    .locals 9

    sget v0, Lcom/transsion/audio/R$id;->main_empty_view:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/view/ViewStub;

    if-eqz v4, :cond_0

    sget v0, Lcom/transsion/audio/R$id;->play_list_title:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_0

    sget v0, Lcom/transsion/audio/R$id;->rv_folder_audio_list:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v6, :cond_0

    sget v0, Lcom/transsion/audio/R$id;->tv_folder_name:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    sget v0, Lcom/transsion/audio/R$id;->tv_hint:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    new-instance v0, Lcom/transsion/audio/databinding/DialogFilterFolderAudioListBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/transsion/audio/databinding/DialogFilterFolderAudioListBinding;-><init>(Landroid/widget/LinearLayout;Landroid/view/ViewStub;Landroid/widget/RelativeLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;)V

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

.method public static c(Landroid/view/LayoutInflater;)Lcom/transsion/audio/databinding/DialogFilterFolderAudioListBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/transsion/audio/databinding/DialogFilterFolderAudioListBinding;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/transsion/audio/databinding/DialogFilterFolderAudioListBinding;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/transsion/audio/databinding/DialogFilterFolderAudioListBinding;
    .locals 2

    sget v0, Lcom/transsion/audio/R$layout;->dialog_filter_folder_audio_list:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/transsion/audio/databinding/DialogFilterFolderAudioListBinding;->a(Landroid/view/View;)Lcom/transsion/audio/databinding/DialogFilterFolderAudioListBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/databinding/DialogFilterFolderAudioListBinding;->b:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/databinding/DialogFilterFolderAudioListBinding;->b()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method
