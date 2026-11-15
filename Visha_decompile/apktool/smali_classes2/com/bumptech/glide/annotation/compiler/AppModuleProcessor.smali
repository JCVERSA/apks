.class final Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor$FoundIndexedClassNames;
    }
.end annotation


# static fields
.field private static final COMPILER_PACKAGE_NAME:Ljava/lang/String;


# instance fields
.field private final appGlideModules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/lang/model/element/TypeElement;",
            ">;"
        }
    .end annotation
.end field

.field private final appModuleGenerator:Lcom/bumptech/glide/annotation/compiler/AppModuleGenerator;

.field private final glideGenerator:Lcom/bumptech/glide/annotation/compiler/GlideGenerator;

.field private final processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

.field private final processorUtil:Lcom/bumptech/glide/annotation/compiler/ProcessorUtil;

.field private final requestBuilderGenerator:Lcom/bumptech/glide/annotation/compiler/RequestBuilderGenerator;

.field private final requestManagerFactoryGenerator:Lcom/bumptech/glide/annotation/compiler/RequestManagerFactoryGenerator;

.field private final requestManagerGenerator:Lcom/bumptech/glide/annotation/compiler/RequestManagerGenerator;

.field private final requestOptionsGenerator:Lcom/bumptech/glide/annotation/compiler/RequestOptionsGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/bumptech/glide/annotation/compiler/GlideAnnotationProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor;->COMPILER_PACKAGE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljavax/annotation/processing/ProcessingEnvironment;Lcom/bumptech/glide/annotation/compiler/ProcessorUtil;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor;->appGlideModules:Ljava/util/List;

    iput-object p1, p0, Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    iput-object p2, p0, Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor;->processorUtil:Lcom/bumptech/glide/annotation/compiler/ProcessorUtil;

    new-instance v0, Lcom/bumptech/glide/annotation/compiler/AppModuleGenerator;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/annotation/compiler/AppModuleGenerator;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Lcom/bumptech/glide/annotation/compiler/ProcessorUtil;)V

    iput-object v0, p0, Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor;->appModuleGenerator:Lcom/bumptech/glide/annotation/compiler/AppModuleGenerator;

    new-instance v0, Lcom/bumptech/glide/annotation/compiler/RequestOptionsGenerator;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/annotation/compiler/RequestOptionsGenerator;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Lcom/bumptech/glide/annotation/compiler/ProcessorUtil;)V

    iput-object v0, p0, Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor;->requestOptionsGenerator:Lcom/bumptech/glide/annotation/compiler/RequestOptionsGenerator;

    new-instance v0, Lcom/bumptech/glide/annotation/compiler/RequestManagerGenerator;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/annotation/compiler/RequestManagerGenerator;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Lcom/bumptech/glide/annotation/compiler/ProcessorUtil;)V

    iput-object v0, p0, Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor;->requestManagerGenerator:Lcom/bumptech/glide/annotation/compiler/RequestManagerGenerator;

    new-instance v0, Lcom/bumptech/glide/annotation/compiler/RequestManagerFactoryGenerator;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/annotation/compiler/RequestManagerFactoryGenerator;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Lcom/bumptech/glide/annotation/compiler/ProcessorUtil;)V

    iput-object v0, p0, Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor;->requestManagerFactoryGenerator:Lcom/bumptech/glide/annotation/compiler/RequestManagerFactoryGenerator;

    new-instance v0, Lcom/bumptech/glide/annotation/compiler/GlideGenerator;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/annotation/compiler/GlideGenerator;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Lcom/bumptech/glide/annotation/compiler/ProcessorUtil;)V

    iput-object v0, p0, Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor;->glideGenerator:Lcom/bumptech/glide/annotation/compiler/GlideGenerator;

    new-instance v0, Lcom/bumptech/glide/annotation/compiler/RequestBuilderGenerator;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/annotation/compiler/RequestBuilderGenerator;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Lcom/bumptech/glide/annotation/compiler/ProcessorUtil;)V

    iput-object v0, p0, Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor;->requestBuilderGenerator:Lcom/bumptech/glide/annotation/compiler/RequestBuilderGenerator;

    return-void
.end method

