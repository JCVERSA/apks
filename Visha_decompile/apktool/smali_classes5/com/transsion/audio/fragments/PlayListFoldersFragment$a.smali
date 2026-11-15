.class public Lcom/transsion/audio/fragments/PlayListFoldersFragment$a;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/fragments/PlayListFoldersFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/transsion/audio/fragments/PlayListFoldersFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/fragments/PlayListFoldersFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/fragments/PlayListFoldersFragment$a;->c:Lcom/transsion/audio/fragments/PlayListFoldersFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/audio/fragments/PlayListFoldersFragment$a;->c:Lcom/transsion/audio/fragments/PlayListFoldersFragment;

    invoke-static {p0}, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->T1(Lcom/transsion/audio/fragments/PlayListFoldersFragment;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->resumeRequests()V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/audio/fragments/PlayListFoldersFragment$a;->c:Lcom/transsion/audio/fragments/PlayListFoldersFragment;

    invoke-static {p0}, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->S1(Lcom/transsion/audio/fragments/PlayListFoldersFragment;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->pauseRequests()V

    :goto_1
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method
