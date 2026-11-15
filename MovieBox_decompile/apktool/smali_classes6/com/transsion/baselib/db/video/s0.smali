.class public final synthetic Lcom/transsion/baselib/db/video/s0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/baselib/db/video/z0;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/baselib/db/video/z0;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/baselib/db/video/s0;->a:Lcom/transsion/baselib/db/video/z0;

    .line 5
    .line 6
    iput p2, p0, Lcom/transsion/baselib/db/video/s0;->b:I

    .line 7
    .line 8
    iput p3, p0, Lcom/transsion/baselib/db/video/s0;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/s0;->a:Lcom/transsion/baselib/db/video/z0;

    .line 2
    .line 3
    iget v1, p0, Lcom/transsion/baselib/db/video/s0;->b:I

    .line 4
    .line 5
    iget v2, p0, Lcom/transsion/baselib/db/video/s0;->c:I

    .line 6
    .line 7
    check-cast p1, Ly3/b;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, p1}, Lcom/transsion/baselib/db/video/z0;->s(Lcom/transsion/baselib/db/video/z0;IILy3/b;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
