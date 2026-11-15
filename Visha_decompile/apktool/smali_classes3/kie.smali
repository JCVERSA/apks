.class public final Lkie;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbhe;


# instance fields
.field public final a:Lu4h;

.field public final b:Z

.field public final c:I

.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:F

.field public final g:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lu4h;

    invoke-direct {v0}, Lu4h;-><init>()V

    iput-object v0, p0, Lkie;->a:Lu4h;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const v1, 0x3f59999a    # 0.85f

    const-string v2, "sans-serif"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    const/16 v5, 0x30

    if-eq v0, v5, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    const/16 v5, 0x35

    if-ne v0, v5, :cond_4

    :cond_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const/16 v0, 0x18

    aget-byte v5, p1, v0

    iput v5, p0, Lkie;->c:I

    const/16 v5, 0x1a

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x1b

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x1c

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0x1d

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v0, v5, 0x18

    shl-int/lit8 v5, v6, 0x10

    or-int/2addr v0, v5

    shl-int/lit8 v5, v7, 0x8

    or-int/2addr v0, v5

    or-int/2addr v0, v8

    iput v0, p0, Lkie;->d:I

    array-length v0, p1

    add-int/lit8 v0, v0, -0x2b

    const/16 v5, 0x2b

    invoke-static {p1, v5, v0}, Lkfh;->c([BII)Ljava/lang/String;

    move-result-object v0

    const-string v5, "Serif"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v4, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "serif"

    :goto_0
    iput-object v2, p0, Lkie;->e:Ljava/lang/String;

    const/16 v0, 0x19

    aget-byte v0, p1, v0

    mul-int/lit8 v0, v0, 0x14

    iput v0, p0, Lkie;->g:I

    aget-byte v2, p1, v3

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_2

    move v3, v4

    :cond_2
    iput-boolean v3, p0, Lkie;->b:Z

    if-eqz v3, :cond_3

    const/16 v1, 0xa

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/16 v2, 0xb

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    int-to-float v0, v0

    or-int/2addr p1, v1

    int-to-float p1, p1

    div-float/2addr p1, v0

    const v0, 0x3f733333    # 0.95f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lkie;->f:F

    return-void

    :cond_3
    iput v1, p0, Lkie;->f:F

    return-void

    :cond_4
    iput v3, p0, Lkie;->c:I

    const/4 p1, -0x1

    iput p1, p0, Lkie;->d:I

    iput-object v2, p0, Lkie;->e:Ljava/lang/String;

    iput-boolean v3, p0, Lkie;->b:Z

    iput v1, p0, Lkie;->f:F

    iput p1, p0, Lkie;->g:I

    return-void
.end method

.method public static b(Landroid/text/SpannableStringBuilder;IIIII)V
    .locals 1

    if-eq p1, p2, :cond_0

    and-int/lit16 p2, p1, 0xff

    shl-int/lit8 p2, p2, 0x18

    ushr-int/lit8 p1, p1, 0x8

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    or-int/2addr p1, p2

    invoke-direct {v0, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    or-int/lit8 p1, p5, 0x21

    invoke-virtual {p0, v0, p3, p4, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method

.method public static c(Landroid/text/SpannableStringBuilder;IIIII)V
    .locals 4

    if-eq p1, p2, :cond_4

    or-int/lit8 p2, p5, 0x21

    and-int/lit8 p5, p1, 0x1

    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p5, :cond_2

    if-eqz v0, :cond_0

    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v3, 0x3

    invoke-direct {v0, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v0, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v0, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_1

    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v0, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_0
    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_3

    if-nez p5, :cond_4

    if-nez v2, :cond_4

    new-instance p1, Landroid/text/style/StyleSpan;

    invoke-direct {p1, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void

    :cond_3
    new-instance p1, Landroid/text/style/UnderlineSpan;

    invoke-direct {p1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    return-void
.end method


# virtual methods
.method public final a([BIILwge;Lqfg;)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p5

    add-int v3, v1, p3

    iget-object v4, v0, Lkie;->a:Lu4h;

    move-object/from16 v5, p1

    invoke-virtual {v4, v5, v3}, Lu4h;->j([BI)V

    invoke-virtual {v4, v1}, Lu4h;->l(I)V

    invoke-virtual {v4}, Lu4h;->u()I

    move-result v1

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-lt v1, v6, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v5

    :goto_0
    invoke-static {v1}, Ln7g;->d(Z)V

    invoke-virtual {v4}, Lu4h;->K()I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ""

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Lu4h;->w()I

    move-result v7

    invoke-virtual {v4}, Lu4h;->c()Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-virtual {v4}, Lu4h;->w()I

    move-result v9

    sub-int/2addr v9, v7

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    :goto_1
    sub-int/2addr v1, v9

    invoke-virtual {v4, v1, v8}, Lu4h;->b(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v0, Lqge;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v9

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    move-object v8, v0

    move-wide v10, v12

    invoke-direct/range {v8 .. v13}, Lqge;-><init>(Ljava/util/List;JJ)V

    invoke-interface {v2, v0}, Lqfg;->zza(Ljava/lang/Object;)V

    return-void

    :cond_3
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget v1, v0, Lkie;->c:I

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v18

    const/high16 v19, 0xff0000

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v14, v7

    move v15, v1

    invoke-static/range {v14 .. v19}, Lkie;->c(Landroid/text/SpannableStringBuilder;IIIII)V

    iget v8, v0, Lkie;->d:I

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v18

    const/16 v16, -0x1

    move v15, v8

    invoke-static/range {v14 .. v19}, Lkie;->b(Landroid/text/SpannableStringBuilder;IIIII)V

    iget-object v9, v0, Lkie;->e:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    const-string v11, "sans-serif"

    if-eq v9, v11, :cond_4

    new-instance v11, Landroid/text/style/TypefaceSpan;

    invoke-direct {v11, v9}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    const v9, 0xff0021

    invoke-virtual {v7, v11, v5, v10, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    iget v9, v0, Lkie;->f:F

    :goto_3
    invoke-virtual {v4}, Lu4h;->u()I

    move-result v10

    const/16 v11, 0x8

    if-lt v10, v11, :cond_d

    invoke-virtual {v4}, Lu4h;->w()I

    move-result v10

    invoke-virtual {v4}, Lu4h;->A()I

    move-result v11

    invoke-virtual {v4}, Lu4h;->A()I

    move-result v12

    const v13, 0x7374796c

    if-ne v12, v13, :cond_a

    invoke-virtual {v4}, Lu4h;->u()I

    move-result v12

    if-lt v12, v6, :cond_5

    move v12, v3

    goto :goto_4

    :cond_5
    move v12, v5

    :goto_4
    invoke-static {v12}, Ln7g;->d(Z)V

    invoke-virtual {v4}, Lu4h;->K()I

    move-result v12

    move v13, v5

    :goto_5
    if-ge v13, v12, :cond_9

    invoke-virtual {v4}, Lu4h;->u()I

    move-result v14

    const/16 v15, 0xc

    if-lt v14, v15, :cond_6

    move v14, v3

    goto :goto_6

    :cond_6
    move v14, v5

    :goto_6
    invoke-static {v14}, Ln7g;->d(Z)V

    invoke-virtual {v4}, Lu4h;->K()I

    move-result v15

    invoke-virtual {v4}, Lu4h;->K()I

    move-result v14

    invoke-virtual {v4, v6}, Lu4h;->m(I)V

    invoke-virtual {v4}, Lu4h;->G()I

    move-result v16

    invoke-virtual {v4, v3}, Lu4h;->m(I)V

    invoke-virtual {v4}, Lu4h;->A()I

    move-result v20

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const-string v6, "Tx3gParser"

    const-string v3, ")."

    if-le v14, v5, :cond_7

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    move/from16 p4, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Truncating styl end ("

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") to cueText.length() ("

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    goto :goto_7

    :cond_7
    move/from16 p4, v12

    move v2, v14

    :goto_7
    if-lt v15, v2, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ignoring styl with start ("

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ") >= end ("

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    const/4 v2, 0x1

    goto :goto_9

    :cond_8
    const/16 v19, 0x0

    move-object v14, v7

    move v3, v15

    move/from16 v15, v16

    move/from16 v16, v1

    move/from16 v17, v3

    move/from16 v18, v2

    invoke-static/range {v14 .. v19}, Lkie;->c(Landroid/text/SpannableStringBuilder;IIIII)V

    move/from16 v15, v20

    move/from16 v16, v8

    invoke-static/range {v14 .. v19}, Lkie;->b(Landroid/text/SpannableStringBuilder;IIIII)V

    goto :goto_8

    :goto_9
    add-int/2addr v13, v2

    move/from16 v12, p4

    move v3, v2

    const/4 v5, 0x0

    const/4 v6, 0x2

    move-object/from16 v2, p5

    goto/16 :goto_5

    :cond_9
    move v2, v3

    move v5, v6

    goto :goto_b

    :cond_a
    move v2, v3

    const v3, 0x74626f78

    if-ne v12, v3, :cond_c

    iget-boolean v3, v0, Lkie;->b:Z

    if-eqz v3, :cond_c

    invoke-virtual {v4}, Lu4h;->u()I

    move-result v3

    const/4 v5, 0x2

    if-lt v3, v5, :cond_b

    move v3, v2

    goto :goto_a

    :cond_b
    const/4 v3, 0x0

    :goto_a
    invoke-static {v3}, Ln7g;->d(Z)V

    invoke-virtual {v4}, Lu4h;->K()I

    move-result v3

    int-to-float v3, v3

    iget v6, v0, Lkie;->g:I

    sget v9, Lkfh;->a:I

    int-to-float v6, v6

    div-float/2addr v3, v6

    const v6, 0x3f733333    # 0.95f

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/4 v6, 0x0

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    move v9, v3

    goto :goto_b

    :cond_c
    const/4 v5, 0x2

    :goto_b
    add-int/2addr v10, v11

    invoke-virtual {v4, v10}, Lu4h;->l(I)V

    move v3, v2

    move v6, v5

    const/4 v5, 0x0

    move-object/from16 v2, p5

    goto/16 :goto_3

    :cond_d
    new-instance v0, Lzvf;

    invoke-direct {v0}, Lzvf;-><init>()V

    invoke-virtual {v0, v7}, Lzvf;->l(Ljava/lang/CharSequence;)Lzvf;

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v1}, Lzvf;->e(FI)Lzvf;

    invoke-virtual {v0, v1}, Lzvf;->f(I)Lzvf;

    invoke-virtual {v0}, Lzvf;->p()Lfyf;

    move-result-object v0

    new-instance v7, Lqge;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfww;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v2

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-object v1, v7

    move-wide v3, v5

    invoke-direct/range {v1 .. v6}, Lqge;-><init>(Ljava/util/List;JJ)V

    move-object/from16 v0, p5

    invoke-interface {v0, v7}, Lqfg;->zza(Ljava/lang/Object;)V

    return-void
.end method
