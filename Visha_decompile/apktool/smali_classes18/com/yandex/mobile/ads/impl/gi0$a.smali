.class public final Lcom/yandex/mobile/ads/impl/gi0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/gi0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/gi0$a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private final f:Ljava/util/ArrayList;

.field private g:Ljava/util/ArrayList;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->c:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->e:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/yandex/mobile/ads/impl/gi0$a;
    .locals 1

    const/4 v0, 0x1

    if-gt v0, p1, :cond_0

    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_0

    .line 99
    iput p1, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->e:I

    return-object p0

    .line 100
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unexpected port: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/gi0;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/gi0$a;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v10, p2

    .line 29
    const-string v1, "input"

    invoke-static {v10, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-static/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/g92;->b(Ljava/lang/String;)I

    move-result v1

    .line 31
    invoke-static {v10, v1}, Lcom/yandex/mobile/ads/impl/g92;->a(Ljava/lang/String;I)I

    move-result v11

    .line 32
    invoke-static {v10, v1, v11}, Lcom/yandex/mobile/ads/impl/gi0$a$a;->c(Ljava/lang/String;II)I

    move-result v2

    const-string v12, "substring(...)"

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, -0x1

    if-eq v2, v15, :cond_2

    .line 33
    const-string v3, "https:"

    invoke-static {v10, v3, v1, v14}, Lg1a;->O(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 34
    const-string v2, "https"

    iput-object v2, v0, Lcom/yandex/mobile/ads/impl/gi0$a;->a:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x6

    goto :goto_0

    .line 35
    :cond_0
    const-string v3, "http:"

    invoke-static {v10, v3, v1, v14}, Lg1a;->O(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 36
    const-string v2, "http"

    iput-object v2, v0, Lcom/yandex/mobile/ads/impl/gi0$a;->a:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x5

    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 38
    invoke-virtual {v10, v13, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v12}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected URL scheme \'http\' or \'https\' but was \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eqz p1, :cond_1e

    .line 40
    invoke-virtual/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/gi0;->k()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/yandex/mobile/ads/impl/gi0$a;->a:Ljava/lang/String;

    .line 41
    :goto_0
    invoke-static {v10, v1, v11}, Lcom/yandex/mobile/ads/impl/gi0$a$a;->d(Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x2

    const/16 v9, 0x3f

    const/16 v8, 0x5c

    const/16 v7, 0x2f

    const/16 v6, 0x23

    if-ge v2, v3, :cond_5

    if-eqz p1, :cond_5

    .line 42
    invoke-virtual/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/gi0;->k()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/gi0$a;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 43
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/gi0;->f()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/yandex/mobile/ads/impl/gi0$a;->b:Ljava/lang/String;

    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/gi0;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/yandex/mobile/ads/impl/gi0$a;->c:Ljava/lang/String;

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/gi0;->g()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/yandex/mobile/ads/impl/gi0$a;->d:Ljava/lang/String;

    .line 46
    invoke-virtual/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/gi0;->i()I

    move-result v2

    iput v2, v0, Lcom/yandex/mobile/ads/impl/gi0$a;->e:I

    .line 47
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/gi0$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 48
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/gi0$a;->f:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/gi0;->d()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eq v1, v11, :cond_4

    .line 49
    invoke-virtual {v10, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_e

    .line 50
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/gi0;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/mobile/ads/impl/gi0$a;->a(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_5
    :goto_1
    add-int/2addr v1, v2

    move v2, v1

    move/from16 v16, v13

    move/from16 v17, v16

    .line 51
    :goto_2
    const-string v1, "@/\\?#"

    invoke-static {v2, v11, v10, v1}, Lcom/yandex/mobile/ads/impl/g92;->a(IILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eq v5, v11, :cond_6

    .line 52
    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_3

    :cond_6
    move v1, v15

    :goto_3
    if-eq v1, v15, :cond_b

    if-eq v1, v6, :cond_b

    if-eq v1, v7, :cond_b

    if-eq v1, v8, :cond_b

    if-eq v1, v9, :cond_b

    const/16 v3, 0x40

    if-eq v1, v3, :cond_7

    goto :goto_2

    :cond_7
    const-string v4, "%40"

    if-nez v16, :cond_a

    const/16 v1, 0x3a

    .line 53
    invoke-static {v10, v1, v2, v5}, Lcom/yandex/mobile/ads/impl/g92;->a(Ljava/lang/String;CII)I

    move-result v3

    const/16 v18, 0x0

    const/16 v19, 0xf0

    .line 54
    const-string v20, " \"\':;<=>@[]^`{}|/\\?#"

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v1, p2

    move/from16 p1, v3

    move-object v14, v4

    move-object/from16 v4, v20

    move v15, v5

    move/from16 v5, v21

    move/from16 v6, v22

    move/from16 v7, v23

    move/from16 v8, v18

    move/from16 v9, v19

    invoke-static/range {v1 .. v9}, Lcom/yandex/mobile/ads/impl/gi0$b;->a(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    move-result-object v1

    if-eqz v17, :cond_8

    .line 55
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/gi0$a;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    :cond_8
    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/gi0$a;->b:Ljava/lang/String;

    move/from16 v1, p1

    if-eq v1, v15, :cond_9

    add-int/lit8 v2, v1, 0x1

    const/4 v8, 0x0

    const/16 v9, 0xf0

    .line 57
    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p2

    move v3, v15

    invoke-static/range {v1 .. v9}, Lcom/yandex/mobile/ads/impl/gi0$b;->a(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/gi0$a;->c:Ljava/lang/String;

    const/16 v16, 0x1

    :cond_9
    const/16 v17, 0x1

    goto :goto_4

    :cond_a
    move-object v14, v4

    move v15, v5

    .line 58
    iget-object v9, v0, Lcom/yandex/mobile/ads/impl/gi0$a;->c:Ljava/lang/String;

    const/4 v8, 0x0

    const/16 v18, 0xf0

    .line 59
    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p2

    move v3, v15

    move-object v13, v9

    move/from16 v9, v18

    invoke-static/range {v1 .. v9}, Lcom/yandex/mobile/ads/impl/gi0$b;->a(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/gi0$a;->c:Ljava/lang/String;

    :goto_4
    add-int/lit8 v2, v15, 0x1

    const/16 v6, 0x23

    const/16 v7, 0x2f

    const/16 v8, 0x5c

    const/16 v9, 0x3f

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, -0x1

    goto/16 :goto_2

    :cond_b
    move v15, v5

    .line 60
    invoke-static {v10, v2, v15}, Lcom/yandex/mobile/ads/impl/gi0$a$a;->b(Ljava/lang/String;II)I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    const-string v4, "\""

    const/4 v5, 0x4

    if-ge v3, v15, :cond_d

    const/4 v6, 0x0

    .line 61
    invoke-static {v10, v2, v1, v6, v5}, Lcom/yandex/mobile/ads/impl/gi0$b;->a(Ljava/lang/String;IIZI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/yandex/mobile/ads/impl/jg0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/yandex/mobile/ads/impl/gi0$a;->d:Ljava/lang/String;

    .line 62
    invoke-static {v10, v3, v15}, Lcom/yandex/mobile/ads/impl/gi0$a$a;->a(Ljava/lang/String;II)I

    move-result v5

    iput v5, v0, Lcom/yandex/mobile/ads/impl/gi0$a;->e:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_c

    const/4 v13, 0x0

    goto :goto_5

    .line 63
    :cond_c
    invoke-virtual {v10, v3, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid URL port: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    const/4 v13, 0x0

    .line 65
    invoke-static {v10, v2, v1, v13, v5}, Lcom/yandex/mobile/ads/impl/gi0$b;->a(Ljava/lang/String;IIZI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yandex/mobile/ads/impl/jg0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/yandex/mobile/ads/impl/gi0$a;->d:Ljava/lang/String;

    .line 66
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/gi0$a;->a:Ljava/lang/String;

    invoke-static {v3}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/yandex/mobile/ads/impl/gi0$b;->a(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/yandex/mobile/ads/impl/gi0$a;->e:I

    .line 67
    :goto_5
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/gi0$a;->d:Ljava/lang/String;

    if-eqz v3, :cond_1d

    move v1, v15

    .line 68
    :cond_e
    :goto_6
    const-string v2, "?#"

    invoke-static {v1, v11, v10, v2}, Lcom/yandex/mobile/ads/impl/g92;->a(IILjava/lang/String;Ljava/lang/String;)I

    move-result v12

    if-ne v1, v12, :cond_f

    goto/16 :goto_e

    .line 69
    :cond_f
    invoke-virtual {v10, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const-string v14, ""

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_11

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_10

    goto :goto_8

    .line 70
    :cond_10
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/gi0$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3, v14}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_7
    move v2, v1

    goto :goto_9

    .line 71
    :cond_11
    :goto_8
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/gi0$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 72
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/gi0$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :goto_9
    if-ge v2, v12, :cond_1a

    .line 73
    const-string v1, "/\\"

    invoke-static {v2, v12, v10, v1}, Lcom/yandex/mobile/ads/impl/g92;->a(IILjava/lang/String;Ljava/lang/String;)I

    move-result v15

    if-ge v15, v12, :cond_12

    const/16 v16, 0x1

    goto :goto_a

    :cond_12
    move/from16 v16, v13

    :goto_a
    const/4 v8, 0x0

    const/16 v9, 0xf0

    .line 74
    const-string v4, " \"<>^`{}|/\\?#"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p2

    move v3, v15

    invoke-static/range {v1 .. v9}, Lcom/yandex/mobile/ads/impl/gi0$b;->a(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    move-result-object v1

    .line 75
    const-string v2, "."

    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    const-string v2, "%2e"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_13

    goto/16 :goto_d

    .line 76
    :cond_13
    const-string v2, ".."

    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 77
    const-string v2, "%2e."

    invoke-static {v1, v2, v3}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_16

    .line 78
    const-string v2, ".%2e"

    invoke-static {v1, v2, v3}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_16

    .line 79
    const-string v2, "%2e%2e"

    invoke-static {v1, v2, v3}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_c

    .line 80
    :cond_14
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/gi0$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_15

    .line 81
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/gi0$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v2, v4, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 82
    :cond_15
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/gi0$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_b
    if-eqz v16, :cond_18

    .line 83
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/gi0$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 84
    :cond_16
    :goto_c
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/gi0$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 85
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/gi0$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    .line 86
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/gi0$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2, v14}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 87
    :cond_17
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/gi0$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    :goto_d
    if-eqz v16, :cond_19

    add-int/lit8 v2, v15, 0x1

    goto/16 :goto_9

    :cond_19
    move v2, v15

    goto/16 :goto_9

    :cond_1a
    :goto_e
    if-ge v12, v11, :cond_1b

    .line 88
    invoke-virtual {v10, v12}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3f

    if-ne v1, v2, :cond_1b

    const/16 v13, 0x23

    .line 89
    invoke-static {v10, v13, v12, v11}, Lcom/yandex/mobile/ads/impl/g92;->a(Ljava/lang/String;CII)I

    move-result v14

    add-int/lit8 v2, v12, 0x1

    const/4 v8, 0x0

    const/16 v9, 0xd0

    .line 90
    const-string v4, " \"\'<>#"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v1, p2

    move v3, v14

    invoke-static/range {v1 .. v9}, Lcom/yandex/mobile/ads/impl/gi0$b;->a(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/gi0$b;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 92
    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/gi0$a;->g:Ljava/util/ArrayList;

    move v12, v14

    goto :goto_f

    :cond_1b
    const/16 v13, 0x23

    :goto_f
    if-ge v12, v11, :cond_1c

    .line 93
    invoke-virtual {v10, v12}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v13, :cond_1c

    const/4 v1, 0x1

    add-int/lit8 v2, v12, 0x1

    const/4 v8, 0x1

    const/16 v9, 0xb0

    .line 94
    const-string v4, ""

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p2

    move v3, v11

    invoke-static/range {v1 .. v9}, Lcom/yandex/mobile/ads/impl/gi0$b;->a(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/gi0$a;->h:Ljava/lang/String;

    :cond_1c
    return-object v0

    .line 95
    :cond_1d
    invoke-virtual {v10, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid URL host: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 98
    const-string v1, "Expected URL scheme \'http\' or \'https\' but no colon was found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a()Lcom/yandex/mobile/ads/impl/gi0;
    .locals 14

    .line 1
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->a:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->b:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-static {v0, v2, v2, v2, v3}, Lcom/yandex/mobile/ads/impl/gi0$b;->a(Ljava/lang/String;IIZI)Ljava/lang/String;

    move-result-object v4

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->c:Ljava/lang/String;

    invoke-static {v0, v2, v2, v2, v3}, Lcom/yandex/mobile/ads/impl/gi0$b;->a(Ljava/lang/String;IIZI)Ljava/lang/String;

    move-result-object v5

    .line 4
    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->d:Ljava/lang/String;

    if-eqz v6, :cond_8

    .line 5
    iget v0, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->e:I

    const/4 v7, -0x1

    if-eq v0, v7, :cond_0

    :goto_0
    move v7, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->a:Ljava/lang/String;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    .line 6
    const-string v8, "scheme"

    invoke-static {v0, v8}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const-string v8, "http"

    invoke-static {v0, v8}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v0, 0x50

    goto :goto_0

    .line 8
    :cond_1
    const-string v8, "https"

    invoke-static {v0, v8}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1bb

    goto :goto_0

    .line 9
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->f:Ljava/util/ArrayList;

    .line 10
    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v0, v9}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 12
    check-cast v10, Ljava/lang/String;

    .line 13
    invoke-static {v10, v2, v2, v2, v3}, Lcom/yandex/mobile/ads/impl/gi0$b;->a(Ljava/lang/String;IIZI)Ljava/lang/String;

    move-result-object v10

    .line 14
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->g:Ljava/util/ArrayList;

    const/4 v10, 0x0

    if-eqz v0, :cond_5

    .line 16
    new-instance v11, Ljava/util/ArrayList;

    invoke-static {v0, v9}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v11, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 18
    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_4

    const/4 v12, 0x1

    const/4 v13, 0x3

    .line 19
    invoke-static {v9, v2, v2, v12, v13}, Lcom/yandex/mobile/ads/impl/gi0$b;->a(Ljava/lang/String;IIZI)Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    :cond_4
    move-object v9, v10

    .line 20
    :goto_4
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    move-object v11, v10

    .line 21
    :cond_6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->h:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-static {v0, v2, v2, v2, v3}, Lcom/yandex/mobile/ads/impl/gi0$b;->a(Ljava/lang/String;IIZI)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 22
    :cond_7
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/gi0$a;->toString()Ljava/lang/String;

    move-result-object v9

    .line 23
    new-instance p0, Lcom/yandex/mobile/ads/impl/gi0;

    move-object v0, p0

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move v5, v7

    move-object v6, v8

    move-object v7, v11

    move-object v8, v10

    invoke-direct/range {v0 .. v9}, Lcom/yandex/mobile/ads/impl/gi0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 24
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "host == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "scheme == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 9

    if-eqz p1, :cond_0

    const/4 v7, 0x0

    const/16 v8, 0xd3

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 26
    const-string v3, " \"\'<>#"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Lcom/yandex/mobile/ads/impl/gi0$b;->a(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 27
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/gi0$b;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 28
    :goto_0
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->g:Ljava/util/ArrayList;

    return-void
.end method

.method public final b(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/gi0$a;
    .locals 2

    .line 2
    const-string v0, "host"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x7

    .line 3
    invoke-static {p1, v0, v0, v0, v1}, Lcom/yandex/mobile/ads/impl/gi0$b;->a(Ljava/lang/String;IIZI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/jg0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->d:Ljava/lang/String;

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected host: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->f:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final b(I)V
    .locals 0

    .line 8
    iput p1, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->e:I

    return-void
.end method

.method public final c()Lcom/yandex/mobile/ads/impl/gi0$a;
    .locals 11

    .line 1
    const-string v0, ""

    const-string v1, "password"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/16 v10, 0xfb

    .line 2
    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lcom/yandex/mobile/ads/impl/gi0$b;->a(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/gi0$a;
    .locals 3

    .line 3
    const-string v0, "scheme"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    const-string v0, "http"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->a:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_0
    const-string v0, "https"

    invoke-static {p1, v0, v1}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->a:Ljava/lang/String;

    :goto_0
    return-object p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected scheme: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d()Lcom/yandex/mobile/ads/impl/gi0$a;
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->d:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Lkotlin/text/Regex;

    const-string v3, "[\"<>^`{|}]"

    invoke-direct {v2, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->d:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_1

    .line 3
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    const/4 v13, 0x0

    const/16 v14, 0xe3

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 4
    const-string v9, "[]"

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static/range {v6 .. v14}, Lcom/yandex/mobile/ads/impl/gi0$b;->a(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_2
    if-ge v2, v3, :cond_3

    .line 7
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_2

    const/4 v12, 0x0

    const/16 v13, 0xc3

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 8
    const-string v8, "\\^`{|}"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-static/range {v5 .. v13}, Lcom/yandex/mobile/ads/impl/gi0$b;->a(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_2
    move-object v4, v1

    :goto_3
    invoke-interface {v0, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 9
    :cond_3
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->h:Ljava/lang/String;

    if-eqz v4, :cond_4

    const/4 v11, 0x1

    const/16 v12, 0xa3

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 10
    const-string v7, " \"#<>\\^`{|}"

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static/range {v4 .. v12}, Lcom/yandex/mobile/ads/impl/gi0$b;->a(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    move-result-object v1

    :cond_4
    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->h:Ljava/lang/String;

    return-void
.end method

.method public final e()Lcom/yandex/mobile/ads/impl/gi0$a;
    .locals 11

    .line 3
    const-string v0, ""

    const-string v1, "username"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/16 v10, 0xfb

    .line 4
    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lcom/yandex/mobile/ads/impl/gi0$b;->a(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->c:Ljava/lang/String;

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->b:Ljava/lang/String;

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->d:Ljava/lang/String;

    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->a:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x3a

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    :goto_1
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->d:Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    const/4 v5, 0x0

    invoke-static {v1, v2, v4, v3, v5}, Lj1a;->W(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_2
    iget v1, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->e:I

    const/4 v5, -0x1

    if-ne v1, v5, :cond_6

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->a:Ljava/lang/String;

    if-eqz v6, :cond_d

    :cond_6
    const/16 v6, 0x1bb

    const-string v7, "https"

    const/16 v8, 0x50

    const-string v9, "http"

    const-string v10, "scheme"

    if-eq v1, v5, :cond_7

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->a:Ljava/lang/String;

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {v1, v10}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v9}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    move v1, v8

    goto :goto_3

    :cond_8
    invoke-static {v1, v7}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v6

    goto :goto_3

    :cond_9
    move v1, v5

    :goto_3
    iget-object v11, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->a:Ljava/lang/String;

    if-eqz v11, :cond_c

    invoke-static {v11}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {v11, v10}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11, v9}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    move v5, v8

    goto :goto_4

    :cond_a
    invoke-static {v11, v7}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    move v5, v6

    :cond_b
    :goto_4
    if-eq v1, v5, :cond_d

    :cond_c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_d
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->f:Ljava/util/ArrayList;

    const-string v2, "<this>"

    invoke-static {v1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "out"

    invoke-static {v0, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v4

    :goto_5
    if-ge v7, v6, :cond_e

    const/16 v8, 0x2f

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_e
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->g:Ljava/util/ArrayList;

    if-eqz v1, :cond_13

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->g:Ljava/util/ArrayList;

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {v1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v4, v2}, Lwn8;->q(II)Lu15;

    move-result-object v2

    invoke-static {v2, v3}, Lwn8;->p(Ls15;I)Ls15;

    move-result-object v2

    invoke-virtual {v2}, Ls15;->b()I

    move-result v3

    invoke-virtual {v2}, Ls15;->c()I

    move-result v4

    invoke-virtual {v2}, Ls15;->f()I

    move-result v2

    if-lez v2, :cond_f

    if-le v3, v4, :cond_10

    :cond_f
    if-gez v2, :cond_13

    if-gt v4, v3, :cond_13

    :cond_10
    :goto_6
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    add-int/lit8 v6, v3, 0x1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-lez v3, :cond_11

    const/16 v7, 0x26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_11
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_12

    const/16 v5, 0x3d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    if-eq v3, v4, :cond_13

    add-int/2addr v3, v2

    goto :goto_6

    :cond_13
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->h:Ljava/lang/String;

    if-eqz v1, :cond_14

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gi0$a;->h:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
