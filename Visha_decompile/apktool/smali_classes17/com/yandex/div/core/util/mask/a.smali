.class public final Lcom/yandex/div/core/util/mask/a;
.super Lcom/yandex/div/core/util/mask/BaseInputMask;
.source "SourceFile"


# instance fields
.field public final e:Le74;

.field public final f:C

.field public final g:Ljava/util/List;

.field public h:Ljava/text/NumberFormat;


# direct methods
.method public constructor <init>(Ljava/util/Locale;Le74;)V
    .locals 4

    const-string v0, "locale"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div/core/util/mask/BaseInputMask$b;

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v0, v3, v1, v2}, Lcom/yandex/div/core/util/mask/BaseInputMask$b;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    invoke-direct {p0, v0}, Lcom/yandex/div/core/util/mask/BaseInputMask;-><init>(Lcom/yandex/div/core/util/mask/BaseInputMask$b;)V

    iput-object p2, p0, Lcom/yandex/div/core/util/mask/a;->e:Le74;

    const/16 p2, 0xa4

    iput-char p2, p0, Lcom/yandex/div/core/util/mask/a;->f:C

    const/16 p2, 0x2e

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    const/16 v0, 0x2c

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    filled-new-array {p2, v0}, [Ljava/lang/Character;

    move-result-object p2

    invoke-static {p2}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/yandex/div/core/util/mask/a;->g:Ljava/util/List;

    invoke-static {p1}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p1

    const-string p2, "getCurrencyInstance(locale)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/util/mask/a;->A(Ljava/text/NumberFormat;)Ljava/text/NumberFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/core/util/mask/a;->h:Ljava/text/NumberFormat;

    return-void
.end method


# virtual methods
.method public final A(Ljava/text/NumberFormat;)Ljava/text/NumberFormat;
    .locals 7

    instance-of v0, p1, Ljava/text/DecimalFormat;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/text/DecimalFormat;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/text/DecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v1

    const-string v2, "toPattern()"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    iget-char v6, p0, Lcom/yandex/div/core/util/mask/a;->f:C

    if-eq v5, v6, :cond_1

    invoke-interface {v2, v5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "toString(...)"

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lj1a;->i1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    :cond_3
    return-object p1
.end method

.method public final B(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x23

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final C()Ljava/text/DecimalFormatSymbols;
    .locals 1

    iget-object p0, p0, Lcom/yandex/div/core/util/mask/a;->h:Ljava/text/NumberFormat;

    const-string v0, "null cannot be cast to non-null type java.text.DecimalFormat"

    invoke-static {p0, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/text/DecimalFormat;

    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object p0

    const-string v0, "currencyFormatter as Dec\u2026mat).decimalFormatSymbols"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final D(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/16 v1, 0x20

    const/16 v2, 0xa0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lg1a;->M(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final E(Lcom/yandex/div/core/util/mask/e;I)Z
    .locals 0

    invoke-virtual {p1}, Lcom/yandex/div/core/util/mask/e;->c()I

    move-result p0

    if-gt p0, p2, :cond_0

    invoke-virtual {p1}, Lcom/yandex/div/core/util/mask/e;->c()I

    move-result p0

    invoke-virtual {p1}, Lcom/yandex/div/core/util/mask/e;->a()I

    move-result p1

    add-int/2addr p0, p1

    if-ge p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final F(Ljava/lang/Number;)V
    .locals 5

    iget-object v0, p0, Lcom/yandex/div/core/util/mask/a;->h:Ljava/text/NumberFormat;

    invoke-virtual {v0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "formatted"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/util/mask/a;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/yandex/div/core/util/mask/BaseInputMask$c;

    const-string v1, "\\d"

    const/16 v2, 0x30

    const/16 v3, 0x23

    invoke-direct {v0, v3, v1, v2}, Lcom/yandex/div/core/util/mask/BaseInputMask$c;-><init>(CLjava/lang/String;C)V

    new-instance v1, Lcom/yandex/div/core/util/mask/BaseInputMask$c;

    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/a;->C()Ljava/text/DecimalFormatSymbols;

    move-result-object v2

    invoke-virtual {v2}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x5b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/a;->C()Ljava/text/DecimalFormatSymbols;

    move-result-object v4

    invoke-virtual {v4}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/a;->C()Ljava/text/DecimalFormatSymbols;

    move-result-object v4

    invoke-virtual {v4}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/yandex/div/core/util/mask/BaseInputMask$c;-><init>(CLjava/lang/String;C)V

    filled-new-array {v0, v1}, [Lcom/yandex/div/core/util/mask/BaseInputMask$c;

    move-result-object v0

    invoke-static {v0}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/yandex/div/core/util/mask/BaseInputMask$b;

    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->o()Lcom/yandex/div/core/util/mask/BaseInputMask$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/div/core/util/mask/BaseInputMask$b;->a()Z

    move-result v2

    invoke-direct {v1, p1, v0, v2}, Lcom/yandex/div/core/util/mask/BaseInputMask$b;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/yandex/div/core/util/mask/BaseInputMask;->y(Lcom/yandex/div/core/util/mask/BaseInputMask$b;Z)V

    return-void
.end method

.method public final G(Ljava/lang/String;Lcom/yandex/div/core/util/mask/e;)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div/core/util/mask/a;->C()Ljava/text/DecimalFormatSymbols;

    move-result-object v3

    invoke-virtual {v3}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, -0x1

    if-ge v5, v6, :cond_1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v3, :cond_0

    invoke-virtual {v0, v2, v5}, Lcom/yandex/div/core/util/mask/a;->E(Lcom/yandex/div/core/util/mask/e;I)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move v5, v7

    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/div/core/util/mask/e;->a()I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/div/core/util/mask/e;->b()I

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/div/core/util/mask/e;->c()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iget-object v9, v0, Lcom/yandex/div/core/util/mask/a;->g:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-interface {v9, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/div/core/util/mask/e;->c()I

    move-result v6

    goto :goto_2

    :cond_2
    move v6, v7

    :goto_2
    iget-object v9, v0, Lcom/yandex/div/core/util/mask/a;->h:Ljava/text/NumberFormat;

    invoke-virtual {v9}, Ljava/text/NumberFormat;->getMaximumFractionDigits()I

    move-result v9

    if-eq v5, v7, :cond_4

    move v10, v5

    move v11, v9

    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v10, v12, :cond_7

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->isDigit(C)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v0, v2, v10}, Lcom/yandex/div/core/util/mask/a;->E(Lcom/yandex/div/core/util/mask/e;I)Z

    move-result v12

    if-nez v12, :cond_3

    add-int/lit8 v11, v11, -0x1

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_4
    move v10, v4

    move v12, v10

    move v13, v12

    move v11, v9

    :goto_4
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v14

    if-ge v10, v14, :cond_7

    invoke-interface {v1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    add-int/lit8 v15, v12, 0x1

    invoke-virtual {v0, v2, v12}, Lcom/yandex/div/core/util/mask/a;->E(Lcom/yandex/div/core/util/mask/e;I)Z

    move-result v12

    if-ne v14, v3, :cond_5

    move v13, v8

    goto :goto_5

    :cond_5
    if-nez v12, :cond_6

    if-eqz v13, :cond_6

    invoke-static {v14}, Ljava/lang/Character;->isDigit(C)Z

    move-result v12

    if-eqz v12, :cond_6

    add-int/lit8 v11, v11, -0x1

    :cond_6
    :goto_5
    add-int/lit8 v10, v10, 0x1

    move v12, v15

    goto :goto_4

    :cond_7
    const/4 v10, 0x2

    const/4 v12, 0x0

    invoke-static {v1, v3, v4, v10, v12}, Lj1a;->W(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    if-eq v6, v7, :cond_8

    goto :goto_6

    :cond_8
    move v10, v4

    goto :goto_7

    :cond_9
    :goto_6
    move v10, v8

    :goto_7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v13, v8

    move v14, v4

    :goto_8
    if-ltz v13, :cond_10

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-gt v4, v9, :cond_a

    move v4, v8

    goto :goto_9

    :cond_a
    const/4 v4, 0x0

    :goto_9
    invoke-static {v15}, Ljava/lang/Character;->isDigit(C)Z

    move-result v16

    if-eqz v16, :cond_c

    invoke-virtual {v0, v2, v13}, Lcom/yandex/div/core/util/mask/a;->E(Lcom/yandex/div/core/util/mask/e;I)Z

    move-result v4

    if-eqz v4, :cond_b

    if-nez v14, :cond_b

    if-eqz v10, :cond_b

    if-lez v11, :cond_f

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, -0x1

    goto :goto_a

    :cond_b
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_c
    if-eqz v4, :cond_d

    if-ne v5, v7, :cond_d

    if-ne v13, v6, :cond_d

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v14, v8

    goto :goto_a

    :cond_d
    if-eqz v4, :cond_f

    if-ne v15, v3, :cond_f

    if-eq v5, v13, :cond_e

    if-ne v5, v7, :cond_f

    :cond_e
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v14, v8

    move v5, v13

    :cond_f
    :goto_a
    add-int/lit8 v13, v13, -0x1

    const/4 v4, 0x0

    goto :goto_8

    :cond_10
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "toString(...)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ll1a;->s1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v2, :cond_12

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div/core/util/mask/a;->C()Ljava/text/DecimalFormatSymbols;

    move-result-object v5

    invoke-virtual {v5}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v5

    if-eq v3, v5, :cond_11

    move v7, v4

    goto :goto_c

    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_12
    :goto_c
    if-gtz v7, :cond_13

    goto :goto_e

    :cond_13
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div/core/util/mask/a;->C()Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v0

    if-ne v2, v0, :cond_14

    sub-int/2addr v7, v8

    invoke-static {v1, v7}, Ll1a;->n1(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_d
    move-object v1, v0

    goto :goto_e

    :cond_14
    invoke-static {v1, v7}, Ll1a;->n1(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :goto_e
    return-object v1
.end method

.method public final H(Ljava/util/Locale;)V
    .locals 13

    const-string v0, "locale"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/a;->C()Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lg1a;->M(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p1

    const-string v0, "getCurrencyInstance(locale)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/util/mask/a;->A(Ljava/text/NumberFormat;)Ljava/text/NumberFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/core/util/mask/a;->h:Ljava/text/NumberFormat;

    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/a;->C()Ljava/text/DecimalFormatSymbols;

    move-result-object p1

    invoke-virtual {p1}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v9

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/16 v8, 0x2e

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lg1a;->M(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->b(Lcom/yandex/div/core/util/mask/BaseInputMask;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 12

    const-string v0, "newValue"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/yandex/div/core/util/mask/e;->d:Lcom/yandex/div/core/util/mask/e$a;

    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/util/mask/a;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yandex/div/core/util/mask/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/div/core/util/mask/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/a;->C()Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v1

    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->q()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, -0x1

    add-int/2addr v3, v4

    if-ltz v3, :cond_2

    :goto_0
    add-int/lit8 v5, v3, -0x1

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v6, v1, :cond_0

    goto :goto_2

    :cond_0
    if-gez v5, :cond_1

    goto :goto_1

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    :goto_1
    move v3, v4

    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v2, v4

    if-ltz v2, :cond_5

    :goto_3
    add-int/lit8 v5, v2, -0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v6, v1, :cond_3

    goto :goto_5

    :cond_3
    if-gez v5, :cond_4

    goto :goto_4

    :cond_4
    move v2, v5

    goto :goto_3

    :cond_5
    :goto_4
    move v2, v4

    :goto_5
    const/4 v5, 0x0

    if-ne v3, v2, :cond_7

    if-ne v3, v4, :cond_6

    if-ne v2, v4, :cond_6

    goto :goto_6

    :cond_6
    move v2, v5

    goto :goto_7

    :cond_7
    :goto_6
    const/4 v2, 0x1

    :goto_7
    invoke-virtual {p0, p1, v0}, Lcom/yandex/div/core/util/mask/a;->G(Ljava/lang/String;Lcom/yandex/div/core/util/mask/e;)Ljava/lang/String;

    move-result-object v7

    iget-object v3, p0, Lcom/yandex/div/core/util/mask/a;->h:Ljava/text/NumberFormat;

    const/4 v4, 0x2

    const/4 v6, 0x0

    invoke-static {v7, v1, v5, v4, v6}, Lj1a;->R0(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/a;->C()Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_8
    invoke-static {v7}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/a;->C()Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_9
    move-object v1, v7

    :goto_8
    invoke-virtual {v3, v1}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v1

    if-nez v1, :cond_a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_a
    invoke-virtual {p0, v0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->h(Lcom/yandex/div/core/util/mask/e;)V

    if-eqz v2, :cond_b

    invoke-virtual {p0, v1}, Lcom/yandex/div/core/util/mask/a;->F(Ljava/lang/Number;)V

    :cond_b
    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, p0

    invoke-static/range {v6 .. v11}, Lcom/yandex/div/core/util/mask/BaseInputMask;->v(Lcom/yandex/div/core/util/mask/BaseInputMask;Ljava/lang/String;ILjava/lang/Integer;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Lcom/yandex/div/core/util/mask/e;->c()I

    move-result v2

    if-le v1, v2, :cond_d

    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yandex/div/core/util/mask/e;->c()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/a;->C()Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v1

    if-ne v0, v1, :cond_d

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_a

    :cond_c
    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->l()I

    move-result p1

    goto :goto_a

    :cond_d
    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_9

    :cond_e
    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->l()I

    move-result p2

    :goto_9
    sub-int/2addr p1, p2

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    :goto_a
    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->q()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p1, p2}, Lwn8;->g(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/util/mask/BaseInputMask;->w(I)V

    return-void
.end method

.method public r(Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/core/util/mask/a;->e:Le74;

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 1

    const-string v0, "newRawValue"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/util/mask/a;->h:Ljava/text/NumberFormat;

    invoke-virtual {v0, p1}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/yandex/div/core/util/mask/a;->F(Ljava/lang/Number;)V

    invoke-super {p0, p1}, Lcom/yandex/div/core/util/mask/BaseInputMask;->s(Ljava/lang/String;)V

    return-void
.end method
