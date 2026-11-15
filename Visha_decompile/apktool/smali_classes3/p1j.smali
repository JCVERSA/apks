.class public final Lp1j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:[B

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lp1j;->a:I

    iput v0, p0, Lp1j;->b:I

    iput v0, p0, Lp1j;->c:I

    iput v0, p0, Lp1j;->e:I

    iput v0, p0, Lp1j;->f:I

    return-void
.end method

.method public synthetic constructor <init>(Lh6j;Ld4j;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget p2, p1, Lh6j;->a:I

    iput p2, p0, Lp1j;->a:I

    iget p2, p1, Lh6j;->b:I

    iput p2, p0, Lp1j;->b:I

    iget p2, p1, Lh6j;->c:I

    iput p2, p0, Lp1j;->c:I

    iget-object p2, p1, Lh6j;->d:[B

    iput-object p2, p0, Lp1j;->d:[B

    iget p2, p1, Lh6j;->e:I

    iput p2, p0, Lp1j;->e:I

    iget p1, p1, Lh6j;->f:I

    iput p1, p0, Lp1j;->f:I

    return-void
.end method


# virtual methods
.method public final a(I)Lp1j;
    .locals 0

    iput p1, p0, Lp1j;->f:I

    return-object p0
.end method

.method public final b(I)Lp1j;
    .locals 0

    iput p1, p0, Lp1j;->b:I

    return-object p0
.end method

.method public final c(I)Lp1j;
    .locals 0

    iput p1, p0, Lp1j;->a:I

    return-object p0
.end method

.method public final d(I)Lp1j;
    .locals 0

    iput p1, p0, Lp1j;->c:I

    return-object p0
.end method

.method public final e([B)Lp1j;
    .locals 0

    iput-object p1, p0, Lp1j;->d:[B

    return-object p0
.end method

.method public final f(I)Lp1j;
    .locals 0

    iput p1, p0, Lp1j;->e:I

    return-object p0
.end method

.method public final g()Lh6j;
    .locals 9

    new-instance v8, Lh6j;

    iget v1, p0, Lp1j;->a:I

    iget v2, p0, Lp1j;->b:I

    iget v3, p0, Lp1j;->c:I

    iget-object v4, p0, Lp1j;->d:[B

    iget v5, p0, Lp1j;->e:I

    iget v6, p0, Lp1j;->f:I

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lh6j;-><init>(III[BIILd4j;)V

    return-object v8
.end method
