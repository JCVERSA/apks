.class public final Lyhe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:J

.field public final e:J

.field public final f:Liie;

.field public final g:[Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Lyhe;

.field public final k:Ljava/util/HashMap;

.field public final l:Ljava/util/HashMap;

.field public m:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLiie;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lyhe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyhe;->a:Ljava/lang/String;

    iput-object p2, p0, Lyhe;->b:Ljava/lang/String;

    iput-object p10, p0, Lyhe;->i:Ljava/lang/String;

    iput-object p7, p0, Lyhe;->f:Liie;

    iput-object p8, p0, Lyhe;->g:[Ljava/lang/String;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lyhe;->c:Z

    iput-wide p3, p0, Lyhe;->d:J

    iput-wide p5, p0, Lyhe;->e:J

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p9, p0, Lyhe;->h:Ljava/lang/String;

    iput-object p11, p0, Lyhe;->j:Lyhe;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lyhe;->k:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lyhe;->l:Ljava/util/HashMap;

    return-void
.end method

.method public static b(Ljava/lang/String;JJLiie;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lyhe;)Lyhe;
    .locals 13

    new-instance v12, Lyhe;

    const/4 v2, 0x0

    move-object v0, v12

    move-object v1, p0

    move-wide v3, p1

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Lyhe;-><init>(Ljava/lang/String;Ljava/lang/String;JJLiie;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lyhe;)V

    return-object v12
.end method

.method public static c(Ljava/lang/String;)Lyhe;
    .locals 13

    new-instance v12, Lyhe;

    const-string v0, "\r\n"

    const-string v1, "\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, " *\n *"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, " "

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "[ \t\\x0B\u000c\r]+"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v1, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, ""

    move-object v0, v12

    move-wide v3, v5

    invoke-direct/range {v0 .. v11}, Lyhe;-><init>(Ljava/lang/String;Ljava/lang/String;JJLiie;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lyhe;)V

    return-object v12
.end method

.method public static i(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;
    .locals 2

    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lzvf;

    invoke-direct {v0}, Lzvf;-><init>()V

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Lzvf;->l(Ljava/lang/CharSequence;)Lzvf;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzvf;

    invoke-virtual {p0}, Lzvf;->q()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Landroid/text/SpannableStringBuilder;

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget-object p0, p0, Lyhe;->m:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final d(I)Lyhe;
    .locals 0

    iget-object p0, p0, Lyhe;->m:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyhe;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public final e(JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lyhe;->h:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v7, v0}, Lyhe;->k(JLjava/lang/String;Ljava/util/List;)V

    new-instance v8, Ljava/util/TreeMap;

    invoke-direct {v8}, Ljava/util/TreeMap;-><init>()V

    const/4 v4, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v5, v7

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Lyhe;->m(JZLjava/lang/String;Ljava/util/Map;)V

    move-object v4, p3

    move-object v5, p4

    move-object v6, v7

    move-object v7, v8

    invoke-virtual/range {v1 .. v7}, Lyhe;->l(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_1

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v2, p2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, p2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgie;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lzvf;

    invoke-direct {v3}, Lzvf;-><init>()V

    invoke-virtual {v3, v2}, Lzvf;->c(Landroid/graphics/Bitmap;)Lzvf;

    iget v2, v1, Lgie;->b:F

    invoke-virtual {v3, v2}, Lzvf;->h(F)Lzvf;

    invoke-virtual {v3, p2}, Lzvf;->i(I)Lzvf;

    iget v2, v1, Lgie;->c:F

    invoke-virtual {v3, v2, p2}, Lzvf;->e(FI)Lzvf;

    iget v2, v1, Lgie;->e:I

    invoke-virtual {v3, v2}, Lzvf;->f(I)Lzvf;

    iget v2, v1, Lgie;->f:F

    invoke-virtual {v3, v2}, Lzvf;->k(F)Lzvf;

    iget v2, v1, Lgie;->g:F

    invoke-virtual {v3, v2}, Lzvf;->d(F)Lzvf;

    iget v1, v1, Lgie;->j:I

    invoke-virtual {v3, v1}, Lzvf;->o(I)Lzvf;

    invoke-virtual {v3}, Lzvf;->p()Lfyf;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v8}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lgie;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lzvf;

    invoke-virtual {p3}, Lzvf;->q()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const-class v2, Lwhe;

    invoke-virtual {v0, p2, v1, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lwhe;

    array-length v2, v1

    move v3, p2

    :goto_3
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    const-string v6, ""

    invoke-virtual {v0, v5, v4, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    move v1, p2

    :goto_4
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x20

    if-ge v1, v2, :cond_5

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_4

    move v4, v2

    :goto_5
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_3
    sub-int/2addr v4, v2

    if-lez v4, :cond_4

    add-int/2addr v4, v1

    invoke-virtual {v0, v1, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_4
    move v1, v2

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_6

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_6
    move v1, p2

    :goto_6
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/16 v4, 0xa

    if-ge v1, v2, :cond_8

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_7

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_7

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_7
    move v1, v2

    goto :goto_6

    :cond_8
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_9

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_9

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_9
    move v1, p2

    :goto_7
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_b

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_a

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_a

    invoke-virtual {v0, v1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_a
    move v1, v2

    goto :goto_7

    :cond_b
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_c

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_c

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_c
    iget v0, p5, Lgie;->c:F

    iget v1, p5, Lgie;->d:I

    invoke-virtual {p3, v0, v1}, Lzvf;->e(FI)Lzvf;

    iget v0, p5, Lgie;->e:I

    invoke-virtual {p3, v0}, Lzvf;->f(I)Lzvf;

    iget v0, p5, Lgie;->b:F

    invoke-virtual {p3, v0}, Lzvf;->h(F)Lzvf;

    iget v0, p5, Lgie;->f:F

    invoke-virtual {p3, v0}, Lzvf;->k(F)Lzvf;

    iget v0, p5, Lgie;->i:F

    iget v1, p5, Lgie;->h:I

    invoke-virtual {p3, v0, v1}, Lzvf;->n(FI)Lzvf;

    iget p5, p5, Lgie;->j:I

    invoke-virtual {p3, p5}, Lzvf;->o(I)Lzvf;

    invoke-virtual {p3}, Lzvf;->p()Lfyf;

    move-result-object p3

    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_d
    return-object p0
.end method

.method public final f(Lyhe;)V
    .locals 1

    iget-object v0, p0, Lyhe;->m:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyhe;->m:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lyhe;->m:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final g(J)Z
    .locals 8

    iget-wide v0, p0, Lyhe;->d:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    const/4 v5, 0x1

    if-nez v4, :cond_0

    iget-wide v0, p0, Lyhe;->e:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    move-wide v0, v2

    :cond_0
    cmp-long v4, v0, p1

    if-gtz v4, :cond_1

    iget-wide v6, p0, Lyhe;->e:J

    cmp-long v6, v6, v2

    if-eqz v6, :cond_5

    :cond_1
    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-wide v0, p0, Lyhe;->e:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_5

    :cond_2
    const/4 v0, 0x0

    if-gtz v4, :cond_4

    iget-wide v1, p0, Lyhe;->e:J

    cmp-long p0, p1, v1

    if-gez p0, :cond_3

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    move v5, v0

    :cond_5
    :goto_0
    return v5
.end method

.method public final h()[J
    .locals 5

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lyhe;->j(Ljava/util/TreeSet;Z)V

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result p0

    new-array p0, p0, [J

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-int/lit8 v4, v1, 0x1

    aput-wide v2, p0, v1

    move v1, v4

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final j(Ljava/util/TreeSet;Z)V
    .locals 6

    iget-object v0, p0, Lyhe;->a:Ljava/lang/String;

    const-string v1, "p"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "div"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez p2, :cond_0

    if-nez v1, :cond_0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lyhe;->i:Ljava/lang/String;

    if-eqz v0, :cond_2

    :cond_0
    iget-wide v2, p0, Lyhe;->d:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-wide v2, p0, Lyhe;->e:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lyhe;->m:Ljava/util/List;

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v3, p0, Lyhe;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Lyhe;->m:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyhe;

    const/4 v4, 0x1

    if-nez p2, :cond_4

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v4, v0

    :cond_4
    :goto_1
    invoke-virtual {v3, p1, v4}, Lyhe;->j(Ljava/util/TreeSet;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final k(JLjava/lang/String;Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lyhe;->h:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    move-object p3, v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lyhe;->g(J)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lyhe;->a:Ljava/lang/String;

    const-string v2, "div"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lyhe;->i:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, p3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lyhe;->a()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Lyhe;->d(I)Lyhe;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lyhe;->k(JLjava/lang/String;Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final l(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v8, p3

    const/4 v1, -0x1

    const/4 v9, 0x1

    invoke-virtual/range {p0 .. p2}, Lyhe;->g(J)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_f

    :cond_0
    iget-object v2, v0, Lyhe;->h:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eq v9, v3, :cond_1

    move-object v10, v2

    goto :goto_0

    :cond_1
    move-object/from16 v10, p5

    :goto_0
    iget-object v2, v0, Lyhe;->l:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, v0, Lyhe;->k:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v6, v3, :cond_23

    move-object/from16 v11, p6

    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzvf;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v12, p4

    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgie;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v7, v7, Lgie;->j:I

    iget-object v13, v0, Lyhe;->f:Liie;

    iget-object v14, v0, Lyhe;->g:[Ljava/lang/String;

    invoke-static {v13, v14, v8}, Lhie;->a(Liie;[Ljava/lang/String;Ljava/util/Map;)Liie;

    move-result-object v13

    invoke-virtual {v5}, Lzvf;->q()Ljava/lang/CharSequence;

    move-result-object v14

    check-cast v14, Landroid/text/SpannableStringBuilder;

    if-nez v14, :cond_4

    new-instance v14, Landroid/text/SpannableStringBuilder;

    invoke-direct {v14}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Lzvf;->l(Ljava/lang/CharSequence;)Lzvf;

    :cond_4
    if-eqz v13, :cond_2

    iget-object v15, v0, Lyhe;->j:Lyhe;

    invoke-virtual {v13}, Liie;->v()I

    move-result v4

    const/16 v9, 0x21

    if-eq v4, v1, :cond_5

    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-virtual {v13}, Liie;->v()I

    move-result v1

    invoke-direct {v4, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {v14, v4, v6, v3, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_5
    invoke-virtual {v13}, Liie;->m()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v1}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-interface {v14, v1, v6, v3, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_6
    invoke-virtual {v13}, Liie;->n()Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-interface {v14, v1, v6, v3, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_7
    invoke-virtual {v13}, Liie;->l()Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v13}, Liie;->r()I

    move-result v4

    invoke-direct {v1, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-static {v14, v1, v6, v3, v9}, Lr3g;->b(Landroid/text/Spannable;Ljava/lang/Object;III)V

    :cond_8
    invoke-virtual {v13}, Liie;->k()Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v13}, Liie;->q()I

    move-result v4

    invoke-direct {v1, v4}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-static {v14, v1, v6, v3, v9}, Lr3g;->b(Landroid/text/Spannable;Ljava/lang/Object;III)V

    :cond_9
    invoke-virtual {v13}, Liie;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v1, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v13}, Liie;->g()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-static {v14, v1, v6, v3, v9}, Lr3g;->b(Landroid/text/Spannable;Ljava/lang/Object;III)V

    :cond_a
    invoke-virtual {v13}, Liie;->y()Lxhe;

    move-result-object v1

    const/4 v4, 0x2

    if-eqz v1, :cond_f

    invoke-virtual {v13}, Liie;->y()Lxhe;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v9, v1, Lxhe;->a:I

    move-object/from16 v16, v2

    const/4 v2, -0x1

    if-ne v9, v2, :cond_d

    if-eq v7, v4, :cond_b

    const/4 v2, 0x1

    if-ne v7, v2, :cond_c

    :cond_b
    const/4 v2, 0x3

    goto :goto_3

    :cond_c
    const/4 v2, 0x1

    :goto_3
    move v9, v2

    const/4 v2, 0x1

    goto :goto_4

    :cond_d
    iget v2, v1, Lxhe;->b:I

    :goto_4
    iget v1, v1, Lxhe;->c:I

    const/4 v7, -0x2

    if-ne v1, v7, :cond_e

    const/4 v1, 0x1

    :cond_e
    new-instance v7, Lh5g;

    invoke-direct {v7, v9, v2, v1}, Lh5g;-><init>(III)V

    const/16 v1, 0x21

    invoke-static {v14, v7, v6, v3, v1}, Lr3g;->b(Landroid/text/Spannable;Ljava/lang/Object;III)V

    goto :goto_5

    :cond_f
    move-object/from16 v16, v2

    :goto_5
    invoke-virtual {v13}, Liie;->u()I

    move-result v1

    if-eq v1, v4, :cond_12

    const/4 v2, 0x3

    if-eq v1, v2, :cond_11

    const/4 v2, 0x4

    if-eq v1, v2, :cond_11

    :cond_10
    :goto_6
    const/4 v4, -0x1

    goto/16 :goto_c

    :cond_11
    new-instance v1, Lwhe;

    invoke-direct {v1}, Lwhe;-><init>()V

    const/16 v2, 0x21

    invoke-interface {v14, v1, v6, v3, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_6

    :cond_12
    :goto_7
    if-eqz v15, :cond_14

    iget-object v2, v15, Lyhe;->f:Liie;

    iget-object v7, v15, Lyhe;->g:[Ljava/lang/String;

    invoke-static {v2, v7, v8}, Lhie;->a(Liie;[Ljava/lang/String;Ljava/util/Map;)Liie;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Liie;->u()I

    move-result v2

    const/4 v7, 0x1

    if-eq v2, v7, :cond_15

    :cond_13
    iget-object v15, v15, Lyhe;->j:Lyhe;

    goto :goto_7

    :cond_14
    const/4 v15, 0x0

    :cond_15
    if-eqz v15, :cond_10

    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    invoke-interface {v2, v15}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    :cond_16
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_18

    invoke-interface {v2}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lyhe;

    iget-object v9, v7, Lyhe;->f:Liie;

    iget-object v1, v7, Lyhe;->g:[Ljava/lang/String;

    invoke-static {v9, v1, v8}, Lhie;->a(Liie;[Ljava/lang/String;Ljava/util/Map;)Liie;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Liie;->u()I

    move-result v1

    const/4 v9, 0x3

    if-ne v1, v9, :cond_17

    move-object v1, v7

    goto :goto_9

    :cond_17
    invoke-virtual {v7}, Lyhe;->a()I

    move-result v1

    const/4 v9, -0x1

    add-int/2addr v1, v9

    :goto_8
    if-ltz v1, :cond_16

    invoke-virtual {v7, v1}, Lyhe;->d(I)Lyhe;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    add-int/2addr v1, v9

    const/4 v4, 0x2

    goto :goto_8

    :cond_18
    const/4 v1, 0x0

    :goto_9
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lyhe;->a()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1b

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lyhe;->d(I)Lyhe;

    move-result-object v4

    iget-object v4, v4, Lyhe;->b:Ljava/lang/String;

    if-eqz v4, :cond_1b

    invoke-virtual {v1, v2}, Lyhe;->d(I)Lyhe;

    move-result-object v2

    iget-object v2, v2, Lyhe;->b:Ljava/lang/String;

    sget v4, Lkfh;->a:I

    iget-object v4, v1, Lyhe;->f:Liie;

    iget-object v1, v1, Lyhe;->g:[Ljava/lang/String;

    invoke-static {v4, v1, v8}, Lhie;->a(Liie;[Ljava/lang/String;Ljava/util/Map;)Liie;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Liie;->t()I

    move-result v1

    :goto_a
    const/4 v4, -0x1

    goto :goto_b

    :cond_19
    const/4 v1, -0x1

    goto :goto_a

    :goto_b
    if-ne v1, v4, :cond_1a

    iget-object v7, v15, Lyhe;->f:Liie;

    iget-object v9, v15, Lyhe;->g:[Ljava/lang/String;

    invoke-static {v7, v9, v8}, Lhie;->a(Liie;[Ljava/lang/String;Ljava/util/Map;)Liie;

    move-result-object v7

    if-eqz v7, :cond_1a

    invoke-virtual {v7}, Liie;->t()I

    move-result v1

    :cond_1a
    new-instance v7, Lo2g;

    invoke-direct {v7, v2, v1}, Lo2g;-><init>(Ljava/lang/String;I)V

    const/16 v1, 0x21

    invoke-interface {v14, v7, v6, v3, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_c

    :cond_1b
    const/4 v4, -0x1

    const-string v1, "TtmlRenderUtil"

    const-string v2, "Skipping rubyText node without exactly one text child."

    invoke-static {v1, v2}, Lzrg;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    invoke-virtual {v13}, Liie;->j()Z

    move-result v1

    if-eqz v1, :cond_1c

    new-instance v1, Ln1g;

    invoke-direct {v1}, Ln1g;-><init>()V

    const/16 v2, 0x21

    invoke-static {v14, v1, v6, v3, v2}, Lr3g;->b(Landroid/text/Spannable;Ljava/lang/Object;III)V

    :cond_1c
    invoke-virtual {v13}, Liie;->s()I

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    const/4 v7, 0x1

    if-eq v1, v7, :cond_1f

    const/4 v7, 0x2

    if-eq v1, v7, :cond_1e

    const/4 v7, 0x3

    if-eq v1, v7, :cond_1d

    goto :goto_d

    :cond_1d
    invoke-virtual {v13}, Liie;->o()F

    move-result v1

    div-float/2addr v1, v2

    const/16 v7, 0x21

    invoke-static {v14, v1, v6, v3, v7}, Lr3g;->a(Landroid/text/Spannable;FIII)V

    goto :goto_d

    :cond_1e
    const/16 v7, 0x21

    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {v13}, Liie;->o()F

    move-result v9

    invoke-direct {v1, v9}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-static {v14, v1, v6, v3, v7}, Lr3g;->b(Landroid/text/Spannable;Ljava/lang/Object;III)V

    goto :goto_d

    :cond_1f
    const/16 v7, 0x21

    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {v13}, Liie;->o()F

    move-result v9

    float-to-int v9, v9

    const/4 v15, 0x1

    invoke-direct {v1, v9, v15}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-static {v14, v1, v6, v3, v7}, Lr3g;->b(Landroid/text/Spannable;Ljava/lang/Object;III)V

    :goto_d
    iget-object v1, v0, Lyhe;->a:Ljava/lang/String;

    const-string v3, "p"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {v13}, Liie;->p()F

    move-result v1

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_20

    invoke-virtual {v13}, Liie;->p()F

    move-result v1

    const/high16 v3, -0x3d4c0000    # -90.0f

    mul-float/2addr v1, v3

    div-float/2addr v1, v2

    invoke-virtual {v5, v1}, Lzvf;->j(F)Lzvf;

    :cond_20
    invoke-virtual {v13}, Liie;->x()Landroid/text/Layout$Alignment;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {v13}, Liie;->x()Landroid/text/Layout$Alignment;

    move-result-object v1

    invoke-virtual {v5, v1}, Lzvf;->m(Landroid/text/Layout$Alignment;)Lzvf;

    :cond_21
    invoke-virtual {v13}, Liie;->w()Landroid/text/Layout$Alignment;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-virtual {v13}, Liie;->w()Landroid/text/Layout$Alignment;

    move-result-object v1

    invoke-virtual {v5, v1}, Lzvf;->g(Landroid/text/Layout$Alignment;)Lzvf;

    :cond_22
    move v1, v4

    move-object/from16 v2, v16

    const/4 v9, 0x1

    goto/16 :goto_1

    :cond_23
    move-object/from16 v12, p4

    move-object/from16 v11, p6

    goto/16 :goto_1

    :cond_24
    move-object/from16 v12, p4

    move-object/from16 v11, p6

    const/4 v2, 0x0

    move v9, v2

    :goto_e
    invoke-virtual/range {p0 .. p0}, Lyhe;->a()I

    move-result v1

    if-ge v9, v1, :cond_25

    invoke-virtual {v0, v9}, Lyhe;->d(I)Lyhe;

    move-result-object v1

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v10

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lyhe;->l(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v1, 0x1

    add-int/2addr v9, v1

    goto :goto_e

    :cond_25
    :goto_f
    return-void
.end method

.method public final m(JZLjava/lang/String;Ljava/util/Map;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v7, p5

    iget-object v1, v0, Lyhe;->k:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v8, v0, Lyhe;->l:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    iget-object v2, v0, Lyhe;->a:Ljava/lang/String;

    const-string v3, "metadata"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v3, v0, Lyhe;->h:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v9, 0x1

    if-eq v9, v4, :cond_1

    move-object v10, v3

    goto :goto_0

    :cond_1
    move-object/from16 v10, p4

    :goto_0
    iget-boolean v3, v0, Lyhe;->c:Z

    if-eqz v3, :cond_2

    if-eqz p3, :cond_2

    invoke-static {v10, v7}, Lyhe;->i(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    iget-object v0, v0, Lyhe;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-void

    :cond_2
    const-string v3, "br"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v11, 0xa

    if-eqz v3, :cond_4

    if-nez p3, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v10, v7}, Lyhe;->i(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    return-void

    :cond_4
    :goto_1
    invoke-virtual/range {p0 .. p2}, Lyhe;->g(J)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzvf;

    invoke-virtual {v4}, Lzvf;->q()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    const-string v1, "p"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const/4 v13, 0x0

    move v14, v13

    :goto_3
    invoke-virtual {p0}, Lyhe;->a()I

    move-result v1

    if-ge v14, v1, :cond_8

    invoke-virtual {p0, v14}, Lyhe;->d(I)Lyhe;

    move-result-object v1

    if-nez p3, :cond_6

    if-eqz v12, :cond_7

    :cond_6
    move v4, v9

    goto :goto_4

    :cond_7
    move v4, v13

    :goto_4
    move-wide/from16 v2, p1

    move-object v5, v10

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lyhe;->m(JZLjava/lang/String;Ljava/util/Map;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_8
    if-eqz v12, :cond_a

    invoke-static {v10, v7}, Lyhe;->i(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    :goto_5
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_9

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_9

    goto :goto_5

    :cond_9
    if-ltz v1, :cond_a

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    if-eq v1, v11, :cond_a

    invoke-virtual {v0, v11}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :cond_a
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzvf;

    invoke-virtual {v1}, Lzvf;->q()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_b
    :goto_7
    return-void
.end method
