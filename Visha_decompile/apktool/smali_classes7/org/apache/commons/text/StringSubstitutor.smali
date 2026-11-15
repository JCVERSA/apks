.class public Lorg/apache/commons/text/StringSubstitutor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/text/StringSubstitutor$Result;
    }
.end annotation


# static fields
.field public static final DEFAULT_ESCAPE:C = '$'

.field public static final DEFAULT_PREFIX:Lorg/apache/commons/text/matcher/StringMatcher;

.field public static final DEFAULT_SUFFIX:Lorg/apache/commons/text/matcher/StringMatcher;

.field public static final DEFAULT_VALUE_DELIMITER:Lorg/apache/commons/text/matcher/StringMatcher;

.field public static final DEFAULT_VAR_DEFAULT:Ljava/lang/String; = ":-"

.field public static final DEFAULT_VAR_END:Ljava/lang/String; = "}"

.field public static final DEFAULT_VAR_START:Ljava/lang/String; = "${"


# instance fields
.field private disableSubstitutionInValues:Z

.field private enableSubstitutionInVariables:Z

.field private enableUndefinedVariableException:Z

.field private escapeChar:C

.field private prefixMatcher:Lorg/apache/commons/text/matcher/StringMatcher;

.field private preserveEscapes:Z

.field private suffixMatcher:Lorg/apache/commons/text/matcher/StringMatcher;

.field private valueDelimiterMatcher:Lorg/apache/commons/text/matcher/StringMatcher;

