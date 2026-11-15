.class public final Lpci;
.super Ljai;
.source "SourceFile"


# instance fields
.field public final a:Loci;


# direct methods
.method public constructor <init>(Loci;)V
    .locals 0

    invoke-direct {p0}, Ljai;-><init>()V

    iput-object p1, p0, Lpci;->a:Loci;

    return-void
.end method

.method public static c(Loci;)Lpci;
    .locals 1

    new-instance v0, Lpci;

    invoke-direct {v0, p0}, Lpci;-><init>(Loci;)V

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object p0, p0, Lpci;->a:Loci;

    sget-object v0, Loci;->d:Loci;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final b()Loci;
    .locals 0

    iget-object p0, p0, Lpci;->a:Loci;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lpci;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lpci;

    iget-object p1, p1, Lpci;->a:Loci;

    iget-object p0, p0, Lpci;->a:Loci;

    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 1

    const-class v0, Lpci;

    iget-object p0, p0, Lpci;->a:Loci;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lpci;->a:Loci;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChaCha20Poly1305 Parameters (variant: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
