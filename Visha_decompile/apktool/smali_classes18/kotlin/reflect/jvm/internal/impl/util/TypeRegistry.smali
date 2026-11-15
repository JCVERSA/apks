.class public abstract Lkotlin/reflect/jvm/internal/impl/util/TypeRegistry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentHashMap;

.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/util/TypeRegistry;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/util/TypeRegistry;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/util/TypeRegistry;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/util/TypeRegistry;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method


# virtual methods
.method public abstract b(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Le74;)I
.end method

.method public final c(Lde5;)Ln37;
    .locals 1

    const-string v0, "kClass"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln37;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/util/TypeRegistry;->d(Lde5;)I

    move-result p0

    invoke-direct {v0, p1, p0}, Ln37;-><init>(Lde5;I)V

    return-object v0
.end method

.method public final d(Lde5;)I
    .locals 2

    const-string v0, "kClass"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/util/TypeRegistry;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lde5;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/util/TypeRegistry$getId$1;

    invoke-direct {v1, p0}, Lkotlin/reflect/jvm/internal/impl/util/TypeRegistry$getId$1;-><init>(Lkotlin/reflect/jvm/internal/impl/util/TypeRegistry;)V

    invoke-virtual {p0, v0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/util/TypeRegistry;->b(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Le74;)I

    move-result p0

    return p0
.end method

.method public final e()Ljava/util/Collection;
    .locals 1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/util/TypeRegistry;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "idPerType.values"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
