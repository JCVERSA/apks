.class public Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder;->a(Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

.field public final synthetic c:Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder$b;->c:Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder;

    iput-object p2, p0, Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder$b;->b:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 8

    iget-object p1, p0, Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder$b;->b:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getLabelBeanList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/ComplexLabelBean;

    new-instance p2, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-direct {p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/LabelBean;->getTopic_id()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setTopic_id(I)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/LabelBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setTopic_name(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder$b;->b:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getData_type()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setData_type(I)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/LabelBean;->getTag_type()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setSourceType(I)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/LabelBean;->getTag_id()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setChannel(J)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/LabelBean;->getSource_type()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setBottom_position(I)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/ComplexLabelBean;->getAggregation_tag()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setLabelRal(Ljava/util/List;)V

    new-instance v0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withType(I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withParam(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object p2

    const-string v0, "vd_ott_label_cl"

    invoke-virtual {p2, v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withMarkParam(Ljava/lang/String;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->build()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder$b;->c:Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/playercommon/router/RouterUtils;->route(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/LabelBean;->getTopic_id()I

    move-result p2

    int-to-long v0, p2

    iget-object p2, p0, Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder$b;->b:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getChannel_id()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/LabelBean;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder$b;->c:Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder;

    invoke-static {p1}, Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder;->d(Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder;)Ljava/lang/String;

    move-result-object v6

    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder$b;->b:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getName()Ljava/lang/String;

    move-result-object v7

    move v2, p3

    invoke-static/range {v0 .. v7}, Let7;->b(JIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
