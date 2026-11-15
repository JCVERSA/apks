.class public Lorg/apache/commons/text/StrSubstitutor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_ESCAPE:C = '$'

.field public static final DEFAULT_PREFIX:Lorg/apache/commons/text/StrMatcher;

.field public static final DEFAULT_SUFFIX:Lorg/apache/commons/text/StrMatcher;

.field public static final DEFAULT_VALUE_DELIMITER:Lorg/apache/commons/text/StrMatcher;


# instance fields
.field private disableSubstitutionInValues:Z

.field private enableSubstitutionInVariables:Z

.field private escapeChar:C

.field private prefixMatcher:Lorg/apache/commons/text/StrMatcher;

.field private preserveEscapes:Z

.field private suffixMatcher:Lorg/apache/commons/text/StrMatcher;

.field private valueDelimiterMatcher:Lorg/apache/commons/text/StrMatcher;

.field private variableResolver:Lorg/apache/commons/text/StrLookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/text/StrLookup<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "${"

    invoke-static {v0}, Lorg/apache/commons/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/text/StrMatcher;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/text/StrSubstitutor;->DEFAULT_PREFIX:Lorg/apache/commons/text/StrMatcher;

    const-string v0, "}"

    invoke-static {v0}, Lorg/apache/commons/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/text/StrMatcher;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/text/StrSubstitutor;->DEFAULT_SUFFIX:Lorg/apache/commons/text/StrMatcher;

    const-string v0, ":-"

    invoke-static {v0}, Lorg/apache/commons/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/text/StrMatcher;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/text/StrSubstitutor;->DEFAULT_VALUE_DELIMITER:Lorg/apache/commons/text/StrMatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    sget-object v0, Lorg/apache/commons/text/StrSubstitutor;->DEFAULT_PREFIX:Lorg/apache/commons/text/StrMatcher;

    sget-object v1, Lorg/apache/commons/text/StrSubstitutor;->DEFAULT_SUFFIX:Lorg/apache/commons/text/StrMatcher;

    const/16 v2, 0x24

    const/4 v3, 0x0

    invoke-direct {p0, v3, v0, v1, v2}, Lorg/apache/commons/text/StrSubstitutor;-><init>(Lorg/apache/commons/text/StrLookup;Lorg/apache/commons/text/StrMatcher;Lorg/apache/commons/text/StrMatcher;C)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;)V"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lorg/apache/commons/text/StrLookup;->mapLookup(Ljava/util/Map;)Lorg/apache/commons/text/StrLookup;

    move-result-object p1

    sget-object v0, Lorg/apache/commons/text/StrSubstitutor;->DEFAULT_PREFIX:Lorg/apache/commons/text/StrMatcher;

    sget-object v1, Lorg/apache/commons/text/StrSubstitutor;->DEFAULT_SUFFIX:Lorg/apache/commons/text/StrMatcher;

    const/16 v2, 0x24

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/commons/text/StrSubstitutor;-><init>(Lorg/apache/commons/text/StrLookup;Lorg/apache/commons/text/StrMatcher;Lorg/apache/commons/text/StrMatcher;C)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-static {p1}, Lorg/apache/commons/text/StrLookup;->mapLookup(Ljava/util/Map;)Lorg/apache/commons/text/StrLookup;

    move-result-object p1

    const/16 v0, 0x24

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/text/StrSubstitutor;-><init>(Lorg/apache/commons/text/StrLookup;Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "C)V"
        }
    .end annotation

    .line 4
    invoke-static {p1}, Lorg/apache/commons/text/StrLookup;->mapLookup(Ljava/util/Map;)Lorg/apache/commons/text/StrLookup;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/text/StrSubstitutor;-><init>(Lorg/apache/commons/text/StrLookup;Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "C",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-static {p1}, Lorg/apache/commons/text/StrLookup;->mapLookup(Ljava/util/Map;)Lorg/apache/commons/text/StrLookup;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/text/StrSubstitutor;-><init>(Lorg/apache/commons/text/StrLookup;Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/text/StrLookup;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/text/StrLookup<",
            "*>;)V"
        }
    .end annotation

    .line 6
    sget-object v0, Lorg/apache/commons/text/StrSubstitutor;->DEFAULT_PREFIX:Lorg/apache/commons/text/StrMatcher;

    sget-object v1, Lorg/apache/commons/text/StrSubstitutor;->DEFAULT_SUFFIX:Lorg/apache/commons/text/StrMatcher;

    const/16 v2, 0x24

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/commons/text/StrSubstitutor;-><init>(Lorg/apache/commons/text/StrLookup;Lorg/apache/commons/text/StrMatcher;Lorg/apache/commons/text/StrMatcher;C)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/text/StrLookup;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/text/StrLookup<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "C)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrSubstitutor;->setVariableResolver(Lorg/apache/commons/text/StrLookup;)V

    .line 9
    invoke-virtual {p0, p2}, Lorg/apache/commons/text/StrSubstitutor;->setVariablePrefix(Ljava/lang/String;)Lorg/apache/commons/text/StrSubstitutor;

    .line 10
    invoke-virtual {p0, p3}, Lorg/apache/commons/text/StrSubstitutor;->setVariableSuffix(Ljava/lang/String;)Lorg/apache/commons/text/StrSubstitutor;

    .line 11
    invoke-virtual {p0, p4}, Lorg/apache/commons/text/StrSubstitutor;->setEscapeChar(C)V

    .line 12
    sget-object p1, Lorg/apache/commons/text/StrSubstitutor;->DEFAULT_VALUE_DELIMITER:Lorg/apache/commons/text/StrMatcher;

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrSubstitutor;->setValueDelimiterMatcher(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrSubstitutor;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/text/StrLookup;Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/text/StrLookup<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "C",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrSubstitutor;->setVariableResolver(Lorg/apache/commons/text/StrLookup;)V

    .line 15
    invoke-virtual {p0, p2}, Lorg/apache/commons/text/StrSubstitutor;->setVariablePrefix(Ljava/lang/String;)Lorg/apache/commons/text/StrSubstitutor;

    .line 16
    invoke-virtual {p0, p3}, Lorg/apache/commons/text/StrSubstitutor;->setVariableSuffix(Ljava/lang/String;)Lorg/apache/commons/text/StrSubstitutor;

    .line 17
    invoke-virtual {p0, p4}, Lorg/apache/commons/text/StrSubstitutor;->setEscapeChar(C)V

    .line 18
    invoke-virtual {p0, p5}, Lorg/apache/commons/text/StrSubstitutor;->setValueDelimiter(Ljava/lang/String;)Lorg/apache/commons/text/StrSubstitutor;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/text/StrLookup;Lorg/apache/commons/text/StrMatcher;Lorg/apache/commons/text/StrMatcher;C)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/text/StrLookup<",
            "*>;",
            "Lorg/apache/commons/text/StrMatcher;",
            "Lorg/apache/commons/text/StrMatcher;",
            "C)V"
        }
    .end annotation

    .line 19
    sget-object v5, Lorg/apache/commons/text/StrSubstitutor;->DEFAULT_VALUE_DELIMITER:Lorg/apache/commons/text/StrMatcher;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/text/StrSubstitutor;-><init>(Lorg/apache/commons/text/StrLookup;Lorg/apache/commons/text/StrMatcher;Lorg/apache/commons/text/StrMatcher;CLorg/apache/commons/text/StrMatcher;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/text/StrLookup;Lorg/apache/commons/text/StrMatcher;Lorg/apache/commons/text/StrMatcher;CLorg/apache/commons/text/StrMatcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/text/StrLookup<",
            "*>;",
            "Lorg/apache/commons/text/StrMatcher;",
            "Lorg/apache/commons/text/StrMatcher;",
            "C",
            "Lorg/apache/commons/text/StrMatcher;",
            ")V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrSubstitutor;->setVariableResolver(Lorg/apache/commons/text/StrLookup;)V

    .line 22
    invoke-virtual {p0, p2}, Lorg/apache/commons/text/StrSubstitutor;->setVariablePrefixMatcher(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrSubstitutor;

    .line 23
    invoke-virtual {p0, p3}, Lorg/apache/commons/text/StrSubstitutor;->setVariableSuffixMatcher(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrSubstitutor;

    .line 24
    invoke-virtual {p0, p4}, Lorg/apache/commons/text/StrSubstitutor;->setEscapeChar(C)V

    .line 25
    invoke-virtual {p0, p5}, Lorg/apache/commons/text/StrSubstitutor;->setValueDelimiterMatcher(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrSubstitutor;

    return-void
.end method

.method private checkCyclicSubstitution(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/apache/commons/text/StrBuilder;

    const/16 p1, 0x100

    invoke-direct {p0, p1}, Lorg/apache/commons/text/StrBuilder;-><init>(I)V

    const-string p1, "Infinite loop in property interpolation of "

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    const-string p1, ": "

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    const-string p1, "->"

    invoke-virtual {p0, p2, p1}, Lorg/apache/commons/text/StrBuilder;->appendWithSeparators(Ljava/lang/Iterable;Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static replace(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/text/StrSubstitutor;

    invoke-direct {v0, p1}, Lorg/apache/commons/text/StrSubstitutor;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p0}, Lorg/apache/commons/text/StrSubstitutor;->replace(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replace(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/commons/text/StrSubstitutor;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/commons/text/StrSubstitutor;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lorg/apache/commons/text/StrSubstitutor;->replace(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replace(Ljava/lang/Object;Ljava/util/Properties;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-virtual {p1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 6
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {p0, v0}, Lorg/apache/commons/text/StrSubstitutor;->replace(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replaceSystemProperties(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lorg/apache/commons/text/StrSubstitutor;

    invoke-static {}, Lorg/apache/commons/text/StrLookup;->systemPropertiesLookup()Lorg/apache/commons/text/StrLookup;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/text/StrSubstitutor;-><init>(Lorg/apache/commons/text/StrLookup;)V

    invoke-virtual {v0, p0}, Lorg/apache/commons/text/StrSubstitutor;->replace(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private substitute(Lorg/apache/commons/text/StrBuilder;IILjava/util/List;)I
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/text/StrBuilder;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/text/StrSubstitutor;->getVariablePrefixMatcher()Lorg/apache/commons/text/StrMatcher;

    move-result-object v4

    .line 3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/text/StrSubstitutor;->getVariableSuffixMatcher()Lorg/apache/commons/text/StrMatcher;

    move-result-object v5

    .line 4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/text/StrSubstitutor;->getEscapeChar()C

    move-result v6

    .line 5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/text/StrSubstitutor;->getValueDelimiterMatcher()Lorg/apache/commons/text/StrMatcher;

    move-result-object v7

    .line 6
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/text/StrSubstitutor;->isEnableSubstitutionInVariables()Z

    move-result v8

    .line 7
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/text/StrSubstitutor;->isDisableSubstitutionInValues()Z

    move-result v9

    if-nez p4, :cond_0

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    .line 8
    :goto_0
    iget-object v13, v1, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    add-int v14, v2, v3

    move v11, v2

    move v15, v14

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v14, v13

    move-object/from16 v13, p4

    :goto_1
    if-ge v11, v15, :cond_12

    .line 9
    invoke-virtual {v4, v14, v11, v2, v15}, Lorg/apache/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v19

    if-nez v19, :cond_1

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v23, v5

    move/from16 v24, v6

    move/from16 v20, v12

    move v5, v15

    const/4 v15, 0x0

    const/16 v16, 0x1

    goto/16 :goto_a

    :cond_1
    if-le v11, v2, :cond_3

    add-int/lit8 v10, v11, -0x1

    move/from16 v20, v12

    .line 10
    aget-char v12, v14, v10

    if-ne v12, v6, :cond_4

    .line 11
    iget-boolean v12, v0, Lorg/apache/commons/text/StrSubstitutor;->preserveEscapes:Z

    if-eqz v12, :cond_2

    add-int/lit8 v11, v11, 0x1

    move/from16 v12, v20

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {v1, v10}, Lorg/apache/commons/text/StrBuilder;->deleteCharAt(I)Lorg/apache/commons/text/StrBuilder;

    .line 13
    iget-object v10, v1, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    add-int/lit8 v17, v17, -0x1

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v23, v5

    move/from16 v24, v6

    move-object v14, v10

    move v5, v15

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v18, 0x1

    goto/16 :goto_a

    :cond_3
    move/from16 v20, v12

    :cond_4
    add-int v10, v11, v19

    move v12, v10

    const/16 v21, 0x0

    :goto_2
    if-ge v12, v15, :cond_11

    if-eqz v8, :cond_5

    .line 14
    invoke-virtual {v4, v14, v12, v2, v15}, Lorg/apache/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v22

    if-eqz v22, :cond_5

    .line 15
    invoke-virtual {v4, v14, v12, v2, v15}, Lorg/apache/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v22

    add-int/lit8 v21, v21, 0x1

    add-int v12, v12, v22

    goto :goto_2

    .line 16
    :cond_5
    invoke-virtual {v5, v14, v12, v2, v15}, Lorg/apache/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v22

    if-nez v22, :cond_6

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_6
    if-nez v21, :cond_10

    move-object/from16 v23, v5

    .line 17
    new-instance v5, Ljava/lang/String;

    sub-int v21, v12, v11

    move/from16 v24, v6

    sub-int v6, v21, v19

    invoke-direct {v5, v14, v10, v6}, Ljava/lang/String;-><init>([CII)V

    if-eqz v8, :cond_7

    .line 18
    new-instance v6, Lorg/apache/commons/text/StrBuilder;

    invoke-direct {v6, v5}, Lorg/apache/commons/text/StrBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v6}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v5

    const/4 v10, 0x0

    invoke-virtual {v0, v6, v10, v5}, Lorg/apache/commons/text/StrSubstitutor;->substitute(Lorg/apache/commons/text/StrBuilder;II)Z

    .line 20
    invoke-virtual {v6}, Lorg/apache/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_7
    add-int v12, v12, v22

    if-eqz v7, :cond_b

    .line 21
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    move/from16 p4, v15

    const/4 v10, 0x0

    .line 22
    :goto_3
    array-length v15, v6

    if-ge v10, v15, :cond_8

    if-nez v8, :cond_9

    .line 23
    array-length v15, v6

    .line 24
    invoke-virtual {v4, v6, v10, v10, v15}, Lorg/apache/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v15

    if-eqz v15, :cond_9

    :cond_8
    :goto_4
    const/4 v15, 0x0

    goto :goto_5

    .line 25
    :cond_9
    invoke-virtual {v7, v6, v10}, Lorg/apache/commons/text/StrMatcher;->isMatch([CI)I

    move-result v15

    if-eqz v15, :cond_a

    .line 26
    invoke-virtual {v7, v6, v10}, Lorg/apache/commons/text/StrMatcher;->isMatch([CI)I

    move-result v6

    const/4 v15, 0x0

    .line 27
    invoke-virtual {v5, v15, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    add-int/2addr v10, v6

    .line 28
    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    move-object/from16 v5, v19

    goto :goto_6

    :cond_a
    const/4 v15, 0x0

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_b
    move/from16 p4, v15

    goto :goto_4

    :goto_5
    const/4 v6, 0x0

    :goto_6
    if-nez v13, :cond_c

    .line 29
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 30
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v14, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_c
    invoke-direct {v0, v5, v13}, Lorg/apache/commons/text/StrSubstitutor;->checkCyclicSubstitution(Ljava/lang/String;Ljava/util/List;)V

    .line 32
    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-virtual {v0, v5, v1, v11, v12}, Lorg/apache/commons/text/StrSubstitutor;->resolveVariable(Ljava/lang/String;Lorg/apache/commons/text/StrBuilder;II)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_d

    goto :goto_7

    :cond_d
    move-object v6, v5

    :goto_7
    if-eqz v6, :cond_f

    .line 34
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    .line 35
    invoke-virtual {v1, v11, v12, v6}, Lorg/apache/commons/text/StrBuilder;->replace(IILjava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    if-nez v9, :cond_e

    .line 36
    invoke-direct {v0, v1, v11, v5, v13}, Lorg/apache/commons/text/StrSubstitutor;->substitute(Lorg/apache/commons/text/StrBuilder;IILjava/util/List;)I

    move-result v10

    goto :goto_8

    :cond_e
    move v10, v15

    :goto_8
    add-int/2addr v10, v5

    sub-int v5, v12, v11

    sub-int/2addr v10, v5

    add-int/2addr v12, v10

    add-int v5, p4, v10

    add-int v17, v17, v10

    .line 37
    iget-object v14, v1, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    move v11, v12

    const/16 v18, 0x1

    goto :goto_9

    :cond_f
    move/from16 v5, p4

    move v11, v12

    .line 38
    :goto_9
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v6

    const/16 v16, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v13, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_a

    :cond_10
    move-object/from16 v23, v5

    move/from16 v24, v6

    move/from16 p4, v15

    const/4 v15, 0x0

    const/16 v16, 0x1

    add-int/lit8 v21, v21, -0x1

    add-int v12, v12, v22

    move/from16 v15, p4

    goto/16 :goto_2

    :cond_11
    move-object/from16 v23, v5

    move/from16 v24, v6

    move/from16 p4, v15

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v5, p4

    move v11, v12

    :goto_a
    move v15, v5

    move/from16 v12, v20

    move-object/from16 v5, v23

    move/from16 v6, v24

    goto/16 :goto_1

    :cond_12
    move/from16 v20, v12

    if-eqz v20, :cond_13

    return v18

    :cond_13
    return v17
.end method


# virtual methods
.method public getEscapeChar()C
    .locals 0

    iget-char p0, p0, Lorg/apache/commons/text/StrSubstitutor;->escapeChar:C

    return p0
.end method

.method public getValueDelimiterMatcher()Lorg/apache/commons/text/StrMatcher;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/text/StrSubstitutor;->valueDelimiterMatcher:Lorg/apache/commons/text/StrMatcher;

    return-object p0
.end method

.method public getVariablePrefixMatcher()Lorg/apache/commons/text/StrMatcher;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/text/StrSubstitutor;->prefixMatcher:Lorg/apache/commons/text/StrMatcher;

    return-object p0
.end method

.method public getVariableResolver()Lorg/apache/commons/text/StrLookup;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/text/StrLookup<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/text/StrSubstitutor;->variableResolver:Lorg/apache/commons/text/StrLookup;

    return-object p0
.end method

.method public getVariableSuffixMatcher()Lorg/apache/commons/text/StrMatcher;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/text/StrSubstitutor;->suffixMatcher:Lorg/apache/commons/text/StrMatcher;

    return-object p0
.end method

.method public isDisableSubstitutionInValues()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/text/StrSubstitutor;->disableSubstitutionInValues:Z

    return p0
.end method

.method public isEnableSubstitutionInVariables()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/text/StrSubstitutor;->enableSubstitutionInVariables:Z

    return p0
.end method

.method public isPreserveEscapes()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/text/StrSubstitutor;->preserveEscapes:Z

    return p0
.end method

.method public replace(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 17
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/text/StrSubstitutor;->replace(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public replace(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 18
    :cond_0
    new-instance v0, Lorg/apache/commons/text/StrBuilder;

    invoke-direct {v0, p3}, Lorg/apache/commons/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/CharSequence;II)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    const/4 p2, 0x0

    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/text/StrSubstitutor;->substitute(Lorg/apache/commons/text/StrBuilder;II)Z

    .line 20
    invoke-virtual {p1}, Lorg/apache/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public replace(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 21
    :cond_0
    new-instance v0, Lorg/apache/commons/text/StrBuilder;

    invoke-direct {v0}, Lorg/apache/commons/text/StrBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/text/StrSubstitutor;->substitute(Lorg/apache/commons/text/StrBuilder;II)Z

    .line 23
    invoke-virtual {p1}, Lorg/apache/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public replace(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 30
    :cond_0
    new-instance v0, Lorg/apache/commons/text/StrBuilder;

    invoke-direct {v0, p1}, Lorg/apache/commons/text/StrBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/text/StrSubstitutor;->substitute(Lorg/apache/commons/text/StrBuilder;II)Z

    move-result p0

    if-nez p0, :cond_1

    return-object p1

    .line 32
    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public replace(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 33
    :cond_0
    new-instance v0, Lorg/apache/commons/text/StrBuilder;

    invoke-direct {v0, p3}, Lorg/apache/commons/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/String;II)Lorg/apache/commons/text/StrBuilder;

    move-result-object v0

    const/4 v1, 0x0

    .line 34
    invoke-virtual {p0, v0, v1, p3}, Lorg/apache/commons/text/StrSubstitutor;->substitute(Lorg/apache/commons/text/StrBuilder;II)Z

    move-result p0

    if-nez p0, :cond_1

    add-int/2addr p3, p2

    .line 35
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 36
    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public replace(Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 37
    :cond_0
    new-instance v0, Lorg/apache/commons/text/StrBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/commons/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/StringBuffer;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/text/StrSubstitutor;->substitute(Lorg/apache/commons/text/StrBuilder;II)Z

    .line 39
    invoke-virtual {p1}, Lorg/apache/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public replace(Ljava/lang/StringBuffer;II)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 40
    :cond_0
    new-instance v0, Lorg/apache/commons/text/StrBuilder;

    invoke-direct {v0, p3}, Lorg/apache/commons/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/StringBuffer;II)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    const/4 p2, 0x0

    .line 41
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/text/StrSubstitutor;->substitute(Lorg/apache/commons/text/StrBuilder;II)Z

    .line 42
    invoke-virtual {p1}, Lorg/apache/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public replace(Lorg/apache/commons/text/StrBuilder;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 24
    :cond_0
    new-instance v0, Lorg/apache/commons/text/StrBuilder;

    invoke-virtual {p1}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/commons/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Lorg/apache/commons/text/StrBuilder;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/text/StrSubstitutor;->substitute(Lorg/apache/commons/text/StrBuilder;II)Z

    .line 26
    invoke-virtual {p1}, Lorg/apache/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public replace(Lorg/apache/commons/text/StrBuilder;II)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 27
    :cond_0
    new-instance v0, Lorg/apache/commons/text/StrBuilder;

    invoke-direct {v0, p3}, Lorg/apache/commons/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/text/StrBuilder;->append(Lorg/apache/commons/text/StrBuilder;II)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    const/4 p2, 0x0

    .line 28
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/text/StrSubstitutor;->substitute(Lorg/apache/commons/text/StrBuilder;II)Z

    .line 29
    invoke-virtual {p1}, Lorg/apache/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public replace([C)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 11
    :cond_0
    new-instance v0, Lorg/apache/commons/text/StrBuilder;

    array-length v1, p1

    invoke-direct {v0, v1}, Lorg/apache/commons/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/text/StrBuilder;->append([C)Lorg/apache/commons/text/StrBuilder;

    move-result-object v0

    const/4 v1, 0x0

    .line 12
    array-length p1, p1

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/commons/text/StrSubstitutor;->substitute(Lorg/apache/commons/text/StrBuilder;II)Z

    .line 13
    invoke-virtual {v0}, Lorg/apache/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public replace([CII)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 14
    :cond_0
    new-instance v0, Lorg/apache/commons/text/StrBuilder;

    invoke-direct {v0, p3}, Lorg/apache/commons/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/text/StrBuilder;->append([CII)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    const/4 p2, 0x0

    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/text/StrSubstitutor;->substitute(Lorg/apache/commons/text/StrBuilder;II)Z

    .line 16
    invoke-virtual {p1}, Lorg/apache/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public replaceIn(Ljava/lang/StringBuffer;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/text/StrSubstitutor;->replaceIn(Ljava/lang/StringBuffer;II)Z

    move-result p0

    return p0
.end method

.method public replaceIn(Ljava/lang/StringBuffer;II)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 4
    :cond_0
    new-instance v1, Lorg/apache/commons/text/StrBuilder;

    invoke-direct {v1, p3}, Lorg/apache/commons/text/StrBuilder;-><init>(I)V

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/StringBuffer;II)Lorg/apache/commons/text/StrBuilder;

    move-result-object v1

    .line 5
    invoke-virtual {p0, v1, v0, p3}, Lorg/apache/commons/text/StrSubstitutor;->substitute(Lorg/apache/commons/text/StrBuilder;II)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    add-int/2addr p3, p2

    .line 6
    invoke-virtual {v1}, Lorg/apache/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p3, p0}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p0, 0x1

    return p0
.end method

.method public replaceIn(Ljava/lang/StringBuilder;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 7
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/text/StrSubstitutor;->replaceIn(Ljava/lang/StringBuilder;II)Z

    move-result p0

    return p0
.end method

.method public replaceIn(Ljava/lang/StringBuilder;II)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 8
    :cond_0
    new-instance v1, Lorg/apache/commons/text/StrBuilder;

    invoke-direct {v1, p3}, Lorg/apache/commons/text/StrBuilder;-><init>(I)V

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/StringBuilder;II)Lorg/apache/commons/text/StrBuilder;

    move-result-object v1

    .line 9
    invoke-virtual {p0, v1, v0, p3}, Lorg/apache/commons/text/StrSubstitutor;->substitute(Lorg/apache/commons/text/StrBuilder;II)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    add-int/2addr p3, p2

    .line 10
    invoke-virtual {v1}, Lorg/apache/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p3, p0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x1

    return p0
.end method

.method public replaceIn(Lorg/apache/commons/text/StrBuilder;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/text/StrSubstitutor;->substitute(Lorg/apache/commons/text/StrBuilder;II)Z

    move-result p0

    return p0
.end method

.method public replaceIn(Lorg/apache/commons/text/StrBuilder;II)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/text/StrSubstitutor;->substitute(Lorg/apache/commons/text/StrBuilder;II)Z

    move-result p0

    return p0
.end method

.method public resolveVariable(Ljava/lang/String;Lorg/apache/commons/text/StrBuilder;II)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/text/StrSubstitutor;->getVariableResolver()Lorg/apache/commons/text/StrLookup;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, p1}, Lorg/apache/commons/text/lookup/StringLookup;->lookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setDisableSubstitutionInValues(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/text/StrSubstitutor;->disableSubstitutionInValues:Z

    return-void
.end method

.method public setEnableSubstitutionInVariables(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/text/StrSubstitutor;->enableSubstitutionInVariables:Z

    return-void
.end method

.method public setEscapeChar(C)V
    .locals 0

    iput-char p1, p0, Lorg/apache/commons/text/StrSubstitutor;->escapeChar:C

    return-void
.end method

.method public setPreserveEscapes(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/text/StrSubstitutor;->preserveEscapes:Z

    return-void
.end method

.method public setValueDelimiter(C)Lorg/apache/commons/text/StrSubstitutor;
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/apache/commons/text/StrMatcher;->charMatcher(C)Lorg/apache/commons/text/StrMatcher;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrSubstitutor;->setValueDelimiterMatcher(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrSubstitutor;

    move-result-object p0

    return-object p0
.end method

.method public setValueDelimiter(Ljava/lang/String;)Lorg/apache/commons/text/StrSubstitutor;
    .locals 1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/text/StrMatcher;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrSubstitutor;->setValueDelimiterMatcher(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrSubstitutor;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrSubstitutor;->setValueDelimiterMatcher(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrSubstitutor;

    return-object p0
.end method

.method public setValueDelimiterMatcher(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrSubstitutor;
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/text/StrSubstitutor;->valueDelimiterMatcher:Lorg/apache/commons/text/StrMatcher;

    return-object p0
.end method

.method public setVariablePrefix(C)Lorg/apache/commons/text/StrSubstitutor;
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/apache/commons/text/StrMatcher;->charMatcher(C)Lorg/apache/commons/text/StrMatcher;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrSubstitutor;->setVariablePrefixMatcher(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrSubstitutor;

    move-result-object p0

    return-object p0
.end method

.method public setVariablePrefix(Ljava/lang/String;)Lorg/apache/commons/text/StrSubstitutor;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 2
    :goto_0
    const-string v2, "Variable prefix must not be null!"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-static {p1}, Lorg/apache/commons/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/text/StrMatcher;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrSubstitutor;->setVariablePrefixMatcher(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrSubstitutor;

    move-result-object p0

    return-object p0
.end method

.method public setVariablePrefixMatcher(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrSubstitutor;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "Variable prefix matcher must not be null!"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/apache/commons/text/StrSubstitutor;->prefixMatcher:Lorg/apache/commons/text/StrMatcher;

    return-object p0
.end method

.method public setVariableResolver(Lorg/apache/commons/text/StrLookup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/text/StrLookup<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/commons/text/StrSubstitutor;->variableResolver:Lorg/apache/commons/text/StrLookup;

    return-void
.end method

.method public setVariableSuffix(C)Lorg/apache/commons/text/StrSubstitutor;
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/apache/commons/text/StrMatcher;->charMatcher(C)Lorg/apache/commons/text/StrMatcher;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrSubstitutor;->setVariableSuffixMatcher(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrSubstitutor;

    move-result-object p0

    return-object p0
.end method

.method public setVariableSuffix(Ljava/lang/String;)Lorg/apache/commons/text/StrSubstitutor;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 2
    :goto_0
    const-string v2, "Variable suffix must not be null!"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-static {p1}, Lorg/apache/commons/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/text/StrMatcher;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrSubstitutor;->setVariableSuffixMatcher(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrSubstitutor;

    move-result-object p0

    return-object p0
.end method

.method public setVariableSuffixMatcher(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrSubstitutor;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "Variable suffix matcher must not be null!"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/apache/commons/text/StrSubstitutor;->suffixMatcher:Lorg/apache/commons/text/StrMatcher;

    return-object p0
.end method

.method public substitute(Lorg/apache/commons/text/StrBuilder;II)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/text/StrSubstitutor;->substitute(Lorg/apache/commons/text/StrBuilder;IILjava/util/List;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
