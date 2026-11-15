.class public Lcom/transsion/onlinevideo/utils/WebcastListUtils$d;
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
.field public final synthetic a:Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;

.field public final synthetic b:I

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

.field public final synthetic e:Lcom/transsion/onlinevideo/utils/WebcastListUtils;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/utils/WebcastListUtils;Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;ILjava/util/List;Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$d;->e:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    iput-object p2, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$d;->a:Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;

    iput p3, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$d;->b:I

    iput-object p4, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$d;->c:Ljava/util/List;

    iput-object p5, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$d;->d:Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/onlinevideo/utils/WebcastListUtils$d;Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;ILjava/util/List;Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;I)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/onlinevideo/utils/WebcastListUtils$d;->d(Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;ILjava/util/List;Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;I)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 9

    iget-object v7, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$d;->a:Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;

    iget v3, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$d;->b:I

    iget-object v4, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$d;->c:Ljava/util/List;

    iget-object v5, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$d;->d:Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    new-instance v8, Ltic;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v7

    move v6, p1

    invoke-direct/range {v0 .. v6}, Ltic;-><init>(Lcom/transsion/onlinevideo/utils/WebcastListUtils$d;Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;ILjava/util/List;Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;I)V

    invoke-virtual {v7, v8}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final synthetic d(Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;ILjava/util/List;Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;I)V
    .locals 7

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->start(Z)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$d;->e:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {v0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->f(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->t(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lzdc;->i:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$d;->e:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {v0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->d(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$d;->e:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {v0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->d(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->showMuteButton(Z)V

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->getCurrentView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    sget v0, Lcom/transsion/onlinevideo/R$id;->video_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/onlinevideo/R$id;->cover_container:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$d;->e:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    const/4 v2, 0x0

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->M(ZILjava/util/List;Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$d;->e:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->s(Landroid/view/View;Landroid/view/ViewGroup;)V

    :cond_3
    :goto_0
    return-void
.end method
