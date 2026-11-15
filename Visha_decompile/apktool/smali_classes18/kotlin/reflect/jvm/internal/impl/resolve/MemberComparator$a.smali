.class public final Lkotlin/reflect/jvm/internal/impl/resolve/MemberComparator$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/resolve/MemberComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lkotlin/reflect/jvm/internal/impl/renderer/b;)Lzfb;
    .locals 0

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Lkotlin/reflect/jvm/internal/impl/renderer/b;->l(Z)V

    const/4 p0, 0x1

    invoke-interface {p1, p0}, Lkotlin/reflect/jvm/internal/impl/renderer/b;->h(Z)V

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/renderer/AnnotationArgumentsRenderingPolicy;->UNLESS_EMPTY:Lkotlin/reflect/jvm/internal/impl/renderer/AnnotationArgumentsRenderingPolicy;

    invoke-interface {p1, p0}, Lkotlin/reflect/jvm/internal/impl/renderer/b;->p(Lkotlin/reflect/jvm/internal/impl/renderer/AnnotationArgumentsRenderingPolicy;)V

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;->ALL:Ljava/util/Set;

    invoke-interface {p1, p0}, Lkotlin/reflect/jvm/internal/impl/renderer/b;->g(Ljava/util/Set;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/renderer/b;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/MemberComparator$a;->a(Lkotlin/reflect/jvm/internal/impl/renderer/b;)Lzfb;

    move-result-object p0

    return-object p0
.end method
