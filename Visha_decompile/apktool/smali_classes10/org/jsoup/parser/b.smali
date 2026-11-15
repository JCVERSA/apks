.class public final Lorg/jsoup/parser/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final r:[C

.field public static final s:[I


# instance fields
.field public final a:Lnv0;

.field public final b:Lorg/jsoup/parser/ParseErrorList;

.field public c:Lorg/jsoup/parser/TokeniserState;

.field public d:Lorg/jsoup/parser/Token;

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/StringBuilder;

.field public h:Ljava/lang/StringBuilder;

.field public i:Lorg/jsoup/parser/Token$i;

.field public j:Lorg/jsoup/parser/Token$h;

.field public k:Lorg/jsoup/parser/Token$g;

.field public l:Lorg/jsoup/parser/Token$c;

.field public m:Lorg/jsoup/parser/Token$e;

.field public n:Lorg/jsoup/parser/Token$d;

.field public o:Ljava/lang/String;

.field public final p:[I

.field public final q:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x20

    const/4 v1, 0x7

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lorg/jsoup/parser/b;->r:[C

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/jsoup/parser/b;->s:[I

    invoke-static {v1}, Ljava/util/Arrays;->sort([C)V

    return-void

    nop

    :array_0
    .array-data 2
        0x9s
        0xas
        0xds
        0xcs
        0x20s
        0x3cs
        0x26s
    .end array-data

    nop

    :array_1
    .array-data 4
        0x20ac
        0x81
        0x201a
        0x192
        0x201e
        0x2026
        0x2020
        0x2021
        0x2c6
        0x2030
        0x160
        0x2039
        0x152
        0x8d
        0x17d
        0x8f
        0x90
        0x2018
        0x2019
        0x201c
        0x201d
        0x2022
        0x2013
        0x2014
        0x2dc
        0x2122
        0x161
        0x203a
        0x153
        0x9d
        0x17e
        0x178
    .end array-data
.end method

.method public constructor <init>(Lnv0;Lorg/jsoup/parser/ParseErrorList;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    iput-object v0, p0, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/TokeniserState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/parser/b;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/parser/b;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/jsoup/parser/b;->g:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/jsoup/parser/b;->h:Ljava/lang/StringBuilder;

    new-instance v0, Lorg/jsoup/parser/Token$h;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$h;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/b;->j:Lorg/jsoup/parser/Token$h;

    new-instance v0, Lorg/jsoup/parser/Token$g;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$g;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/b;->k:Lorg/jsoup/parser/Token$g;

    new-instance v0, Lorg/jsoup/parser/Token$c;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$c;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/Token$c;

    new-instance v0, Lorg/jsoup/parser/Token$e;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$e;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/b;->m:Lorg/jsoup/parser/Token$e;

    new-instance v0, Lorg/jsoup/parser/Token$d;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$d;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/b;->n:Lorg/jsoup/parser/Token$d;

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/jsoup/parser/b;->p:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/jsoup/parser/b;->q:[I

    iput-object p1, p0, Lorg/jsoup/parser/b;->a:Lnv0;

    iput-object p2, p0, Lorg/jsoup/parser/b;->b:Lorg/jsoup/parser/ParseErrorList;

    return-void
.end method


# virtual methods
.method public a(Lorg/jsoup/parser/TokeniserState;)V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/b;->a:Lnv0;

    invoke-virtual {v0}, Lnv0;->a()V

    iput-object p1, p0, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/TokeniserState;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/jsoup/parser/b;->o:Ljava/lang/String;

    return-object p0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/jsoup/parser/b;->b:Lorg/jsoup/parser/ParseErrorList;

    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->canAddError()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/b;->b:Lorg/jsoup/parser/ParseErrorList;

    new-instance v1, Lsw7;

    iget-object p0, p0, Lorg/jsoup/parser/b;->a:Lnv0;

    invoke-virtual {p0}, Lnv0;->J()I

    move-result p0

    const-string v2, "Invalid character reference: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, p0, v2, p1}, Lsw7;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/Character;Z)[I
    .locals 7

    const/16 v0, 0x80

    iget-object v1, p0, Lorg/jsoup/parser/b;->a:Lnv0;

    invoke-virtual {v1}, Lnv0;->u()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    iget-object v1, p0, Lorg/jsoup/parser/b;->a:Lnv0;

    invoke-virtual {v1}, Lnv0;->t()C

    move-result v1

    if-ne p1, v1, :cond_1

    return-object v2

    :cond_1
    iget-object p1, p0, Lorg/jsoup/parser/b;->a:Lnv0;

    sget-object v1, Lorg/jsoup/parser/b;->r:[C

    invoke-virtual {p1, v1}, Lnv0;->C([C)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v2

    :cond_2
    iget-object p1, p0, Lorg/jsoup/parser/b;->p:[I

    iget-object v1, p0, Lorg/jsoup/parser/b;->a:Lnv0;

    invoke-virtual {v1}, Lnv0;->w()V

    iget-object v1, p0, Lorg/jsoup/parser/b;->a:Lnv0;

    const-string v3, "#"

    invoke-virtual {v1, v3}, Lnv0;->x(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "missing semicolon"

    const-string v4, ";"

    const/4 v5, 0x0

    if-eqz v1, :cond_b

    iget-object p2, p0, Lorg/jsoup/parser/b;->a:Lnv0;

    const-string v1, "X"

    invoke-virtual {p2, v1}, Lnv0;->y(Ljava/lang/String;)Z

    move-result p2

    iget-object v1, p0, Lorg/jsoup/parser/b;->a:Lnv0;

    if-eqz p2, :cond_3

    invoke-virtual {v1}, Lnv0;->i()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lnv0;->h()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_4

    const-string p1, "numeric reference with no numerals"

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/b;->c(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/jsoup/parser/b;->a:Lnv0;

    invoke-virtual {p0}, Lnv0;->L()V

    return-object v2

    :cond_4
    iget-object v2, p0, Lorg/jsoup/parser/b;->a:Lnv0;

    invoke-virtual {v2}, Lnv0;->N()V

    iget-object v2, p0, Lorg/jsoup/parser/b;->a:Lnv0;

    invoke-virtual {v2, v4}, Lnv0;->x(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0, v3}, Lorg/jsoup/parser/b;->c(Ljava/lang/String;)V

    :cond_5
    if-eqz p2, :cond_6

    const/16 p2, 0x10

    goto :goto_1

    :cond_6
    const/16 p2, 0xa

    :goto_1
    const/4 v2, -0x1

    :try_start_0
    invoke-static {v1, p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move p2, v2

    :goto_2
    if-eq p2, v2, :cond_a

    const v1, 0xd800

    if-lt p2, v1, :cond_7

    const v1, 0xdfff

    if-le p2, v1, :cond_a

    :cond_7
    const v1, 0x10ffff

    if-le p2, v1, :cond_8

    goto :goto_3

    :cond_8
    if-lt p2, v0, :cond_9

    sget-object v1, Lorg/jsoup/parser/b;->s:[I

    array-length v2, v1

    add-int/2addr v2, v0

    if-ge p2, v2, :cond_9

    const-string v2, "character is not a valid unicode code point"

    invoke-virtual {p0, v2}, Lorg/jsoup/parser/b;->c(Ljava/lang/String;)V

    sub-int/2addr p2, v0

    aget p2, v1, p2

    :cond_9
    aput p2, p1, v5

    goto :goto_4

    :cond_a
    :goto_3
    const-string p2, "character outside of valid range"

    invoke-virtual {p0, p2}, Lorg/jsoup/parser/b;->c(Ljava/lang/String;)V

    const p0, 0xfffd

    aput p0, p1, v5

    :goto_4
    return-object p1

    :cond_b
    iget-object v0, p0, Lorg/jsoup/parser/b;->a:Lnv0;

    invoke-virtual {v0}, Lnv0;->k()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/parser/b;->a:Lnv0;

    const/16 v6, 0x3b

    invoke-virtual {v1, v6}, Lnv0;->z(C)Z

    move-result v1

    invoke-static {v0}, Lorg/jsoup/nodes/Entities;->h(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_e

    invoke-static {v0}, Lorg/jsoup/nodes/Entities;->i(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    if-eqz v1, :cond_c

    goto :goto_5

    :cond_c
    iget-object p1, p0, Lorg/jsoup/parser/b;->a:Lnv0;

    invoke-virtual {p1}, Lnv0;->L()V

    if-eqz v1, :cond_d

    const-string p1, "invalid named reference"

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/b;->c(Ljava/lang/String;)V

    :cond_d
    return-object v2

    :cond_e
    :goto_5
    if-eqz p2, :cond_10

    iget-object p2, p0, Lorg/jsoup/parser/b;->a:Lnv0;

    invoke-virtual {p2}, Lnv0;->G()Z

    move-result p2

    if-nez p2, :cond_f

    iget-object p2, p0, Lorg/jsoup/parser/b;->a:Lnv0;

    invoke-virtual {p2}, Lnv0;->E()Z

    move-result p2

    if-nez p2, :cond_f

    iget-object p2, p0, Lorg/jsoup/parser/b;->a:Lnv0;

    const/4 v1, 0x3

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-virtual {p2, v1}, Lnv0;->B([C)Z

    move-result p2

    if-eqz p2, :cond_10

    :cond_f
    iget-object p0, p0, Lorg/jsoup/parser/b;->a:Lnv0;

    invoke-virtual {p0}, Lnv0;->L()V

    return-object v2

    :cond_10
    iget-object p2, p0, Lorg/jsoup/parser/b;->a:Lnv0;

    invoke-virtual {p2}, Lnv0;->N()V

    iget-object p2, p0, Lorg/jsoup/parser/b;->a:Lnv0;

    invoke-virtual {p2, v4}, Lnv0;->x(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_11

    invoke-virtual {p0, v3}, Lorg/jsoup/parser/b;->c(Ljava/lang/String;)V

    :cond_11
    iget-object p2, p0, Lorg/jsoup/parser/b;->q:[I

    invoke-static {v0, p2}, Lorg/jsoup/nodes/Entities;->d(Ljava/lang/String;[I)I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_12

    iget-object p0, p0, Lorg/jsoup/parser/b;->q:[I

    aget p0, p0, v5

    aput p0, p1, v5

    return-object p1

    :cond_12
    const/4 p1, 0x2

    if-ne p2, p1, :cond_13

    iget-object p0, p0, Lorg/jsoup/parser/b;->q:[I

    return-object p0

    :cond_13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected characters returned for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ldnb;->a(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/jsoup/parser/b;->q:[I

    return-object p0

    nop

    :array_0
    .array-data 2
        0x3ds
        0x2ds
        0x5fs
    .end array-data
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/b;->n:Lorg/jsoup/parser/Token$d;

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$d;->m()Lorg/jsoup/parser/Token;

    iget-object p0, p0, Lorg/jsoup/parser/b;->n:Lorg/jsoup/parser/Token$d;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/Token$d;->d:Z

    return-void
.end method

.method public f()V
    .locals 0

    iget-object p0, p0, Lorg/jsoup/parser/b;->n:Lorg/jsoup/parser/Token$d;

    invoke-virtual {p0}, Lorg/jsoup/parser/Token$d;->m()Lorg/jsoup/parser/Token;

    return-void
.end method

.method public g()V
    .locals 0

    iget-object p0, p0, Lorg/jsoup/parser/b;->m:Lorg/jsoup/parser/Token$e;

    invoke-virtual {p0}, Lorg/jsoup/parser/Token$e;->m()Lorg/jsoup/parser/Token;

    return-void
.end method

.method public h(Z)Lorg/jsoup/parser/Token$i;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/jsoup/parser/b;->j:Lorg/jsoup/parser/Token$h;

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$h;->G()Lorg/jsoup/parser/Token$i;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/jsoup/parser/b;->k:Lorg/jsoup/parser/Token$g;

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$i;->G()Lorg/jsoup/parser/Token$i;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/jsoup/parser/b;->i:Lorg/jsoup/parser/Token$i;

    return-object p1
.end method

.method public i()V
    .locals 0

    iget-object p0, p0, Lorg/jsoup/parser/b;->h:Ljava/lang/StringBuilder;

    invoke-static {p0}, Lorg/jsoup/parser/Token;->n(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public j(C)V
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/b;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/parser/b;->f:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/b;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jsoup/parser/b;->g:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jsoup/parser/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object p0, p0, Lorg/jsoup/parser/b;->g:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/b;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/jsoup/parser/b;->f:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/b;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jsoup/parser/b;->g:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jsoup/parser/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object p0, p0, Lorg/jsoup/parser/b;->g:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public l(Ljava/lang/StringBuilder;)V
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/b;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/parser/b;->f:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/b;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jsoup/parser/b;->g:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jsoup/parser/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object p0, p0, Lorg/jsoup/parser/b;->g:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public m(Lorg/jsoup/parser/Token;)V
    .locals 2

    iget-boolean v0, p0, Lorg/jsoup/parser/b;->e:Z

    invoke-static {v0}, Ldnb;->b(Z)V

    iput-object p1, p0, Lorg/jsoup/parser/b;->d:Lorg/jsoup/parser/Token;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/b;->e:Z

    iget-object v0, p1, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->StartTag:Lorg/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_0

    check-cast p1, Lorg/jsoup/parser/Token$h;

    iget-object p1, p1, Lorg/jsoup/parser/Token$i;->b:Ljava/lang/String;

    iput-object p1, p0, Lorg/jsoup/parser/b;->o:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->EndTag:Lorg/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_1

    check-cast p1, Lorg/jsoup/parser/Token$g;

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$i;->A()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Attributes incorrectly present on end tag"

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/b;->s(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public n([I)V
    .locals 3

    new-instance v0, Ljava/lang/String;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Ljava/lang/String;-><init>([III)V

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/b;->k(Ljava/lang/String;)V

    return-void
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/b;->n:Lorg/jsoup/parser/Token$d;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/b;->m(Lorg/jsoup/parser/Token;)V

    return-void
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/b;->m:Lorg/jsoup/parser/Token$e;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/b;->m(Lorg/jsoup/parser/Token;)V

    return-void
.end method

.method public q()V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/b;->i:Lorg/jsoup/parser/Token$i;

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$i;->y()V

    iget-object v0, p0, Lorg/jsoup/parser/b;->i:Lorg/jsoup/parser/Token$i;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/b;->m(Lorg/jsoup/parser/Token;)V

    return-void
.end method

.method public r(Lorg/jsoup/parser/TokeniserState;)V
    .locals 3

    iget-object v0, p0, Lorg/jsoup/parser/b;->b:Lorg/jsoup/parser/ParseErrorList;

    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->canAddError()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/b;->b:Lorg/jsoup/parser/ParseErrorList;

    new-instance v1, Lsw7;

    iget-object p0, p0, Lorg/jsoup/parser/b;->a:Lnv0;

    invoke-virtual {p0}, Lnv0;->J()I

    move-result p0

    const-string v2, "Unexpectedly reached end of file (EOF) in input state [%s]"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, p0, v2, p1}, Lsw7;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/b;->b:Lorg/jsoup/parser/ParseErrorList;

    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->canAddError()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/b;->b:Lorg/jsoup/parser/ParseErrorList;

    new-instance v1, Lsw7;

    iget-object p0, p0, Lorg/jsoup/parser/b;->a:Lnv0;

    invoke-virtual {p0}, Lnv0;->J()I

    move-result p0

    invoke-direct {v1, p0, p1}, Lsw7;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public t(Lorg/jsoup/parser/TokeniserState;)V
    .locals 3

    iget-object v0, p0, Lorg/jsoup/parser/b;->b:Lorg/jsoup/parser/ParseErrorList;

    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->canAddError()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/b;->b:Lorg/jsoup/parser/ParseErrorList;

    new-instance v1, Lsw7;

    iget-object v2, p0, Lorg/jsoup/parser/b;->a:Lnv0;

    invoke-virtual {v2}, Lnv0;->J()I

    move-result v2

    iget-object p0, p0, Lorg/jsoup/parser/b;->a:Lnv0;

    invoke-virtual {p0}, Lnv0;->t()C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Unexpected character \'%s\' in input state [%s]"

    invoke-direct {v1, v2, p1, p0}, Lsw7;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public u()Z
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/b;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/b;->i:Lorg/jsoup/parser/Token$i;

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$i;->C()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lorg/jsoup/parser/b;->o:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public v()Lorg/jsoup/parser/Token;
    .locals 5

    :goto_0
    iget-boolean v0, p0, Lorg/jsoup/parser/b;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/TokeniserState;

    iget-object v1, p0, Lorg/jsoup/parser/b;->a:Lnv0;

    invoke-virtual {v0, p0, v1}, Lorg/jsoup/parser/TokeniserState;->read(Lorg/jsoup/parser/b;Lnv0;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/b;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iput-object v2, p0, Lorg/jsoup/parser/b;->f:Ljava/lang/String;

    iget-object p0, p0, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/Token$c;

    invoke-virtual {p0, v1}, Lorg/jsoup/parser/Token$c;->p(Ljava/lang/String;)Lorg/jsoup/parser/Token$c;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lorg/jsoup/parser/b;->f:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/Token$c;

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/Token$c;->p(Ljava/lang/String;)Lorg/jsoup/parser/Token$c;

    move-result-object v0

    iput-object v2, p0, Lorg/jsoup/parser/b;->f:Ljava/lang/String;

    return-object v0

    :cond_2
    iput-boolean v3, p0, Lorg/jsoup/parser/b;->e:Z

    iget-object p0, p0, Lorg/jsoup/parser/b;->d:Lorg/jsoup/parser/Token;

    return-object p0
.end method

.method public w(Lorg/jsoup/parser/TokeniserState;)V
    .locals 0

    iput-object p1, p0, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/TokeniserState;

    return-void
.end method
