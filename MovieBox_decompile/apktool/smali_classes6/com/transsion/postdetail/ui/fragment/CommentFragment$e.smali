.class public final Lcom/transsion/postdetail/ui/fragment/CommentFragment$e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/postdetail/util/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/fragment/CommentFragment;->W0()V
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
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment$e;->a:Lcom/transsion/postdetail/ui/fragment/CommentFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment$e;->a:Lcom/transsion/postdetail/ui/fragment/CommentFragment;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->q0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)Lcom/transsion/postdetail/comment/g;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment$e;->a:Lcom/transsion/postdetail/ui/fragment/CommentFragment;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-static {v0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->y0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/appcompat/app/w;->dismiss()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 0

    .line 1
    return-void
.end method
