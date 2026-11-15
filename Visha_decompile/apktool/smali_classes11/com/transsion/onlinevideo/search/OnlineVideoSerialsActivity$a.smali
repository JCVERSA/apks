.class public Lcom/transsion/onlinevideo/search/OnlineVideoSerialsActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/search/OnlineVideoSerialsActivity;->r0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/search/OnlineVideoSerialsActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/search/OnlineVideoSerialsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSerialsActivity$a;->b:Lcom/transsion/onlinevideo/search/OnlineVideoSerialsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 8

    iget-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSerialsActivity$a;->b:Lcom/transsion/onlinevideo/search/OnlineVideoSerialsActivity;

    invoke-static {p1}, Lcom/transsion/onlinevideo/search/OnlineVideoSerialsActivity;->p0(Lcom/transsion/onlinevideo/search/OnlineVideoSerialsActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo$SerialListBean;

    new-instance p2, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    invoke-direct {p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;-><init>()V

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withType(I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object p2

    new-instance p3, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo$SerialListBean;->getVideoId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v1, v0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo$SerialListBean;->getSourceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo$SerialListBean;->getSerialId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo$SerialListBean;->getTitle()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    move-object v0, p3

    invoke-direct/range {v0 .. v7}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;-><init>(JLjava/lang/String;JLjava/lang/String;Z)V

    invoke-virtual {p2, p3}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withParam(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->build()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSerialsActivity$a;->b:Lcom/transsion/onlinevideo/search/OnlineVideoSerialsActivity;

    invoke-static {p1, p0}, Lcom/transsion/playercommon/router/RouterUtils;->route(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;Landroid/content/Context;)V

    return-void
.end method
