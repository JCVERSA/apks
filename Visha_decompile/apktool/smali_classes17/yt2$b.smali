.class public final Lyt2$b;
.super Lb3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyt2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final d:Lcom/yandex/div2/Div;

.field public final e:Loj3;

.field public final f:Lhg;

.field public final synthetic g:Lyt2;


# direct methods
.method public constructor <init>(Lyt2;Lcom/yandex/div2/Div;Loj3;)V
    .locals 1

    const-string v0, "root"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lyt2$b;->g:Lyt2;

    invoke-direct {p0}, Lb3;-><init>()V

    iput-object p2, p0, Lyt2$b;->d:Lcom/yandex/div2/Div;

    iput-object p3, p0, Lyt2$b;->e:Loj3;

    new-instance p1, Lhg;

    invoke-direct {p1}, Lhg;-><init>()V

    invoke-static {p2, p3}, Lbh2;->t(Lcom/yandex/div2/Div;Loj3;)Lzl2;

    move-result-object p2

    invoke-virtual {p0, p2}, Lyt2$b;->g(Lzl2;)Lyt2$d;

    move-result-object p2

    invoke-virtual {p1, p2}, Lhg;->addLast(Ljava/lang/Object;)V

    iput-object p1, p0, Lyt2$b;->f:Lhg;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    invoke-virtual {p0}, Lyt2$b;->f()Lzl2;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lb3;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lb3;->c()V

    :goto_0
    return-void
.end method

.method public final f()Lzl2;
    .locals 3

    iget-object v0, p0, Lyt2$b;->f:Lhg;

    invoke-virtual {v0}, Lhg;->m()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyt2$d;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {v0}, Lyt2$d;->a()Lzl2;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lyt2$b;->f:Lhg;

    invoke-virtual {v0}, Lhg;->removeLast()Ljava/lang/Object;

    invoke-virtual {p0}, Lyt2$b;->f()Lzl2;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lyt2$d;->getItem()Lzl2;

    move-result-object v0

    if-eq v1, v0, :cond_3

    invoke-virtual {v1}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v0

    invoke-static {v0}, Leu2;->j(Lcom/yandex/div2/Div;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lyt2$b;->f:Lhg;

    invoke-virtual {v0}, Lk3;->size()I

    move-result v0

    iget-object v2, p0, Lyt2$b;->g:Lyt2;

    invoke-static {v2}, Lyt2;->b(Lyt2;)I

    move-result v2

    if-lt v0, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lyt2$b;->f:Lhg;

    invoke-virtual {p0, v1}, Lyt2$b;->g(Lzl2;)Lyt2$d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhg;->addLast(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lyt2$b;->f()Lzl2;

    move-result-object v1

    :cond_3
    :goto_0
    return-object v1
.end method

.method public final g(Lzl2;)Lyt2$d;
    .locals 2

    invoke-virtual {p1}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v0

    invoke-static {v0}, Leu2;->i(Lcom/yandex/div2/Div;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lyt2$a;

    iget-object v1, p0, Lyt2$b;->g:Lyt2;

    invoke-static {v1}, Lyt2;->c(Lyt2;)Le74;

    move-result-object v1

    iget-object p0, p0, Lyt2$b;->g:Lyt2;

    invoke-static {p0}, Lyt2;->d(Lyt2;)Le74;

    move-result-object p0

    invoke-direct {v0, p1, v1, p0}, Lyt2$a;-><init>(Lzl2;Le74;Le74;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lyt2$c;

    invoke-direct {v0, p1}, Lyt2$c;-><init>(Lzl2;)V

    :goto_0
    return-object v0
.end method
