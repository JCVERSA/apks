.class public final Lho8;
.super Lc3;
.source "SourceFile"


# instance fields
.field public final e:Lkd9;

.field public final f:[C

.field public g:I

.field public final h:Ldg;


# direct methods
.method public constructor <init>(Lkd9;[C)V
    .locals 1

    const-string v0, "reader"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buffer"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lc3;-><init>()V

    .line 4
    iput-object p1, p0, Lho8;->e:Lkd9;

    .line 5
    iput-object p2, p0, Lho8;->f:[C

    const/16 p1, 0x80

    .line 6
    iput p1, p0, Lho8;->g:I

    .line 7
    new-instance p1, Ldg;

    invoke-direct {p1, p2}, Ldg;-><init>([C)V

    iput-object p1, p0, Lho8;->h:Ldg;

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Lho8;->T(I)V

    return-void
.end method

.method public synthetic constructor <init>(Lkd9;[CILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 1
    sget-object p2, Lyu0;->c:Lyu0;

    invoke-virtual {p2}, Lyu0;->d()[C

    move-result-object p2

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lho8;-><init>(Lkd9;[C)V

    return-void
.end method


# virtual methods
.method public bridge synthetic D()Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0}, Lho8;->R()Ldg;

    move-result-object p0

    return-object p0
.end method

.method public H(I)I
    .locals 1

    invoke-virtual {p0}, Lho8;->R()Ldg;

    move-result-object v0

    invoke-virtual {v0}, Ldg;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    return p1

    :cond_0
    iput p1, p0, Lc3;->a:I

    invoke-virtual {p0}, Lho8;->v()V

    iget p1, p0, Lc3;->a:I

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lho8;->R()Ldg;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public K(II)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lho8;->R()Ldg;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ldg;->e(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public M()Z
    .locals 3

    invoke-virtual {p0}, Lc3;->J()I

    move-result v0

    invoke-virtual {p0}, Lho8;->R()Ldg;

    move-result-object v1

    invoke-virtual {v1}, Ldg;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lho8;->R()Ldg;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldg;->charAt(I)C

    move-result v0

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_1

    iget v0, p0, Lc3;->a:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lc3;->a:I

    return v1

    :cond_1
    :goto_0
    return v2
.end method

.method public R()Ldg;
    .locals 0

    iget-object p0, p0, Lho8;->h:Ldg;

    return-object p0
.end method

.method public S(CI)I
    .locals 2

    invoke-virtual {p0}, Lho8;->R()Ldg;

    move-result-object p0

    invoke-virtual {p0}, Ldg;->length()I

    move-result v0

    :goto_0
    if-ge p2, v0, :cond_1

    invoke-virtual {p0, p2}, Ldg;->charAt(I)C

    move-result v1

    if-ne v1, p1, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final T(I)V
    .locals 5

    invoke-virtual {p0}, Lho8;->R()Ldg;

    move-result-object v0

    invoke-static {v0}, Ldg;->a(Ldg;)[C

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget v2, p0, Lc3;->a:I

    add-int v3, v2, p1

    invoke-static {v0, v0, v1, v2, v3}, Lfi;->h([C[CIII)[C

    :cond_0
    invoke-virtual {p0}, Lho8;->R()Ldg;

    move-result-object v2

    invoke-virtual {v2}, Ldg;->length()I

    move-result v2

    :goto_0
    if-eq p1, v2, :cond_2

    iget-object v3, p0, Lho8;->e:Lkd9;

    sub-int v4, v2, p1

    invoke-interface {v3, v0, p1, v4}, Lkd9;->a([CII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lho8;->R()Ldg;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldg;->f(I)V

    iput v4, p0, Lho8;->g:I

    goto :goto_1

    :cond_1
    add-int/2addr p1, v3

    goto :goto_0

    :cond_2
    :goto_1
    iput v1, p0, Lc3;->a:I

    return-void
.end method

.method public final U()V
    .locals 1

    sget-object v0, Lyu0;->c:Lyu0;

    iget-object p0, p0, Lho8;->f:[C

    invoke-virtual {v0, p0}, Lyu0;->c([C)V

    return-void
.end method

.method public e(II)V
    .locals 1

    invoke-virtual {p0}, Lc3;->C()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lho8;->R()Ldg;

    move-result-object p0

    invoke-static {p0}, Ldg;->a(Ldg;)[C

    move-result-object p0

    sub-int/2addr p2, p1

    invoke-virtual {v0, p0, p1, p2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    const-string p0, "this.append(value, start\u2026x, endIndex - startIndex)"

    invoke-static {v0, p0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public f()Z
    .locals 3

    invoke-virtual {p0}, Lho8;->v()V

    iget v0, p0, Lc3;->a:I

    :goto_0
    invoke-virtual {p0, v0}, Lho8;->H(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lho8;->R()Ldg;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldg;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iput v0, p0, Lc3;->a:I

    invoke-virtual {p0, v1}, Lc3;->E(C)Z

    move-result p0

    return p0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iput v0, p0, Lc3;->a:I

    const/4 p0, 0x0

    return p0
.end method

.method public k()Ljava/lang/String;
    .locals 5

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lc3;->o(C)V

    iget v1, p0, Lc3;->a:I

    invoke-virtual {p0, v0, v1}, Lho8;->S(CI)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, v1}, Lho8;->H(I)I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lho8;->R()Ldg;

    move-result-object v1

    iget v2, p0, Lc3;->a:I

    invoke-virtual {p0, v1, v2, v0}, Lc3;->r(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc3;->z(B)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_1
    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p0}, Lho8;->R()Ldg;

    move-result-object v3

    invoke-virtual {v3, v2}, Ldg;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Lho8;->R()Ldg;

    move-result-object v0

    iget v1, p0, Lc3;->a:I

    invoke-virtual {p0, v0, v1, v2}, Lc3;->r(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lc3;->a:I

    invoke-virtual {p0, v1, v0}, Lho8;->K(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public l(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    const-string p0, "keyToMatch"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public m()B
    .locals 4

    invoke-virtual {p0}, Lho8;->v()V

    invoke-virtual {p0}, Lho8;->R()Ldg;

    move-result-object v0

    iget v1, p0, Lc3;->a:I

    :goto_0
    invoke-virtual {p0, v1}, Lho8;->H(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v1}, Ldg;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ld3;->a(C)B

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    iput v2, p0, Lc3;->a:I

    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    iput v1, p0, Lc3;->a:I

    const/16 p0, 0xa

    return p0
.end method

.method public v()V
    .locals 2

    iget v0, p0, Lc3;->a:I

    invoke-virtual {p0}, Lho8;->R()Ldg;

    move-result-object v1

    invoke-virtual {v1}, Ldg;->length()I

    move-result v1

    sub-int/2addr v1, v0

    iget v0, p0, Lho8;->g:I

    if-le v1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lho8;->T(I)V

    return-void
.end method
