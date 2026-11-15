.class public final Lru9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lru9;

.field public static final b:Ljava/util/Set;

.field public static final c:Lxw0;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lru9;

    invoke-direct {v0}, Lru9;-><init>()V

    sput-object v0, Lru9;->a:Lru9;

    sget-object v1, Lyc5;->a:Lo54;

    sget-object v2, Lyc5;->k:Lo54;

    sget-object v3, Lyc5;->l:Lo54;

    sget-object v4, Lyc5;->d:Lo54;

    sget-object v5, Lyc5;->f:Lo54;

    sget-object v6, Lyc5;->i:Lo54;

    filled-new-array/range {v1 .. v6}, [Lo54;

    move-result-object v0

    invoke-static {v0}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo54;

    invoke-static {v2}, Lxw0;->m(Lo54;)Lxw0;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sput-object v1, Lru9;->b:Ljava/util/Set;

    sget-object v0, Lyc5;->j:Lo54;

    invoke-static {v0}, Lxw0;->m(Lo54;)Lxw0;

    move-result-object v0

    const-string v1, "topLevel(JvmAnnotationNames.REPEATABLE_ANNOTATION)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lru9;->c:Lxw0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lxw0;
    .locals 0

    sget-object p0, Lru9;->c:Lxw0;

    return-object p0
.end method

.method public final b()Ljava/util/Set;
    .locals 0

    sget-object p0, Lru9;->b:Ljava/util/Set;

    return-object p0
.end method

.method public final c(Lkotlin/reflect/jvm/internal/impl/load/kotlin/c;)Z
    .locals 2

    const-string p0, "klass"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v0, Lru9$a;

    invoke-direct {v0, p0}, Lru9$a;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/c;->d(Lkotlin/reflect/jvm/internal/impl/load/kotlin/c$c;[B)V

    iget-boolean p0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return p0
.end method
