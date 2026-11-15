.class public final Lvn/a;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:I

.field private b:Lcom/transsion/postdetail/comment/i0;

.field private c:Landroid/text/Editable;

.field private d:Lcom/transsion/moviedetailapi/bean/CommentBean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x12c

    .line 5
    .line 6
    iput v0, p0, Lvn/a;->a:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Lcom/transsion/postdetail/comment/i0;
    .locals 1

    .line 1
    iget-object v0, p0, Lvn/a;->b:Lcom/transsion/postdetail/comment/i0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Landroid/text/Editable;
    .locals 1

    .line 1
    iget-object v0, p0, Lvn/a;->c:Landroid/text/Editable;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Lvn/a;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public final d()Lcom/transsion/moviedetailapi/bean/CommentBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lvn/a;->d:Lcom/transsion/moviedetailapi/bean/CommentBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lvn/a;->d:Lcom/transsion/moviedetailapi/bean/CommentBean;

    .line 3
    .line 4
    iput-object v0, p0, Lvn/a;->c:Landroid/text/Editable;

    .line 5
    .line 6
    return-void
.end method

.method public final f(Lcom/transsion/postdetail/comment/i0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvn/a;->b:Lcom/transsion/postdetail/comment/i0;

    .line 2
    .line 3
    return-void
.end method

.method public final g(Landroid/text/Editable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvn/a;->c:Landroid/text/Editable;

    .line 2
    .line 3
    return-void
.end method

.method public final h(I)V
    .locals 0

    .line 1
    iput p1, p0, Lvn/a;->a:I

    .line 2
    .line 3
    return-void
.end method

.method public final i(Lcom/transsion/moviedetailapi/bean/CommentBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvn/a;->d:Lcom/transsion/moviedetailapi/bean/CommentBean;

    .line 2
    .line 3
    return-void
.end method
