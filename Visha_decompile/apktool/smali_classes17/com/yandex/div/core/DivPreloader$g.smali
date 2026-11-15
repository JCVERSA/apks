.class public final Lcom/yandex/div/core/DivPreloader$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/div/core/DivPreloader$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/DivPreloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# instance fields
.field public final a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yandex/div/core/DivPreloader$g;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ljn5;)V
    .locals 1

    const-string v0, "reference"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/DivPreloader$g;->a:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/DivPreloader$g;->c(Ljn5;)Lcom/yandex/div/core/DivPreloader$d;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Lcom/yandex/div/core/DivPreloader$d;)V
    .locals 1

    const-string v0, "reference"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/core/DivPreloader$g;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Ljn5;)Lcom/yandex/div/core/DivPreloader$d;
    .locals 0

    new-instance p0, Lcom/yandex/div/core/DivPreloader$g$a;

    invoke-direct {p0, p1}, Lcom/yandex/div/core/DivPreloader$g$a;-><init>(Ljn5;)V

    return-object p0
.end method

.method public cancel()V
    .locals 1

    iget-object p0, p0, Lcom/yandex/div/core/DivPreloader$g;->a:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div/core/DivPreloader$d;

    invoke-interface {v0}, Lcom/yandex/div/core/DivPreloader$d;->cancel()V

    goto :goto_0

    :cond_0
    return-void
.end method
