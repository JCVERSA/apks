.class final Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final NO_PACKAGE:Ljava/lang/String;


# instance fields
.field private comment:Z

.field private final importableTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/repackaged/com/squareup/javapoet/ClassName;",
            ">;"
        }
    .end annotation
.end field

.field private final importedTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/repackaged/com/squareup/javapoet/ClassName;",
            ">;"
        }
    .end annotation
.end field

.field private final indent:Ljava/lang/String;

.field private indentLevel:I

.field private javadoc:Z

.field private final out:Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;

.field private packageName:Ljava/lang/String;

.field private final referencedNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field statementLine:I

.field private final staticImportClassNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final staticImports:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private trailingNewline:Z

.field private final typeSpecStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->NO_PACKAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Appendable;)V
    .locals 2

    .line 1
    const-string v0, "  "

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;-><init>(Ljava/lang/Appendable;Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Appendable;Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Appendable;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/repackaged/com/squareup/javapoet/ClassName;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->javadoc:Z

    .line 5
    iput-boolean v0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->comment:Z

    .line 6
    sget-object v1, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->NO_PACKAGE:Ljava/lang/String;

    iput-object v1, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->packageName:Ljava/lang/String;

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->typeSpecStack:Ljava/util/List;

    .line 8
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->importableTypes:Ljava/util/Map;

    .line 9
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->referencedNames:Ljava/util/Set;

    const/4 v1, -0x1

    .line 10
    iput v1, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->statementLine:I

    .line 11
    new-instance v1, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;

    const/16 v2, 0x64

    invoke-direct {v1, p1, p2, v2}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;-><init>(Ljava/lang/Appendable;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->out:Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;

    .line 12
    const-string p1, "indent == null"

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p2, p1, v1}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->indent:Ljava/lang/String;

    .line 13
    const-string p1, "importedTypes == null"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p3, p1, p2}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->importedTypes:Ljava/util/Map;

    .line 14
    const-string/jumbo p1, "staticImports == null"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p4, p1, p2}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->staticImports:Ljava/util/Set;

    .line 15
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->staticImportClassNames:Ljava/util/Set;

    .line 16
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 17
    iget-object p3, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->staticImportClassNames:Ljava/util/Set;

    const/16 p4, 0x2e

    invoke-virtual {p2, p4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p4

    invoke-virtual {p2, v0, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Appendable;Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Appendable;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;-><init>(Ljava/lang/Appendable;Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;)V

    return-void
.end method

.method private emitIndentation()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->indentLevel:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->out:Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;

    iget-object v2, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->indent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;->append(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private emitLiteral(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeSpec;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeSpec;

    const/4 v0, 0x0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1, p0, v0, v1}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeSpec;->emit(Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/AnnotationSpec;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/AnnotationSpec;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/AnnotationSpec;->emit(Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;Z)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->emit(Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->emitAndIndent(Ljava/lang/String;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;

    :goto_0
    return-void
.end method

.method private emitStaticImportMember(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->extractMemberName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".*"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->staticImports:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->staticImports:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->emitAndIndent(Ljava/lang/String;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;

    return v0
.end method

.method private static extractMemberName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v1

    const-string v2, "not an identifier: %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavax/lang/model/SourceVersion;->isIdentifier(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    sub-int/2addr v2, v1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private importableType(Lcom/bumptech/glide/repackaged/com/squareup/javapoet/ClassName;)V
    .locals 2

    invoke-virtual {p1}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/ClassName;->packageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/ClassName;->topLevelClassName()Lcom/bumptech/glide/repackaged/com/squareup/javapoet/ClassName;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/ClassName;->simpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->importableTypes:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/ClassName;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->importableTypes:Ljava/util/Map;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private resolve(Ljava/lang/String;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/ClassName;
    .locals 3

    iget-object v0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->typeSpecStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->typeSpecStack:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeSpec;

    iget-object v1, v1, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeSpec;->typeSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeSpec;

    iget-object v2, v2, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeSpec;->name:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->stackClassName(ILjava/lang/String;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/ClassName;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->typeSpecStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->typeSpecStack:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeSpec;

    iget-object v0, v0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeSpec;->name:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->packageName:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/ClassName;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/ClassName;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object p0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->importedTypes:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/ClassName;

    if-eqz p0, :cond_4

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private stackClassName(ILjava/lang/String;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/ClassName;
    .locals 3

    iget-object v0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->typeSpecStack:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeSpec;

    iget-object v1, v1, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeSpec;->name:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/ClassName;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/ClassName;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    if-gt v1, p1, :cond_0

    iget-object v2, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->typeSpecStack:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeSpec;

    iget-object v2, v2, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeSpec;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/ClassName;->nestedClass(Ljava/lang/String;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/ClassName;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/ClassName;->nestedClass(Ljava/lang/String;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/ClassName;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public emit(Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 3
    iget-object v3, p1, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock;->formatParts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v4

    :goto_0
    move-object v7, v5

    .line 4
    :goto_1
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 5
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 6
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    const-string v9, "$"

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :goto_2
    move v10, v0

    goto/16 :goto_3

    :sswitch_0
    const-string v10, "$]"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    goto :goto_2

    :cond_0
    const/16 v10, 0x9

    goto/16 :goto_3

    :sswitch_1
    const-string v10, "$["

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    goto :goto_2

    :cond_1
    const/16 v10, 0x8

    goto/16 :goto_3

    :sswitch_2
    const-string v10, "$W"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    goto :goto_2

    :cond_2
    const/4 v10, 0x7

    goto :goto_3

    :sswitch_3
    const-string v10, "$T"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    goto :goto_2

    :cond_3
    const/4 v10, 0x6

    goto :goto_3

    :sswitch_4
    const-string v10, "$S"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    goto :goto_2

    :cond_4
    const/4 v10, 0x5

    goto :goto_3

    :sswitch_5
    const-string v10, "$N"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    goto :goto_2

    :cond_5
    const/4 v10, 0x4

    goto :goto_3

    :sswitch_6
    const-string v10, "$L"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    goto :goto_2

    :cond_6
    const/4 v10, 0x3

    goto :goto_3

    :sswitch_7
    const-string v10, "$>"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    goto :goto_2

    :cond_7
    move v10, v1

    goto :goto_3

    :sswitch_8
    const-string v10, "$<"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    goto :goto_2

    :cond_8
    move v10, v2

    goto :goto_3

    :sswitch_9
    const-string v10, "$$"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    goto :goto_2

    :cond_9
    move v10, v4

    :goto_3
    packed-switch v10, :pswitch_data_0

    if-eqz v7, :cond_b

    .line 7
    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 8
    iget-object v9, v7, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/ClassName;->canonicalName:Ljava/lang/String;

    invoke-direct {p0, v9, v8}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->emitStaticImportMember(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    goto/16 :goto_0

    .line 9
    :cond_a
    invoke-virtual {v7, p0}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/ClassName;->emit(Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;

    move-object v7, v5

    .line 10
    :cond_b
    invoke-virtual {p0, v8}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->emitAndIndent(Ljava/lang/String;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;

    goto/16 :goto_1

    .line 11
    :pswitch_0
    iget v8, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->statementLine:I

    if-eq v8, v0, :cond_c

    move v8, v2

    goto :goto_4

    :cond_c
    move v8, v4

    :goto_4
    const-string/jumbo v9, "statement exit $] has no matching statement enter $["

    new-array v10, v4, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/Util;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 12
    iget v8, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->statementLine:I

    if-lez v8, :cond_d

    .line 13
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->unindent(I)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;

    .line 14
    :cond_d
    iput v0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->statementLine:I

    goto/16 :goto_1

    .line 15
    :pswitch_1
    iget v8, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->statementLine:I

    if-ne v8, v0, :cond_e

    move v8, v2

    goto :goto_5

    :cond_e
    move v8, v4

    :goto_5
    const-string/jumbo v9, "statement enter $[ followed by statement enter $["

    new-array v10, v4, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/Util;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 16
    iput v4, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->statementLine:I

    goto/16 :goto_1

    .line 17
    :pswitch_2
    iget-object v8, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->out:Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;

    iget v9, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->indentLevel:I

    add-int/2addr v9, v1

    invoke-virtual {v8, v9}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;->wrappingSpace(I)V

    goto/16 :goto_1

    .line 18
    :pswitch_3
    iget-object v8, p1, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock;->args:Ljava/util/List;

    add-int/lit8 v10, v6, 0x1

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeName;

    .line 19
    invoke-virtual {v6}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeName;->isAnnotated()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 20
    invoke-virtual {v6, p0}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeName;->emitAnnotations(Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;

    .line 21
    invoke-virtual {v6}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeName;->withoutAnnotations()Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeName;

    move-result-object v6

    .line 22
    :cond_f
    instance-of v8, v6, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/ClassName;

    if-eqz v8, :cond_11

    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 23
    iget-object v8, p1, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock;->formatParts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/ListIterator;->nextIndex()I

    move-result v11

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_11

    .line 24
    move-object v8, v6

    check-cast v8, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/ClassName;

    .line 25
    iget-object v9, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->staticImportClassNames:Ljava/util/Set;

    iget-object v11, v8, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/ClassName;->canonicalName:Ljava/lang/String;

    invoke-interface {v9, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    if-nez v7, :cond_10

    move v6, v2

    goto :goto_6

    :cond_10
    move v6, v4

    .line 26
    :goto_6
    const-string v7, "pending type for static import?!"

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v6, v7, v9}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/Util;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    move-object v7, v8

    :goto_7
    move v6, v10

    goto/16 :goto_1

    .line 27
    :cond_11
    invoke-virtual {v6, p0}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeName;->emit(Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;

    goto :goto_7

    .line 28
    :pswitch_4
    iget-object v8, p1, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock;->args:Ljava/util/List;

    add-int/lit8 v9, v6, 0x1

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_12

    .line 29
    iget-object v8, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->indent:Ljava/lang/String;

    invoke-static {v6, v8}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/Util;->stringLiteralWithDoubleQuotes(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    .line 30
    :cond_12
    const-string v6, "null"

    .line 31
    :goto_8
    invoke-virtual {p0, v6}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->emitAndIndent(Ljava/lang/String;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;

    :goto_9
    move v6, v9

    goto/16 :goto_1

    .line 32
    :pswitch_5
    iget-object v8, p1, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock;->args:Ljava/util/List;

    add-int/lit8 v9, v6, 0x1

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->emitAndIndent(Ljava/lang/String;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;

    goto :goto_9

    .line 33
    :pswitch_6
    iget-object v8, p1, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock;->args:Ljava/util/List;

    add-int/lit8 v9, v6, 0x1

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->emitLiteral(Ljava/lang/Object;)V

    goto :goto_9

    .line 34
    :pswitch_7
    invoke-virtual {p0}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->indent()Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;

    goto/16 :goto_1

    .line 35
    :pswitch_8
    invoke-virtual {p0}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->unindent()Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;

    goto/16 :goto_1

    .line 36
    :pswitch_9
    invoke-virtual {p0, v9}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->emitAndIndent(Ljava/lang/String;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;

    goto/16 :goto_1

    :cond_13
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x480 -> :sswitch_9
        0x498 -> :sswitch_8
        0x49a -> :sswitch_7
        0x4a8 -> :sswitch_6
        0x4aa -> :sswitch_5
        0x4af -> :sswitch_4
        0x4b0 -> :sswitch_3
        0x4b3 -> :sswitch_2
        0x4b7 -> :sswitch_1
        0x4b9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public emit(Ljava/lang/String;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->emitAndIndent(Ljava/lang/String;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;

    move-result-object p0

    return-object p0
.end method

.method public varargs emit(Ljava/lang/String;[Ljava/lang/Object;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p1, p2}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock;->of(Ljava/lang/String;[Ljava/lang/Object;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->emit(Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;

    move-result-object p0

    return-object p0
.end method

.method public emitAndIndent(Ljava/lang/String;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "\n"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v6, v3

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_8

    aget-object v7, p1, v5

    if-nez v6, :cond_4

    iget-boolean v6, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->javadoc:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->comment:Z

    if-eqz v6, :cond_2

    :cond_0
    iget-boolean v6, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->trailingNewline:Z

    if-eqz v6, :cond_2

    invoke-direct {p0}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->emitIndentation()V

    iget-object v6, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->out:Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;

    iget-boolean v8, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->javadoc:Z

    if-eqz v8, :cond_1

    const-string v8, " *"

    goto :goto_1

    :cond_1
    const-string v8, "//"

    :goto_1
    invoke-virtual {v6, v8}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;->append(Ljava/lang/String;)V

    :cond_2
    iget-object v6, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->out:Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;

    invoke-virtual {v6, v0}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;->append(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->trailingNewline:Z

    iget v6, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->statementLine:I

    if-eq v6, v1, :cond_4

    if-nez v6, :cond_3

    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->indent(I)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;

    :cond_3
    iget v6, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->statementLine:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->statementLine:I

    :cond_4
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_3

    :cond_5
    iget-boolean v6, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->trailingNewline:Z

    if-eqz v6, :cond_7

    invoke-direct {p0}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->emitIndentation()V

    iget-boolean v6, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->javadoc:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->out:Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;

    const-string v8, " * "

    invoke-virtual {v6, v8}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;->append(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    iget-boolean v6, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->comment:Z

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->out:Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;

    const-string v8, "// "

    invoke-virtual {v6, v8}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;->append(Ljava/lang/String;)V

    :cond_7
    :goto_2
    iget-object v6, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->out:Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;

    invoke-virtual {v6, v7}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;->append(Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->trailingNewline:Z

    :goto_3
    add-int/lit8 v5, v5, 0x1

    move v6, v4

    goto :goto_0

    :cond_8
    return-object p0
.end method

.method public emitAnnotations(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/repackaged/com/squareup/javapoet/AnnotationSpec;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/AnnotationSpec;

    invoke-virtual {v0, p0, p2}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/AnnotationSpec;->emit(Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;Z)V

    if-eqz p2, :cond_0

    const-string v0, " "

    goto :goto_1

    :cond_0
    const-string v0, "\n"

    :goto_1
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public emitComment(Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->trailingNewline:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->comment:Z

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->emit(Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;

    const-string p1, "\n"

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->comment:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->comment:Z

    throw p1
.end method

.method public emitJavadoc(Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "/**\n"

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->javadoc:Z

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->emit(Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->javadoc:Z

    const-string p1, " */\n"

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->javadoc:Z

    throw p1
.end method

.method public emitModifiers(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Modifier;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->emitModifiers(Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public emitModifiers(Ljava/util/Set;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Modifier;",
            ">;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Modifier;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/Modifier;

    .line 3
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v0}, Ljavax/lang/model/element/Modifier;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->emitAndIndent(Ljava/lang/String;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;

    .line 5
    const-string v0, " "

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->emitAndIndent(Ljava/lang/String;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public emitTypeVariables(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeVariableName;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "<"

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeVariableName;

    if-nez v1, :cond_1

    const-string v1, ", "

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;

    :cond_1
    iget-object v1, v2, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeVariableName;->name:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "$L"

    invoke-virtual {p0, v3, v1}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;

    iget-object v1, v2, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeVariableName;->bounds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeName;

    if-eqz v2, :cond_2

    const-string v2, " extends $T"

    goto :goto_2

    :cond_2
    const-string v2, " & $T"

    :goto_2
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;

    move v2, v4

    goto :goto_1

    :cond_3
    move v1, v4

    goto :goto_0

    :cond_4
    const-string p1, ">"

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;

    return-void
.end method

.method public emitWrappingSpace()Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->out:Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;

    iget v1, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->indentLevel:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;->wrappingSpace(I)V

    return-object p0
.end method

.method public importedTypes()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/repackaged/com/squareup/javapoet/ClassName;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->importedTypes:Ljava/util/Map;

    return-object p0
.end method

.method public indent()Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->indent(I)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;

    move-result-object p0

    return-object p0
.end method

.method public indent(I)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;
    .locals 1

    .line 2
    iget v0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->indentLevel:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->indentLevel:I

    return-object p0
.end method

.method public lookupName(Lcom/bumptech/glide/repackaged/com/squareup/javapoet/ClassName;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    move-object v1, p1

    move v2, v0

    :goto_0
    const-string v3, "."

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/ClassName;->simpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->resolve(Ljava/lang/String;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/ClassName;

    move-result-object v2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v5, v4

    goto :goto_1

    :cond_0
    move v5, v0

    :goto_1
    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/ClassName;->simpleNames()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v4

    invoke-virtual {p1}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/ClassName;->simpleNames()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/ClassName;->simpleNames()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v0, p0, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/Util;->join(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v1}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/ClassName;->enclosingClassName()Lcom/bumptech/glide/repackaged/com/squareup/javapoet/ClassName;

    move-result-object v1

    move v2, v5

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    iget-object p0, p1, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/ClassName;->canonicalName:Ljava/lang/String;

    return-object p0

    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/ClassName;->packageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->referencedNames:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/ClassName;->topLevelClassName()Lcom/bumptech/glide/repackaged/com/squareup/javapoet/ClassName;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/ClassName;->simpleName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/ClassName;->simpleNames()Ljava/util/List;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/Util;->join(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    iget-boolean v0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->javadoc:Z

    if-nez v0, :cond_5

    invoke-direct {p0, p1}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->importableType(Lcom/bumptech/glide/repackaged/com/squareup/javapoet/ClassName;)V

    :cond_5
    iget-object p0, p1, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/ClassName;->canonicalName:Ljava/lang/String;

    return-object p0
.end method

.method public popPackage()Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;
    .locals 4

    iget-object v0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->packageName:Ljava/lang/String;

    sget-object v1, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->NO_PACKAGE:Ljava/lang/String;

    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "package already set: %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/Util;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public popType()Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->typeSpecStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0
.end method

.method public pushPackage(Ljava/lang/String;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;
    .locals 4

    iget-object v0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->packageName:Ljava/lang/String;

    sget-object v1, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->NO_PACKAGE:Ljava/lang/String;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v3, "package already set: %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/Util;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "packageName == null"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public pushType(Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeSpec;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->typeSpecStack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public suggestedImports()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/repackaged/com/squareup/javapoet/ClassName;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->importableTypes:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    iget-object p0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->referencedNames:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public unindent()Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->unindent(I)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;

    move-result-object p0

    return-object p0
.end method

.method public unindent(I)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;
    .locals 3

    .line 2
    iget v0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->indentLevel:I

    sub-int/2addr v0, p1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->indentLevel:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "cannot unindent %s from %s"

    invoke-static {v0, v2, v1}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget v0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->indentLevel:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeWriter;->indentLevel:I

    return-object p0
.end method
