.class public final Lyk2$a;
.super Lcw2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyk2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/yandex/div/core/DivPreloader$DownloadCallback;

.field public final b:Loj3;

.field public final c:Lcom/yandex/div/core/DivPreloader$c;

.field public final d:Z

.field public final e:Ljava/util/ArrayList;

.field public final synthetic f:Lyk2;


# direct methods
.method public constructor <init>(Lyk2;Lcom/yandex/div/core/DivPreloader$DownloadCallback;Loj3;Lcom/yandex/div/core/DivPreloader$c;Z)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preloadFilter"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lyk2$a;->f:Lyk2;

    invoke-direct {p0}, Lcw2;-><init>()V

    iput-object p2, p0, Lyk2$a;->a:Lcom/yandex/div/core/DivPreloader$DownloadCallback;

    iput-object p3, p0, Lyk2$a;->b:Loj3;

    iput-object p4, p0, Lyk2$a;->c:Lcom/yandex/div/core/DivPreloader$c;

    iput-boolean p5, p0, Lyk2$a;->d:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lyk2$a;->e:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public A(Lcom/yandex/div2/Div$j;Loj3;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lyk2$a;->t(Lcom/yandex/div2/Div;Loj3;)V

    iget-boolean v0, p0, Lyk2$a;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/yandex/div2/Div$j;->c()Lcom/yandex/div2/DivPager;

    move-result-object p1

    invoke-static {p1, p2}, Lbh2;->e(Lcom/yandex/div2/DivPager;Loj3;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lzl2;

    invoke-virtual {p2}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v0

    invoke-virtual {p2}, Lzl2;->d()Loj3;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcw2;->s(Lcom/yandex/div2/Div;Loj3;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public B(Lcom/yandex/div2/Div$n;Loj3;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lyk2$a;->t(Lcom/yandex/div2/Div;Loj3;)V

    iget-boolean v0, p0, Lyk2$a;->d:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/yandex/div2/Div$n;->c()Lcom/yandex/div2/DivState;

    move-result-object p1

    iget-object p1, p1, Lcom/yandex/div2/DivState;->y:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivState$State;

    iget-object v0, v0, Lcom/yandex/div2/DivState$State;->c:Lcom/yandex/div2/Div;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p2}, Lcw2;->s(Lcom/yandex/div2/Div;Loj3;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public C(Lcom/yandex/div2/Div$p;Loj3;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lyk2$a;->t(Lcom/yandex/div2/Div;Loj3;)V

    iget-boolean v0, p0, Lyk2$a;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/yandex/div2/Div$p;->c()Lcom/yandex/div2/DivTabs;

    move-result-object p1

    iget-object p1, p1, Lcom/yandex/div2/DivTabs;->q:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivTabs$Item;

    iget-object v0, v0, Lcom/yandex/div2/DivTabs$Item;->a:Lcom/yandex/div2/Div;

    invoke-virtual {p0, v0, p2}, Lcw2;->s(Lcom/yandex/div2/Div;Loj3;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public D(Lcom/yandex/div2/Div$q;Loj3;)V
    .locals 4

    const-string v0, "data"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lyk2$a;->t(Lcom/yandex/div2/Div;Loj3;)V

    invoke-virtual {p1}, Lcom/yandex/div2/Div$q;->c()Lcom/yandex/div2/DivText;

    move-result-object p1

    iget-object p1, p1, Lcom/yandex/div2/DivText;->F:Ljava/util/List;

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Iterable;

    iget-object v0, p0, Lyk2$a;->f:Lyk2;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivText$Image;

    iget-object v1, v1, Lcom/yandex/div2/DivText$Image;->i:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "it.url.evaluate(resolver).toString()"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lyk2$a;->a:Lcom/yandex/div/core/DivPreloader$DownloadCallback;

    iget-object v3, p0, Lyk2$a;->e:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3}, Lyk2;->a(Lyk2;Ljava/lang/String;Lcom/yandex/div/core/DivPreloader$DownloadCallback;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final E(Lcom/yandex/div2/Div;Loj3;)V
    .locals 4

    invoke-virtual {p1}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object p1

    invoke-interface {p1}, Log2;->getBackground()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Iterable;

    iget-object v0, p0, Lyk2$a;->f:Lyk2;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivBackground;

    instance-of v2, v1, Lcom/yandex/div2/DivBackground$b;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lyk2$a;->c:Lcom/yandex/div/core/DivPreloader$c;

    invoke-interface {v2, v1, p2}, Lcom/yandex/div/core/DivPreloader$c;->a(Lcom/yandex/div2/DivBackground;Loj3;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast v1, Lcom/yandex/div2/DivBackground$b;

    invoke-virtual {v1}, Lcom/yandex/div2/DivBackground$b;->c()Lcom/yandex/div2/DivImageBackground;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/DivImageBackground;->e:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "background.value.imageUr\u2026uate(resolver).toString()"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lyk2$a;->a:Lcom/yandex/div/core/DivPreloader$DownloadCallback;

    iget-object v3, p0, Lyk2$a;->e:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3}, Lyk2;->a(Lyk2;Ljava/lang/String;Lcom/yandex/div/core/DivPreloader$DownloadCallback;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic a(Lcom/yandex/div2/Div;Loj3;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lyk2$a;->t(Lcom/yandex/div2/Div;Loj3;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public bridge synthetic b(Lcom/yandex/div2/Div$b;Loj3;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lyk2$a;->v(Lcom/yandex/div2/Div$b;Loj3;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public bridge synthetic d(Lcom/yandex/div2/Div$d;Loj3;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lyk2$a;->w(Lcom/yandex/div2/Div$d;Loj3;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public bridge synthetic e(Lcom/yandex/div2/Div$e;Loj3;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lyk2$a;->x(Lcom/yandex/div2/Div$e;Loj3;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public bridge synthetic f(Lcom/yandex/div2/Div$f;Loj3;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lyk2$a;->y(Lcom/yandex/div2/Div$f;Loj3;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public bridge synthetic g(Lcom/yandex/div2/Div$g;Loj3;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lyk2$a;->z(Lcom/yandex/div2/Div$g;Loj3;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public bridge synthetic j(Lcom/yandex/div2/Div$j;Loj3;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lyk2$a;->A(Lcom/yandex/div2/Div$j;Loj3;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public bridge synthetic n(Lcom/yandex/div2/Div$n;Loj3;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lyk2$a;->B(Lcom/yandex/div2/Div$n;Loj3;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public bridge synthetic p(Lcom/yandex/div2/Div$p;Loj3;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lyk2$a;->C(Lcom/yandex/div2/Div$p;Loj3;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public bridge synthetic q(Lcom/yandex/div2/Div$q;Loj3;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lyk2$a;->D(Lcom/yandex/div2/Div$q;Loj3;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public t(Lcom/yandex/div2/Div;Loj3;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lyk2$a;->E(Lcom/yandex/div2/Div;Loj3;)V

    return-void
.end method

.method public final u(Lcom/yandex/div2/Div;)Ljava/util/List;
    .locals 1

    const-string v0, "div"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lyk2$a;->b:Loj3;

    invoke-virtual {p0, p1, v0}, Lcw2;->s(Lcom/yandex/div2/Div;Loj3;)Ljava/lang/Object;

    iget-object p0, p0, Lyk2$a;->e:Ljava/util/ArrayList;

    return-object p0
.end method

.method public v(Lcom/yandex/div2/Div$b;Loj3;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lyk2$a;->t(Lcom/yandex/div2/Div;Loj3;)V

    iget-boolean v0, p0, Lyk2$a;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/yandex/div2/Div$b;->c()Lcom/yandex/div2/DivContainer;

    move-result-object p1

    invoke-static {p1, p2}, Lbh2;->c(Lcom/yandex/div2/DivContainer;Loj3;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lzl2;

    invoke-virtual {p2}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v0

    invoke-virtual {p2}, Lzl2;->d()Loj3;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcw2;->s(Lcom/yandex/div2/Div;Loj3;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public w(Lcom/yandex/div2/Div$d;Loj3;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lyk2$a;->t(Lcom/yandex/div2/Div;Loj3;)V

    iget-boolean v0, p0, Lyk2$a;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/yandex/div2/Div$d;->c()Lcom/yandex/div2/DivGallery;

    move-result-object p1

    invoke-static {p1, p2}, Lbh2;->d(Lcom/yandex/div2/DivGallery;Loj3;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lzl2;

    invoke-virtual {p2}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v0

    invoke-virtual {p2}, Lzl2;->d()Loj3;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcw2;->s(Lcom/yandex/div2/Div;Loj3;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public x(Lcom/yandex/div2/Div$e;Loj3;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lyk2$a;->t(Lcom/yandex/div2/Div;Loj3;)V

    iget-object v0, p0, Lyk2$a;->c:Lcom/yandex/div/core/DivPreloader$c;

    invoke-interface {v0, p1, p2}, Lcom/yandex/div/core/DivPreloader$c;->b(Lcom/yandex/div2/Div;Loj3;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyk2$a;->f:Lyk2;

    invoke-virtual {p1}, Lcom/yandex/div2/Div$e;->c()Lcom/yandex/div2/DivGifImage;

    move-result-object p1

    iget-object p1, p1, Lcom/yandex/div2/DivGifImage;->u:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "data.value.gifUrl.evaluate(resolver).toString()"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lyk2$a;->a:Lcom/yandex/div/core/DivPreloader$DownloadCallback;

    iget-object p0, p0, Lyk2$a;->e:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2, p0}, Lyk2;->b(Lyk2;Ljava/lang/String;Lcom/yandex/div/core/DivPreloader$DownloadCallback;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public y(Lcom/yandex/div2/Div$f;Loj3;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lyk2$a;->t(Lcom/yandex/div2/Div;Loj3;)V

    iget-boolean v0, p0, Lyk2$a;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/yandex/div2/Div$f;->c()Lcom/yandex/div2/DivGrid;

    move-result-object p1

    invoke-static {p1}, Lbh2;->n(Lcom/yandex/div2/DivGrid;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/Div;

    invoke-virtual {p0, v0, p2}, Lcw2;->s(Lcom/yandex/div2/Div;Loj3;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public z(Lcom/yandex/div2/Div$g;Loj3;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lyk2$a;->t(Lcom/yandex/div2/Div;Loj3;)V

    iget-object v0, p0, Lyk2$a;->c:Lcom/yandex/div/core/DivPreloader$c;

    invoke-interface {v0, p1, p2}, Lcom/yandex/div/core/DivPreloader$c;->b(Lcom/yandex/div2/Div;Loj3;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyk2$a;->f:Lyk2;

    invoke-virtual {p1}, Lcom/yandex/div2/Div$g;->c()Lcom/yandex/div2/DivImage;

    move-result-object p1

    iget-object p1, p1, Lcom/yandex/div2/DivImage;->B:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "data.value.imageUrl.evaluate(resolver).toString()"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lyk2$a;->a:Lcom/yandex/div/core/DivPreloader$DownloadCallback;

    iget-object p0, p0, Lyk2$a;->e:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2, p0}, Lyk2;->a(Lyk2;Ljava/lang/String;Lcom/yandex/div/core/DivPreloader$DownloadCallback;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
