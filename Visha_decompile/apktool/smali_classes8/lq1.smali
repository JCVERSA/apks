.class public abstract Llq1;
.super Ldj;
.source "SourceFile"


# instance fields
.field public c:Lnq1;


# direct methods
.method public constructor <init>(ZLnq1;)V
    .locals 0

    invoke-direct {p0, p1}, Ldj;-><init>(Z)V

    iput-object p2, p0, Llq1;->c:Lnq1;

    return-void
.end method


# virtual methods
.method public b()Lnq1;
    .locals 0

    iget-object p0, p0, Llq1;->c:Lnq1;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Llq1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Llq1;

    iget-object p0, p0, Llq1;->c:Lnq1;

    if-nez p0, :cond_2

    invoke-virtual {p1}, Llq1;->b()Lnq1;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p1}, Llq1;->b()Lnq1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnq1;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Ldj;->a()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object p0, p0, Llq1;->c:Lnq1;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lnq1;->hashCode()I

    move-result p0

    xor-int/2addr v0, p0

    :cond_0
    return v0
.end method
