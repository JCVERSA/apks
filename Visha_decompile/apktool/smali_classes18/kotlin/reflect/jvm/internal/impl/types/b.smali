.class public abstract Lkotlin/reflect/jvm/internal/impl/types/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[Laf5;

.field public static final b:Leo8;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v1, Lkotlin/reflect/jvm/internal/impl/types/b;

    const-string v2, "descriptors"

    invoke-static {v1, v2}, Lxq8;->d(Ljava/lang/Class;Ljava/lang/String;)Lke5;

    move-result-object v1

    const-string v2, "annotationsAttribute"

    const-string v3, "getAnnotationsAttribute(Lorg/jetbrains/kotlin/types/TypeAttributes;)Lorg/jetbrains/kotlin/types/AnnotationsTypeAttribute;"

    invoke-direct {v0, v1, v2, v3}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lke5;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lxq8;->j(Lkotlin/jvm/internal/PropertyReference1;)Lcf5;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Laf5;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/types/b;->a:[Laf5;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/j;->c:Lkotlin/reflect/jvm/internal/impl/types/j$a;

    const-class v1, Lpd;

    invoke-static {v1}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/util/TypeRegistry;->c(Lde5;)Ln37;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.properties.ReadOnlyProperty<org.jetbrains.kotlin.types.TypeAttributes, T of org.jetbrains.kotlin.types.TypeAttributes.Companion.attributeAccessor?>"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/b;->b:Leo8;

    return-void
.end method

.method public static final a(Lkotlin/reflect/jvm/internal/impl/types/j;)Lmd;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/b;->b(Lkotlin/reflect/jvm/internal/impl/types/j;)Lpd;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lpd;->e()Lmd;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    sget-object p0, Lmd;->u1:Lmd$a;

    invoke-virtual {p0}, Lmd$a;->b()Lmd;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static final b(Lkotlin/reflect/jvm/internal/impl/types/j;)Lpd;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/b;->b:Leo8;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/b;->a:[Laf5;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Leo8;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lpd;

    return-object p0
.end method