.method private getGlideName(Ljavax/lang/model/element/TypeElement;)Ljava/lang/String;
    .locals 0

    const-class p0, Lcom/bumptech/glide/annotation/GlideModule;

    invoke-interface {p1, p0}, Ljavax/lang/model/element/TypeElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/annotation/GlideModule;

    invoke-interface {p0}, Lcom/bumptech/glide/annotation/GlideModule;->glideName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getIndexedClassNames(Ljavax/lang/model/element/PackageElement;)Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor$FoundIndexedClassNames;
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljavax/lang/model/element/PackageElement;->getEnclosedElements()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/Element;

    const-class v3, Lcom/bumptech/glide/annotation/compiler/Index;

    invoke-interface {v2, v3}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/annotation/compiler/Index;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/bumptech/glide/annotation/compiler/Index;->modules()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-interface {v2}, Lcom/bumptech/glide/annotation/compiler/Index;->extensions()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor;->processorUtil:Lcom/bumptech/glide/annotation/compiler/ProcessorUtil;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found GlideModules: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/annotation/compiler/ProcessorUtil;->debugLog(Ljava/lang/String;)V

    new-instance p0, Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor$FoundIndexedClassNames;

    const/4 p1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor$FoundIndexedClassNames;-><init>(Ljava/util/Set;Ljava/util/Set;Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor$1;)V

    return-object p0
.end method

.method private writeAppModule(Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeSpec;)V
    .locals 1

    iget-object p0, p0, Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor;->processorUtil:Lcom/bumptech/glide/annotation/compiler/ProcessorUtil;

    const-string v0, "com.bumptech.glide"

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/annotation/compiler/ProcessorUtil;->writeClass(Ljava/lang/String;Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeSpec;)V

    return-void
.end method

.method private writeGlide(Ljava/lang/String;Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeSpec;)V
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor;->processorUtil:Lcom/bumptech/glide/annotation/compiler/ProcessorUtil;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/annotation/compiler/ProcessorUtil;->writeClass(Ljava/lang/String;Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeSpec;)V

    return-void
.end method

.method private writeRequestBuilder(Ljava/lang/String;Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeSpec;)V
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor;->processorUtil:Lcom/bumptech/glide/annotation/compiler/ProcessorUtil;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/annotation/compiler/ProcessorUtil;->writeClass(Ljava/lang/String;Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeSpec;)V

    return-void
.end method

.method private writeRequestManager(Ljava/lang/String;Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeSpec;)V
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor;->processorUtil:Lcom/bumptech/glide/annotation/compiler/ProcessorUtil;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/annotation/compiler/ProcessorUtil;->writeClass(Ljava/lang/String;Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeSpec;)V

    return-void
.end method

.method private writeRequestManagerFactory(Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeSpec;)V
    .locals 1

    iget-object p0, p0, Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor;->processorUtil:Lcom/bumptech/glide/annotation/compiler/ProcessorUtil;

    const-string v0, "com.bumptech.glide"

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/annotation/compiler/ProcessorUtil;->writeClass(Ljava/lang/String;Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeSpec;)V

    return-void
.end method

.method private writeRequestOptions(Ljava/lang/String;Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeSpec;)V
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor;->processorUtil:Lcom/bumptech/glide/annotation/compiler/ProcessorUtil;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/annotation/compiler/ProcessorUtil;->writeClass(Ljava/lang/String;Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeSpec;)V

    return-void
.end method


