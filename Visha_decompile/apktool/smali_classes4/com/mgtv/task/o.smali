.class public Lcom/mgtv/task/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/task/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mgtv/task/d<",
        "TResultType;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/mgtv/task/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mgtv/task/d<",
            "TResultType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mgtv/task/d;)V
    .locals 0
    .param p1    # Lcom/mgtv/task/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mgtv/task/d<",
            "TResultType;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mgtv/task/o;->a:Lcom/mgtv/task/d;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;",
            "Ljava/lang/Object;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Lcom/mgtv/task/o;->a:Lcom/mgtv/task/d;

    invoke-interface {p0, p1, p2, p3}, Lcom/mgtv/task/d;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;",
            "Ljava/lang/Object;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Lcom/mgtv/task/o;->a:Lcom/mgtv/task/d;

    invoke-interface {p0, p1, p2, p3}, Lcom/mgtv/task/d;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public c()V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgtv/task/o;->a:Lcom/mgtv/task/d;

    invoke-interface {p0}, Lcom/mgtv/task/d;->c()V

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)V"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/mgtv/task/o;->a:Lcom/mgtv/task/d;

    invoke-interface {p0, p1}, Lcom/mgtv/task/d;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;",
            "Ljava/lang/Object;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    .line 3
    iget-object p0, p0, Lcom/mgtv/task/o;->a:Lcom/mgtv/task/d;

    invoke-interface {p0, p1, p2, p3}, Lcom/mgtv/task/d;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;",
            "Ljava/lang/Object;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/mgtv/task/o;->a:Lcom/mgtv/task/d;

    invoke-interface {p0, p1, p2, p3}, Lcom/mgtv/task/d;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public d()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/task/o;->a:Lcom/mgtv/task/d;

    invoke-interface {p0}, Lcom/mgtv/task/d;->d()Z

    move-result p0

    return p0
.end method
