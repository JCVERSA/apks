.class public final synthetic Lcom/transsion/postdetail/comment/e0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/postdetail/comment/g0;

.field public final synthetic b:Lp6/a;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/postdetail/comment/g0;Lp6/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/postdetail/comment/e0;->a:Lcom/transsion/postdetail/comment/g0;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/postdetail/comment/e0;->b:Lp6/a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/comment/e0;->a:Lcom/transsion/postdetail/comment/g0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/postdetail/comment/e0;->b:Lp6/a;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/transsion/postdetail/comment/HotCommentHolder;->g(Lcom/transsion/postdetail/comment/g0;Lp6/a;Landroid/view/View;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
