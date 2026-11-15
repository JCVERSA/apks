.class public final Lcom/yandex/div/core/d$a;
.super Lcom/yandex/div/internal/core/DivTreeVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final c:Lcom/yandex/div/core/DivPreloader$DownloadCallback;

.field public final d:Lcom/yandex/div/core/DivPreloader$a;

.field public final e:Lcom/yandex/div/core/DivPreloader$c;

.field public final f:Lcom/yandex/div/core/DivPreloader$g;

.field public final synthetic g:Lcom/yandex/div/core/d;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/d;Lcom/yandex/div/core/DivPreloader$DownloadCallback;Lcom/yandex/div/core/DivPreloader$a;Lcom/yandex/div/core/DivPreloader$c;)V
    .locals 1

    const-string v0, "downloadCallback"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preloadFilter"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/div/core/d$a;->g:Lcom/yandex/div/core/d;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p1}, Lcom/yandex/div/internal/core/DivTreeVisitor;-><init>(Le74;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/yandex/div/core/d$a;->c:Lcom/yandex/div/core/DivPreloader$DownloadCallback;

    iput-object p3, p0, Lcom/yandex/div/core/d$a;->d:Lcom/yandex/div/core/DivPreloader$a;

    iput-object p4, p0, Lcom/yandex/div/core/d$a;->e:Lcom/yandex/div/core/DivPreloader$c;

    new-instance p1, Lcom/yandex/div/core/DivPreloader$g;

    invoke-direct {p1}, Lcom/yandex/div/core/DivPreloader$g;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/d$a;->f:Lcom/yandex/div/core/DivPreloader$g;

    return-void
.end method


# virtual methods
.method public A(Lcom/yandex/div2/Div$c;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/yandex/div/internal/core/DivTreeVisitor;->h(Lcom/yandex/div2/Div$c;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/yandex/div/core/d$a;->g:Lcom/yandex/div/core/d;

    invoke-static {p2}, Lcom/yandex/div/core/d;->a(Lcom/yandex/div/core/d;)Lcom/yandex/div/core/a;

    move-result-object p2

    invoke-virtual {p1}, Lcom/yandex/div2/Div$c;->c()Lcom/yandex/div2/DivCustom;

    move-result-object p1

    iget-object p3, p0, Lcom/yandex/div/core/d$a;->d:Lcom/yandex/div/core/DivPreloader$a;

    invoke-interface {p2, p1, p3}, Lcom/yandex/div/core/a;->preload(Lcom/yandex/div2/DivCustom;Lcom/yandex/div/core/DivPreloader$a;)Lcom/yandex/div/core/DivPreloader$d;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/div/core/d$a;->f:Lcom/yandex/div/core/DivPreloader$g;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/DivPreloader$g;->b(Lcom/yandex/div/core/DivPreloader$d;)V

    return-void
.end method

.method public B(Lcom/yandex/div2/Div$r;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)V
    .locals 2

    const-string v0, "data"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/d$a;->y(Lcom/yandex/div2/Div;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)V

    iget-object p3, p0, Lcom/yandex/div/core/d$a;->e:Lcom/yandex/div/core/DivPreloader$c;

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v0

    invoke-interface {p3, p1, v0}, Lcom/yandex/div/core/DivPreloader$c;->b(Lcom/yandex/div2/Div;Loj3;)Z

    move-result p3

    if-eqz p3, :cond_1

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/yandex/div2/Div$r;->c()Lcom/yandex/div2/DivVideo;

    move-result-object p1

    iget-object p1, p1, Lcom/yandex/div2/DivVideo;->Q:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivVideoSource;

    iget-object v0, v0, Lcom/yandex/div2/DivVideoSource;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/yandex/div/core/d$a;->g:Lcom/yandex/div/core/d;

    invoke-static {p1}, Lcom/yandex/div/core/d;->d(Lcom/yandex/div/core/d;)Lmo2;

    move-result-object p1

    invoke-interface {p1, p3}, Lmo2;->a(Ljava/util/List;)Lcom/yandex/div/core/DivPreloader$d;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/div/core/d$a;->f:Lcom/yandex/div/core/DivPreloader$g;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/DivPreloader$g;->b(Lcom/yandex/div/core/DivPreloader$d;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic c(Lcom/yandex/div2/Div;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/d$a;->y(Lcom/yandex/div2/Div;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public bridge synthetic h(Lcom/yandex/div2/Div$c;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/d$a;->A(Lcom/yandex/div2/Div$c;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public bridge synthetic w(Lcom/yandex/div2/Div$r;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/d$a;->B(Lcom/yandex/div2/Div$r;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public y(Lcom/yandex/div2/Div;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)V
    .locals 3

    const-string v0, "data"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/yandex/div/core/d$a;->g:Lcom/yandex/div/core/d;

    invoke-static {p3}, Lcom/yandex/div/core/d;->c(Lcom/yandex/div/core/d;)Lyk2;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/div/core/d$a;->e:Lcom/yandex/div/core/DivPreloader$c;

    iget-object v2, p0, Lcom/yandex/div/core/d$a;->c:Lcom/yandex/div/core/DivPreloader$DownloadCallback;

    invoke-virtual {p3, p1, v0, v1, v2}, Lyk2;->c(Lcom/yandex/div2/Div;Loj3;Lcom/yandex/div/core/DivPreloader$c;Lcom/yandex/div/core/DivPreloader$DownloadCallback;)Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_0

    check-cast p3, Ljava/lang/Iterable;

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljn5;

    iget-object v1, p0, Lcom/yandex/div/core/d$a;->f:Lcom/yandex/div/core/DivPreloader$g;

    invoke-virtual {v1, v0}, Lcom/yandex/div/core/DivPreloader$g;->a(Ljn5;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/div/core/d$a;->g:Lcom/yandex/div/core/d;

    invoke-static {p0}, Lcom/yandex/div/core/d;->b(Lcom/yandex/div/core/d;)Lvi2;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object p1

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lvi2;->d(Log2;Loj3;)V

    return-void
.end method

.method public final z(Lcom/yandex/div2/Div;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)Lcom/yandex/div/core/DivPreloader$f;
    .locals 1

    const-string v0, "div"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/internal/core/DivTreeVisitor;->x(Lcom/yandex/div2/Div;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/yandex/div/core/d$a;->f:Lcom/yandex/div/core/DivPreloader$g;

    return-object p0
.end method