.field private variableResolver:Lorg/apache/commons/text/lookup/StringLookup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/apache/commons/text/matcher/StringMatcherFactory;

    const-string v1, "${"

    invoke-virtual {v0, v1}, Lorg/apache/commons/text/matcher/StringMatcherFactory;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/text/StringSubstitutor;->DEFAULT_PREFIX:Lorg/apache/commons/text/matcher/StringMatcher;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Lorg/apache/commons/text/matcher/StringMatcherFactory;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/text/StringSubstitutor;->DEFAULT_SUFFIX:Lorg/apache/commons/text/matcher/StringMatcher;

    const-string v1, ":-"

    invoke-virtual {v0, v1}, Lorg/apache/commons/text/matcher/StringMatcherFactory;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/text/StringSubstitutor;->DEFAULT_VALUE_DELIMITER:Lorg/apache/commons/text/matcher/StringMatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    sget-object v0, Lorg/apache/commons/text/StringSubstitutor;->DEFAULT_PREFIX:Lorg/apache/commons/text/matcher/StringMatcher;

    sget-object v1, Lorg/apache/commons/text/StringSubstitutor;->DEFAULT_SUFFIX:Lorg/apache/commons/text/matcher/StringMatcher;

    const/16 v2, 0x24

    const/4 v3, 0x0

    invoke-direct {p0, v3, v0, v1, v2}, Lorg/apache/commons/text/StringSubstitutor;-><init>(Lorg/apache/commons/text/lookup/StringLookup;Lorg/apache/commons/text/matcher/StringMatcher;Lorg/apache/commons/text/matcher/StringMatcher;C)V

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
    sget-object v0, Lorg/apache/commons/text/lookup/StringLookupFactory;->INSTANCE:Lorg/apache/commons/text/lookup/StringLookupFactory;

    invoke-virtual {v0, p1}, Lorg/apache/commons/text/lookup/StringLookupFactory;->mapStringLookup(Ljava/util/Map;)Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object p1

    sget-object v0, Lorg/apache/commons/text/StringSubstitutor;->DEFAULT_PREFIX:Lorg/apache/commons/text/matcher/StringMatcher;

    sget-object v1, Lorg/apache/commons/text/StringSubstitutor;->DEFAULT_SUFFIX:Lorg/apache/commons/text/matcher/StringMatcher;

    const/16 v2, 0x24

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/commons/text/StringSubstitutor;-><init>(Lorg/apache/commons/text/lookup/StringLookup;Lorg/apache/commons/text/matcher/StringMatcher;Lorg/apache/commons/text/matcher/StringMatcher;C)V

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
    sget-object v0, Lorg/apache/commons/text/lookup/StringLookupFactory;->INSTANCE:Lorg/apache/commons/text/lookup/StringLookupFactory;

    invoke-virtual {v0, p1}, Lorg/apache/commons/text/lookup/StringLookupFactory;->mapStringLookup(Ljava/util/Map;)Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object p1

    const/16 v0, 0x24

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/text/StringSubstitutor;-><init>(Lorg/apache/commons/text/lookup/StringLookup;Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;C)V
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
            "C)V"
        }
    .end annotation

    .line 4
    sget-object v0, Lorg/apache/commons/text/lookup/StringLookupFactory;->INSTANCE:Lorg/apache/commons/text/lookup/StringLookupFactory;

    invoke-virtual {v0, p1}, Lorg/apache/commons/text/lookup/StringLookupFactory;->mapStringLookup(Ljava/util/Map;)Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/text/StringSubstitutor;-><init>(Lorg/apache/commons/text/lookup/StringLookup;Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;)V
    .locals 7
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
    sget-object v0, Lorg/apache/commons/text/lookup/StringLookupFactory;->INSTANCE:Lorg/apache/commons/text/lookup/StringLookupFactory;

    invoke-virtual {v0, p1}, Lorg/apache/commons/text/lookup/StringLookupFactory;->mapStringLookup(Ljava/util/Map;)Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/text/StringSubstitutor;-><init>(Lorg/apache/commons/text/lookup/StringLookup;Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/text/StringSubstitutor;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Lorg/apache/commons/text/StringSubstitutor;->isDisableSubstitutionInValues()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/text/StringSubstitutor;->disableSubstitutionInValues:Z

    .line 28
    invoke-virtual {p1}, Lorg/apache/commons/text/StringSubstitutor;->isEnableSubstitutionInVariables()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/text/StringSubstitutor;->enableSubstitutionInVariables:Z

    .line 29
    invoke-virtual {p1}, Lorg/apache/commons/text/StringSubstitutor;->isEnableUndefinedVariableException()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/text/StringSubstitutor;->enableUndefinedVariableException:Z

    .line 30
    invoke-virtual {p1}, Lorg/apache/commons/text/StringSubstitutor;->getEscapeChar()C

    move-result v0

    iput-char v0, p0, Lorg/apache/commons/text/StringSubstitutor;->escapeChar:C

    .line 31
    invoke-virtual {p1}, Lorg/apache/commons/text/StringSubstitutor;->getVariablePrefixMatcher()Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/text/StringSubstitutor;->prefixMatcher:Lorg/apache/commons/text/matcher/StringMatcher;

    .line 32
    invoke-virtual {p1}, Lorg/apache/commons/text/StringSubstitutor;->isPreserveEscapes()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/text/StringSubstitutor;->preserveEscapes:Z

    .line 33
    invoke-virtual {p1}, Lorg/apache/commons/text/StringSubstitutor;->getVariableSuffixMatcher()Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/text/StringSubstitutor;->suffixMatcher:Lorg/apache/commons/text/matcher/StringMatcher;

    .line 34
    invoke-virtual {p1}, Lorg/apache/commons/text/StringSubstitutor;->getValueDelimiterMatcher()Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/text/StringSubstitutor;->valueDelimiterMatcher:Lorg/apache/commons/text/matcher/StringMatcher;

    .line 35
    invoke-virtual {p1}, Lorg/apache/commons/text/StringSubstitutor;->getStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/text/StringSubstitutor;->variableResolver:Lorg/apache/commons/text/lookup/StringLookup;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/text/lookup/StringLookup;)V
    .locals 3

    .line 6
    sget-object v0, Lorg/apache/commons/text/StringSubstitutor;->DEFAULT_PREFIX:Lorg/apache/commons/text/matcher/StringMatcher;

    sget-object v1, Lorg/apache/commons/text/StringSubstitutor;->DEFAULT_SUFFIX:Lorg/apache/commons/text/matcher/StringMatcher;

    const/16 v2, 0x24

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/commons/text/StringSubstitutor;-><init>(Lorg/apache/commons/text/lookup/StringLookup;Lorg/apache/commons/text/matcher/StringMatcher;Lorg/apache/commons/text/matcher/StringMatcher;C)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/text/lookup/StringLookup;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StringSubstitutor;->setVariableResolver(Lorg/apache/commons/text/lookup/StringLookup;)Lorg/apache/commons/text/StringSubstitutor;

    .line 9
    invoke-virtual {p0, p2}, Lorg/apache/commons/text/StringSubstitutor;->setVariablePrefix(Ljava/lang/String;)Lorg/apache/commons/text/StringSubstitutor;

    .line 10
    invoke-virtual {p0, p3}, Lorg/apache/commons/text/StringSubstitutor;->setVariableSuffix(Ljava/lang/String;)Lorg/apache/commons/text/StringSubstitutor;

    .line 11
    invoke-virtual {p0, p4}, Lorg/apache/commons/text/StringSubstitutor;->setEscapeChar(C)Lorg/apache/commons/text/StringSubstitutor;

    .line 12
    sget-object p1, Lorg/apache/commons/text/StringSubstitutor;->DEFAULT_VALUE_DELIMITER:Lorg/apache/commons/text/matcher/StringMatcher;

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StringSubstitutor;->setValueDelimiterMatcher(Lorg/apache/commons/text/matcher/StringMatcher;)Lorg/apache/commons/text/StringSubstitutor;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/text/lookup/StringLookup;Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StringSubstitutor;->setVariableResolver(Lorg/apache/commons/text/lookup/StringLookup;)Lorg/apache/commons/text/StringSubstitutor;

    .line 15
    invoke-virtual {p0, p2}, Lorg/apache/commons/text/StringSubstitutor;->setVariablePrefix(Ljava/lang/String;)Lorg/apache/commons/text/StringSubstitutor;

    .line 16
    invoke-virtual {p0, p3}, Lorg/apache/commons/text/StringSubstitutor;->setVariableSuffix(Ljava/lang/String;)Lorg/apache/commons/text/StringSubstitutor;

    .line 17
    invoke-virtual {p0, p4}, Lorg/apache/commons/text/StringSubstitutor;->setEscapeChar(C)Lorg/apache/commons/text/StringSubstitutor;

    .line 18
    invoke-virtual {p0, p5}, Lorg/apache/commons/text/StringSubstitutor;->setValueDelimiter(Ljava/lang/String;)Lorg/apache/commons/text/StringSubstitutor;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/text/lookup/StringLookup;Lorg/apache/commons/text/matcher/StringMatcher;Lorg/apache/commons/text/matcher/StringMatcher;C)V
    .locals 6

    .line 19
    sget-object v5, Lorg/apache/commons/text/StringSubstitutor;->DEFAULT_VALUE_DELIMITER:Lorg/apache/commons/text/matcher/StringMatcher;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/text/StringSubstitutor;-><init>(Lorg/apache/commons/text/lookup/StringLookup;Lorg/apache/commons/text/matcher/StringMatcher;Lorg/apache/commons/text/matcher/StringMatcher;CLorg/apache/commons/text/matcher/StringMatcher;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/text/lookup/StringLookup;Lorg/apache/commons/text/matcher/StringMatcher;Lorg/apache/commons/text/matcher/StringMatcher;CLorg/apache/commons/text/matcher/StringMatcher;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StringSubstitutor;->setVariableResolver(Lorg/apache/commons/text/lookup/StringLookup;)Lorg/apache/commons/text/StringSubstitutor;

    .line 22
    invoke-virtual {p0, p2}, Lorg/apache/commons/text/StringSubstitutor;->setVariablePrefixMatcher(Lorg/apache/commons/text/matcher/StringMatcher;)Lorg/apache/commons/text/StringSubstitutor;

    .line 23
    invoke-virtual {p0, p3}, Lorg/apache/commons/text/StringSubstitutor;->setVariableSuffixMatcher(Lorg/apache/commons/text/matcher/StringMatcher;)Lorg/apache/commons/text/StringSubstitutor;

    .line 24
    invoke-virtual {p0, p4}, Lorg/apache/commons/text/StringSubstitutor;->setEscapeChar(C)Lorg/apache/commons/text/StringSubstitutor;

    .line 25
    invoke-virtual {p0, p5}, Lorg/apache/commons/text/StringSubstitutor;->setValueDelimiterMatcher(Lorg/apache/commons/text/matcher/StringMatcher;)Lorg/apache/commons/text/StringSubstitutor;

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
    new-instance p0, Lorg/apache/commons/text/TextStringBuilder;

    const/16 p1, 0x100

    invoke-direct {p0, p1}, Lorg/apache/commons/text/TextStringBuilder;-><init>(I)V

    const-string p1, "Infinite loop in property interpolation of "

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/TextStringBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/text/TextStringBuilder;

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/TextStringBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/text/TextStringBuilder;

    const-string p1, ": "

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/TextStringBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/text/TextStringBuilder;

    const-string p1, "->"

    invoke-virtual {p0, p2, p1}, Lorg/apache/commons/text/TextStringBuilder;->appendWithSeparators(Ljava/lang/Iterable;Ljava/lang/String;)Lorg/apache/commons/text/TextStringBuilder;

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/apache/commons/text/TextStringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static createInterpolator()Lorg/apache/commons/text/StringSubstitutor;
    .locals 2

    new-instance v0, Lorg/apache/commons/text/StringSubstitutor;

    sget-object v1, Lorg/apache/commons/text/lookup/StringLookupFactory;->INSTANCE:Lorg/apache/commons/text/lookup/StringLookupFactory;

    invoke-virtual {v1}, Lorg/apache/commons/text/lookup/StringLookupFactory;->interpolatorStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/text/StringSubstitutor;-><init>(Lorg/apache/commons/text/lookup/StringLookup;)V

    return-object v0
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
    new-instance v0, Lorg/apache/commons/text/StringSubstitutor;

    invoke-direct {v0, p1}, Lorg/apache/commons/text/StringSubstitutor;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p0}, Lorg/apache/commons/text/StringSubstitutor;->replace(Ljava/lang/Object;)Ljava/lang/String;

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
    new-instance v0, Lorg/apache/commons/text/StringSubstitutor;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/commons/text/StringSubstitutor;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lorg/apache/commons/text/StringSubstitutor;->replace(Ljava/lang/Object;)Ljava/lang/String;

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
    invoke-static {p0, v0}, Lorg/apache/commons/text/StringSubstitutor;->replace(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replaceSystemProperties(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lorg/apache/commons/text/StringSubstitutor;

    sget-object v1, Lorg/apache/commons/text/lookup/StringLookupFactory;->INSTANCE:Lorg/apache/commons/text/lookup/StringLookupFactory;

    invoke-virtual {v1}, Lorg/apache/commons/text/lookup/StringLookupFactory;->systemPropertyStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/text/StringSubstitutor;-><init>(Lorg/apache/commons/text/lookup/StringLookup;)V

    invoke-virtual {v0, p0}, Lorg/apache/commons/text/StringSubstitutor;->replace(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private substitute(Lorg/apache/commons/text/TextStringBuilder;IILjava/util/List;)Lorg/apache/commons/text/StringSubstitutor$Result;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/text/TextStringBuilder;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/commons/text/StringSubstitutor$Result;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 2
    const-string v3, "builder"

    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/text/StringSubstitutor;->getVariablePrefixMatcher()Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object v3

    .line 4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/text/StringSubstitutor;->getVariableSuffixMatcher()Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object v4

    .line 5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/text/StringSubstitutor;->getEscapeChar()C

    move-result v5

    .line 6
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/text/StringSubstitutor;->getValueDelimiterMatcher()Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object v6

    .line 7
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/text/StringSubstitutor;->isEnableSubstitutionInVariables()Z

    move-result v7

    .line 8
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/text/StringSubstitutor;->isDisableSubstitutionInValues()Z

    move-result v8

    .line 9
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/text/StringSubstitutor;->isEnableUndefinedVariableException()Z

    move-result v9

    .line 10
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/text/StringSubstitutor;->isPreserveEscapes()Z

    move-result v10

    add-int v11, v2, p3

    move v15, v2

    move v14, v11

    const/4 v12, 0x0

    const/16 v16, -0x1

    move-object/from16 v11, p4

    const/16 p4, 0x0

    :goto_0
    if-ge v15, v14, :cond_13

    .line 11
    invoke-interface {v3, v1, v15, v2, v14}, Lorg/apache/commons/text/matcher/StringMatcher;->isMatch(Ljava/lang/CharSequence;III)I

    move-result v17

    if-nez v17, :cond_0

    add-int/lit8 v15, v15, 0x1

    move/from16 v2, p4

    move-object/from16 v24, v3

    move-object/from16 v22, v4

    move/from16 v19, v9

    move/from16 v23, v10

    move/from16 v13, v16

    const/4 v3, 0x0

    move/from16 v16, v5

    goto/16 :goto_a

    :cond_0
    if-le v15, v2, :cond_1

    add-int/lit8 v13, v15, -0x1

    move/from16 v19, v9

    .line 12
    invoke-virtual {v1, v13}, Lorg/apache/commons/text/TextStringBuilder;->charAt(I)C

    move-result v9

    if-ne v9, v5, :cond_2

    if-eqz v10, :cond_3

    add-int/lit8 v15, v15, 0x1

    move/from16 v9, v19

    goto :goto_0

    :cond_1
    move/from16 v19, v9

    :cond_2
    move/from16 v13, v16

    :cond_3
    add-int v9, v15, v17

    move/from16 v16, v5

    move v5, v9

    const/16 v20, 0x0

    :goto_1
    if-ge v5, v14, :cond_12

    if-eqz v7, :cond_4

    .line 13
    invoke-interface {v3, v1, v5, v2, v14}, Lorg/apache/commons/text/matcher/StringMatcher;->isMatch(Ljava/lang/CharSequence;III)I

    move-result v21

    if-eqz v21, :cond_4

    .line 14
    invoke-interface {v3, v1, v5, v2, v14}, Lorg/apache/commons/text/matcher/StringMatcher;->isMatch(Ljava/lang/CharSequence;III)I

    move-result v21

    add-int/lit8 v20, v20, 0x1

    add-int v5, v5, v21

    goto :goto_1

    .line 15
    :cond_4
    invoke-interface {v4, v1, v5, v2, v14}, Lorg/apache/commons/text/matcher/StringMatcher;->isMatch(Ljava/lang/CharSequence;III)I

    move-result v21

    if-nez v21, :cond_5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    if-nez v20, :cond_11

    const/16 v20, 0x1

    if-ltz v13, :cond_6

    .line 16
    invoke-virtual {v1, v13}, Lorg/apache/commons/text/TextStringBuilder;->deleteCharAt(I)Lorg/apache/commons/text/TextStringBuilder;

    add-int/lit8 v12, v12, -0x1

    add-int/lit8 v14, v14, -0x1

    add-int/lit8 v15, v15, 0x1

    move/from16 v5, v16

    move/from16 v9, v19

    move/from16 p4, v20

    const/16 v16, -0x1

    goto :goto_0

    :cond_6
    sub-int v22, v5, v15

    sub-int v2, v22, v17

    .line 17
    invoke-virtual {v1, v9, v2}, Lorg/apache/commons/text/TextStringBuilder;->midString(II)Ljava/lang/String;

    move-result-object v2

    if-eqz v7, :cond_7

    .line 18
    new-instance v9, Lorg/apache/commons/text/TextStringBuilder;

    invoke-direct {v9, v2}, Lorg/apache/commons/text/TextStringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v9}, Lorg/apache/commons/text/TextStringBuilder;->length()I

    move-result v2

    move-object/from16 v22, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v9, v4, v2}, Lorg/apache/commons/text/StringSubstitutor;->substitute(Lorg/apache/commons/text/TextStringBuilder;II)Z

    .line 20
    invoke-virtual {v9}, Lorg/apache/commons/text/TextStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_7
    move-object/from16 v22, v4

    :goto_2
    add-int v5, v5, v21

    if-eqz v6, :cond_b

    .line 21
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    move/from16 v23, v10

    const/4 v9, 0x0

    .line 22
    :goto_3
    array-length v10, v4

    if-ge v9, v10, :cond_8

    if-nez v7, :cond_9

    .line 23
    array-length v10, v4

    invoke-interface {v3, v4, v9, v9, v10}, Lorg/apache/commons/text/matcher/StringMatcher;->isMatch([CIII)I

    move-result v10

    if-eqz v10, :cond_9

    :cond_8
    move-object/from16 v24, v3

    :goto_4
    const/4 v3, 0x0

    goto :goto_5

    .line 24
    :cond_9
    array-length v10, v4

    move-object/from16 v24, v3

    const/4 v3, 0x0

    invoke-interface {v6, v4, v9, v3, v10}, Lorg/apache/commons/text/matcher/StringMatcher;->isMatch([CIII)I

    move-result v10

    if-eqz v10, :cond_a

    .line 25
    array-length v10, v4

    invoke-interface {v6, v4, v9, v3, v10}, Lorg/apache/commons/text/matcher/StringMatcher;->isMatch([CIII)I

    move-result v4

    .line 26
    invoke-virtual {v2, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    add-int/2addr v9, v4

    .line 27
    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v18, v2

    move-object v2, v10

    goto :goto_6

    :cond_a
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, v24

    goto :goto_3

    :cond_b
    move-object/from16 v24, v3

    move/from16 v23, v10

    goto :goto_4

    :goto_5
    const/16 v18, 0x0

    :goto_6
    if-nez v11, :cond_c

    .line 28
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 29
    invoke-virtual/range {p1 .. p3}, Lorg/apache/commons/text/TextStringBuilder;->midString(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_c
    invoke-direct {v0, v2, v11}, Lorg/apache/commons/text/StringSubstitutor;->checkCyclicSubstitution(Ljava/lang/String;Ljava/util/List;)V

    .line 31
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-virtual {v0, v2, v1, v15, v5}, Lorg/apache/commons/text/StringSubstitutor;->resolveVariable(Ljava/lang/String;Lorg/apache/commons/text/TextStringBuilder;II)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    move-object/from16 v4, v18

    :cond_d
    if-eqz v4, :cond_f

    .line 33
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 34
    invoke-virtual {v1, v15, v5, v4}, Lorg/apache/commons/text/TextStringBuilder;->replace(IILjava/lang/String;)Lorg/apache/commons/text/TextStringBuilder;

    if-nez v8, :cond_e

    .line 35
    invoke-direct {v0, v1, v15, v2, v11}, Lorg/apache/commons/text/StringSubstitutor;->substitute(Lorg/apache/commons/text/TextStringBuilder;IILjava/util/List;)Lorg/apache/commons/text/StringSubstitutor$Result;

    move-result-object v4

    iget v4, v4, Lorg/apache/commons/text/StringSubstitutor$Result;->lengthChange:I

    goto :goto_7

    :cond_e
    move v4, v3

    :goto_7
    add-int/2addr v4, v2

    sub-int v2, v5, v15

    sub-int/2addr v4, v2

    add-int/2addr v5, v4

    add-int/2addr v14, v4

    add-int/2addr v12, v4

    move/from16 v2, v20

    goto :goto_8

    :cond_f
    if-nez v19, :cond_10

    move/from16 v2, p4

    .line 36
    :goto_8
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v11, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_9
    move v15, v5

    goto :goto_a

    .line 37
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 38
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 39
    const-string v2, "Cannot resolve variable \'%s\' (enableSubstitutionInVariables=%s)."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    move-object/from16 v24, v3

    move-object/from16 v22, v4

    move/from16 v23, v10

    const/4 v3, 0x0

    add-int/lit8 v20, v20, -0x1

    add-int v5, v5, v21

    move/from16 v2, p2

    move-object/from16 v3, v24

    goto/16 :goto_1

    :cond_12
    move-object/from16 v24, v3

    move-object/from16 v22, v4

    move/from16 v23, v10

    const/4 v3, 0x0

    move/from16 v2, p4

    goto :goto_9

    :goto_a
    move/from16 p4, v2

    move/from16 v5, v16

    move/from16 v9, v19

    move-object/from16 v4, v22

    move/from16 v10, v23

    move-object/from16 v3, v24

    move/from16 v2, p2

    move/from16 v16, v13

    goto/16 :goto_0

    .line 40
    :cond_13
    new-instance v0, Lorg/apache/commons/text/StringSubstitutor$Result;

    move/from16 v2, p4

    const/4 v1, 0x0

    invoke-direct {v0, v2, v12, v1}, Lorg/apache/commons/text/StringSubstitutor$Result;-><init>(ZILorg/apache/commons/text/StringSubstitutor$1;)V

    return-object v0
.end method


# virtual methods
.method public getEscapeChar()C
    .locals 0

    iget-char p0, p0, Lorg/apache/commons/text/StringSubstitutor;->escapeChar:C

    return p0
.end method

.method public getStringLookup()Lorg/apache/commons/text/lookup/StringLookup;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/text/StringSubstitutor;->variableResolver:Lorg/apache/commons/text/lookup/StringLookup;

    return-object p0
.end method

.method public getValueDelimiterMatcher()Lorg/apache/commons/text/matcher/StringMatcher;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/text/StringSubstitutor;->valueDelimiterMatcher:Lorg/apache/commons/text/matcher/StringMatcher;

    return-object p0
.end method

.method public getVariablePrefixMatcher()Lorg/apache/commons/text/matcher/StringMatcher;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/text/StringSubstitutor;->prefixMatcher:Lorg/apache/commons/text/matcher/StringMatcher;

    return-object p0
.end method

.method public getVariableSuffixMatcher()Lorg/apache/commons/text/matcher/StringMatcher;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/text/StringSubstitutor;->suffixMatcher:Lorg/apache/commons/text/matcher/StringMatcher;

    return-object p0
.end method

.method public isDisableSubstitutionInValues()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/text/StringSubstitutor;->disableSubstitutionInValues:Z

    return p0
.end method

.method public isEnableSubstitutionInVariables()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/text/StringSubstitutor;->enableSubstitutionInVariables:Z

    return p0
.end method

.method public isEnableUndefinedVariableException()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/text/StringSubstitutor;->enableUndefinedVariableException:Z

    return p0
.end method

.method public isPreserveEscapes()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/text/StringSubstitutor;->preserveEscapes:Z

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

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/text/StringSubstitutor;->replace(Ljava/lang/CharSequence;II)Ljava/lang/String;

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
    new-instance v0, Lorg/apache/commons/text/TextStringBuilder;

    invoke-direct {v0, p3}, Lorg/apache/commons/text/TextStringBuilder;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/text/TextStringBuilder;->append(Ljava/lang/String;II)Lorg/apache/commons/text/TextStringBuilder;

    move-result-object p1

    const/4 p2, 0x0

    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/text/StringSubstitutor;->substitute(Lorg/apache/commons/text/TextStringBuilder;II)Z

    .line 20
    invoke-virtual {p1}, Lorg/apache/commons/text/TextStringBuilder;->toString()Ljava/lang/String;

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
    new-instance v0, Lorg/apache/commons/text/TextStringBuilder;

    invoke-direct {v0}, Lorg/apache/commons/text/TextStringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/commons/text/TextStringBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/text/TextStringBuilder;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lorg/apache/commons/text/TextStringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/text/StringSubstitutor;->substitute(Lorg/apache/commons/text/TextStringBuilder;II)Z

    .line 23
    invoke-virtual {p1}, Lorg/apache/commons/text/TextStringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public replace(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 24
    :cond_0
    new-instance v0, Lorg/apache/commons/text/TextStringBuilder;

    invoke-direct {v0, p1}, Lorg/apache/commons/text/TextStringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/text/StringSubstitutor;->substitute(Lorg/apache/commons/text/TextStringBuilder;II)Z

    move-result p0

    if-nez p0, :cond_1

    return-object p1

    .line 26
    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/text/TextStringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public replace(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 27
    :cond_0
    new-instance v0, Lorg/apache/commons/text/TextStringBuilder;

    invoke-direct {v0, p3}, Lorg/apache/commons/text/TextStringBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/text/TextStringBuilder;->append(Ljava/lang/String;II)Lorg/apache/commons/text/TextStringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    .line 28
    invoke-virtual {p0, v0, v1, p3}, Lorg/apache/commons/text/StringSubstitutor;->substitute(Lorg/apache/commons/text/TextStringBuilder;II)Z

    move-result p0

    if-nez p0, :cond_1

    add-int/2addr p3, p2

    .line 29
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 30
    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/text/TextStringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public replace(Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 31
    :cond_0
    new-instance v0, Lorg/apache/commons/text/TextStringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/commons/text/TextStringBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/text/TextStringBuilder;->append(Ljava/lang/StringBuffer;)Lorg/apache/commons/text/TextStringBuilder;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lorg/apache/commons/text/TextStringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/text/StringSubstitutor;->substitute(Lorg/apache/commons/text/TextStringBuilder;II)Z

    .line 33
    invoke-virtual {p1}, Lorg/apache/commons/text/TextStringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public replace(Ljava/lang/StringBuffer;II)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 34
    :cond_0
    new-instance v0, Lorg/apache/commons/text/TextStringBuilder;

    invoke-direct {v0, p3}, Lorg/apache/commons/text/TextStringBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/text/TextStringBuilder;->append(Ljava/lang/StringBuffer;II)Lorg/apache/commons/text/TextStringBuilder;

    move-result-object p1

    const/4 p2, 0x0

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/text/StringSubstitutor;->substitute(Lorg/apache/commons/text/TextStringBuilder;II)Z

    .line 36
    invoke-virtual {p1}, Lorg/apache/commons/text/TextStringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public replace(Lorg/apache/commons/text/TextStringBuilder;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 37
    :cond_0
    new-instance v0, Lorg/apache/commons/text/TextStringBuilder;

    invoke-virtual {p1}, Lorg/apache/commons/text/TextStringBuilder;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/commons/text/TextStringBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/text/TextStringBuilder;->append(Lorg/apache/commons/text/TextStringBuilder;)Lorg/apache/commons/text/TextStringBuilder;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lorg/apache/commons/text/TextStringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/text/StringSubstitutor;->substitute(Lorg/apache/commons/text/TextStringBuilder;II)Z

    .line 39
    invoke-virtual {p1}, Lorg/apache/commons/text/TextStringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public replace(Lorg/apache/commons/text/TextStringBuilder;II)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 40
    :cond_0
    new-instance v0, Lorg/apache/commons/text/TextStringBuilder;

    invoke-direct {v0, p3}, Lorg/apache/commons/text/TextStringBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/text/TextStringBuilder;->append(Lorg/apache/commons/text/TextStringBuilder;II)Lorg/apache/commons/text/TextStringBuilder;

    move-result-object p1

    const/4 p2, 0x0

    .line 41
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/text/StringSubstitutor;->substitute(Lorg/apache/commons/text/TextStringBuilder;II)Z

    .line 42
    invoke-virtual {p1}, Lorg/apache/commons/text/TextStringBuilder;->toString()Ljava/lang/String;

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
    new-instance v0, Lorg/apache/commons/text/TextStringBuilder;

    array-length v1, p1

    invoke-direct {v0, v1}, Lorg/apache/commons/text/TextStringBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/text/TextStringBuilder;->append([C)Lorg/apache/commons/text/TextStringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    .line 12
    array-length p1, p1

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/commons/text/StringSubstitutor;->substitute(Lorg/apache/commons/text/TextStringBuilder;II)Z

    .line 13
    invoke-virtual {v0}, Lorg/apache/commons/text/TextStringBuilder;->toString()Ljava/lang/String;

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
    new-instance v0, Lorg/apache/commons/text/TextStringBuilder;

    invoke-direct {v0, p3}, Lorg/apache/commons/text/TextStringBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/text/TextStringBuilder;->append([CII)Lorg/apache/commons/text/TextStringBuilder;

    move-result-object p1

    const/4 p2, 0x0

    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/text/StringSubstitutor;->substitute(Lorg/apache/commons/text/TextStringBuilder;II)Z

    .line 16
    invoke-virtual {p1}, Lorg/apache/commons/text/TextStringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public replaceIn(Ljava/lang/StringBuffer;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/text/StringSubstitutor;->replaceIn(Ljava/lang/StringBuffer;II)Z

    move-result p0

    return p0
.end method

.method public replaceIn(Ljava/lang/StringBuffer;II)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    new-instance v1, Lorg/apache/commons/text/TextStringBuilder;

    invoke-direct {v1, p3}, Lorg/apache/commons/text/TextStringBuilder;-><init>(I)V

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/commons/text/TextStringBuilder;->append(Ljava/lang/StringBuffer;II)Lorg/apache/commons/text/TextStringBuilder;

    move-result-object v1

    .line 3
    invoke-virtual {p0, v1, v0, p3}, Lorg/apache/commons/text/StringSubstitutor;->substitute(Lorg/apache/commons/text/TextStringBuilder;II)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    add-int/2addr p3, p2

    .line 4
    invoke-virtual {v1}, Lorg/apache/commons/text/TextStringBuilder;->toString()Ljava/lang/String;

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

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/text/StringSubstitutor;->replaceIn(Ljava/lang/StringBuilder;II)Z

    move-result p0

    return p0
.end method

.method public replaceIn(Ljava/lang/StringBuilder;II)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 6
    :cond_0
    new-instance v1, Lorg/apache/commons/text/TextStringBuilder;

    invoke-direct {v1, p3}, Lorg/apache/commons/text/TextStringBuilder;-><init>(I)V

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/commons/text/TextStringBuilder;->append(Ljava/lang/StringBuilder;II)Lorg/apache/commons/text/TextStringBuilder;

    move-result-object v1

    .line 7
    invoke-virtual {p0, v1, v0, p3}, Lorg/apache/commons/text/StringSubstitutor;->substitute(Lorg/apache/commons/text/TextStringBuilder;II)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    add-int/2addr p3, p2

    .line 8
    invoke-virtual {v1}, Lorg/apache/commons/text/TextStringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p3, p0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x1

    return p0
.end method

.method public replaceIn(Lorg/apache/commons/text/TextStringBuilder;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/text/TextStringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/text/StringSubstitutor;->substitute(Lorg/apache/commons/text/TextStringBuilder;II)Z

    move-result p0

    return p0
.end method

.method public replaceIn(Lorg/apache/commons/text/TextStringBuilder;II)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/text/StringSubstitutor;->substitute(Lorg/apache/commons/text/TextStringBuilder;II)Z

    move-result p0

    return p0
.end method

.method public resolveVariable(Ljava/lang/String;Lorg/apache/commons/text/TextStringBuilder;II)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/text/StringSubstitutor;->getStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, p1}, Lorg/apache/commons/text/lookup/StringLookup;->lookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setDisableSubstitutionInValues(Z)Lorg/apache/commons/text/StringSubstitutor;
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/text/StringSubstitutor;->disableSubstitutionInValues:Z

    return-object p0
.end method

.method public setEnableSubstitutionInVariables(Z)Lorg/apache/commons/text/StringSubstitutor;
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/text/StringSubstitutor;->enableSubstitutionInVariables:Z

    return-object p0
.end method

.method public setEnableUndefinedVariableException(Z)Lorg/apache/commons/text/StringSubstitutor;
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/text/StringSubstitutor;->enableUndefinedVariableException:Z

    return-object p0
.end method

.method public setEscapeChar(C)Lorg/apache/commons/text/StringSubstitutor;
    .locals 0

    iput-char p1, p0, Lorg/apache/commons/text/StringSubstitutor;->escapeChar:C

    return-object p0
.end method

.method public setPreserveEscapes(Z)Lorg/apache/commons/text/StringSubstitutor;
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/text/StringSubstitutor;->preserveEscapes:Z

    return-object p0
.end method

.method public setValueDelimiter(C)Lorg/apache/commons/text/StringSubstitutor;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/apache/commons/text/matcher/StringMatcherFactory;

    invoke-virtual {v0, p1}, Lorg/apache/commons/text/matcher/StringMatcherFactory;->charMatcher(C)Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StringSubstitutor;->setValueDelimiterMatcher(Lorg/apache/commons/text/matcher/StringMatcher;)Lorg/apache/commons/text/StringSubstitutor;

    move-result-object p0

    return-object p0
.end method

.method public setValueDelimiter(Ljava/lang/String;)Lorg/apache/commons/text/StringSubstitutor;
    .locals 1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lorg/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/apache/commons/text/matcher/StringMatcherFactory;

    invoke-virtual {v0, p1}, Lorg/apache/commons/text/matcher/StringMatcherFactory;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StringSubstitutor;->setValueDelimiterMatcher(Lorg/apache/commons/text/matcher/StringMatcher;)Lorg/apache/commons/text/StringSubstitutor;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StringSubstitutor;->setValueDelimiterMatcher(Lorg/apache/commons/text/matcher/StringMatcher;)Lorg/apache/commons/text/StringSubstitutor;

    return-object p0
.end method

.method public setValueDelimiterMatcher(Lorg/apache/commons/text/matcher/StringMatcher;)Lorg/apache/commons/text/StringSubstitutor;
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/text/StringSubstitutor;->valueDelimiterMatcher:Lorg/apache/commons/text/matcher/StringMatcher;

    return-object p0
.end method

.method public setVariablePrefix(C)Lorg/apache/commons/text/StringSubstitutor;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/apache/commons/text/matcher/StringMatcherFactory;

    invoke-virtual {v0, p1}, Lorg/apache/commons/text/matcher/StringMatcherFactory;->charMatcher(C)Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StringSubstitutor;->setVariablePrefixMatcher(Lorg/apache/commons/text/matcher/StringMatcher;)Lorg/apache/commons/text/StringSubstitutor;

    move-result-object p0

    return-object p0
.end method

.method public setVariablePrefix(Ljava/lang/String;)Lorg/apache/commons/text/StringSubstitutor;
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
    sget-object v0, Lorg/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/apache/commons/text/matcher/StringMatcherFactory;

    invoke-virtual {v0, p1}, Lorg/apache/commons/text/matcher/StringMatcherFactory;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StringSubstitutor;->setVariablePrefixMatcher(Lorg/apache/commons/text/matcher/StringMatcher;)Lorg/apache/commons/text/StringSubstitutor;

    move-result-object p0

    return-object p0
.end method

.method public setVariablePrefixMatcher(Lorg/apache/commons/text/matcher/StringMatcher;)Lorg/apache/commons/text/StringSubstitutor;
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

    iput-object p1, p0, Lorg/apache/commons/text/StringSubstitutor;->prefixMatcher:Lorg/apache/commons/text/matcher/StringMatcher;

    return-object p0
.end method

.method public setVariableResolver(Lorg/apache/commons/text/lookup/StringLookup;)Lorg/apache/commons/text/StringSubstitutor;
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/text/StringSubstitutor;->variableResolver:Lorg/apache/commons/text/lookup/StringLookup;

    return-object p0
.end method

.method public setVariableSuffix(C)Lorg/apache/commons/text/StringSubstitutor;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/apache/commons/text/matcher/StringMatcherFactory;

    invoke-virtual {v0, p1}, Lorg/apache/commons/text/matcher/StringMatcherFactory;->charMatcher(C)Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StringSubstitutor;->setVariableSuffixMatcher(Lorg/apache/commons/text/matcher/StringMatcher;)Lorg/apache/commons/text/StringSubstitutor;

    move-result-object p0

    return-object p0
.end method

.method public setVariableSuffix(Ljava/lang/String;)Lorg/apache/commons/text/StringSubstitutor;
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
    sget-object v0, Lorg/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/apache/commons/text/matcher/StringMatcherFactory;

    invoke-virtual {v0, p1}, Lorg/apache/commons/text/matcher/StringMatcherFactory;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StringSubstitutor;->setVariableSuffixMatcher(Lorg/apache/commons/text/matcher/StringMatcher;)Lorg/apache/commons/text/StringSubstitutor;

    move-result-object p0

    return-object p0
.end method

.method public setVariableSuffixMatcher(Lorg/apache/commons/text/matcher/StringMatcher;)Lorg/apache/commons/text/StringSubstitutor;
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

    iput-object p1, p0, Lorg/apache/commons/text/StringSubstitutor;->suffixMatcher:Lorg/apache/commons/text/matcher/StringMatcher;

    return-object p0
.end method

.method public substitute(Lorg/apache/commons/text/TextStringBuilder;II)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/text/StringSubstitutor;->substitute(Lorg/apache/commons/text/TextStringBuilder;IILjava/util/List;)Lorg/apache/commons/text/StringSubstitutor$Result;

    move-result-object p0

    iget-boolean p0, p0, Lorg/apache/commons/text/StringSubstitutor$Result;->altered:Z

    return p0
.end method
