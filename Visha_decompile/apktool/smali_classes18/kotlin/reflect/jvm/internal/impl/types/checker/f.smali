.class public final Lkotlin/reflect/jvm/internal/impl/types/checker/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/types/checker/e;


# instance fields
.field public final c:Lkotlin/reflect/jvm/internal/impl/types/checker/c;

.field public final d:Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;

.field public final e:Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;)V
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinTypePreparator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/checker/f;->c:Lkotlin/reflect/jvm/internal/impl/types/checker/c;

    .line 3
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/types/checker/f;->d:Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;

    .line 4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/f;->d()Lkotlin/reflect/jvm/internal/impl/types/checker/c;

    move-result-object p1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->m(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;

    move-result-object p1

    const-string p2, "createWithTypeRefiner(kotlinTypeRefiner)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/checker/f;->e:Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 5
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator$a;->a:Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator$a;

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/f;-><init>(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;)V

    return-void
.end method


# virtual methods
.method public a()Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/checker/f;->e:Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;

    return-object p0
.end method

.method public b(Leh5;Leh5;)Z
    .locals 8

    const-string v0, "a"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/f;->d()Lkotlin/reflect/jvm/internal/impl/types/checker/c;

    move-result-object v5

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/f;->f()Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;

    move-result-object v4

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v7}, Lkotlin/reflect/jvm/internal/impl/types/checker/a;->b(ZZLmx0;Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;Lkotlin/reflect/jvm/internal/impl/types/checker/c;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;

    move-result-object v0

    invoke-virtual {p1}, Leh5;->L0()Lmgb;

    move-result-object p1

    invoke-virtual {p2}, Leh5;->L0()Lmgb;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/f;->e(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lmgb;Lmgb;)Z

    move-result p0

    return p0
.end method

.method public c(Leh5;Leh5;)Z
    .locals 8

    const-string v0, "subtype"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "supertype"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/f;->d()Lkotlin/reflect/jvm/internal/impl/types/checker/c;

    move-result-object v5

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/f;->f()Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;

    move-result-object v4

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v7}, Lkotlin/reflect/jvm/internal/impl/types/checker/a;->b(ZZLmx0;Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;Lkotlin/reflect/jvm/internal/impl/types/checker/c;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;

    move-result-object v0

    invoke-virtual {p1}, Leh5;->L0()Lmgb;

    move-result-object p1

    invoke-virtual {p2}, Leh5;->L0()Lmgb;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/f;->g(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lmgb;Lmgb;)Z

    move-result p0

    return p0
.end method

.method public d()Lkotlin/reflect/jvm/internal/impl/types/checker/c;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/checker/f;->c:Lkotlin/reflect/jvm/internal/impl/types/checker/c;

    return-object p0
.end method

.method public final e(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lmgb;Lmgb;)Z
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "a"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "b"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->a:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;

    invoke-virtual {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->k(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lgh5;Lgh5;)Z

    move-result p0

    return p0
.end method

.method public f()Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/checker/f;->d:Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;

    return-object p0
.end method

.method public final g(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lmgb;Lmgb;)Z
    .locals 7

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "subType"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "superType"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->a:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->t(Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lgh5;Lgh5;ZILjava/lang/Object;)Z

    move-result p0

    return p0
.end method
