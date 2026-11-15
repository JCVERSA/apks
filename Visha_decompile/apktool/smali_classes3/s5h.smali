.class public final Ls5h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ls5h;


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ls5h;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Ls5h;-><init>(II)V

    sput-object v0, Ls5h;->c:Ls5h;

    new-instance v0, Ls5h;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Ls5h;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    if-ltz p1, :cond_2

    :cond_0
    const/4 v2, 0x1

    if-eq p2, v1, :cond_1

    if-ltz p2, :cond_2

    :cond_1
    move v0, v2

    :cond_2
    invoke-static {v0}, Ln7g;->d(Z)V

    iput p1, p0, Ls5h;->a:I

    iput p2, p0, Ls5h;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Ls5h;->b:I

    return p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Ls5h;->a:I

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Ls5h;

    if-eqz v2, :cond_2

    check-cast p1, Ls5h;

    iget v2, p0, Ls5h;->a:I

    iget v3, p1, Ls5h;->a:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Ls5h;->b:I

    iget p1, p1, Ls5h;->b:I

    if-ne p0, p1, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Ls5h;->a:I

    shl-int/lit8 v1, v0, 0x10

    ushr-int/lit8 v0, v0, 0x10

    iget p0, p0, Ls5h;->b:I

    or-int/2addr v0, v1

    xor-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Ls5h;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ls5h;->b:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
