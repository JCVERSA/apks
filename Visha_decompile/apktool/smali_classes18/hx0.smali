.class public abstract Lhx0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static synthetic A:Ljava/lang/Class;

.field public static synthetic a:Ljava/lang/Class;

.field public static synthetic b:Ljava/lang/Class;

.field public static synthetic c:Ljava/lang/Class;

.field public static synthetic d:Ljava/lang/Class;

.field public static synthetic e:Ljava/lang/Class;

.field public static synthetic f:Ljava/lang/Class;

.field public static synthetic g:Ljava/lang/Class;

.field public static synthetic h:Ljava/lang/Class;

.field public static synthetic i:Ljava/lang/Class;

.field public static synthetic j:Ljava/lang/Class;

.field public static synthetic k:Ljava/lang/Class;

.field public static synthetic l:Ljava/lang/Class;

.field public static synthetic m:Ljava/lang/Class;

.field public static synthetic n:Ljava/lang/Class;

.field public static synthetic o:Ljava/lang/Class;

.field public static synthetic p:Ljava/lang/Class;

.field public static synthetic q:Ljava/lang/Class;

.field public static synthetic r:Ljava/lang/Class;

.field public static synthetic s:Ljava/lang/Class;

.field public static synthetic t:Ljava/lang/Class;

.field public static synthetic u:Ljava/lang/Class;

.field public static synthetic v:Ljava/lang/Class;

.field public static synthetic w:Ljava/lang/Class;

.field public static synthetic x:Ljava/lang/Class;

.field public static synthetic y:Ljava/lang/Class;

.field public static synthetic z:Ljava/lang/Class;


