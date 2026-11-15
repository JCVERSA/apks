.class public Lwf5;
.super Lj1;
.source "SourceFile"


# instance fields
.field public b:Ls0;


# direct methods
.method public constructor <init>(Ls0;)V
    .locals 0

    invoke-direct {p0}, Lj1;-><init>()V

    iput-object p1, p0, Lwf5;->b:Ls0;

    return-void
.end method

.method public static m(Ljava/lang/Object;)Lwf5;
    .locals 1

    instance-of v0, p0, Lwf5;

    if-eqz v0, :cond_0

    check-cast p0, Lwf5;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lwf5;

    invoke-static {p0}, Ls0;->z(Ljava/lang/Object;)Ls0;

    move-result-object p0

    invoke-direct {v0, p0}, Lwf5;-><init>(Ls0;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public j()Lp1;
    .locals 0

    iget-object p0, p0, Lwf5;->b:Ls0;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object p0, p0, Lwf5;->b:Ls0;

    invoke-virtual {p0}, Ls0;->x()[B

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const-string v2, "KeyUsage: 0x"

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v2

    goto :goto_0
.end method
