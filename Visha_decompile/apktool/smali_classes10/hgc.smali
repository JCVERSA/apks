.class public final Lhgc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lirc;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:Ll1;


# direct methods
.method public constructor <init>(Ll1;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lhgc;->g:Ll1;

    invoke-static {p1}, Lub2;->a(Ll1;)Lsb2;

    move-result-object p1

    invoke-static {p1}, Lnrc;->h(Lsb2;)I

    move-result v0

    iput v0, p0, Lhgc;->b:I

    const/16 v1, 0x10

    iput v1, p0, Lhgc;->c:I

    mul-int/lit8 v2, v0, 0x8

    int-to-double v2, v2

    invoke-static {v1}, Lnrc;->o(I)I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, p0, Lhgc;->e:I

    const/4 v3, 0x1

    rsub-int/lit8 v4, v3, 0x10

    mul-int/2addr v4, v2

    invoke-static {v4}, Lnrc;->o(I)I

    move-result v4

    invoke-static {v1}, Lnrc;->o(I)I

    move-result v5

    div-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/2addr v4, v3

    iput v4, p0, Lhgc;->f:I

    add-int/2addr v2, v4

    iput v2, p0, Lhgc;->d:I

    invoke-interface {p1}, Lsb2;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0, v1, v2}, Lggc;->c(Ljava/lang/String;III)Lggc;

    move-result-object v0

    iput-object v0, p0, Lhgc;->a:Lirc;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot find OID for digest algorithm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lsb2;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "treeDigest == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, Lhgc;->d:I

    return p0
.end method

.method public b()Ll1;
    .locals 0

    iget-object p0, p0, Lhgc;->g:Ll1;

    return-object p0
.end method

.method public c()I
    .locals 0

    iget p0, p0, Lhgc;->b:I

    return p0
.end method

.method public d()I
    .locals 0

    iget p0, p0, Lhgc;->c:I

    return p0
.end method
