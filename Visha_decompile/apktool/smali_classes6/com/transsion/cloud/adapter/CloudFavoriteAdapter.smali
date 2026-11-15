.class public final Lcom/transsion/cloud/adapter/CloudFavoriteAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J!\u0010\n\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\'\u0010\u0010\u001a\u00020\u000e2\u0018\u0010\u000f\u001a\u0014\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000e0\u000c\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J!\u0010\u0013\u001a\u00020\u000e2\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000e0\u0012\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J!\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u00032\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R*\u0010\u000f\u001a\u0016\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR$\u0010\u001d\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/transsion/cloud/adapter/CloudFavoriteAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "<init>",
        "()V",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "onCreateDefViewHolder",
        "(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;",
        "Lkotlin/Function2;",
        "Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;",
        "Lzfb;",
        "listener",
        "h",
        "(Ls74;)V",
        "Lkotlin/Function1;",
        "g",
        "(Le74;)V",
        "viewHolder",
        "mediaLibraryVO",
        "d",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;)V",
        "o",
        "Ls74;",
        "p",
        "Le74;",
        "itemListener",
        "clouddrive_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public o:Ls74;

.field public p:Le74;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget v0, Lcom/transsion/netdisk/R$layout;->item_cloud_favorite_card:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    return-void
.end method

.method public static final synthetic b(Lcom/transsion/cloud/adapter/CloudFavoriteAdapter;)Le74;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/adapter/CloudFavoriteAdapter;->p:Le74;

    return-object p0
.end method

.method public static final synthetic c(Lcom/transsion/cloud/adapter/CloudFavoriteAdapter;)Ls74;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/adapter/CloudFavoriteAdapter;->o:Ls74;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/adapter/CloudFavoriteAdapter;->d(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;)V

    return-void
.end method

.method public d(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;)V
    .locals 2

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/transsion/netdisk/R$id;->cloud_favorite_card_view:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "getView(...)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/transsion/cloud/weigets/CloudFavoriteCardView;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getMediaLibraryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/cloud/weigets/CloudFavoriteCardView;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getVideoList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v0

    :cond_1
    invoke-virtual {p1, v0}, Lcom/transsion/cloud/weigets/CloudFavoriteCardView;->setVideoShowDataVOList(Ljava/util/List;)V

    new-instance v0, Lcom/transsion/cloud/adapter/CloudFavoriteAdapter$a;

    invoke-direct {v0, p0, p2}, Lcom/transsion/cloud/adapter/CloudFavoriteAdapter$a;-><init>(Lcom/transsion/cloud/adapter/CloudFavoriteAdapter;Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;)V

    invoke-virtual {p1, v0}, Lcom/transsion/cloud/weigets/CloudFavoriteCardView;->setOnImageClickListener(Le74;)V

    new-instance v0, Lcom/transsion/cloud/adapter/CloudFavoriteAdapter$b;

    invoke-direct {v0, p0, p2}, Lcom/transsion/cloud/adapter/CloudFavoriteAdapter$b;-><init>(Lcom/transsion/cloud/adapter/CloudFavoriteAdapter;Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;)V

    invoke-virtual {p1, v0}, Lcom/transsion/cloud/weigets/CloudFavoriteCardView;->setOnItemClickListener(Lc74;)V

    sget-object p0, Laz5;->a:Laz5$a;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getMediaLibraryId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getMediaLibraryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getVirtualPersonName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getVirtualPersonPhoto()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v0, v1, p2}, Laz5$a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final g(Le74;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloud/adapter/CloudFavoriteAdapter;->p:Le74;

    return-void
.end method

.method public final h(Ls74;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloud/adapter/CloudFavoriteAdapter;->o:Ls74;

    return-void
.end method

.method public onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    const-string p1, "onCreateDefViewHolder(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
