.class public final Lo54;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lo54;


# instance fields
.field public final a:Lp54;

.field public transient b:Lo54;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo54;

    const-string v1, ""

    invoke-direct {v0, v1}, Lo54;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo54;->c:Lo54;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lo54;->a(I)V

    .line 1
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lp54;

    invoke-direct {v0, p1, p0}, Lp54;-><init>(Ljava/lang/String;Lo54;)V

    iput-object v0, p0, Lo54;->a:Lp54;

    return-void
.end method

.method public constructor <init>(Lp54;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x2

    invoke-static {v0}, Lo54;->a(I)V

    .line 3
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lo54;->a:Lp54;

    return-void
.end method

.method public constructor <init>(Lp54;Lo54;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x3

    invoke-static {v0}, Lo54;->a(I)V

    .line 5
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lo54;->a:Lp54;

    .line 7
    iput-object p2, p0, Lo54;->b:Lo54;

    return-void
.end method

.method public static synthetic a(I)V
    .locals 7

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

    const-string v3, "kotlin/reflect/jvm/internal/impl/name/FqName"

    const-string v4, "shortName"

    const/4 v5, 0x0

    packed-switch p0, :pswitch_data_2

    const-string v6, "names"

    aput-object v6, v2, v5

    goto :goto_2

    :pswitch_4
    aput-object v4, v2, v5

    goto :goto_2

    :pswitch_5
    const-string v6, "segment"

    aput-object v6, v2, v5

    goto :goto_2

    :pswitch_6
    const-string v6, "name"

    aput-object v6, v2, v5

    goto :goto_2

    :pswitch_7
    aput-object v3, v2, v5

    goto :goto_2

    :pswitch_8
    const-string v6, "fqName"

    aput-object v6, v2, v5

    :goto_2
    const/4 v5, 0x1

    packed-switch p0, :pswitch_data_3

    :pswitch_9
    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_a
    const-string v3, "pathSegments"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_b
    const-string v3, "shortNameOrSpecial"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_c
    aput-object v4, v2, v5

    goto :goto_3

    :pswitch_d
    const-string v3, "parent"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_e
    const-string v3, "toUnsafe"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_f
    const-string v3, "asString"

    aput-object v3, v2, v5

    :goto_3
    packed-switch p0, :pswitch_data_4

    const-string v3, "fromSegments"

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

    goto :goto_4

    :pswitch_13
    const-string v3, "<init>"

    aput-object v3, v2, v1

    :goto_4
    :pswitch_14
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_5

    :pswitch_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_16
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
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_9
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_12
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x4
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_16
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method

.method public static k(Lby6;)Lo54;
    .locals 1

    if-nez p0, :cond_0

    const/16 v0, 0xd

    invoke-static {v0}, Lo54;->a(I)V

    :cond_0
    new-instance v0, Lo54;

    invoke-static {p0}, Lp54;->m(Lby6;)Lp54;

    move-result-object p0

    invoke-direct {v0, p0}, Lo54;-><init>(Lp54;)V

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lo54;->a:Lp54;

    invoke-virtual {p0}, Lp54;->b()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 v0, 0x4

    invoke-static {v0}, Lo54;->a(I)V

    :cond_0
    return-object p0
.end method

.method public c(Lby6;)Lo54;
    .locals 2

    if-nez p1, :cond_0

    const/16 v0, 0x8

    invoke-static {v0}, Lo54;->a(I)V

    :cond_0
    new-instance v0, Lo54;

    iget-object v1, p0, Lo54;->a:Lp54;

    invoke-virtual {v1, p1}, Lp54;->c(Lby6;)Lp54;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lo54;-><init>(Lp54;Lo54;)V

    return-object v0
.end method

.method public d()Z
    .locals 0

    iget-object p0, p0, Lo54;->a:Lp54;

    invoke-virtual {p0}, Lp54;->e()Z

    move-result p0

    return p0
.end method

.method public e()Lo54;
    .locals 2

    iget-object v0, p0, Lo54;->b:Lo54;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    const/4 p0, 0x6

    invoke-static {p0}, Lo54;->a(I)V

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lo54;->d()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lo54;

    iget-object v1, p0, Lo54;->a:Lp54;

    invoke-virtual {v1}, Lp54;->g()Lp54;

    move-result-object v1

    invoke-direct {v0, v1}, Lo54;-><init>(Lp54;)V

    iput-object v0, p0, Lo54;->b:Lo54;

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "root"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lo54;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lo54;

    iget-object p0, p0, Lo54;->a:Lp54;

    iget-object p1, p1, Lo54;->a:Lp54;

    invoke-virtual {p0, p1}, Lp54;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public f()Ljava/util/List;
    .locals 1

    iget-object p0, p0, Lo54;->a:Lp54;

    invoke-virtual {p0}, Lp54;->h()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const/16 v0, 0xb

    invoke-static {v0}, Lo54;->a(I)V

    :cond_0
    return-object p0
.end method

.method public g()Lby6;
    .locals 1

    iget-object p0, p0, Lo54;->a:Lp54;

    invoke-virtual {p0}, Lp54;->i()Lby6;

    move-result-object p0

    if-nez p0, :cond_0

    const/16 v0, 0x9

    invoke-static {v0}, Lo54;->a(I)V

    :cond_0
    return-object p0
.end method

.method public h()Lby6;
    .locals 1

    iget-object p0, p0, Lo54;->a:Lp54;

    invoke-virtual {p0}, Lp54;->j()Lby6;

    move-result-object p0

    if-nez p0, :cond_0

    const/16 v0, 0xa

    invoke-static {v0}, Lo54;->a(I)V

    :cond_0
    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lo54;->a:Lp54;

    invoke-virtual {p0}, Lp54;->hashCode()I

    move-result p0

    return p0
.end method

.method public i(Lby6;)Z
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0xc

    invoke-static {v0}, Lo54;->a(I)V

    :cond_0
    iget-object p0, p0, Lo54;->a:Lp54;

    invoke-virtual {p0, p1}, Lp54;->k(Lby6;)Z

    move-result p0

    return p0
.end method

.method public j()Lp54;
    .locals 1

    iget-object p0, p0, Lo54;->a:Lp54;

    if-nez p0, :cond_0

    const/4 v0, 0x5

    invoke-static {v0}, Lo54;->a(I)V

    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lo54;->a:Lp54;

    invoke-virtual {p0}, Lp54;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
