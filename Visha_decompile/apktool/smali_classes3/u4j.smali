.class public final Lu4j;
.super Ly4j;
.source "SourceFile"


# instance fields
.field public final b:[B

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public synthetic constructor <init>([BIIZLq4j;)V
    .locals 0

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Ly4j;-><init>(Lx4j;)V

    const p2, 0x7fffffff

    iput p2, p0, Lu4j;->e:I

    iput-object p1, p0, Lu4j;->b:[B

    const/4 p1, 0x0

    iput p1, p0, Lu4j;->c:I

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 3

    iget p1, p0, Lu4j;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lu4j;->e:I

    iget v1, p0, Lu4j;->c:I

    iget v2, p0, Lu4j;->d:I

    add-int/2addr v1, v2

    iput v1, p0, Lu4j;->c:I

    if-lez v1, :cond_0

    iput v1, p0, Lu4j;->d:I

    iput v0, p0, Lu4j;->c:I

    goto :goto_0

    :cond_0
    iput v0, p0, Lu4j;->d:I

    :goto_0
    return p1
.end method
