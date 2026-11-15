.class public Lcom/transsion/tools/covert/fragments/ConvertedFragment$b;
.super Lif7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/covert/fragments/ConvertedFragment;->z2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/tools/covert/fragments/ConvertedFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/covert/fragments/ConvertedFragment;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/covert/fragments/ConvertedFragment$b;->b:Lcom/transsion/tools/covert/fragments/ConvertedFragment;

    invoke-direct {p0, p2, p3}, Lif7;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public OnNoDoubleItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConvertedFragment$b;->b:Lcom/transsion/tools/covert/fragments/ConvertedFragment;

    invoke-static {v0}, Lcom/transsion/tools/covert/fragments/ConvertedFragment;->n2(Lcom/transsion/tools/covert/fragments/ConvertedFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConvertedFragment$b;->b:Lcom/transsion/tools/covert/fragments/ConvertedFragment;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, p3, v1}, Lcom/transsion/tools/covert/fragments/ConvertedFragment;->o2(Lcom/transsion/tools/covert/fragments/ConvertedFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/ConvertedFragment$b;->b:Lcom/transsion/tools/covert/fragments/ConvertedFragment;

    invoke-static {p0, p1, p2}, Lcom/transsion/tools/covert/fragments/ConvertedFragment;->r2(Lcom/transsion/tools/covert/fragments/ConvertedFragment;Lcom/transsion/dbdata/beans/media/AudioItem;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/transsion/tools/covert/fragments/ConvertedFragment$b;->b:Lcom/transsion/tools/covert/fragments/ConvertedFragment;

    invoke-static {p2}, Lcom/transsion/tools/covert/fragments/ConvertedFragment;->s2(Lcom/transsion/tools/covert/fragments/ConvertedFragment;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lif7;->mFirstClickTime:J

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p1, p3}, Lcom/transsion/dbdata/beans/media/AudioItem;->setSelectedPos(I)V

    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/ConvertedFragment$b;->b:Lcom/transsion/tools/covert/fragments/ConvertedFragment;

    invoke-static {p0, p1}, Lcom/transsion/tools/covert/fragments/ConvertedFragment;->m2(Lcom/transsion/tools/covert/fragments/ConvertedFragment;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    :goto_0
    return-void
.end method
