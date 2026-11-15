.class final Lcom/bumptech/glide/annotation/compiler/ProcessorUtil$FilterPublicMethods;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/repackaged/com/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/annotation/compiler/ProcessorUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FilterPublicMethods"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/repackaged/com/google/common/base/Predicate<",
        "Ljavax/lang/model/element/Element;",
        ">;"
    }
.end annotation


# instance fields
.field private final methodType:Lcom/bumptech/glide/annotation/compiler/ProcessorUtil$MethodType;

.field private final returnType:Ljavax/lang/model/type/TypeMirror;

.field final synthetic this$0:Lcom/bumptech/glide/annotation/compiler/ProcessorUtil;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/annotation/compiler/ProcessorUtil;Ljavax/lang/model/element/TypeElement;Lcom/bumptech/glide/annotation/compiler/ProcessorUtil$MethodType;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 4
    invoke-interface {p2}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/annotation/compiler/ProcessorUtil$FilterPublicMethods;-><init>(Lcom/bumptech/glide/annotation/compiler/ProcessorUtil;Ljavax/lang/model/type/TypeMirror;Lcom/bumptech/glide/annotation/compiler/ProcessorUtil$MethodType;)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/annotation/compiler/ProcessorUtil;Ljavax/lang/model/type/TypeMirror;Lcom/bumptech/glide/annotation/compiler/ProcessorUtil$MethodType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/annotation/compiler/ProcessorUtil$FilterPublicMethods;->this$0:Lcom/bumptech/glide/annotation/compiler/ProcessorUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/bumptech/glide/annotation/compiler/ProcessorUtil$FilterPublicMethods;->returnType:Ljavax/lang/model/type/TypeMirror;

    .line 3
    iput-object p3, p0, Lcom/bumptech/glide/annotation/compiler/ProcessorUtil$FilterPublicMethods;->methodType:Lcom/bumptech/glide/annotation/compiler/ProcessorUtil$MethodType;

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljavax/lang/model/element/Element;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/annotation/compiler/ProcessorUtil$FilterPublicMethods;->apply(Ljavax/lang/model/element/Element;)Z

    move-result p0

    return p0
.end method

.method public apply(Ljavax/lang/model/element/Element;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 2
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->METHOD:Ljavax/lang/model/element/ElementKind;

    if-ne v1, v2, :cond_4

    .line 3
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 5
    iget-object v2, p0, Lcom/bumptech/glide/annotation/compiler/ProcessorUtil$FilterPublicMethods;->methodType:Lcom/bumptech/glide/annotation/compiler/ProcessorUtil$MethodType;

    sget-object v3, Lcom/bumptech/glide/annotation/compiler/ProcessorUtil$MethodType;->STATIC:Lcom/bumptech/glide/annotation/compiler/ProcessorUtil$MethodType;

    if-ne v2, v3, :cond_1

    if-nez v1, :cond_1

    return v0

    .line 6
    :cond_1
    sget-object v3, Lcom/bumptech/glide/annotation/compiler/ProcessorUtil$MethodType;->INSTANCE:Lcom/bumptech/glide/annotation/compiler/ProcessorUtil$MethodType;

    if-ne v2, v3, :cond_2

    if-eqz v1, :cond_2

    return v0

    .line 7
    :cond_2
    check-cast p1, Ljavax/lang/model/element/ExecutableElement;

    .line 8
    iget-object v1, p0, Lcom/bumptech/glide/annotation/compiler/ProcessorUtil$FilterPublicMethods;->returnType:Ljavax/lang/model/type/TypeMirror;

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/bumptech/glide/annotation/compiler/ProcessorUtil$FilterPublicMethods;->this$0:Lcom/bumptech/glide/annotation/compiler/ProcessorUtil;

    invoke-static {p0, p1, v1}, Lcom/bumptech/glide/annotation/compiler/ProcessorUtil;->access$200(Lcom/bumptech/glide/annotation/compiler/ProcessorUtil;Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/type/TypeMirror;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    :goto_0
    return v0
.end method
