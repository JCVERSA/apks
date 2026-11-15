.class public final synthetic Lcom/transsion/baselib/db/member/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/transsion/baselib/db/member/d;->a:Z

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/baselib/db/member/d;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lcom/transsion/baselib/db/member/d;->c:I

    .line 9
    .line 10
    iput p4, p0, Lcom/transsion/baselib/db/member/d;->d:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/transsion/baselib/db/member/d;->a:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/baselib/db/member/d;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lcom/transsion/baselib/db/member/d;->c:I

    .line 6
    .line 7
    iget v3, p0, Lcom/transsion/baselib/db/member/d;->d:I

    .line 8
    .line 9
    check-cast p1, Ly3/b;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsion/baselib/db/member/g;->l(ZLjava/lang/String;IILy3/b;)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
