.class public Lcom/mgtv/data/aphone/core/e/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/data/aphone/core/d/b;


# static fields
.field private static a:Lcom/mgtv/data/aphone/core/e/a;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgtv/data/aphone/core/d/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/e/a;->b:Ljava/util/List;

    return-void
.end method

.method public static a()Lcom/mgtv/data/aphone/core/e/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/mgtv/data/aphone/core/e/a;->a:Lcom/mgtv/data/aphone/core/e/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/mgtv/data/aphone/core/e/a;

    invoke-direct {v0}, Lcom/mgtv/data/aphone/core/e/a;-><init>()V

    sput-object v0, Lcom/mgtv/data/aphone/core/e/a;->a:Lcom/mgtv/data/aphone/core/e/a;

    .line 3
    :cond_0
    sget-object v0, Lcom/mgtv/data/aphone/core/e/a;->a:Lcom/mgtv/data/aphone/core/e/a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 1

    .line 5
    iget-object p0, p0, Lcom/mgtv/data/aphone/core/e/a;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgtv/data/aphone/core/d/b;

    .line 6
    invoke-interface {v0, p1}, Lcom/mgtv/data/aphone/core/d/b;->a(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 7
    iget-object p0, p0, Lcom/mgtv/data/aphone/core/e/a;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgtv/data/aphone/core/d/b;

    .line 8
    invoke-interface {v0, p1, p2}, Lcom/mgtv/data/aphone/core/d/b;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/mgtv/data/aphone/core/d/b;)V
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/mgtv/data/aphone/core/e/a;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/mgtv/data/aphone/core/e/a;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgtv/data/aphone/core/d/b;

    .line 2
    invoke-interface {v0, p1}, Lcom/mgtv/data/aphone/core/d/b;->b(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 3
    iget-object p0, p0, Lcom/mgtv/data/aphone/core/e/a;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgtv/data/aphone/core/d/b;

    .line 4
    invoke-interface {v0, p1, p2}, Lcom/mgtv/data/aphone/core/d/b;->b(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(Landroid/app/Activity;)V
    .locals 1

    iget-object p0, p0, Lcom/mgtv/data/aphone/core/e/a;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgtv/data/aphone/core/d/b;

    invoke-interface {v0, p1}, Lcom/mgtv/data/aphone/core/d/b;->c(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(Landroid/app/Activity;)V
    .locals 1

    iget-object p0, p0, Lcom/mgtv/data/aphone/core/e/a;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgtv/data/aphone/core/d/b;

    invoke-interface {v0, p1}, Lcom/mgtv/data/aphone/core/d/b;->d(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(Landroid/app/Activity;)V
    .locals 1

    iget-object p0, p0, Lcom/mgtv/data/aphone/core/e/a;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgtv/data/aphone/core/d/b;

    invoke-interface {v0, p1}, Lcom/mgtv/data/aphone/core/d/b;->e(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method
