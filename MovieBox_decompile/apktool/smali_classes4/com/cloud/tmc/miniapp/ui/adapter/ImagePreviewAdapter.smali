.class public final Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;
.super Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final baseResourceManager$delegate:Lkotlin/Lazy;

.field private final imageLoder$delegate:Lkotlin/Lazy;

.field private final mSelectImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selectMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "mSelectImages"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;->mSelectImages:Ljava/util/List;

    .line 15
    .line 16
    sget-object p1, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$imageLoder$2;->INSTANCE:Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$imageLoder$2;

    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;->imageLoder$delegate:Lkotlin/Lazy;

    .line 23
    .line 24
    sget-object p1, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$baseResourceManager$2;->INSTANCE:Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$baseResourceManager$2;

    .line 25
    .line 26
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;->baseResourceManager$delegate:Lkotlin/Lazy;

    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    iput p1, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;->selectMode:I

    .line 34
    .line 35
    return-void
.end method

.method public static final synthetic access$getMSelectImages$p(Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;->mSelectImages:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final getBaseResourceManager()Lcom/cloud/tmc/kernel/resource/IResourceProcessor;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;->baseResourceManager$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "<get-baseResourceManager>(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Lcom/cloud/tmc/kernel/resource/IResourceProcessor;

    .line 13
    .line 14
    return-object v0
.end method

.method public final getImageLoder()Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;->imageLoder$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "<get-imageLoder>(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    .line 13
    .line 14
    return-object v0
.end method

.method public final getSelectMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;->selectMode:I

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter$NormalViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter$NormalViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter<",
            "Ljava/lang/String;",
            ">.NormalViewHolder;"
        }
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;-><init>(Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;)V

    return-object p1
.end method

.method public final setSelectMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;->selectMode:I

    .line 2
    .line 3
    return-void
.end method
