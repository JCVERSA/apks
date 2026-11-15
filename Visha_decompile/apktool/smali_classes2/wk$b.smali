.class public Lwk$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwk$b$a;
    }
.end annotation


# instance fields
.field public a:[Lwk$b$a;

.field public final synthetic b:Lwk;


# direct methods
.method public constructor <init>(Lwk;I)V
    .locals 2

    iput-object p1, p0, Lwk$b;->b:Lwk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    mul-int/lit8 p2, p2, 0x3

    new-array p1, p2, [Lwk$b$a;

    iput-object p1, p0, Lwk$b;->a:[Lwk$b$a;

    const/4 p1, 0x1

    :goto_0
    if-ge p1, p2, :cond_0

    iget-object v0, p0, Lwk$b;->a:[Lwk$b$a;

    new-instance v1, Lwk$b$a;

    invoke-direct {v1, p0}, Lwk$b$a;-><init>(Lwk$b;)V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(III)V
    .locals 1

    iget-object v0, p0, Lwk$b;->a:[Lwk$b$a;

    aget-object v0, v0, p3

    invoke-virtual {v0, p1, p2}, Lwk$b$a;->a(II)V

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lwk$b;->a:[Lwk$b$a;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Lwk$b$a;->c()I

    move-result v0

    shl-int/lit8 p3, p3, 0x1

    invoke-virtual {p0, p1, v0, p3}, Lwk$b;->a(III)V

    add-int/lit8 v0, v0, 0x1

    or-int/lit8 p1, p3, 0x1

    invoke-virtual {p0, v0, p2, p1}, Lwk$b;->a(III)V

    return-void
.end method

.method public b(I)V
    .locals 3

    iget-object p0, p0, Lwk$b;->a:[Lwk$b$a;

    aget-object v0, p0, p1

    iget v1, v0, Lwk$b$a;->c:I

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lwk$b$a;->b()D

    move-result-wide p0

    iput-wide p0, v0, Lwk$b$a;->d:D

    goto :goto_0

    :cond_0
    iget v1, v0, Lwk$b$a;->a:I

    iget v2, v0, Lwk$b$a;->b:I

    if-ne v1, v2, :cond_1

    const-wide/16 p0, 0x0

    iput-wide p0, v0, Lwk$b$a;->d:D

    goto :goto_0

    :cond_1
    shl-int/lit8 p1, p1, 0x1

    aget-object v1, p0, p1

    iget-wide v1, v1, Lwk$b$a;->d:D

    or-int/lit8 p1, p1, 0x1

    aget-object p0, p0, p1

    iget-wide p0, p0, Lwk$b$a;->d:D

    add-double/2addr v1, p0

    iput-wide v1, v0, Lwk$b$a;->d:D

    :goto_0
    return-void
.end method

.method public c(IIII)V
    .locals 2

    iget-object v0, p0, Lwk$b;->a:[Lwk$b$a;

    aget-object v0, v0, p3

    iget v1, v0, Lwk$b$a;->a:I

    if-lt v1, p1, :cond_0

    iget v1, v0, Lwk$b$a;->b:I

    if-gt v1, p2, :cond_0

    iget p1, v0, Lwk$b$a;->c:I

    add-int/2addr p1, p4

    iput p1, v0, Lwk$b$a;->c:I

    invoke-virtual {p0, p3}, Lwk$b;->b(I)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lwk$b$a;->c()I

    move-result v0

    if-gt p1, v0, :cond_1

    shl-int/lit8 v1, p3, 0x1

    invoke-virtual {p0, p1, p2, v1, p4}, Lwk$b;->c(IIII)V

    :cond_1
    if-le p2, v0, :cond_2

    shl-int/lit8 v0, p3, 0x1

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, p2, v0, p4}, Lwk$b;->c(IIII)V

    :cond_2
    invoke-virtual {p0, p3}, Lwk$b;->b(I)V

    return-void
.end method
