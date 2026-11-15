.class public final Lcom/transsion/cloud/fragment/SearchCloudFragment$initView$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/fragment/SearchCloudFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "com/transsion/cloud/fragment/SearchCloudFragment$initView$11",
        "Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;",
        "Landroid/view/View;",
        "view",
        "Lzfb;",
        "onChildViewAttachedToWindow",
        "(Landroid/view/View;)V",
        "onChildViewDetachedFromWindow",
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
.field public final synthetic b:Lcom/transsion/cloud/fragment/SearchCloudFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/fragment/SearchCloudFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/fragment/SearchCloudFragment$initView$11;->b:Lcom/transsion/cloud/fragment/SearchCloudFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 8

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/cloud/fragment/SearchCloudFragment$initView$11;->b:Lcom/transsion/cloud/fragment/SearchCloudFragment;

    invoke-static {v0}, Lcom/transsion/cloud/fragment/SearchCloudFragment;->Q0(Lcom/transsion/cloud/fragment/SearchCloudFragment;)Lcom/transsion/netdisk/databinding/LayoutCloudSearchBinding;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/transsion/netdisk/databinding/LayoutCloudSearchBinding;->l:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lcom/transsion/cloud/fragment/SearchCloudFragment$initView$11;->b:Lcom/transsion/cloud/fragment/SearchCloudFragment;

    invoke-static {v0}, Lcom/transsion/cloud/fragment/SearchCloudFragment;->R0(Lcom/transsion/cloud/fragment/SearchCloudFragment;)Lcom/transsion/cloud/adapter/CloudSearchAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->getSourceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/transsion/cloud/fragment/SearchCloudFragment$initView$11;->b:Lcom/transsion/cloud/fragment/SearchCloudFragment;

    invoke-static {p0}, Lcom/transsion/cloud/fragment/SearchCloudFragment;->S0(Lcom/transsion/cloud/fragment/SearchCloudFragment;)Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;

    move-result-object v2

    const-string v3, "mCloudSearchViewModel"

    if-nez v2, :cond_2

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    move-object v2, v1

    :cond_2
    invoke-virtual {v2}, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->l()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {p0}, Lcom/transsion/cloud/fragment/SearchCloudFragment;->S0(Lcom/transsion/cloud/fragment/SearchCloudFragment;)Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    invoke-virtual {v1}, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->l()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->getDataType()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->getSize()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    sget-object v0, Laz5;->a:Laz5$a;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3, v1}, Lcz5;->b(JZ)F

    move-result v1

    invoke-static {p0}, Lcom/transsion/cloud/fragment/SearchCloudFragment;->U0(Lcom/transsion/cloud/fragment/SearchCloudFragment;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, v1, p0}, Laz5$a;->P(Ljava/lang/String;FLjava/lang/String;)V

    goto :goto_3

    :cond_5
    :goto_2
    sget-object v2, Laz5;->a:Laz5$a;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->getSourceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->getMediaLibraryId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->getMediaLibraryName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0}, Lcom/transsion/cloud/fragment/SearchCloudFragment;->U0(Lcom/transsion/cloud/fragment/SearchCloudFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Laz5$a;->S(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    const-string p0, "view"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
