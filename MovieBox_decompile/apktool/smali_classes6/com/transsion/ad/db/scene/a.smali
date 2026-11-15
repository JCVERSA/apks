.class public final synthetic Lcom/transsion/ad/db/scene/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/ad/db/scene/g;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:J

.field public final synthetic e:J

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ad/db/scene/g;Ljava/lang/String;Ljava/lang/String;JJI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/ad/db/scene/a;->a:Lcom/transsion/ad/db/scene/g;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/ad/db/scene/a;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/ad/db/scene/a;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-wide p4, p0, Lcom/transsion/ad/db/scene/a;->d:J

    .line 11
    .line 12
    iput-wide p6, p0, Lcom/transsion/ad/db/scene/a;->e:J

    .line 13
    .line 14
    iput p8, p0, Lcom/transsion/ad/db/scene/a;->f:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/db/scene/a;->a:Lcom/transsion/ad/db/scene/g;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/ad/db/scene/a;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/ad/db/scene/a;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-wide v3, p0, Lcom/transsion/ad/db/scene/a;->d:J

    .line 8
    .line 9
    iget-wide v5, p0, Lcom/transsion/ad/db/scene/a;->e:J

    .line 10
    .line 11
    iget v7, p0, Lcom/transsion/ad/db/scene/a;->f:I

    .line 12
    .line 13
    move-object v8, p1

    .line 14
    check-cast v8, Lkotlin/coroutines/Continuation;

    .line 15
    .line 16
    invoke-static/range {v0 .. v8}, Lcom/transsion/ad/db/scene/g;->j(Lcom/transsion/ad/db/scene/g;Ljava/lang/String;Ljava/lang/String;JJILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method
