.class public final Li02$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljq0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li02;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Ljq0;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljq0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li02$b;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Li02$b;->c:Ljq0;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    iget-object p0, p0, Li02$b;->c:Ljq0;

    invoke-interface {p0}, Ljq0;->cancel()V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Li02$b;->clone()Ljq0;

    move-result-object p0

    return-object p0
.end method

.method public clone()Ljq0;
    .locals 2

    .line 2
    new-instance v0, Li02$b;

    iget-object v1, p0, Li02$b;->b:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Li02$b;->c:Ljq0;

    invoke-interface {p0}, Ljq0;->clone()Ljq0;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Li02$b;-><init>(Ljava/util/concurrent/Executor;Ljq0;)V

    return-object v0
.end method

.method public enqueue(Ltq0;)V
    .locals 2

    const-string v0, "callback == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Li02$b;->c:Ljq0;

    new-instance v1, Li02$b$a;

    invoke-direct {v1, p0, p1}, Li02$b$a;-><init>(Li02$b;Ltq0;)V

    invoke-interface {v0, v1}, Ljq0;->enqueue(Ltq0;)V

    return-void
.end method

.method public execute()Lgu8;
    .locals 0

    iget-object p0, p0, Li02$b;->c:Ljq0;

    invoke-interface {p0}, Ljq0;->execute()Lgu8;

    move-result-object p0

    return-object p0
.end method

.method public isCanceled()Z
    .locals 0

    iget-object p0, p0, Li02$b;->c:Ljq0;

    invoke-interface {p0}, Ljq0;->isCanceled()Z

    move-result p0

    return p0
.end method

.method public isExecuted()Z
    .locals 0

    iget-object p0, p0, Li02$b;->c:Ljq0;

    invoke-interface {p0}, Ljq0;->isExecuted()Z

    move-result p0

    return p0
.end method

.method public request()Lokhttp3/Request;
    .locals 0

    iget-object p0, p0, Li02$b;->c:Ljq0;

    invoke-interface {p0}, Ljq0;->request()Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method
