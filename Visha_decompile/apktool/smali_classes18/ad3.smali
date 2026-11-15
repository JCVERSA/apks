.class public final Lad3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqq6;


# static fields
.field public static final b:Lad3;

.field public static final c:Lby6;

.field public static final d:Ljava/util/List;

.field public static final e:Ljava/util/List;

.field public static final f:Ljava/util/Set;

.field public static final g:Lkotlin/reflect/jvm/internal/impl/builtins/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lad3;

    invoke-direct {v0}, Lad3;-><init>()V

    sput-object v0, Lad3;->b:Lad3;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;->ERROR_MODULE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;->getDebugText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lby6;->j(Ljava/lang/String;)Lby6;

    move-result-object v0

    const-string v1, "special(ErrorEntity.ERROR_MODULE.debugText)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lad3;->c:Lby6;

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lad3;->d:Ljava/util/List;

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lad3;->e:Ljava/util/List;

    invoke-static {}, Lye9;->f()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lad3;->f:Ljava/util/Set;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/b;->h:Lkotlin/reflect/jvm/internal/impl/builtins/b$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/b$a;->a()Lkotlin/reflect/jvm/internal/impl/builtins/b;

    move-result-object v0

    sput-object v0, Lad3;->g:Lkotlin/reflect/jvm/internal/impl/builtins/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public C(Lo54;)Lpv7;
    .locals 0

    const-string p0, "fqName"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Should not be called!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public M()Ljava/util/List;
    .locals 0

    sget-object p0, Lad3;->e:Ljava/util/List;

    return-object p0
.end method

.method public Q()Lby6;
    .locals 0

    sget-object p0, Lad3;->c:Lby6;

    return-object p0
.end method

.method public S(Lqq6;)Z
    .locals 0

    const-string p0, "targetModule"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public a()Lxt1;
    .locals 0

    return-object p0
.end method

.method public b()Lxt1;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAnnotations()Lmd;
    .locals 0

    sget-object p0, Lmd;->u1:Lmd$a;

    invoke-virtual {p0}, Lmd$a;->b()Lmd;

    move-result-object p0

    return-object p0
.end method

.method public getName()Lby6;
    .locals 0

    invoke-virtual {p0}, Lad3;->Q()Lby6;

    move-result-object p0

    return-object p0
.end method

.method public i(Lo54;Le74;)Ljava/util/Collection;
    .locals 0

    const-string p0, "fqName"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "nameFilter"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public o()Lkotlin/reflect/jvm/internal/impl/builtins/d;
    .locals 0

    sget-object p0, Lad3;->g:Lkotlin/reflect/jvm/internal/impl/builtins/d;

    return-object p0
.end method

.method public q0(Lbu1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const-string p0, "visitor"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public s0(Lmq6;)Ljava/lang/Object;
    .locals 0

    const-string p0, "capability"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
