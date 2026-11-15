.class public Lcom/transsion/onlinevideo/widgets/topic/BannerViewHolder$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/widgets/topic/BannerViewHolder;->a(Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

.field public final synthetic b:Lcom/transsion/onlinevideo/widgets/topic/BannerViewHolder;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/widgets/topic/BannerViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/widgets/topic/BannerViewHolder$a;->b:Lcom/transsion/onlinevideo/widgets/topic/BannerViewHolder;

    iput-object p2, p0, Lcom/transsion/onlinevideo/widgets/topic/BannerViewHolder$a;->a:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/transsion/dbdata/beans/appconfig/BannerBean;I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/topic/BannerViewHolder$a;->b:Lcom/transsion/onlinevideo/widgets/topic/BannerViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/topic/BannerViewHolder$a;->a:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-static {v0, p1, p2, p0}, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->bannerClick(Landroid/content/Context;Lcom/transsion/dbdata/beans/appconfig/BannerBean;ILcom/transsion/dbdata/beans/onlinevideo/TopicBean;)V

    return-void
.end method
