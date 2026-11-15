.class public final synthetic Lcom/transsion/postdetail/ui/fragment/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/postdetail/ui/fragment/CommentFragment;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/postdetail/ui/fragment/CommentFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/d;->a:Lcom/transsion/postdetail/ui/fragment/CommentFragment;

    .line 5
    .line 6
    iput p2, p0, Lcom/transsion/postdetail/ui/fragment/d;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/d;->a:Lcom/transsion/postdetail/ui/fragment/CommentFragment;

    .line 2
    .line 3
    iget v1, p0, Lcom/transsion/postdetail/ui/fragment/d;->b:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->b0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
