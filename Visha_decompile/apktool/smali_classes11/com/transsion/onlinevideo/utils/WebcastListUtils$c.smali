.class public Lcom/transsion/onlinevideo/utils/WebcastListUtils$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/utils/WebcastListUtils;->v(Landroidx/recyclerview/widget/LinearLayoutManager;Ljava/util/List;Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:I

.field public final synthetic c:Lcom/transsion/onlinevideo/utils/WebcastListUtils;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/utils/WebcastListUtils;Ljava/util/List;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$c;->c:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    iput-object p2, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$c;->a:Ljava/util/List;

    iput p3, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/transsion/dbdata/beans/appconfig/BannerBean;I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$c;->c:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {v0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->f(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$c;->a:Ljava/util/List;

    iget p0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$c;->b:I

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-static {v0, p1, p2, p0}, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->bannerClick(Landroid/content/Context;Lcom/transsion/dbdata/beans/appconfig/BannerBean;ILcom/transsion/dbdata/beans/onlinevideo/TopicBean;)V

    return-void
.end method
