.class public final Llve;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Leve;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Llve;->b:I

    const/16 p1, 0x40

    if-gt p2, p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    move p2, p1

    :cond_1
    if-gtz p3, :cond_2

    const/4 p1, 0x1

    iput p1, p0, Llve;->c:I

    goto :goto_0

    :cond_2
    iput p3, p0, Llve;->c:I

    :goto_0
    new-instance p1, Lkve;

    invoke-direct {p1, p2}, Lkve;-><init>(I)V

    iput-object p1, p0, Llve;->a:Leve;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x1

    new-instance v3, Lcom/google/android/gms/internal/ads/zzazs;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/zzazs;-><init>(Llve;)V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/4 v5, 0x0

    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_10

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldve;

    invoke-virtual {v6}, Ldve;->e()I

    move-result v6

    move-object/from16 v7, p1

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    sget-object v8, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    invoke-static {v6, v8}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v6

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v8, v6

    if-nez v8, :cond_0

    goto/16 :goto_a

    :cond_0
    const/4 v8, 0x0

    :goto_1
    array-length v9, v6

    if-ge v8, v9, :cond_f

    aget-object v9, v6, v8

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v11, v2

    const/4 v12, 0x0

    :goto_2
    add-int/lit8 v13, v11, 0x2

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    if-gt v13, v14, :cond_5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v14

    const/16 v15, 0x27

    if-ne v14, v15, :cond_4

    add-int/lit8 v12, v11, -0x1

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v12

    const/16 v14, 0x20

    if-eq v12, v14, :cond_3

    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v15

    const/16 v4, 0x73

    if-eq v15, v4, :cond_1

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v12, 0x53

    if-ne v4, v12, :cond_3

    :cond_1
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eq v13, v4, :cond_2

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v14, :cond_3

    :cond_2
    invoke-virtual {v10, v11, v14}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move v11, v13

    goto :goto_3

    :cond_3
    invoke-virtual {v10, v11, v14}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :goto_3
    move v12, v2

    :cond_4
    add-int/2addr v11, v2

    goto :goto_2

    :cond_5
    if-eqz v12, :cond_6

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    :goto_4
    if-nez v4, :cond_7

    goto :goto_5

    :cond_7
    move-object v9, v4

    :cond_8
    :goto_5
    invoke-static {v9, v2}, Lgve;->b(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v4

    array-length v9, v4

    iget v10, v0, Llve;->c:I

    if-ge v9, v10, :cond_9

    goto :goto_9

    :cond_9
    const/4 v9, 0x0

    :goto_6
    array-length v11, v4

    if-ge v9, v11, :cond_d

    const-string v11, ""

    const/4 v12, 0x0

    :goto_7
    if-ge v12, v10, :cond_c

    add-int v13, v9, v12

    array-length v14, v4

    if-lt v13, v14, :cond_a

    goto :goto_8

    :cond_a
    if-lez v12, :cond_b

    const-string v14, " "

    invoke-virtual {v11, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_b
    aget-object v13, v4, v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    add-int/2addr v12, v2

    goto :goto_7

    :cond_c
    invoke-virtual {v3, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v11

    iget v12, v0, Llve;->b:I

    if-ge v11, v12, :cond_10

    add-int/2addr v9, v2

    goto :goto_6

    :cond_d
    :goto_8
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v4

    iget v9, v0, Llve;->b:I

    if-lt v4, v9, :cond_e

    goto :goto_b

    :cond_e
    :goto_9
    add-int/2addr v8, v2

    goto/16 :goto_1

    :cond_f
    :goto_a
    add-int/2addr v5, v2

    goto/16 :goto_0

    :cond_10
    :goto_b
    new-instance v1, Lfve;

    invoke-direct {v1}, Lfve;-><init>()V

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :try_start_0
    iget-object v4, v0, Llve;->a:Leve;

    invoke-virtual {v4, v3}, Leve;->b(Ljava/lang/String;)[B

    move-result-object v3

    iget-object v4, v1, Lfve;->b:Landroid/util/Base64OutputStream;

    invoke-virtual {v4, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v2, "Error while writing hash to byteStream"

    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_11
    invoke-virtual {v1}, Lfve;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
