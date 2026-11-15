.class public final Lhmj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsnj;
.implements Lkjj;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Lrnj;

.field public c:Ljjj;

.field public final synthetic d:Ljmj;


# direct methods
.method public constructor <init>(Ljmj;Ljava/lang/Object;)V
    .locals 2

    iput-object p1, p0, Lhmj;->d:Ljmj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lulj;->p(Lbnj;)Lrnj;

    move-result-object v1

    iput-object v1, p0, Lhmj;->b:Lrnj;

    invoke-virtual {p1, v0}, Lulj;->n(Lbnj;)Ljjj;

    move-result-object p1

    iput-object p1, p0, Lhmj;->c:Ljjj;

    iput-object p2, p0, Lhmj;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final G(ILbnj;Lsmj;Lxmj;I)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lhmj;->c(ILbnj;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lhmj;->b:Lrnj;

    invoke-virtual {p0, p4, p2}, Lhmj;->a(Lxmj;Lbnj;)Lxmj;

    invoke-virtual {p1, p3, p4, p5}, Lrnj;->h(Lsmj;Lxmj;I)V

    :cond_0
    return-void
.end method

.method public final L(ILbnj;Lsmj;Lxmj;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lhmj;->c(ILbnj;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lhmj;->b:Lrnj;

    invoke-virtual {p0, p4, p2}, Lhmj;->a(Lxmj;Lbnj;)Lxmj;

    invoke-virtual {p1, p3, p4}, Lrnj;->f(Lsmj;Lxmj;)V

    :cond_0
    return-void
.end method

.method public final O(ILbnj;Lxmj;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lhmj;->c(ILbnj;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lhmj;->b:Lrnj;

    invoke-virtual {p0, p3, p2}, Lhmj;->a(Lxmj;Lbnj;)Lxmj;

    invoke-virtual {p1, p3}, Lrnj;->d(Lxmj;)V

    :cond_0
    return-void
.end method

.method public final Q(ILbnj;Lsmj;Lxmj;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lhmj;->c(ILbnj;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lhmj;->b:Lrnj;

    invoke-virtual {p0, p4, p2}, Lhmj;->a(Lxmj;Lbnj;)Lxmj;

    invoke-virtual {p1, p3, p4}, Lrnj;->e(Lsmj;Lxmj;)V

    :cond_0
    return-void
.end method

.method public final a(Lxmj;Lbnj;)Lxmj;
    .locals 3

    iget-object v0, p0, Lhmj;->d:Ljmj;

    iget-object p0, p0, Lhmj;->a:Ljava/lang/Object;

    iget-wide v1, p1, Lxmj;->c:J

    invoke-virtual {v0, p0, v1, v2, p2}, Ljmj;->A(Ljava/lang/Object;JLbnj;)J

    iget-wide v1, p1, Lxmj;->d:J

    invoke-virtual {v0, p0, v1, v2, p2}, Ljmj;->A(Ljava/lang/Object;JLbnj;)J

    return-object p1
.end method

.method public final c(ILbnj;)Z
    .locals 3

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    iget-object v0, p0, Lhmj;->d:Ljmj;

    iget-object v1, p0, Lhmj;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p2}, Ljmj;->B(Ljava/lang/Object;Lbnj;)Lbnj;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    return p1

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lhmj;->d:Ljmj;

    iget-object v1, p0, Lhmj;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Ljmj;->z(Ljava/lang/Object;I)I

    iget-object v1, p0, Lhmj;->b:Lrnj;

    iget v2, v1, Lrnj;->a:I

    iget-object v1, v1, Lrnj;->b:Lbnj;

    invoke-static {v1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p1, p2}, Lulj;->q(ILbnj;)Lrnj;

    move-result-object v1

    iput-object v1, p0, Lhmj;->b:Lrnj;

    :cond_2
    iget-object v1, p0, Lhmj;->c:Ljjj;

    iget v2, v1, Ljjj;->a:I

    iget-object v1, v1, Ljjj;->b:Lbnj;

    invoke-static {v1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0, p1, p2}, Lulj;->o(ILbnj;)Ljjj;

    move-result-object p1

    iput-object p1, p0, Lhmj;->c:Ljjj;

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final t(ILbnj;Lsmj;Lxmj;Ljava/io/IOException;Z)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lhmj;->c(ILbnj;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lhmj;->b:Lrnj;

    invoke-virtual {p0, p4, p2}, Lhmj;->a(Lxmj;Lbnj;)Lxmj;

    invoke-virtual {p1, p3, p4, p5, p6}, Lrnj;->g(Lsmj;Lxmj;Ljava/io/IOException;Z)V

    :cond_0
    return-void
.end method
