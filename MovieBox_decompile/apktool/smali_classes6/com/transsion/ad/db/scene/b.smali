.class public final synthetic Lcom/transsion/ad/db/scene/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/ad/db/scene/g;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ad/db/scene/g;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/ad/db/scene/b;->a:Lcom/transsion/ad/db/scene/g;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/ad/db/scene/b;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/ad/db/scene/b;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-wide p4, p0, Lcom/transsion/ad/db/scene/b;->d:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/db/scene/b;->a:Lcom/transsion/ad/db/scene/g;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/ad/db/scene/b;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/ad/db/scene/b;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-wide v3, p0, Lcom/transsion/ad/db/scene/b;->d:J

    .line 8
    .line 9
    move-object v5, p1

    .line 10
    check-cast v5, Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    invoke-static/range {v0 .. v5}, Lcom/transsion/ad/db/scene/g;->i(Lcom/transsion/ad/db/scene/g;Ljava/lang/String;Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method
