.class public final synthetic Lcom/transsion/baselib/db/member/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/baselib/db/member/g;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/baselib/db/member/g;Ljava/lang/String;IIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/baselib/db/member/b;->a:Lcom/transsion/baselib/db/member/g;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/baselib/db/member/b;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lcom/transsion/baselib/db/member/b;->c:I

    .line 9
    .line 10
    iput p4, p0, Lcom/transsion/baselib/db/member/b;->d:I

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/transsion/baselib/db/member/b;->e:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/member/b;->a:Lcom/transsion/baselib/db/member/g;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/baselib/db/member/b;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lcom/transsion/baselib/db/member/b;->c:I

    .line 6
    .line 7
    iget v3, p0, Lcom/transsion/baselib/db/member/b;->d:I

    .line 8
    .line 9
    iget-boolean v4, p0, Lcom/transsion/baselib/db/member/b;->e:Z

    .line 10
    .line 11
    move-object v5, p1

    .line 12
    check-cast v5, Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    invoke-static/range {v0 .. v5}, Lcom/transsion/baselib/db/member/g;->k(Lcom/transsion/baselib/db/member/g;Ljava/lang/String;IIZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method
