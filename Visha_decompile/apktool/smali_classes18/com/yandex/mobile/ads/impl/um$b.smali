.class public final Lcom/yandex/mobile/ads/impl/um$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/um;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public static a(Lcom/yandex/mobile/ads/impl/qf0;)Lcom/yandex/mobile/ads/impl/um;
    .locals 31

    move-object/from16 v0, p0

    const-string v1, "headers"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/qf0;->size()I

    move-result v1

    const/4 v4, 0x1

    move v7, v4

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_0
    if-ge v6, v1, :cond_19

    invoke-virtual {v0, v6}, Lcom/yandex/mobile/ads/impl/qf0;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v6}, Lcom/yandex/mobile/ads/impl/qf0;->b(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "Cache-Control"

    invoke-static {v3, v5, v4}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v8, :cond_0

    goto :goto_1

    :cond_0
    move-object v8, v2

    goto :goto_2

    :cond_1
    const-string v5, "Pragma"

    invoke-static {v3, v5, v4}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_18

    :goto_1
    const/4 v7, 0x0

    :goto_2
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_17

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    move v4, v3

    :goto_4
    const/4 v0, 0x2

    if-ge v4, v5, :cond_3

    move/from16 v28, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move/from16 v22, v5

    const-string v5, "=,;"

    move/from16 v29, v7

    move-object/from16 v30, v8

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v1, v7, v0, v8}, Lj1a;->W(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_5

    :cond_2
    const/4 v1, 0x1

    add-int/2addr v4, v1

    move/from16 v5, v22

    move/from16 v1, v28

    move/from16 v7, v29

    move-object/from16 v8, v30

    goto :goto_4

    :cond_3
    move/from16 v28, v1

    move/from16 v29, v7

    move-object/from16 v30, v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    :goto_5
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "substring(...)"

    invoke-static {v1, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lj1a;->i1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_4

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x2c

    if-eq v5, v7, :cond_4

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x3b

    if-ne v5, v7, :cond_5

    :cond_4
    move/from16 v24, v14

    move/from16 v23, v15

    const/4 v5, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto/16 :goto_a

    :cond_5
    const/4 v5, 0x1

    add-int/2addr v4, v5

    sget-object v5, Lcom/yandex/mobile/ads/impl/g92;->a:[B

    const-string v5, "<this>"

    invoke-static {v2, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    :goto_6
    if-ge v4, v5, :cond_7

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-eq v7, v8, :cond_6

    const/16 v8, 0x9

    if-eq v7, v8, :cond_6

    const/4 v7, 0x1

    goto :goto_7

    :cond_6
    const/4 v7, 0x1

    add-int/2addr v4, v7

    goto :goto_6

    :cond_7
    const/4 v7, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    :goto_7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_8

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v8, 0x22

    if-ne v5, v8, :cond_8

    add-int/2addr v4, v7

    const/16 v26, 0x4

    const/16 v27, 0x0

    const/16 v23, 0x22

    const/16 v25, 0x0

    move-object/from16 v22, v2

    move/from16 v24, v4

    invoke-static/range {v22 .. v27}, Lj1a;->l0(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    add-int/2addr v0, v3

    move v5, v3

    move/from16 v24, v14

    move/from16 v23, v15

    const/4 v14, 0x0

    const/4 v15, 0x0

    move v3, v0

    goto :goto_b

    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    move v7, v4

    :goto_8
    if-ge v7, v5, :cond_a

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move/from16 v22, v5

    const-string v5, ",;"

    move/from16 v24, v14

    move/from16 v23, v15

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v5, v8, v14, v0, v15}, Lj1a;->W(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x1

    goto :goto_9

    :cond_9
    const/4 v5, 0x1

    add-int/2addr v7, v5

    move/from16 v5, v22

    move/from16 v15, v23

    move/from16 v14, v24

    goto :goto_8

    :cond_a
    move/from16 v24, v14

    move/from16 v23, v15

    const/4 v5, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    :goto_9
    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lj1a;->i1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    move v3, v7

    goto :goto_b

    :goto_a
    add-int/2addr v4, v5

    move v3, v4

    move-object v8, v15

    :goto_b
    const-string v0, "no-cache"

    invoke-static {v0, v1, v5}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    move-object/from16 v0, p0

    move v4, v5

    move v9, v4

    :cond_b
    :goto_c
    move/from16 v15, v23

    :goto_d
    move/from16 v14, v24

    :goto_e
    move/from16 v1, v28

    move/from16 v7, v29

    move-object/from16 v8, v30

    goto/16 :goto_3

    :cond_c
    const-string v0, "no-store"

    invoke-static {v0, v1, v5}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    move-object/from16 v0, p0

    move v4, v5

    move v10, v4

    goto :goto_c

    :cond_d
    const-string v0, "max-age"

    invoke-static {v0, v1, v5}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, -0x1

    invoke-static {v0, v8}, Lcom/yandex/mobile/ads/impl/g92;->a(ILjava/lang/String;)I

    move-result v11

    :goto_f
    move-object/from16 v0, p0

    move v4, v5

    goto :goto_c

    :cond_e
    const/4 v0, -0x1

    const-string v4, "s-maxage"

    invoke-static {v4, v1, v5}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-static {v0, v8}, Lcom/yandex/mobile/ads/impl/g92;->a(ILjava/lang/String;)I

    move-result v12

    goto :goto_f

    :cond_f
    const-string v0, "private"

    invoke-static {v0, v1, v5}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_10

    move-object/from16 v0, p0

    move v4, v5

    move v13, v4

    goto :goto_c

    :cond_10
    const-string v0, "public"

    invoke-static {v0, v1, v5}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_11

    move-object/from16 v0, p0

    move v4, v5

    move v14, v4

    move/from16 v15, v23

    goto :goto_e

    :cond_11
    const-string v0, "must-revalidate"

    invoke-static {v0, v1, v5}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    move-object/from16 v0, p0

    move v4, v5

    move v15, v4

    goto :goto_d

    :cond_12
    const-string v0, "max-stale"

    invoke-static {v0, v1, v5}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_13

    const v0, 0x7fffffff

    invoke-static {v0, v8}, Lcom/yandex/mobile/ads/impl/g92;->a(ILjava/lang/String;)I

    move-result v16

    goto :goto_f

    :cond_13
    const-string v0, "min-fresh"

    invoke-static {v0, v1, v5}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, -0x1

    invoke-static {v0, v8}, Lcom/yandex/mobile/ads/impl/g92;->a(ILjava/lang/String;)I

    move-result v17

    goto :goto_f

    :cond_14
    const/4 v0, -0x1

    const-string v4, "only-if-cached"

    invoke-static {v4, v1, v5}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_15

    move-object/from16 v0, p0

    move v4, v5

    move/from16 v18, v4

    goto/16 :goto_c

    :cond_15
    const-string v4, "no-transform"

    invoke-static {v4, v1, v5}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_16

    move-object/from16 v0, p0

    move v4, v5

    move/from16 v19, v4

    goto/16 :goto_c

    :cond_16
    const-string v4, "immutable"

    invoke-static {v4, v1, v5}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    move-object/from16 v0, p0

    move v4, v5

    if-eqz v1, :cond_b

    move/from16 v20, v4

    goto/16 :goto_c

    :cond_17
    move/from16 v28, v1

    move v5, v4

    move/from16 v29, v7

    move-object/from16 v30, v8

    move/from16 v24, v14

    move/from16 v23, v15

    const/4 v0, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v1, v23

    move/from16 v2, v24

    goto :goto_10

    :cond_18
    move/from16 v28, v1

    move v5, v4

    move v2, v14

    move v1, v15

    const/4 v0, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_10
    add-int/2addr v6, v5

    move-object/from16 v0, p0

    move v15, v1

    move v14, v2

    move v4, v5

    move/from16 v1, v28

    goto/16 :goto_0

    :cond_19
    move v2, v14

    move v1, v15

    const/4 v15, 0x0

    if-nez v7, :cond_1a

    move-object/from16 v21, v15

    goto :goto_11

    :cond_1a
    move-object/from16 v21, v8

    :goto_11
    new-instance v0, Lcom/yandex/mobile/ads/impl/um;

    const/16 v22, 0x0

    move-object v8, v0

    move v14, v2

    move v15, v1

    invoke-direct/range {v8 .. v22}, Lcom/yandex/mobile/ads/impl/um;-><init>(ZZIIZZZIIZZZLjava/lang/String;I)V

    return-object v0
.end method