# direct methods
.method public static a(Ljava/lang/StringBuffer;Ljava/util/Set;Ljava/lang/Class;)V
    .locals 1

    sget-object v0, Lhx0;->i:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "freemarker.template.TemplateNodeModel"

    invoke-static {v0}, Lhx0;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lhx0;->i:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "node"

    invoke-static {p0, p1, v0}, Lhx0;->b(Ljava/lang/StringBuffer;Ljava/util/Set;Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lhx0;->j:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string v0, "freemarker.template.TemplateDirectiveModel"

    invoke-static {v0}, Lhx0;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lhx0;->j:Ljava/lang/Class;

    :cond_2
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "directive"

    invoke-static {p0, p1, v0}, Lhx0;->b(Ljava/lang/StringBuffer;Ljava/util/Set;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lhx0;->k:Ljava/lang/Class;

    if-nez v0, :cond_4

    const-string v0, "freemarker.template.TemplateTransformModel"

    invoke-static {v0}, Lhx0;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lhx0;->k:Ljava/lang/Class;

    :cond_4
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "transform"

    invoke-static {p0, p1, v0}, Lhx0;->b(Ljava/lang/StringBuffer;Ljava/util/Set;Ljava/lang/String;)V

    :cond_5
    :goto_0
    sget-object v0, Lhx0;->a:Ljava/lang/Class;

    if-nez v0, :cond_6

    const-string v0, "freemarker.template.TemplateSequenceModel"

    invoke-static {v0}, Lhx0;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lhx0;->a:Ljava/lang/Class;

    :cond_6
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "sequence"

    invoke-static {p0, p1, v0}, Lhx0;->b(Ljava/lang/StringBuffer;Ljava/util/Set;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    sget-object v0, Lhx0;->b:Ljava/lang/Class;

    if-nez v0, :cond_8

    const-string v0, "freemarker.template.TemplateCollectionModel"

    invoke-static {v0}, Lhx0;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lhx0;->b:Ljava/lang/Class;

    :cond_8
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lhx0;->l:Ljava/lang/Class;

    if-nez v0, :cond_9

    const-string v0, "freemarker.template.TemplateCollectionModelEx"

    invoke-static {v0}, Lhx0;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lhx0;->l:Ljava/lang/Class;

    :cond_9
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "extended_collection"

    goto :goto_1

    :cond_a
    const-string v0, "collection"

    :goto_1
    invoke-static {p0, p1, v0}, Lhx0;->b(Ljava/lang/StringBuffer;Ljava/util/Set;Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    sget-object v0, Lhx0;->m:Ljava/lang/Class;

    if-nez v0, :cond_c

    const-string v0, "freemarker.template.TemplateModelIterator"

    invoke-static {v0}, Lhx0;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lhx0;->m:Ljava/lang/Class;

    :cond_c
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "iterator"

    invoke-static {p0, p1, v0}, Lhx0;->b(Ljava/lang/StringBuffer;Ljava/util/Set;Ljava/lang/String;)V

    :cond_d
    :goto_2
    sget-object v0, Lhx0;->n:Ljava/lang/Class;

    if-nez v0, :cond_e

    const-string v0, "freemarker.template.TemplateMethodModel"

    invoke-static {v0}, Lhx0;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lhx0;->n:Ljava/lang/Class;

    :cond_e
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "method"

    invoke-static {p0, p1, v0}, Lhx0;->b(Ljava/lang/StringBuffer;Ljava/util/Set;Ljava/lang/String;)V

    :cond_f
    sget-object v0, Lhx0;->o:Ljava/lang/Class;

    if-nez v0, :cond_10

    const-string v0, "freemarker.core.Environment$Namespace"

    invoke-static {v0}, Lhx0;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lhx0;->o:Ljava/lang/Class;

    :cond_10
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "namespace"

    invoke-static {p0, p1, v0}, Lhx0;->b(Ljava/lang/StringBuffer;Ljava/util/Set;Ljava/lang/String;)V

    goto :goto_3

    :cond_11
    sget-object v0, Lhx0;->c:Ljava/lang/Class;

    if-nez v0, :cond_12

    const-string v0, "freemarker.template.TemplateHashModelEx"

    invoke-static {v0}, Lhx0;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lhx0;->c:Ljava/lang/Class;

    :cond_12
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "extended_hash"

    invoke-static {p0, p1, v0}, Lhx0;->b(Ljava/lang/StringBuffer;Ljava/util/Set;Ljava/lang/String;)V

    goto :goto_3

    :cond_13
    sget-object v0, Lhx0;->p:Ljava/lang/Class;

    if-nez v0, :cond_14

    const-string v0, "freemarker.template.TemplateHashModel"

    invoke-static {v0}, Lhx0;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lhx0;->p:Ljava/lang/Class;

    :cond_14
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "hash"

    invoke-static {p0, p1, v0}, Lhx0;->b(Ljava/lang/StringBuffer;Ljava/util/Set;Ljava/lang/String;)V

    :cond_15
    :goto_3
    sget-object v0, Lhx0;->d:Ljava/lang/Class;

    if-nez v0, :cond_16

    const-string v0, "freemarker.template.TemplateNumberModel"

    invoke-static {v0}, Lhx0;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lhx0;->d:Ljava/lang/Class;

    :cond_16
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "number"

    invoke-static {p0, p1, v0}, Lhx0;->b(Ljava/lang/StringBuffer;Ljava/util/Set;Ljava/lang/String;)V

    :cond_17
    sget-object v0, Lhx0;->f:Ljava/lang/Class;

    if-nez v0, :cond_18

    const-string v0, "freemarker.template.TemplateDateModel"

    invoke-static {v0}, Lhx0;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lhx0;->f:Ljava/lang/Class;

    :cond_18
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "date_or_time_or_datetime"

    invoke-static {p0, p1, v0}, Lhx0;->b(Ljava/lang/StringBuffer;Ljava/util/Set;Ljava/lang/String;)V

    :cond_19
    sget-object v0, Lhx0;->e:Ljava/lang/Class;

    if-nez v0, :cond_1a

    const-string v0, "freemarker.template.TemplateBooleanModel"

    invoke-static {v0}, Lhx0;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lhx0;->e:Ljava/lang/Class;

    :cond_1a
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "boolean"

    invoke-static {p0, p1, v0}, Lhx0;->b(Ljava/lang/StringBuffer;Ljava/util/Set;Ljava/lang/String;)V

    :cond_1b
    sget-object v0, Lhx0;->g:Ljava/lang/Class;

    if-nez v0, :cond_1c

    const-string v0, "freemarker.template.TemplateScalarModel"

    invoke-static {v0}, Lhx0;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lhx0;->g:Ljava/lang/Class;

    :cond_1c
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_1d

    const-string p2, "string"

    invoke-static {p0, p1, p2}, Lhx0;->b(Ljava/lang/StringBuffer;Ljava/util/Set;Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method public static b(Ljava/lang/StringBuffer;Ljava/util/Set;Ljava/lang/String;)V
    .locals 1

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public static synthetic c(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lzfa;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string p0, "Null"

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p0}, Lhx0;->f(Lzfa;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v1, v0, v2}, Lhx0;->a(Ljava/lang/StringBuffer;Ljava/util/Set;Ljava/lang/Class;)V

    :cond_1
    instance-of v2, p0, Lfreemarker/core/e1;

    if-eqz v2, :cond_3

    move-object v2, p0

    check-cast v2, Lfreemarker/core/e1;

    invoke-virtual {v2}, Lfreemarker/core/e1;->s0()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "function"

    goto :goto_0

    :cond_2
    const-string v2, "macro"

    :goto_0
    invoke-static {v1, v0, v2}, Lhx0;->b(Ljava/lang/StringBuffer;Ljava/util/Set;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lhx0;->a(Ljava/lang/StringBuffer;Ljava/util/Set;Ljava/lang/Class;)V

    invoke-static {p0}, Lhx0;->k(Lzfa;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-static {v0, v2}, Lhx0;->h(Ljava/lang/Class;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v2}, Lhx0;->h(Ljava/lang/Class;Z)Ljava/lang/String;

    move-result-object p0

    if-nez v0, :cond_5

    const-string v0, "wrapper: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " wrapped into "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lzfa;)Ljava/lang/Class;
    .locals 3

    instance-of v0, p0, Lrd0;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    instance-of v0, p0, Lp71;

    if-eqz v0, :cond_1

    sget-object p0, Lhx0;->a:Ljava/lang/Class;

    if-nez p0, :cond_0

    const-string p0, "freemarker.template.TemplateSequenceModel"

    invoke-static {p0}, Lhx0;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lhx0;->a:Ljava/lang/Class;

    :cond_0
    return-object p0

    :cond_1
    instance-of v0, p0, Lw55;

    if-nez v0, :cond_d

    instance-of v0, p0, Lgb3;

    if-eqz v0, :cond_2

    goto/16 :goto_1

    :cond_2
    instance-of v0, p0, Ldy5;

    const-string v2, "freemarker.template.TemplateHashModelEx"

    if-eqz v0, :cond_4

    sget-object p0, Lhx0;->c:Ljava/lang/Class;

    if-nez p0, :cond_3

    invoke-static {v2}, Lhx0;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lhx0;->c:Ljava/lang/Class;

    :cond_3
    return-object p0

    :cond_4
    instance-of v0, p0, Lw37;

    if-eqz v0, :cond_6

    sget-object p0, Lhx0;->d:Ljava/lang/Class;

    if-nez p0, :cond_5

    const-string p0, "freemarker.template.TemplateNumberModel"

    invoke-static {p0}, Lhx0;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lhx0;->d:Ljava/lang/Class;

    :cond_5
    return-object p0

    :cond_6
    instance-of v0, p0, Lai0;

    if-eqz v0, :cond_8

    sget-object p0, Lhx0;->e:Ljava/lang/Class;

    if-nez p0, :cond_7

    const-string p0, "freemarker.template.TemplateBooleanModel"

    invoke-static {p0}, Lhx0;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lhx0;->e:Ljava/lang/Class;

    :cond_7
    return-object p0

    :cond_8
    instance-of v0, p0, Let1;

    if-eqz v0, :cond_a

    sget-object p0, Lhx0;->f:Ljava/lang/Class;

    if-nez p0, :cond_9

    const-string p0, "freemarker.template.TemplateDateModel"

    invoke-static {p0}, Lhx0;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lhx0;->f:Ljava/lang/Class;

    :cond_9
    return-object p0

    :cond_a
    instance-of v0, p0, Lyz9;

    if-eqz v0, :cond_c

    move-object v0, p0

    check-cast v0, Lrd0;

    invoke-virtual {v0}, Lrd0;->getWrappedObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_b

    sget-object v1, Lhx0;->g:Ljava/lang/Class;

    if-nez v1, :cond_c

    const-string p0, "freemarker.template.TemplateScalarModel"

    invoke-static {p0}, Lhx0;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lhx0;->g:Ljava/lang/Class;

    goto :goto_0

    :cond_b
    instance-of p0, p0, Lpfa;

    if-eqz p0, :cond_c

    sget-object v1, Lhx0;->c:Ljava/lang/Class;

    if-nez v1, :cond_c

    invoke-static {v2}, Lhx0;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lhx0;->c:Ljava/lang/Class;

    :cond_c
    :goto_0
    return-object v1

    :cond_d
    :goto_1
    sget-object p0, Lhx0;->b:Ljava/lang/Class;

    if-nez p0, :cond_e

    const-string p0, "freemarker.template.TemplateCollectionModel"

    invoke-static {p0}, Lhx0;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lhx0;->b:Ljava/lang/Class;

    :cond_e
    return-object p0

    :cond_f
    instance-of v0, p0, Llm9;

    if-nez v0, :cond_11

    instance-of p0, p0, Lgu7;

    if-eqz p0, :cond_10

    goto :goto_2

    :cond_10
    return-object v1

    :cond_11
    :goto_2
    sget-object p0, Lhx0;->h:Ljava/lang/Class;

    if-nez p0, :cond_12

    const-string p0, "freemarker.template.TemplateMethodModelEx"

    invoke-static {p0}, Lhx0;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lhx0;->h:Ljava/lang/Class;

    :cond_12
    return-object p0
.end method

.method public static g(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lhx0;->h(Ljava/lang/Class;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/lang/Class;Z)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lhx0;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "[]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "java.lang."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0xa

    if-nez v0, :cond_8

    const-string v0, "java.util."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    :cond_2
    if-eqz p1, :cond_7

    const-string p1, "freemarker.template."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "f.t"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p1, "freemarker.ext.beans."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "f.e.b"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const-string p1, "freemarker.core."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "f.c"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const-string p1, "freemarker.ext."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "f.e"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const-string p1, "freemarker."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "f"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_7
    return-object p0

    :cond_8
    :goto_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lhx0;->j(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "Null"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Lhx0;->h(Ljava/lang/Class;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static k(Lzfa;)Ljava/lang/Class;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    instance-of v1, p0, Llpc;

    if-eqz v1, :cond_0

    check-cast p0, Llpc;

    invoke-interface {p0}, Llpc;->getWrappedObject()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v1, p0, Lc8;

    if-eqz v1, :cond_2

    check-cast p0, Lc8;

    sget-object v1, Lhx0;->q:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string v1, "java.lang.Object"

    invoke-static {v1}, Lhx0;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lhx0;->q:Ljava/lang/Class;

    :cond_1
    invoke-interface {p0, v1}, Lc8;->getAdaptedObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_2
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public static l(Ljava/lang/Class;)Z
    .locals 1

    sget-object v0, Lhx0;->A:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.lang.Number"

    invoke-static {v0}, Lhx0;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lhx0;->A:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static m(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    sget-object p0, Lhx0;->r:Ljava/lang/Class;

    if-nez p0, :cond_0

    const-string p0, "java.lang.Integer"

    invoke-static {p0}, Lhx0;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lhx0;->r:Ljava/lang/Class;

    :cond_0
    return-object p0

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    sget-object p0, Lhx0;->s:Ljava/lang/Class;

    if-nez p0, :cond_2

    const-string p0, "java.lang.Boolean"

    invoke-static {p0}, Lhx0;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lhx0;->s:Ljava/lang/Class;

    :cond_2
    return-object p0

    :cond_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    sget-object p0, Lhx0;->t:Ljava/lang/Class;

    if-nez p0, :cond_4

    const-string p0, "java.lang.Long"

    invoke-static {p0}, Lhx0;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lhx0;->t:Ljava/lang/Class;

    :cond_4
    return-object p0

    :cond_5
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    sget-object p0, Lhx0;->u:Ljava/lang/Class;

    if-nez p0, :cond_6

    const-string p0, "java.lang.Double"

    invoke-static {p0}, Lhx0;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lhx0;->u:Ljava/lang/Class;

    :cond_6
    return-object p0

    :cond_7
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_9

    sget-object p0, Lhx0;->v:Ljava/lang/Class;

    if-nez p0, :cond_8

    const-string p0, "java.lang.Character"

    invoke-static {p0}, Lhx0;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lhx0;->v:Ljava/lang/Class;

    :cond_8
    return-object p0

    :cond_9
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_b

    sget-object p0, Lhx0;->w:Ljava/lang/Class;

    if-nez p0, :cond_a

    const-string p0, "java.lang.Float"

    invoke-static {p0}, Lhx0;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lhx0;->w:Ljava/lang/Class;

    :cond_a
    return-object p0

    :cond_b
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_d

    sget-object p0, Lhx0;->x:Ljava/lang/Class;

    if-nez p0, :cond_c

    const-string p0, "java.lang.Byte"

    invoke-static {p0}, Lhx0;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lhx0;->x:Ljava/lang/Class;

    :cond_c
    return-object p0

    :cond_d
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_f

    sget-object p0, Lhx0;->y:Ljava/lang/Class;

    if-nez p0, :cond_e

    const-string p0, "java.lang.Short"

    invoke-static {p0}, Lhx0;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lhx0;->y:Ljava/lang/Class;

    :cond_e
    return-object p0

    :cond_f
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_10

    sget-object p0, Lhx0;->z:Ljava/lang/Class;

    if-nez p0, :cond_10

    const-string p0, "java.lang.Void"

    invoke-static {p0}, Lhx0;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lhx0;->z:Ljava/lang/Class;

    :cond_10
    return-object p0
.end method
