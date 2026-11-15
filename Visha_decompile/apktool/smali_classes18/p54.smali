.class public final Lp54;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Lby6;

.field public static final f:Ljava/util/regex/Pattern;

.field public static final g:Le74;


# instance fields
.field public final a:Ljava/lang/String;

.field public transient b:Lo54;

.field public transient c:Lp54;

.field public transient d:Lby6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "<root>"

    invoke-static {v0}, Lby6;->j(Ljava/lang/String;)Lby6;

    move-result-object v0

    sput-object v0, Lp54;->e:Lby6;

    const-string v0, "\\."

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lp54;->f:Ljava/util/regex/Pattern;

    new-instance v0, Lp54$a;

    invoke-direct {v0}, Lp54$a;-><init>()V

    sput-object v0, Lp54;->g:Le74;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x2

    invoke-static {v0}, Lp54;->a(I)V

    .line 4
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lp54;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lo54;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lp54;->a(I)V

    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lp54;->a(I)V

    .line 1
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp54;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lp54;->b:Lo54;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lp54;Lby6;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x3

    invoke-static {v0}, Lp54;->a(I)V

    .line 6
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lp54;->a:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lp54;->c:Lp54;

    .line 9
    iput-object p3, p0, Lp54;->d:Lby6;

    return-void
.end method

.method public static synthetic a(I)V
    .locals 8

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :pswitch_1
    const-string v0, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_1

    :pswitch_2
    const/4 v2, 0x3

    goto :goto_1

    :pswitch_3
    move v2, v1

    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kotlin/reflect/jvm/internal/impl/name/FqNameUnsafe"

    const-string v4, "shortName"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq p0, v6, :cond_0

    packed-switch p0, :pswitch_data_2

    const-string v7, "fqName"

    aput-object v7, v2, v5

    goto :goto_2

    :pswitch_4
    aput-object v4, v2, v5

    goto :goto_2

    :pswitch_5
    const-string v7, "segment"

    aput-object v7, v2, v5

    goto :goto_2

    :pswitch_6
    const-string v7, "name"

    aput-object v7, v2, v5

    goto :goto_2

    :pswitch_7
    aput-object v3, v2, v5

    goto :goto_2

    :cond_0
    const-string v7, "safe"

    aput-object v7, v2, v5

    :goto_2
    packed-switch p0, :pswitch_data_3

    :pswitch_8
    aput-object v3, v2, v6

    goto :goto_3

    :pswitch_9
    const-string v3, "toString"

    aput-object v3, v2, v6

    goto :goto_3

    :pswitch_a
    const-string v3, "pathSegments"

    aput-object v3, v2, v6

    goto :goto_3

    :pswitch_b
    const-string v3, "shortNameOrSpecial"

    aput-object v3, v2, v6

    goto :goto_3

    :pswitch_c
    aput-object v4, v2, v6

    goto :goto_3

    :pswitch_d
    const-string v3, "parent"

    aput-object v3, v2, v6

    goto :goto_3

    :pswitch_e
    const-string v3, "toSafe"

    aput-object v3, v2, v6

    goto :goto_3

    :pswitch_f
    const-string v3, "asString"

    aput-object v3, v2, v6

    :goto_3
    packed-switch p0, :pswitch_data_4

    const-string v3, "<init>"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_10
    const-string v3, "topLevel"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_11
    const-string v3, "startsWith"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_12
    const-string v3, "child"

    aput-object v3, v2, v1

    :goto_4
    :pswitch_13
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_5

    :pswitch_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_15
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_8
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x4
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_11
        :pswitch_10
        :pswitch_13
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x4
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method public static m(Lby6;)Lp54;
    .locals 3

    if-nez p0, :cond_0

    const/16 v0, 0x10

    invoke-static {v0}, Lp54;->a(I)V

    :cond_0
    new-instance v0, Lp54;

    invoke-virtual {p0}, Lby6;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lo54;->c:Lo54;

    invoke-virtual {v2}, Lo54;->j()Lp54;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lp54;-><init>(Ljava/lang/String;Lp54;Lby6;)V

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lp54;->a:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 v0, 0x4

    invoke-static {v0}, Lp54;->a(I)V

    :cond_0
    return-object p0
.end method

