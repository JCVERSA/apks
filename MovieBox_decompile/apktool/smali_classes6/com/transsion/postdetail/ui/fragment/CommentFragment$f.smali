.class public final Lcom/transsion/postdetail/ui/fragment/CommentFragment$f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/postdetail/comment/CommentDeleteDialogFragment$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/fragment/CommentFragment;->c1(Lcom/transsion/moviedetailapi/bean/CommentBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/ui/fragment/CommentFragment;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment$f;->a:Lcom/transsion/postdetail/ui/fragment/CommentFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment$f;->a:Lcom/transsion/postdetail/ui/fragment/CommentFragment;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->E0(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment$f;->a:Lcom/transsion/postdetail/ui/fragment/CommentFragment;

    .line 7
    .line 8
    const-string v1, "delete_comment"

    .line 9
    .line 10
    invoke-static {v0, v1, p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->A0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
