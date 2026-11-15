.class public final Ltt8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltt8$a;
    }
.end annotation


# static fields
.field public static final c:Ltt8$a;

.field public static final d:Lkotlin/text/Regex;

.field public static final e:Lkotlin/text/Regex;


# instance fields
.field public final a:Landroid/util/LruCache;

.field public final b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltt8$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltt8$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ltt8;->c:Ltt8$a;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "(\\d+)[x*\u00d7X](\\d+)"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltt8;->d:Lkotlin/text/Regex;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "\\d+"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltt8;->e:Lkotlin/text/Regex;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Ltt8;->a:Landroid/util/LruCache;

    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Ltt8;->b:[I

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Ltt8;->k(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lc26;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ltt8;->j(Lc26;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(I)Z
    .locals 0

    invoke-static {p0}, Ltt8;->m(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Ltt8;->l(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static final j(Lc26;)Ljava/lang/String;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lc26;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final k(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x5

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final l(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lf1a;->r(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static final m(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gt v1, p0, :cond_0

    const v2, 0x186a0

    if-ge p0, v2, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method


# virtual methods
.method public final e(II)Z
    .locals 1

    const/4 p0, 0x1

    if-gt p0, p1, :cond_0

    const v0, 0x186a0

    if-ge p1, v0, :cond_0

    if-gt p0, p2, :cond_0

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final f(Ljava/lang/String;)[I
    .locals 5

    const/4 v0, 0x0

    const-string v1, "ResolutionParser"

    if-eqz p1, :cond_5

    invoke-static {p1}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p1}, Lj1a;->i1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    const-string p0, "Empty resolution after trim"

    invoke-static {v1, p0}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    iget-object v2, p0, Ltt8;->a:Landroid/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    if-eqz v2, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cache hit for resolution: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Ltt8;->b:[I

    if-ne v2, p0, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    return-object v0

    :cond_3
    invoke-virtual {p0, p1}, Ltt8;->h(Ljava/lang/String;)[I

    move-result-object v0

    iget-object v1, p0, Ltt8;->a:Landroid/util/LruCache;

    if-nez v0, :cond_4

    iget-object p0, p0, Ltt8;->b:[I

    goto :goto_1

    :cond_4
    move-object p0, v0

    :goto_1
    invoke-virtual {v1, p1, p0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_5
    :goto_2
    const-string p0, "Empty or null resolution input"

    invoke-static {v1, p0}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final g(Ljava/lang/String;)[I
    .locals 11

    const-string p0, "substring(...)"

    const-string v0, "ResolutionParser"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    return-object v3

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    const/16 v5, 0x20

    if-ge v4, v1, :cond_1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_7

    :cond_1
    if-lt v4, v1, :cond_2

    return-object v3

    :cond_2
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_3

    return-object v3

    :cond_3
    move v6, v4

    :goto_1
    if-ge v6, v1, :cond_4

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_4

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    if-ne v4, v6, :cond_5

    return-object v3

    :cond_5
    move v7, v6

    :goto_2
    if-ge v7, v1, :cond_6

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v5, :cond_6

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    if-lt v7, v1, :cond_7

    return-object v3

    :cond_7
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const-string v9, "x*\u00d7X"

    const/4 v10, 0x2

    invoke-static {v9, v8, v2, v10, v3}, Lj1a;->W(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return-object v3

    :cond_8
    const/4 v2, 0x1

    add-int/2addr v7, v2

    :goto_3
    if-ge v7, v1, :cond_9

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v5, :cond_9

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_9
    if-lt v7, v1, :cond_a

    return-object v3

    :cond_a
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-nez v8, :cond_b

    return-object v3

    :cond_b
    move v8, v7

    :goto_4
    if-ge v8, v1, :cond_c

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_c

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_c
    if-ne v7, v8, :cond_d

    return-object v3

    :cond_d
    move v9, v8

    :goto_5
    if-ge v9, v1, :cond_e

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v5, :cond_e

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_e
    if-ge v9, v1, :cond_f

    return-object v3

    :cond_f
    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v5, 0x5

    if-gt p0, v5, :cond_11

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p0

    if-le p0, v5, :cond_10

    goto :goto_6

    :cond_10
    invoke-static {v1}, Lf1a;->r(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {v4}, Lf1a;->r(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v2, p0, :cond_11

    const v4, 0x186a0

    if-ge p0, v4, :cond_11

    if-gt v2, v1, :cond_11

    if-ge v1, v4, :cond_11

    filled-new-array {p0, v1}, [I

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_11
    :goto_6
    return-object v3

    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseFastPath: Unexpected error for resolution: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lvmb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3

    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseFastPath: String index error for resolution: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lvmb;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :catch_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseFastPath: Number format error for resolution: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lvmb;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public final h(Ljava/lang/String;)[I
    .locals 3

    invoke-virtual {p0, p1}, Ltt8;->g(Ljava/lang/String;)[I

    move-result-object v0

    const-string v1, "toString(...)"

    const-string v2, "ResolutionParser"

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fast path success: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Ltt8;->i(Ljava/lang/String;)[I

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Regex path success: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Both paths failed for resolution: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lvmb;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public final i(Ljava/lang/String;)[I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Ltt8;->n(Ljava/lang/String;)[I

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ltt8;->e:Lkotlin/text/Regex;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v1, v0}, Lkotlin/text/Regex;->findAll$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lpc9;

    move-result-object p0

    new-instance p1, Lpt8;

    invoke-direct {p1}, Lpt8;-><init>()V

    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->R(Lpc9;Le74;)Lpc9;

    move-result-object p0

    new-instance p1, Lqt8;

    invoke-direct {p1}, Lqt8;-><init>()V

    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->F(Lpc9;Le74;)Lpc9;

    move-result-object p0

    new-instance p1, Lrt8;

    invoke-direct {p1}, Lrt8;-><init>()V

    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->S(Lpc9;Le74;)Lpc9;

    move-result-object p0

    new-instance p1, Lst8;

    invoke-direct {p1}, Lst8;-><init>()V

    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->F(Lpc9;Le74;)Lpc9;

    move-result-object p0

    invoke-static {p0}, Lkotlin/sequences/SequencesKt___SequencesKt;->c0(Lpc9;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lt p1, v1, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    filled-new-array {p1, p0}, [I

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    return-object v0

    :goto_0
    const-string p1, "ResolutionParser"

    const-string v1, "parseRegexPath error"

    invoke-static {p1, v1, p0}, Lvmb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final n(Ljava/lang/String;)[I
    .locals 6

    const-string v0, "ResolutionParser"

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Ltt8;->d:Lkotlin/text/Regex;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v2, p1, v3, v4, v1}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lc26;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v2}, Lc26;->b()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Lc26;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-gt v4, v5, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v3}, Lf1a;->r(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Lf1a;->r(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v3, :cond_4

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Ltt8;->e(II)Z

    move-result p0

    if-nez p0, :cond_3

    return-object v1

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    filled-new-array {p0, v2}, [I

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_4
    :goto_0
    return-object v1

    :cond_5
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number too long in specific pattern: "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " x "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lvmb;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing specific pattern for resolution: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lvmb;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method
