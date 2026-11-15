.class public Lv94;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrc8;


# instance fields
.field public final a:[I


# direct methods
.method public constructor <init>([I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lci;->h([I)[I

    move-result-object p1

    iput-object p1, p0, Lv94;->a:[I

    return-void
.end method


# virtual methods
.method public a()[I
    .locals 0

    iget-object p0, p0, Lv94;->a:[I

    invoke-static {p0}, Lci;->h([I)[I

    move-result-object p0

    return-object p0
.end method

.method public b()I
    .locals 1

    iget-object p0, p0, Lv94;->a:[I

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget p0, p0, v0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lv94;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lv94;

    iget-object p0, p0, Lv94;->a:[I

    iget-object p1, p1, Lv94;->a:[I

    invoke-static {p0, p1}, Lci;->d([I[I)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lv94;->a:[I

    invoke-static {p0}, Lci;->y([I)I

    move-result p0

    return p0
.end method
