.class public final synthetic Lcom/transsion/postdetail/comment/c0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/postdetail/comment/HotCommentHolder;

.field public final synthetic b:Lp6/a;

.field public final synthetic c:Lcom/transsion/postdetail/comment/g0;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/postdetail/comment/HotCommentHolder;Lp6/a;Lcom/transsion/postdetail/comment/g0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/postdetail/comment/c0;->a:Lcom/transsion/postdetail/comment/HotCommentHolder;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/postdetail/comment/c0;->b:Lp6/a;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/postdetail/comment/c0;->c:Lcom/transsion/postdetail/comment/g0;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/comment/c0;->a:Lcom/transsion/postdetail/comment/HotCommentHolder;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/postdetail/comment/c0;->b:Lp6/a;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/postdetail/comment/c0;->c:Lcom/transsion/postdetail/comment/g0;

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1}, Lcom/transsion/postdetail/comment/HotCommentHolder;->j(Lcom/transsion/postdetail/comment/HotCommentHolder;Lp6/a;Lcom/transsion/postdetail/comment/g0;Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
