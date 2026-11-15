.class Lcom/bumptech/glide/annotation/compiler/RequestOptionsGenerator$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/repackaged/com/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/annotation/compiler/RequestOptionsGenerator;->generate(Ljava/lang/String;Ljava/util/Set;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/repackaged/com/google/common/base/Predicate<",
        "Ljavax/lang/model/element/ExecutableElement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/annotation/compiler/RequestOptionsGenerator;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/annotation/compiler/RequestOptionsGenerator;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/annotation/compiler/RequestOptionsGenerator$3;->this$0:Lcom/bumptech/glide/annotation/compiler/RequestOptionsGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljavax/lang/model/element/ExecutableElement;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/annotation/compiler/RequestOptionsGenerator$3;->apply(Ljavax/lang/model/element/ExecutableElement;)Z

    move-result p0

    return p0
.end method

.method public apply(Ljavax/lang/model/element/ExecutableElement;)Z
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/bumptech/glide/annotation/compiler/RequestOptionsGenerator;->access$100(Ljavax/lang/model/element/ExecutableElement;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