# virtual methods
.method public maybeWriteAppModule()Z
    .locals 7

    iget-object v0, p0, Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor;->appGlideModules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor;->appGlideModules:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/TypeElement;

    iget-object v1, p0, Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor;->processorUtil:Lcom/bumptech/glide/annotation/compiler/ProcessorUtil;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processing app module: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/annotation/compiler/ProcessorUtil;->debugLog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v1}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor;->COMPILER_PACKAGE_NAME:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljavax/lang/model/util/Elements;->getPackageElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/PackageElement;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor;->getIndexedClassNames(Ljavax/lang/model/element/PackageElement;)Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor$FoundIndexedClassNames;

    move-result-object v1

    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor;->requestOptionsGenerator:Lcom/bumptech/glide/annotation/compiler/RequestOptionsGenerator;

    invoke-static {v1}, Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor$FoundIndexedClassNames;->access$000(Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor$FoundIndexedClassNames;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/bumptech/glide/annotation/compiler/RequestOptionsGenerator;->generate(Ljava/lang/String;Ljava/util/Set;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeSpec;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor;->writeRequestOptions(Ljava/lang/String;Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeSpec;)V

    iget-object v4, p0, Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor;->requestBuilderGenerator:Lcom/bumptech/glide/annotation/compiler/RequestBuilderGenerator;

    invoke-static {v1}, Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor$FoundIndexedClassNames;->access$000(Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor$FoundIndexedClassNames;)Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v4, v2, v5, v3}, Lcom/bumptech/glide/annotation/compiler/RequestBuilderGenerator;->generate(Ljava/lang/String;Ljava/util/Set;Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeSpec;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeSpec;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor;->writeRequestBuilder(Ljava/lang/String;Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeSpec;)V

    iget-object v5, p0, Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor;->requestManagerGenerator:Lcom/bumptech/glide/annotation/compiler/RequestManagerGenerator;

    invoke-static {v1}, Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor$FoundIndexedClassNames;->access$000(Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor$FoundIndexedClassNames;)Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v5, v2, v3, v4, v6}, Lcom/bumptech/glide/annotation/compiler/RequestManagerGenerator;->generate(Ljava/lang/String;Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeSpec;Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeSpec;Ljava/util/Set;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeSpec;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor;->writeRequestManager(Ljava/lang/String;Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeSpec;)V

    iget-object v4, p0, Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor;->requestManagerFactoryGenerator:Lcom/bumptech/glide/annotation/compiler/RequestManagerFactoryGenerator;

    invoke-virtual {v4, v2, v3}, Lcom/bumptech/glide/annotation/compiler/RequestManagerFactoryGenerator;->generate(Ljava/lang/String;Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeSpec;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeSpec;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor;->writeRequestManagerFactory(Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeSpec;)V

    iget-object v4, p0, Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor;->glideGenerator:Lcom/bumptech/glide/annotation/compiler/GlideGenerator;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor;->getGlideName(Ljavax/lang/model/element/TypeElement;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5, v3}, Lcom/bumptech/glide/annotation/compiler/GlideGenerator;->generate(Ljava/lang/String;Ljava/lang/String;Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeSpec;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeSpec;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor;->writeGlide(Ljava/lang/String;Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeSpec;)V

    iget-object v2, p0, Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor;->appModuleGenerator:Lcom/bumptech/glide/annotation/compiler/AppModuleGenerator;

    invoke-static {v1}, Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor$FoundIndexedClassNames;->access$100(Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor$FoundIndexedClassNames;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/bumptech/glide/annotation/compiler/AppModuleGenerator;->generate(Ljavax/lang/model/element/TypeElement;Ljava/util/Set;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeSpec;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor;->writeAppModule(Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeSpec;)V

    iget-object p0, p0, Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor;->processorUtil:Lcom/bumptech/glide/annotation/compiler/ProcessorUtil;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrote GeneratedAppGlideModule with: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor$FoundIndexedClassNames;->access$100(Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor$FoundIndexedClassNames;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/annotation/compiler/ProcessorUtil;->infoLog(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public processModules(Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljavax/lang/model/element/TypeElement;",
            ">;",
            "Ljavax/annotation/processing/RoundEnvironment;",
            ")V"
        }
    .end annotation

    iget-object p1, p0, Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor;->processorUtil:Lcom/bumptech/glide/annotation/compiler/ProcessorUtil;

    const-class v0, Lcom/bumptech/glide/annotation/GlideModule;

    invoke-virtual {p1, v0, p2}, Lcom/bumptech/glide/annotation/compiler/ProcessorUtil;->getElementsFor(Ljava/lang/Class;Ljavax/annotation/processing/RoundEnvironment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljavax/lang/model/element/TypeElement;

    iget-object v0, p0, Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor;->processorUtil:Lcom/bumptech/glide/annotation/compiler/ProcessorUtil;

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/annotation/compiler/ProcessorUtil;->isAppGlideModule(Ljavax/lang/model/element/TypeElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor;->appGlideModules:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor;->processorUtil:Lcom/bumptech/glide/annotation/compiler/ProcessorUtil;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "got app modules: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor;->appGlideModules:Ljava/util/List;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/annotation/compiler/ProcessorUtil;->debugLog(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor;->appGlideModules:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    if-gt p1, p2, :cond_2

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "You cannot have more than one AppGlideModule, found: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/bumptech/glide/annotation/compiler/AppModuleProcessor;->appGlideModules:Ljava/util/List;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
