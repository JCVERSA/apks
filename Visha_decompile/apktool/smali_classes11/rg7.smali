.class public final synthetic Lrg7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lcom/transsion/onlinevideo/adapter/OnlineSearchSerialAdapter;

.field public final synthetic e:Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;

.field public final synthetic f:Lcom/chad/library/adapter/base/BaseViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;Ljava/util/List;Lcom/transsion/onlinevideo/adapter/OnlineSearchSerialAdapter;Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;Lcom/chad/library/adapter/base/BaseViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrg7;->b:Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;

    iput-object p2, p0, Lrg7;->c:Ljava/util/List;

    iput-object p3, p0, Lrg7;->d:Lcom/transsion/onlinevideo/adapter/OnlineSearchSerialAdapter;

    iput-object p4, p0, Lrg7;->e:Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;

    iput-object p5, p0, Lrg7;->f:Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method


# virtual methods
.method public final onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 8

    iget-object v0, p0, Lrg7;->b:Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;

    iget-object v1, p0, Lrg7;->c:Ljava/util/List;

    iget-object v2, p0, Lrg7;->d:Lcom/transsion/onlinevideo/adapter/OnlineSearchSerialAdapter;

    iget-object v3, p0, Lrg7;->e:Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;

    iget-object v4, p0, Lrg7;->f:Lcom/chad/library/adapter/base/BaseViewHolder;

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;->h(Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;Ljava/util/List;Lcom/transsion/onlinevideo/adapter/OnlineSearchSerialAdapter;Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
