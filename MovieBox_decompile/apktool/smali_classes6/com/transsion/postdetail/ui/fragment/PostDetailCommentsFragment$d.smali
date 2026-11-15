.class public final Lcom/transsion/postdetail/ui/fragment/PostDetailCommentsFragment$d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/postdetail/ui/fragment/CommentFragment$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/fragment/PostDetailCommentsFragment;->R0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/ui/fragment/PostDetailCommentsFragment;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/ui/fragment/PostDetailCommentsFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailCommentsFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/PostDetailCommentsFragment;

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
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailCommentsFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/PostDetailCommentsFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/postdetail/ui/fragment/PostDetailCommentsFragment;->A0(Lcom/transsion/postdetail/ui/fragment/PostDetailCommentsFragment;)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getStat()Lcom/transsion/moviedetailapi/bean/Stat;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Stat;->getCommentCount()Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    cmp-long v0, v0, p1

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailCommentsFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/PostDetailCommentsFragment;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/transsion/postdetail/ui/fragment/PostDetailCommentsFragment;->A0(Lcom/transsion/postdetail/ui/fragment/PostDetailCommentsFragment;)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getStat()Lcom/transsion/moviedetailapi/bean/Stat;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Lcom/transsion/moviedetailapi/bean/Stat;->setCommentCount(Ljava/lang/Long;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    const-wide/16 v0, 0x0

    .line 53
    .line 54
    cmp-long p1, p1, v0

    .line 55
    .line 56
    if-nez p1, :cond_3

    .line 57
    .line 58
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailCommentsFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/PostDetailCommentsFragment;

    .line 59
    .line 60
    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/PostDetailCommentsFragment;->C0(Lcom/transsion/postdetail/ui/fragment/PostDetailCommentsFragment;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailCommentsFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/PostDetailCommentsFragment;

    .line 64
    .line 65
    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/PostDetailCommentsFragment;->D0(Lcom/transsion/postdetail/ui/fragment/PostDetailCommentsFragment;)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailCommentsFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/PostDetailCommentsFragment;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/transsion/postdetail/ui/fragment/PostDetailCommentsFragment;->loadDefaultData()V

    .line 72
    .line 73
    .line 74
    :goto_1
    return-void
.end method
