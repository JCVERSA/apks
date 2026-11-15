.class final Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlinx/coroutines/flow/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/functions/Function1;

.field final synthetic b:Lcom/transsion/commercialization/gameres/ps/PSGameResLoader;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/transsion/commercialization/gameres/ps/PSGameResLoader;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5;->a:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5;->b:Lcom/transsion/commercialization/gameres/ps/PSGameResLoader;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5;->c:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5;->e:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v9, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5;->a:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5;->b:Lcom/transsion/commercialization/gameres/ps/PSGameResLoader;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5;->c:Landroid/content/Context;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5;->d:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v7, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5;->e:Ljava/lang/String;

    .line 16
    .line 17
    const/4 v8, 0x0

    .line 18
    move-object v1, v9

    .line 19
    move-object v2, p1

    .line 20
    invoke-direct/range {v1 .. v8}, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lcom/transsion/commercialization/gameres/ps/PSGameResLoader;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v9, p2}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    if-ne p1, p2, :cond_0

    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 35
    .line 36
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5;->a(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
