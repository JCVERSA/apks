.class Lcom/bumptech/glide/annotation/compiler/GlideExtensionValidator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/repackaged/com/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/annotation/compiler/GlideExtensionValidator;->validateAnnotatedNonNull(Ljavax/lang/model/element/ExecutableElement;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/repackaged/com/google/common/base/Function<",
        "Ljavax/lang/model/element/AnnotationMirror;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/annotation/compiler/GlideExtensionValidator;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/annotation/compiler/GlideExtensionValidator;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/annotation/compiler/GlideExtensionValidator$1;->this$0:Lcom/bumptech/glide/annotation/compiler/GlideExtensionValidator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/annotation/compiler/GlideExtensionValidator$1;->apply(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public apply(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-interface {p1}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object p0

    invoke-interface {p0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
