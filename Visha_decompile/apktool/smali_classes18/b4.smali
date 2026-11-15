.class public final Lb4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lb4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb4;

    invoke-direct {v0}, Lb4;-><init>()V

    sput-object v0, Lb4;->a:Lb4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ltcb;Ltm9;Ltm9;)Z
    .locals 8

    invoke-interface {p1, p2}, Ltcb;->o0(Lgh5;)I

    move-result v0

    invoke-interface {p1, p3}, Ltcb;->o0(Lgh5;)I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_8

    invoke-interface {p1, p2}, Ltcb;->w(Ltm9;)Z

    move-result v0

    invoke-interface {p1, p3}, Ltcb;->w(Ltm9;)Z

    move-result v1

    if-ne v0, v1, :cond_8

    invoke-interface {p1, p2}, Ltcb;->E0(Ltm9;)Lh72;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-interface {p1, p3}, Ltcb;->E0(Ltm9;)Lh72;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-ne v0, v3, :cond_8

    invoke-interface {p1, p2}, Ltcb;->c(Ltm9;)Ltbb;

    move-result-object v0

    invoke-interface {p1, p3}, Ltcb;->c(Ltm9;)Ltbb;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Ltcb;->H(Ltbb;Ltbb;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    invoke-interface {p1, p2, p3}, Lwcb;->v(Ltm9;Ltm9;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-interface {p1, p2}, Ltcb;->o0(Lgh5;)I

    move-result v0

    move v3, v2

    :goto_2
    if-ge v3, v0, :cond_7

    invoke-interface {p1, p2, v3}, Ltcb;->k0(Lgh5;I)Lhbb;

    move-result-object v4

    invoke-interface {p1, p3, v3}, Ltcb;->k0(Lgh5;I)Lhbb;

    move-result-object v5

    invoke-interface {p1, v4}, Ltcb;->p0(Lhbb;)Z

    move-result v6

    invoke-interface {p1, v5}, Ltcb;->p0(Lhbb;)Z

    move-result v7

    if-eq v6, v7, :cond_4

    return v2

    :cond_4
    invoke-interface {p1, v4}, Ltcb;->p0(Lhbb;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-interface {p1, v4}, Ltcb;->z(Lhbb;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    move-result-object v6

    invoke-interface {p1, v5}, Ltcb;->z(Lhbb;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    move-result-object v7

    if-eq v6, v7, :cond_5

    return v2

    :cond_5
    invoke-interface {p1, v4}, Ltcb;->j(Lhbb;)Lgh5;

    move-result-object v4

    invoke-interface {p1, v5}, Ltcb;->j(Lhbb;)Lgh5;

    move-result-object v5

    invoke-virtual {p0, p1, v4, v5}, Lb4;->c(Ltcb;Lgh5;Lgh5;)Z

    move-result v4

    if-nez v4, :cond_6

    return v2

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    return v1

    :cond_8
    :goto_3
    return v2
.end method

.method public final b(Ltcb;Lgh5;Lgh5;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "a"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lb4;->c(Ltcb;Lgh5;Lgh5;)Z

    move-result p0

    return p0
.end method

.method public final c(Ltcb;Lgh5;Lgh5;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p2, p3, :cond_0

    return v0

    :cond_0
    invoke-interface {p1, p2}, Ltcb;->a(Lgh5;)Ltm9;

    move-result-object v1

    invoke-interface {p1, p3}, Ltcb;->a(Lgh5;)Ltm9;

    move-result-object v2

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1, v1, v2}, Lb4;->a(Ltcb;Ltm9;Ltm9;)Z

    move-result p0

    return p0

    :cond_1
    invoke-interface {p1, p2}, Ltcb;->I(Lgh5;)Liy3;

    move-result-object p2

    invoke-interface {p1, p3}, Ltcb;->I(Lgh5;)Liy3;

    move-result-object p3

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    invoke-interface {p1, p2}, Ltcb;->e(Liy3;)Ltm9;

    move-result-object v2

    invoke-interface {p1, p3}, Ltcb;->e(Liy3;)Ltm9;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Lb4;->a(Ltcb;Ltm9;Ltm9;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1, p2}, Ltcb;->g(Liy3;)Ltm9;

    move-result-object p2

    invoke-interface {p1, p3}, Ltcb;->g(Liy3;)Ltm9;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lb4;->a(Ltcb;Ltm9;Ltm9;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    return v1
.end method
