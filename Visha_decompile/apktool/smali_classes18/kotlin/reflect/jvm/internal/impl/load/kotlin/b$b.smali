.class public final Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$b;
.super Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;->w(Lxw0;Lyt9;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final b:Ljava/util/HashMap;

.field public final synthetic c:Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;

.field public final synthetic d:Lqw0;

.field public final synthetic e:Lxw0;

.field public final synthetic f:Ljava/util/List;

.field public final synthetic g:Lyt9;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;Lqw0;Lxw0;Ljava/util/List;Lyt9;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$b;->c:Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$b;->d:Lqw0;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$b;->e:Lxw0;

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$b;->f:Ljava/util/List;

    iput-object p5, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$b;->g:Lyt9;

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$b;->b:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public f(Lby6;Ljava/util/ArrayList;)V
    .locals 3

    const-string v0, "elements"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$b;->d:Lqw0;

    invoke-static {p1, v0}, Lv82;->b(Lby6;Lqw0;)Lkotlin/reflect/jvm/internal/impl/descriptors/h;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$b;->b:Ljava/util/HashMap;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValueFactory;->a:Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValueFactory;

    invoke-static {p2}, Lv71;->c(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0}, Lknb;->getType()Leh5;

    move-result-object v0

    const-string v2, "parameter.type"

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p2, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValueFactory;->a(Ljava/util/List;Leh5;)Lvh;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$b;->c:Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$b;->e:Lxw0;

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationLoader;->v(Lxw0;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lby6;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "value"

    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lld;

    if-eqz v1, :cond_2

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$b;->f:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lld;

    invoke-virtual {p2}, Lpf1;->b()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lgd;

    invoke-interface {p0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public g(Lby6;Lpf1;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$b;->b:Ljava/util/HashMap;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public visitEnd()V
    .locals 4

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$b;->c:Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$b;->e:Lxw0;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$b;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader;->D(Lxw0;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$b;->c:Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$b;->e:Lxw0;

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationLoader;->v(Lxw0;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$b;->f:Ljava/util/List;

    new-instance v1, Lhd;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$b;->d:Lqw0;

    invoke-interface {v2}, Lqw0;->q()Lsm9;

    move-result-object v2

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$b;->b:Ljava/util/HashMap;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$b;->g:Lyt9;

    invoke-direct {v1, v2, v3, p0}, Lhd;-><init>(Leh5;Ljava/util/Map;Lyt9;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
