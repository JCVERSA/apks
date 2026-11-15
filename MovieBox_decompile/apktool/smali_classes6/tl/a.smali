.class public final Ltl/a;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:J

.field private final b:Lcom/transsion/lib_web/download_render/data/PageData;


# direct methods
.method public constructor <init>(JLcom/transsion/lib_web/download_render/data/PageData;)V
    .locals 1

    .line 1
    const-string v0, "remotePageData"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-wide p1, p0, Ltl/a;->a:J

    .line 10
    .line 11
    iput-object p3, p0, Ltl/a;->b:Lcom/transsion/lib_web/download_render/data/PageData;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a()Lcom/transsion/lib_web/download_render/data/PageData;
    .locals 1

    .line 1
    iget-object v0, p0, Ltl/a;->b:Lcom/transsion/lib_web/download_render/data/PageData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Ltl/a;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final c()V
    .locals 5

    .line 1
    new-instance v0, Ltl/e;

    .line 2
    .line 3
    iget-wide v1, p0, Ltl/a;->a:J

    .line 4
    .line 5
    iget-object v3, p0, Ltl/a;->b:Lcom/transsion/lib_web/download_render/data/PageData;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, v3}, Ltl/e;-><init>(JLcom/transsion/lib_web/download_render/data/PageData;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ltl/c;

    .line 11
    .line 12
    iget-wide v2, p0, Ltl/a;->a:J

    .line 13
    .line 14
    iget-object v4, p0, Ltl/a;->b:Lcom/transsion/lib_web/download_render/data/PageData;

    .line 15
    .line 16
    invoke-direct {v1, v2, v3, v4}, Ltl/c;-><init>(JLcom/transsion/lib_web/download_render/data/PageData;)V

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    new-array v2, v2, [Ltl/d;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    aput-object v0, v2, v3

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    aput-object v1, v2, v0

    .line 27
    .line 28
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljava/lang/Iterable;

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Ltl/d;

    .line 49
    .line 50
    invoke-interface {v1}, Ltl/d;->start()V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method
