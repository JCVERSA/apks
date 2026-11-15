.class final Lcom/bumptech/glide/annotation/compiler/RequestOptionsGenerator$MethodSignature;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/annotation/compiler/RequestOptionsGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MethodSignature"
.end annotation


# instance fields
.field private final isStatic:Z

.field private final name:Ljava/lang/String;

.field private final parameterTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeName;",
            ">;"
        }
    .end annotation
.end field

.field private final returnType:Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeName;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/repackaged/com/squareup/javapoet/MethodSpec;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/MethodSpec;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/bumptech/glide/annotation/compiler/RequestOptionsGenerator$MethodSignature;->name:Ljava/lang/String;

    iget-object v0, p1, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/MethodSpec;->modifiers:Ljava/util/Set;

    sget-object v1, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bumptech/glide/annotation/compiler/RequestOptionsGenerator$MethodSignature;->isStatic:Z

    iget-object v0, p1, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/MethodSpec;->returnType:Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeName;

    iput-object v0, p0, Lcom/bumptech/glide/annotation/compiler/RequestOptionsGenerator$MethodSignature;->returnType:Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeName;

    iget-object p1, p1, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/MethodSpec;->parameters:Ljava/util/List;

    new-instance v0, Lcom/bumptech/glide/annotation/compiler/RequestOptionsGenerator$MethodSignature$1;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/annotation/compiler/RequestOptionsGenerator$MethodSignature$1;-><init>(Lcom/bumptech/glide/annotation/compiler/RequestOptionsGenerator$MethodSignature;)V

    invoke-static {p1, v0}, Lcom/bumptech/glide/repackaged/com/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/bumptech/glide/repackaged/com/google/common/base/Function;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/annotation/compiler/RequestOptionsGenerator$MethodSignature;->parameterTypes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/bumptech/glide/annotation/compiler/RequestOptionsGenerator$MethodSignature;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/bumptech/glide/annotation/compiler/RequestOptionsGenerator$MethodSignature;

    iget-object v0, p0, Lcom/bumptech/glide/annotation/compiler/RequestOptionsGenerator$MethodSignature;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/bumptech/glide/annotation/compiler/RequestOptionsGenerator$MethodSignature;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/annotation/compiler/RequestOptionsGenerator$MethodSignature;->returnType:Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeName;

    iget-object v2, p1, Lcom/bumptech/glide/annotation/compiler/RequestOptionsGenerator$MethodSignature;->returnType:Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeName;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/annotation/compiler/RequestOptionsGenerator$MethodSignature;->parameterTypes:Ljava/util/List;

    iget-object v2, p1, Lcom/bumptech/glide/annotation/compiler/RequestOptionsGenerator$MethodSignature;->parameterTypes:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/bumptech/glide/annotation/compiler/RequestOptionsGenerator$MethodSignature;->isStatic:Z

    iget-boolean p1, p1, Lcom/bumptech/glide/annotation/compiler/RequestOptionsGenerator$MethodSignature;->isStatic:Z

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/bumptech/glide/annotation/compiler/RequestOptionsGenerator$MethodSignature;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/bumptech/glide/annotation/compiler/RequestOptionsGenerator$MethodSignature;->returnType:Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeName;

    iget-object v2, p0, Lcom/bumptech/glide/annotation/compiler/RequestOptionsGenerator$MethodSignature;->parameterTypes:Ljava/util/List;

    iget-boolean p0, p0, Lcom/bumptech/glide/annotation/compiler/RequestOptionsGenerator$MethodSignature;->isStatic:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/repackaged/com/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