.method public c(Lby6;)Lp54;
    .locals 2

    if-nez p1, :cond_0

    const/16 v0, 0x9

    invoke-static {v0}, Lp54;->a(I)V

    :cond_0
    invoke-virtual {p0}, Lp54;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lby6;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lp54;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lby6;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Lp54;

    invoke-direct {v1, v0, p0, p1}, Lp54;-><init>(Ljava/lang/String;Lp54;Lby6;)V

    return-object v1
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, Lp54;->a:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lp54;->a:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lby6;->f(Ljava/lang/String;)Lby6;

    move-result-object v1

    iput-object v1, p0, Lp54;->d:Lby6;

    new-instance v1, Lp54;

    iget-object v2, p0, Lp54;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lp54;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lp54;->c:Lp54;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lp54;->a:Ljava/lang/String;

    invoke-static {v0}, Lby6;->f(Ljava/lang/String;)Lby6;

    move-result-object v0

    iput-object v0, p0, Lp54;->d:Lby6;

    sget-object v0, Lo54;->c:Lo54;

    invoke-virtual {v0}, Lo54;->j()Lp54;

    move-result-object v0

    iput-object v0, p0, Lp54;->c:Lp54;

    :goto_0
    return-void
.end method

.method public e()Z
    .locals 0

    iget-object p0, p0, Lp54;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lp54;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lp54;

    iget-object p0, p0, Lp54;->a:Ljava/lang/String;

    iget-object p1, p1, Lp54;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lp54;->b:Lo54;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lp54;->b()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public g()Lp54;
    .locals 1

    iget-object v0, p0, Lp54;->c:Lp54;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    const/4 p0, 0x7

    invoke-static {p0}, Lp54;->a(I)V

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lp54;->e()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lp54;->d()V

    iget-object p0, p0, Lp54;->c:Lp54;

    if-nez p0, :cond_2

    const/16 v0, 0x8

    invoke-static {v0}, Lp54;->a(I)V

    :cond_2
    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "root"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public h()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lp54;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object v0, Lp54;->f:Ljava/util/regex/Pattern;

    iget-object p0, p0, Lp54;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lp54;->g:Le74;

    invoke-static {p0, v0}, Lhi;->w0([Ljava/lang/Object;Le74;)Ljava/util/List;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    const/16 v0, 0xe

    invoke-static {v0}, Lp54;->a(I)V

    :cond_1
    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lp54;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public i()Lby6;
    .locals 1

    iget-object v0, p0, Lp54;->d:Lby6;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    const/16 p0, 0xa

    invoke-static {p0}, Lp54;->a(I)V

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lp54;->e()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lp54;->d()V

    iget-object p0, p0, Lp54;->d:Lby6;

    if-nez p0, :cond_2

    const/16 v0, 0xb

    invoke-static {v0}, Lp54;->a(I)V

    :cond_2
    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "root"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public j()Lby6;
    .locals 1

    invoke-virtual {p0}, Lp54;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lp54;->e:Lby6;

    if-nez p0, :cond_0

    const/16 v0, 0xc

    invoke-static {v0}, Lp54;->a(I)V

    :cond_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Lp54;->i()Lby6;

    move-result-object p0

    if-nez p0, :cond_2

    const/16 v0, 0xd

    invoke-static {v0}, Lp54;->a(I)V

    :cond_2
    return-object p0
.end method

.method public k(Lby6;)Z
    .locals 3

    if-nez p1, :cond_0

    const/16 v0, 0xf

    invoke-static {v0}, Lp54;->a(I)V

    :cond_0
    invoke-virtual {p0}, Lp54;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lp54;->a:Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p1}, Lby6;->b()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lp54;->a:Ljava/lang/String;

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_2
    invoke-virtual {p0, v1, p1, v1, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public l()Lo54;
    .locals 1

    iget-object v0, p0, Lp54;->b:Lo54;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    const/4 p0, 0x5

    invoke-static {p0}, Lp54;->a(I)V

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Lo54;

    invoke-direct {v0, p0}, Lo54;-><init>(Lp54;)V

    iput-object v0, p0, Lp54;->b:Lo54;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lp54;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lp54;->e:Lby6;

    invoke-virtual {p0}, Lby6;->b()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lp54;->a:Ljava/lang/String;

    :goto_0
    if-nez p0, :cond_1

    const/16 v0, 0x11

    invoke-static {v0}, Lp54;->a(I)V

    :cond_1
    return-object p0
.end method
