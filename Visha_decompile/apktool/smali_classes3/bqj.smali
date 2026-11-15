.class public final Lbqj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final b:Z

.field public final c:Z


# direct methods
.method public constructor <init>(Lerj;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget p1, p1, Lerj;->e:I

    const/4 v0, 0x1

    and-int/2addr p1, v0

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lbqj;->b:Z

    invoke-static {p2, v1}, Ly9j;->a(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lbqj;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Lbqj;)I
    .locals 3

    invoke-static {}, Lf4i;->i()Lf4i;

    move-result-object v0

    iget-boolean v1, p0, Lbqj;->c:Z

    iget-boolean v2, p1, Lbqj;->c:Z

    invoke-virtual {v0, v1, v2}, Lf4i;->d(ZZ)Lf4i;

    move-result-object v0

    iget-boolean p0, p0, Lbqj;->b:Z

    iget-boolean p1, p1, Lbqj;->b:Z

    invoke-virtual {v0, p0, p1}, Lf4i;->d(ZZ)Lf4i;

    move-result-object p0

    invoke-virtual {p0}, Lf4i;->a()I

    move-result p0

    return p0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lbqj;

    invoke-virtual {p0, p1}, Lbqj;->a(Lbqj;)I

    move-result p0

    return p0
.end method
