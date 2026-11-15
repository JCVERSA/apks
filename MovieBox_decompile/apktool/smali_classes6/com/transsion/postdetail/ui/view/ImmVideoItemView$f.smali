.class public final Lcom/transsion/postdetail/ui/view/ImmVideoItemView$f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/postdetail/ui/fragment/CommentFragment$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->showCommentDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$f;->a:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$f;->a:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getData$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getStat()Lcom/transsion/moviedetailapi/bean/Stat;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/transsion/moviedetailapi/bean/Stat;->setCommentCount(Ljava/lang/Long;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$f;->a:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 23
    .line 24
    invoke-static {v0, p1, p2}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$updateCommentCount(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;J)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
