.class public final Ljci;
.super Ljai;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lhci;


# direct methods
.method public synthetic constructor <init>(ILhci;Lici;)V
    .locals 0

    invoke-direct {p0}, Ljai;-><init>()V

    iput p1, p0, Ljci;->a:I

    iput-object p2, p0, Ljci;->b:Lhci;

    return-void
.end method

.method public static c()Lgci;
    .locals 2

    new-instance v0, Lgci;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgci;-><init>(Lici;)V

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object p0, p0, Ljci;->b:Lhci;

    sget-object v0, Lhci;->d:Lhci;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Ljci;->a:I

    return p0
.end method

.method public final d()Lhci;
    .locals 0

    iget-object p0, p0, Ljci;->b:Lhci;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljci;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljci;

    iget v0, p1, Ljci;->a:I

    iget v2, p0, Ljci;->a:I

    if-ne v0, v2, :cond_1

    iget-object p1, p1, Ljci;->b:Lhci;

    iget-object p0, p0, Ljci;->b:Lhci;

    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Ljci;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Ljci;->b:Lhci;

    const-class v1, Ljci;

    filled-new-array {v1, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Ljci;->b:Lhci;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AesGcmSiv Parameters (variant: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ljci;->a:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "-byte key)"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
