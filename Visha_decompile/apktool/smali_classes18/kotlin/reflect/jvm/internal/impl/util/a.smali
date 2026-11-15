.class public abstract Lkotlin/reflect/jvm/internal/impl/util/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/descriptors/e;)Lkotlin/reflect/jvm/internal/impl/util/c;
    .locals 2

    const-string v0, "functionDescriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/util/a;->b()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/util/Checks;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/e;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/util/Checks;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/e;)Lkotlin/reflect/jvm/internal/impl/util/c;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/util/c$a;->b:Lkotlin/reflect/jvm/internal/impl/util/c$a;

    return-object p0
.end method

.method public abstract b()Ljava/util/List;
.end method
