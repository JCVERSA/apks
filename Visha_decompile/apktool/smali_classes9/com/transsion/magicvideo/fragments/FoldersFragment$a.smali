.class public Lcom/transsion/magicvideo/fragments/FoldersFragment$a;
.super Lcom/transsion/utils/CustomGridLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/fragments/FoldersFragment;->K1(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/transsion/magicvideo/fragments/FoldersFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/fragments/FoldersFragment;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/FoldersFragment$a;->e:Lcom/transsion/magicvideo/fragments/FoldersFragment;

    invoke-direct {p0, p2, p3}, Lcom/transsion/utils/CustomGridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/FoldersFragment$a;->e:Lcom/transsion/magicvideo/fragments/FoldersFragment;

    iget-object v0, v0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->canScrollVertically()Z

    move-result p0

    return p0
.end method
