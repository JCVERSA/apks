.class public final Lkotlin/reflect/jvm/internal/impl/util/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/util/b;


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/util/d;

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/util/d;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/util/d;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/util/d;->a:Lkotlin/reflect/jvm/internal/impl/util/d;

    const-string v0, "second parameter must be of type KProperty<*> or its supertype"

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/util/d;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lkotlin/reflect/jvm/internal/impl/descriptors/e;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/util/b$a;->a(Lkotlin/reflect/jvm/internal/impl/util/b;Lkotlin/reflect/jvm/internal/impl/descriptors/e;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b(Lkotlin/reflect/jvm/internal/impl/descriptors/e;)Z
    .locals 1

    const-string p0, "functionDescriptor"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->f()Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/h;

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;->k:Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes$b;

    const-string v0, "secondParameter"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->p(Lxt1;)Lqq6;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes$b;->a(Lqq6;)Leh5;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Lknb;->getType()Leh5;

    move-result-object p0

    const-string v0, "secondParameter.type"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->v(Leh5;)Leh5;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->r(Leh5;Leh5;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/util/d;->b:Ljava/lang/String;

    return-object p0
.end method
