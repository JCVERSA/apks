.class public final synthetic Ltic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/utils/WebcastListUtils$d;

.field public final synthetic c:Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;

.field public final synthetic d:I

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/utils/WebcastListUtils$d;Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;ILjava/util/List;Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltic;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils$d;

    iput-object p2, p0, Ltic;->c:Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;

    iput p3, p0, Ltic;->d:I

    iput-object p4, p0, Ltic;->e:Ljava/util/List;

    iput-object p5, p0, Ltic;->f:Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    iput p6, p0, Ltic;->g:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Ltic;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils$d;

    iget-object v1, p0, Ltic;->c:Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;

    iget v2, p0, Ltic;->d:I

    iget-object v3, p0, Ltic;->e:Ljava/util/List;

    iget-object v4, p0, Ltic;->f:Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    iget v5, p0, Ltic;->g:I

    invoke-static/range {v0 .. v5}, Lcom/transsion/onlinevideo/utils/WebcastListUtils$d;->c(Lcom/transsion/onlinevideo/utils/WebcastListUtils$d;Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;ILjava/util/List;Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;I)V

    return-void
.end method
