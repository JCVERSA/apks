.class final Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationUtilKt$createDeprecatedAnnotation$replaceWithAnnotation$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationUtilKt;->a(Lkotlin/reflect/jvm/internal/impl/builtins/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Le74;"
    }
.end annotation


# instance fields
.field final synthetic $this_createDeprecatedAnnotation:Lkotlin/reflect/jvm/internal/impl/builtins/d;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/builtins/d;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationUtilKt$createDeprecatedAnnotation$replaceWithAnnotation$1;->$this_createDeprecatedAnnotation:Lkotlin/reflect/jvm/internal/impl/builtins/d;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lqq6;)Leh5;
    .locals 1

    const-string v0, "module"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Lqq6;->o()Lkotlin/reflect/jvm/internal/impl/builtins/d;

    move-result-object p1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationUtilKt$createDeprecatedAnnotation$replaceWithAnnotation$1;->$this_createDeprecatedAnnotation:Lkotlin/reflect/jvm/internal/impl/builtins/d;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->W()Lsm9;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->l(Lkotlin/reflect/jvm/internal/impl/types/Variance;Leh5;)Lsm9;

    move-result-object p0

    const-string p1, "module.builtIns.getArray\u2026ce.INVARIANT, stringType)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lqq6;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationUtilKt$createDeprecatedAnnotation$replaceWithAnnotation$1;->invoke(Lqq6;)Leh5;

    move-result-object p0

    return-object p0
.end method
