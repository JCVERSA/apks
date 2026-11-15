.class public Lcpc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Lge3;

.field public final c:Lfpc;

.field public final d:Le8a;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lge3;Lfpc;Le8a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcpc;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcpc;->b:Lge3;

    iput-object p3, p0, Lcpc;->c:Lfpc;

    iput-object p4, p0, Lcpc;->d:Le8a;

    return-void
.end method

.method public static synthetic a(Lcpc;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcpc;->d()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcpc;)V
    .locals 0

    invoke-virtual {p0}, Lcpc;->e()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    iget-object v0, p0, Lcpc;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lapc;

    invoke-direct {v1, p0}, Lapc;-><init>(Lcpc;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic d()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcpc;->b:Lge3;

    invoke-interface {v0}, Lge3;->x()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La9b;

    iget-object v2, p0, Lcpc;->c:Lfpc;

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lfpc;->a(La9b;I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final synthetic e()V
    .locals 2

    iget-object v0, p0, Lcpc;->d:Le8a;

    new-instance v1, Lbpc;

    invoke-direct {v1, p0}, Lbpc;-><init>(Lcpc;)V

    invoke-interface {v0, v1}, Le8a;->a(Le8a$a;)Ljava/lang/Object;

    return-void
.end method
