.class public final Lgv0;
.super Lcv0;
.source "SourceFile"


# instance fields
.field public final b:I

.field public final c:I

.field public d:Z

.field public e:I


# direct methods
.method public constructor <init>(CCI)V
    .locals 2

    invoke-direct {p0}, Lcv0;-><init>()V

    iput p3, p0, Lgv0;->b:I

    iput p2, p0, Lgv0;->c:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p3, :cond_0

    invoke-static {p1, p2}, Ly45;->l(II)I

    move-result p3

    if-gtz p3, :cond_1

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    invoke-static {p1, p2}, Ly45;->l(II)I

    move-result p3

    if-ltz p3, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    iput-boolean v0, p0, Lgv0;->d:Z

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move p1, p2

    :goto_2
    iput p1, p0, Lgv0;->e:I

    return-void
.end method


# virtual methods
.method public b()C
    .locals 2

    iget v0, p0, Lgv0;->e:I

    iget v1, p0, Lgv0;->c:I

    if-ne v0, v1, :cond_1

    iget-boolean v1, p0, Lgv0;->d:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lgv0;->d:Z

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_1
    iget v1, p0, Lgv0;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Lgv0;->e:I

    :goto_0
    int-to-char p0, v0

    return p0
.end method

.method public hasNext()Z
    .locals 0

    iget-boolean p0, p0, Lgv0;->d:Z

    return p0
.end method
