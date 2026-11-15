.class public Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder;->a(Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

.field public final synthetic c:Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder$b;->c:Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder;

    iput-object p2, p0, Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder$b;->b:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 8

    const/16 p1, 0x9

    if-ge p3, p1, :cond_0

    iget-object p1, p0, Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder$b;->b:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getHistoryBeanList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;

    new-instance p2, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    invoke-direct {p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withType(I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object p2

    new-instance v7, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    iget-wide v1, p1, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoId:J

    iget-object v3, p1, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceId:Ljava/lang/String;

    iget-wide v4, p1, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->serialId:J

    const/4 v6, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;-><init>(JLjava/lang/String;JZ)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p1, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->isShortVideo(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v7, v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setShortVideo(Z)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withParam(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object p2

    const-string v0, "vd_ott_history_video_cl"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withMarkParam(Ljava/lang/String;I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->build()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object p2

    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder$b;->c:Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/transsion/playercommon/router/RouterUtils;->route(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;Landroid/content/Context;)V

    iget-wide v1, p1, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoId:J

    iget-wide v4, p1, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->serialId:J

    iget p0, p1, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->payType:I

    invoke-static {p0}, Lhb0;->checkPayType(I)Ljava/lang/String;

    move-result-object v6

    const-string v3, "vd_ott_history_video_cl"

    move v0, p3

    invoke-static/range {v0 .. v6}, Luz5;->b(IJLjava/lang/String;JLjava/lang/String;)V

    :cond_0
    return-void
.end method
