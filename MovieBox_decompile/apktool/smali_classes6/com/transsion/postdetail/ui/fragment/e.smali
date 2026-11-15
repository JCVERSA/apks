.class public final synthetic Lcom/transsion/postdetail/ui/fragment/e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/transsion/postdetail/bean/CommentBody;

.field public final synthetic b:Lcom/transsion/postdetail/ui/fragment/CommentFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/postdetail/bean/CommentBody;Lcom/transsion/postdetail/ui/fragment/CommentFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/e;->a:Lcom/transsion/postdetail/bean/CommentBody;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/postdetail/ui/fragment/e;->b:Lcom/transsion/postdetail/ui/fragment/CommentFragment;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/e;->a:Lcom/transsion/postdetail/bean/CommentBody;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/e;->b:Lcom/transsion/postdetail/ui/fragment/CommentFragment;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    .line 7
    check-cast p2, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, v1, p1, p2}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->i0(Lcom/transsion/postdetail/bean/CommentBody;Lcom/transsion/postdetail/ui/fragment/CommentFragment;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
