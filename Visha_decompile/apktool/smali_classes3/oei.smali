.class public final Loei;
.super Ljai;
.source "SourceFile"


# instance fields
.field public final a:Lnei;


# direct methods
.method public constructor <init>(Lnei;)V
    .locals 0

    invoke-direct {p0}, Ljai;-><init>()V

    iput-object p1, p0, Loei;->a:Lnei;

    return-void
.end method

.method public static c(Lnei;)Loei;
    .locals 1

    new-instance v0, Loei;

    invoke-direct {v0, p0}, Loei;-><init>(Lnei;)V

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object p0, p0, Loei;->a:Lnei;

    sget-object v0, Lnei;->d:Lnei;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final b()Lnei;
    .locals 0

    iget-object p0, p0, Loei;->a:Lnei;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Loei;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Loei;

    iget-object p1, p1, Loei;->a:Lnei;

    iget-object p0, p0, Loei;->a:Lnei;

    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 1

    const-class v0, Loei;

    iget-object p0, p0, Loei;->a:Lnei;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Loei;->a:Lnei;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XChaCha20Poly1305 Parameters (variant: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
