.class public Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;->w(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo$SerialListBean;Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo$SerialListBean;

.field public final synthetic c:Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;

.field public final synthetic d:Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo$SerialListBean;Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter$b;->d:Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;

    iput-object p2, p0, Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter$b;->b:Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo$SerialListBean;

    iput-object p3, p0, Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter$b;->c:Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    new-instance p1, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    invoke-direct {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withType(I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object p1

    new-instance v8, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    iget-object v0, p0, Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter$b;->b:Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo$SerialListBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo$SerialListBean;->getVideoId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v1, v0

    iget-object v0, p0, Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter$b;->b:Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo$SerialListBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo$SerialListBean;->getSourceId()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter$b;->b:Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo$SerialListBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo$SerialListBean;->getSerialId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    iget-object v0, p0, Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter$b;->c:Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;->getTitle()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;-><init>(JLjava/lang/String;JLjava/lang/String;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter$b;->b:Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo$SerialListBean;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo$SerialListBean;->getVideoId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->isShortVideo(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setShortVideo(Z)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withParam(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object p1

    const-string v0, "vd_ott_search_show"

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withMarkParam(Ljava/lang/String;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->build()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter$b;->d:Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;

    invoke-static {p0}, Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;->j(Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/playercommon/router/RouterUtils;->route(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;Landroid/content/Context;)V

    return-void
.end method
