.class public final Laqj;
.super Loqj;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>(ILn5f;ILhqj;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Loqj;-><init>(ILn5f;I)V

    iget-boolean p1, p4, Lhqj;->Q:Z

    invoke-static {p5, p1}, Ly9j;->a(IZ)Z

    move-result p1

    iput p1, p0, Laqj;->f:I

    iget-object p1, p0, Loqj;->e:Lerj;

    invoke-virtual {p1}, Lerj;->a()I

    move-result p1

    iput p1, p0, Laqj;->g:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Laqj;->f:I

    return p0
.end method

.method public final bridge synthetic b(Loqj;)Z
    .locals 0

    check-cast p1, Laqj;

    const/4 p0, 0x0

    return p0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Laqj;

    invoke-virtual {p0, p1}, Laqj;->d(Laqj;)I

    move-result p0

    return p0
.end method

.method public final d(Laqj;)I
    .locals 0

    iget p0, p0, Laqj;->g:I

    iget p1, p1, Laqj;->g:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method
