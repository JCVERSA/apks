.class public final Ldg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/CharSequence;


# instance fields
.field public final b:[C

.field public c:I


# direct methods
.method public constructor <init>([C)V
    .locals 1

    const-string v0, "buffer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldg;->b:[C

    array-length p1, p1

    iput p1, p0, Ldg;->c:I

    return-void
.end method

.method public static final synthetic a(Ldg;)[C
    .locals 0

    iget-object p0, p0, Ldg;->b:[C

    return-object p0
.end method


# virtual methods
.method public b(I)C
    .locals 0

    iget-object p0, p0, Ldg;->b:[C

    aget-char p0, p0, p1

    return p0
.end method

.method public c()I
    .locals 0

    iget p0, p0, Ldg;->c:I

    return p0
.end method

.method public final bridge charAt(I)C
    .locals 0

    invoke-virtual {p0, p1}, Ldg;->b(I)C

    move-result p0

    return p0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Ldg;->c:I

    return-void
.end method

.method public final e(II)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldg;->b:[C

    invoke-virtual {p0}, Ldg;->length()I

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v0, p1, p0}, Lg1a;->y([CII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final f(I)V
    .locals 1

    iget-object v0, p0, Ldg;->b:[C

    array-length v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1}, Ldg;->d(I)V

    return-void
.end method

.method public final bridge length()I
    .locals 0

    invoke-virtual {p0}, Ldg;->c()I

    move-result p0

    return p0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Ldg;->b:[C

    invoke-virtual {p0}, Ldg;->length()I

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v0, p1, p0}, Lg1a;->y([CII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Ldg;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ldg;->e(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
