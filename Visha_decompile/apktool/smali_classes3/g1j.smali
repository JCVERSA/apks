.class public final Lg1j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lerj;

.field public final c:Lerj;

.field public final d:I

.field public final e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lerj;Lerj;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-eqz p4, :cond_1

    const/4 v1, 0x0

    if-nez p5, :cond_0

    move p5, v1

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    invoke-static {v0}, Ln7g;->d(Z)V

    invoke-static {p1}, Ln7g;->c(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lg1j;->a:Ljava/lang/String;

    iput-object p2, p0, Lg1j;->b:Lerj;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lg1j;->c:Lerj;

    iput p4, p0, Lg1j;->d:I

    iput p5, p0, Lg1j;->e:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lg1j;

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lg1j;

    iget v2, p0, Lg1j;->d:I

    iget v3, p1, Lg1j;->d:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lg1j;->e:I

    iget v3, p1, Lg1j;->e:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lg1j;->a:Ljava/lang/String;

    iget-object v3, p1, Lg1j;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lg1j;->b:Lerj;

    iget-object v3, p1, Lg1j;->b:Lerj;

    invoke-virtual {v2, v3}, Lerj;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lg1j;->c:Lerj;

    iget-object p1, p1, Lg1j;->c:Lerj;

    invoke-virtual {p0, p1}, Lerj;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lg1j;->d:I

    add-int/lit16 v0, v0, 0x20f

    iget-object v1, p0, Lg1j;->a:Ljava/lang/String;

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lg1j;->e:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lg1j;->b:Lerj;

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {v1}, Lerj;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object p0, p0, Lg1j;->c:Lerj;

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lerj;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method
