.class public Lnh5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lmh5;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Lc8a;

.field public final j:I


# direct methods
.method public constructor <init>(Lmh5;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnh5;->a:Lmh5;

    invoke-virtual {p1}, Lmh5;->e()I

    move-result v0

    iput v0, p0, Lnh5;->b:I

    invoke-virtual {p1}, Lmh5;->a()I

    move-result v0

    iput v0, p0, Lnh5;->c:I

    invoke-virtual {p1}, Lmh5;->i()I

    move-result v0

    iput v0, p0, Lnh5;->d:I

    invoke-virtual {p1}, Lmh5;->g()I

    move-result v0

    iput v0, p0, Lnh5;->e:I

    invoke-virtual {p1}, Lmh5;->b()I

    move-result v0

    iput v0, p0, Lnh5;->f:I

    invoke-virtual {p1}, Lmh5;->h()I

    move-result v0

    iput v0, p0, Lnh5;->g:I

    invoke-virtual {p1}, Lmh5;->f()I

    move-result v0

    iput v0, p0, Lnh5;->h:I

    invoke-virtual {p1}, Lmh5;->j()Lc8a;

    move-result-object p1

    iput-object p1, p0, Lnh5;->i:Lc8a;

    iget p1, p1, Lc8a;->a:I

    add-int/lit16 v0, p1, 0x1d8

    div-int/2addr v0, p1

    iput v0, p0, Lnh5;->j:I

    return-void
.end method
