.class public Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsz2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->e1(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:I

.field public final synthetic c:Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;Ljava/util/List;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$c;->c:Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;

    iput-object p2, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$c;->a:Ljava/util/List;

    iput p3, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$c;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$c;->f(I)V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$c;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$c;->e(I)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$c;->a:Ljava/util/List;

    iget v1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$c;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;

    invoke-static {p1}, Lav3;->e(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v1, ".gz"

    const-string v3, ""

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->setSubtitleDownState(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->setSubtitleDownState(I)V

    invoke-virtual {v0, p1}, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->setPath(Ljava/lang/String;)V

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$c;->c:Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;

    invoke-static {v1, v0}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->s0(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;)Lcom/transsion/dbdata/beans/SubtitleHistory;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltpb;->v(Lcom/transsion/dbdata/beans/SubtitleHistory;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->setSubtitleDownState(I)V

    :goto_0
    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$c;->c:Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;

    invoke-static {p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->n0(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;)Lcom/transsion/magicvideo/activities/SubtitleManagerActivity;

    move-result-object p1

    iget v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$c;->b:I

    new-instance v1, Lr4a;

    invoke-direct {v1, p0, v0}, Lr4a;-><init>(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$c;I)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic e(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$c;->c:Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;

    invoke-static {p0}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->o0(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;)Lcom/transsion/magicvideo/adapter/SearchSubtitleAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public final synthetic f(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$c;->c:Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;

    invoke-static {v0}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->o0(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;)Lcom/transsion/magicvideo/adapter/SearchSubtitleAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$c;->c:Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;

    invoke-static {p0}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->p0(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;)Lcom/transsion/widgets/BadgeView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$c;->a:Ljava/util/List;

    iget v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$c;->b:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->setSubtitleDownState(I)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$c;->c:Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;

    invoke-static {p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->n0(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;)Lcom/transsion/magicvideo/activities/SubtitleManagerActivity;

    move-result-object p1

    iget v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$c;->b:I

    new-instance v1, Lq4a;

    invoke-direct {v1, p0, v0}, Lq4a;-><init>(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$c;I)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
