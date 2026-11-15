.class public Lz0d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz0d$c;,
        Lz0d$a;,
        Lz0d$b;,
        Lz0d$e;,
        Lz0d$d;
    }
.end annotation


# static fields
.field public static f:Ljava/util/Map;

.field public static synthetic g:Ljava/lang/Class;

.field public static synthetic h:Ljava/lang/Class;

.field public static synthetic i:Ljava/lang/Class;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/Class;

.field public final c:Lb1d;

.field public d:I

.field public e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/Class;Lb1d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz0d;->e:Z

    iput-object p1, p0, Lz0d;->a:Ljava/lang/String;

    iput p2, p0, Lz0d;->d:I

    iput-object p3, p0, Lz0d;->b:Ljava/lang/Class;

    iput-object p4, p0, Lz0d;->c:Lb1d;

    return-void
.end method

.method public static synthetic a(Lz0d;Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lz0d;->w(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic b(Lz0d;)Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lz0d;->b:Ljava/lang/Class;

    return-object p0
.end method

.method public static synthetic c(Lz0d;)Lb1d;
    .locals 0

    iget-object p0, p0, Lz0d;->c:Lb1d;

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/String;)Ljava/lang/Class;
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

.method public static g(Ljava/lang/String;Ljava/lang/Class;Lb1d;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lz0d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Lz0d;-><init>(Ljava/lang/String;ILjava/lang/Class;Lb1d;)V

    invoke-virtual {v0}, Lz0d;->e()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized x(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-class v0, Lz0d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz0d;->f:Ljava/util/Map;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lz0d;->f:Ljava/util/Map;

    const-string v2, "DefaultObjectWrapper"

    sget-object v3, Lz0d;->g:Ljava/lang/Class;

    if-nez v3, :cond_0

    const-string v3, "freemarker.template.DefaultObjectWrapper"

    invoke-static {v3}, Lz0d;->d(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lz0d;->g:Ljava/lang/Class;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lz0d;->f:Ljava/util/Map;

    const-string v2, "BeansWrapper"

    sget-object v3, Lz0d;->h:Ljava/lang/Class;

    if-nez v3, :cond_1

    const-string v3, "freemarker.ext.beans.BeansWrapper"

    invoke-static {v3}, Lz0d;->d(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lz0d;->h:Ljava/lang/Class;

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lz0d;->f:Ljava/util/Map;

    const-string v2, "SimpleObjectWrapper"

    sget-object v3, Lz0d;->i:Ljava/lang/Class;

    if-nez v3, :cond_2

    const-string v3, "freemarker.template.SimpleObjectWrapper"

    invoke-static {v3}, Lz0d;->d(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lz0d;->i:Ljava/lang/Class;

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object v1, Lz0d;->f:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    move-object p0, v1

    :goto_1
    monitor-exit v0

    return-object p0

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final e()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lz0d;->v()Lz0d$a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz0d;->h(Lz0d$a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    instance-of p0, p1, Lz0d$e;

    if-eqz p0, :cond_0

    check-cast p1, Lz0d$e;

    invoke-virtual {p1}, Lz0d$e;->a()Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final h(Lz0d$a;)Ljava/lang/Object;
    .locals 0

    iget-boolean p0, p0, Lz0d;->e:Z

    if-nez p0, :cond_0

    invoke-static {p1}, Lz0d$a;->c(Lz0d$a;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lhx0;->d(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lz0d$a;->a()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final i(ZZ)Lz0d$a;
    .locals 5

    iget v0, p0, Lz0d;->d:I

    new-instance v1, Lz0d$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lz0d$a;-><init>(Lz0d;Ly0d;)V

    invoke-virtual {p0, p2}, Lz0d;->k(Z)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    invoke-static {v3}, Lz0d;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lz0d$a;->d(Lz0d$a;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v1}, Lz0d$a;->c(Lz0d$a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    iput-boolean v3, p0, Lz0d;->e:Z

    :cond_1
    invoke-virtual {p0}, Lz0d;->y()V

    const-string v3, "("

    invoke-virtual {p0, v3}, Lz0d;->m(Ljava/lang/String;)C

    move-result v4

    if-nez v4, :cond_3

    if-nez p1, :cond_3

    if-eqz p2, :cond_2

    iput v0, p0, Lz0d;->d:I

    return-object v2

    :cond_2
    new-instance p1, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    iget-object p2, p0, Lz0d;->a:Ljava/lang/String;

    iget p0, p0, Lz0d;->d:I

    invoke-direct {p1, v3, p2, p0}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p1

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {p0, v1}, Lz0d;->n(Lz0d$b;)V

    :cond_4
    return-object v1
.end method

.method public final j(Ljava/lang/String;Z)C
    .locals 4

    iget v0, p0, Lz0d;->d:I

    iget-object v1, p0, Lz0d;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lz0d;->a:Ljava/lang/String;

    iget v1, p0, Lz0d;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    iget p1, p0, Lz0d;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lz0d;->d:I

    return v0

    :cond_1
    if-eqz p2, :cond_2

    return v2

    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v2, v1, :cond_4

    if-eqz v2, :cond_3

    const-string v1, " or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ln0a;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v1

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    const-string p1, " or end-of-string"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    new-instance p1, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lz0d;->a:Ljava/lang/String;

    iget p0, p0, Lz0d;->d:I

    invoke-direct {p1, p2, v0, p0}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p1
.end method

.method public final k(Z)Ljava/lang/String;
    .locals 5

    iget v0, p0, Lz0d;->d:I

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lz0d;->p(Z)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    if-eqz p1, :cond_0

    iput v0, p0, Lz0d;->d:I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p1, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    iget-object v0, p0, Lz0d;->a:Ljava/lang/String;

    iget p0, p0, Lz0d;->d:I

    const-string v1, "name"

    invoke-direct {p1, v1, v0, p0}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p1

    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lz0d;->y()V

    iget v3, p0, Lz0d;->d:I

    iget-object v4, p0, Lz0d;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v3, p0, Lz0d;->a:Ljava/lang/String;

    iget v4, p0, Lz0d;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v3, p0, Lz0d;->d:I

    add-int/2addr v3, v2

    iput v3, p0, Lz0d;->d:I

    invoke-virtual {p0}, Lz0d;->y()V

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final l(Z)Ljava/lang/Object;
    .locals 7

    const-string v0, "."

    iget v1, p0, Lz0d;->d:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Lz0d;->d:I

    iget-object v5, p0, Lz0d;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lz0d;->a:Ljava/lang/String;

    iget v5, p0, Lz0d;->d:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    const/4 v6, 0x1

    if-ne v4, v5, :cond_2

    if-eqz v2, :cond_1

    move v3, v6

    goto/16 :goto_3

    :cond_1
    move v2, v6

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p0, v4}, Lz0d;->s(C)Z

    move-result v5

    if-nez v5, :cond_8

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_8

    :goto_1
    iget v2, p0, Lz0d;->d:I

    if-ne v1, v2, :cond_4

    if-eqz p1, :cond_3

    const/4 p0, 0x0

    return-object p0

    :cond_3
    new-instance p1, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    iget-object v0, p0, Lz0d;->a:Ljava/lang/String;

    iget p0, p0, Lz0d;->d:I

    const-string v1, "number-like"

    invoke-direct {p1, v1, v0, p0}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p1

    :cond_4
    iget-object p0, p0, Lz0d;->a:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    if-eqz v3, :cond_5

    :try_start_0
    new-instance p1, Lfreemarker/template/Version;

    invoke-direct {p1, p0}, Lfreemarker/template/Version;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Malformed version number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_5
    :try_start_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "-."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "+."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object p1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "A number can\'t start with a dot"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "A number can\'t end with a dot"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    new-instance v0, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Malformed number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_8
    :goto_3
    iget v4, p0, Lz0d;->d:I

    add-int/2addr v4, v6

    iput v4, p0, Lz0d;->d:I

    goto/16 :goto_0
.end method

.method public final m(Ljava/lang/String;)C
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lz0d;->j(Ljava/lang/String;Z)C

    move-result p0

    return p0
.end method

.method public final n(Lz0d$b;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz0d;->e:Z

    invoke-virtual {p0}, Lz0d;->y()V

    const-string v0, ")"

    invoke-virtual {p0, v0}, Lz0d;->m(Ljava/lang/String;)C

    move-result v0

    const/16 v1, 0x29

    if-eq v0, v1, :cond_6

    :cond_0
    invoke-virtual {p0}, Lz0d;->y()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lz0d;->r(Z)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lz0d;->y()V

    instance-of v2, v1, Lz0d$d;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lz0d$b;->b:Ljava/util/List;

    check-cast v1, Lz0d$d;

    invoke-static {v1}, Lz0d$d;->a(Lz0d$d;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lz0d;->y()V

    const-string v1, "="

    invoke-virtual {p0, v1}, Lz0d;->o(Ljava/lang/String;)C

    invoke-virtual {p0}, Lz0d;->y()V

    iget v1, p0, Lz0d;->d:I

    invoke-virtual {p0, v0}, Lz0d;->r(Z)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lz0d$d;

    if-nez v2, :cond_1

    iget-object v1, p1, Lz0d$b;->c:Ljava/util/List;

    invoke-virtual {p0, v0}, Lz0d;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    const-string v0, "concrete value"

    iget-object p0, p0, Lz0d;->a:Ljava/lang/String;

    invoke-direct {p1, v0, p0, v1}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p1

    :cond_2
    iget-object v0, p1, Lz0d$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lz0d$b;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lz0d$b;->a:Ljava/util/List;

    invoke-virtual {p0, v1}, Lz0d;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p0}, Lz0d;->y()V

    goto :goto_1

    :cond_3
    new-instance p0, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    const-string p1, "Positional parameters not supported here"

    invoke-direct {p0, p1}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    const-string p1, "Positional parameters must precede named parameters"

    invoke-direct {p0, p1}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    const-string v0, ",)"

    invoke-virtual {p0, v0}, Lz0d;->o(Ljava/lang/String;)C

    move-result v0

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_0

    :cond_6
    return-void
.end method

.method public final o(Ljava/lang/String;)C
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lz0d;->j(Ljava/lang/String;Z)C

    move-result p0

    return p0
.end method

.method public final p(Z)Ljava/lang/String;
    .locals 2

    iget v0, p0, Lz0d;->d:I

    iget-object v1, p0, Lz0d;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lz0d;->a:Ljava/lang/String;

    iget v1, p0, Lz0d;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lz0d;->u(C)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance p1, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    iget-object v0, p0, Lz0d;->a:Ljava/lang/String;

    iget p0, p0, Lz0d;->d:I

    const-string v1, "class name"

    invoke-direct {p1, v1, v0, p0}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p1

    :cond_2
    iget p1, p0, Lz0d;->d:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lz0d;->d:I

    :goto_1
    iget v0, p0, Lz0d;->d:I

    iget-object v1, p0, Lz0d;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lz0d;->a:Ljava/lang/String;

    iget v1, p0, Lz0d;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lz0d;->t(C)Z

    move-result v0

    if-nez v0, :cond_4

    :goto_2
    iget-object v0, p0, Lz0d;->a:Ljava/lang/String;

    iget p0, p0, Lz0d;->d:I

    invoke-virtual {v0, p1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    iget v0, p0, Lz0d;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lz0d;->d:I

    goto :goto_1
.end method

.method public final q(Z)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lz0d;->d:I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    iget v5, p0, Lz0d;->d:I

    iget-object v6, p0, Lz0d;->a:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v5, v6, :cond_1

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    new-instance p1, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lz0d;->a:Ljava/lang/String;

    iget p0, p0, Lz0d;->d:I

    invoke-direct {p1, v0, v1, p0}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p1

    :cond_1
    iget-object v5, p0, Lz0d;->a:Ljava/lang/String;

    iget v6, p0, Lz0d;->d:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-nez v2, :cond_4

    const/16 v2, 0x72

    if-ne v5, v2, :cond_2

    iget v2, p0, Lz0d;->d:I

    add-int/2addr v2, v7

    iget-object v6, p0, Lz0d;->a:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_2

    iget-object v2, p0, Lz0d;->a:Ljava/lang/String;

    iget v4, p0, Lz0d;->d:I

    add-int/2addr v4, v7

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v4, v7

    :cond_2
    const/16 v2, 0x27

    if-ne v5, v2, :cond_3

    goto :goto_1

    :cond_3
    const/16 v2, 0x22

    if-ne v5, v2, :cond_6

    :goto_1
    if-eqz v4, :cond_e

    iget v5, p0, Lz0d;->d:I

    add-int/2addr v5, v7

    iput v5, p0, Lz0d;->d:I

    goto/16 :goto_5

    :cond_4
    if-nez v3, :cond_d

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_5

    if-nez v4, :cond_5

    move v3, v7

    goto :goto_5

    :cond_5
    if-ne v5, v2, :cond_b

    :cond_6
    :goto_2
    iget v1, p0, Lz0d;->d:I

    if-ne v0, v1, :cond_8

    if-eqz p1, :cond_7

    const/4 p0, 0x0

    return-object p0

    :cond_7
    new-instance p1, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    iget-object v0, p0, Lz0d;->a:Ljava/lang/String;

    iget p0, p0, Lz0d;->d:I

    const-string v1, "string literal"

    invoke-direct {p1, v1, v0, p0}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p1

    :cond_8
    iget-object p1, p0, Lz0d;->a:Ljava/lang/String;

    if-eqz v4, :cond_9

    const/4 v2, 0x2

    goto :goto_3

    :cond_9
    move v2, v7

    :goto_3
    add-int/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    iget v0, p0, Lz0d;->d:I

    add-int/2addr v0, v7

    iput v0, p0, Lz0d;->d:I

    if-eqz v4, :cond_a

    goto :goto_4

    :cond_a
    invoke-static {p1}, Ln0a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lfreemarker/core/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    return-object p1

    :catch_0
    move-exception p0

    new-instance v0, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Malformed string literal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_b
    const/16 v6, 0x7b

    if-ne v5, v6, :cond_e

    iget-object v5, p0, Lz0d;->a:Ljava/lang/String;

    iget v6, p0, Lz0d;->d:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x24

    if-eq v5, v6, :cond_c

    const/16 v6, 0x23

    if-eq v5, v6, :cond_c

    goto :goto_5

    :cond_c
    new-instance p0, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    const-string p1, "${...} and #{...} aren\'t allowed here."

    invoke-direct {p0, p1}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    move v3, v1

    :cond_e
    :goto_5
    iget v5, p0, Lz0d;->d:I

    add-int/2addr v5, v7

    iput v5, p0, Lz0d;->d:I

    goto/16 :goto_0
.end method

.method public final r(Z)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lz0d;->d:I

    iget-object v1, p0, Lz0d;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lz0d;->l(Z)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lz0d;->q(Z)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lz0d;->i(ZZ)Lz0d$a;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p0, v0}, Lz0d;->p(Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string p0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_3
    const-string p0, "false"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_4
    const-string p0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lz0d$c;->a:Lz0d$c;

    return-object p0

    :cond_5
    new-instance p0, Lz0d$d;

    invoke-direct {p0, v0}, Lz0d$d;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_6
    if-eqz p1, :cond_7

    const/4 p0, 0x0

    return-object p0

    :cond_7
    new-instance p1, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    iget-object v0, p0, Lz0d;->a:Ljava/lang/String;

    iget p0, p0, Lz0d;->d:I

    const-string v1, "value or name"

    invoke-direct {p1, v1, v0, p0}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p1
.end method

.method public final s(C)Z
    .locals 0

    const/16 p0, 0x30

    if-lt p1, p0, :cond_0

    const/16 p0, 0x39

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final t(C)Z
    .locals 1

    invoke-virtual {p0, p1}, Lz0d;->u(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lz0d;->s(C)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final u(C)Z
    .locals 0

    invoke-static {p1}, Ljava/lang/Character;->isLetter(C)Z

    move-result p0

    if-nez p0, :cond_1

    const/16 p0, 0x5f

    if-eq p1, p0, :cond_1

    const/16 p0, 0x24

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final v()Lz0d$a;
    .locals 3

    invoke-virtual {p0}, Lz0d;->y()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lz0d;->i(ZZ)Lz0d$a;

    move-result-object v0

    invoke-virtual {p0}, Lz0d;->y()V

    iget v1, p0, Lz0d;->d:I

    iget-object v2, p0, Lz0d;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    iget-object v1, p0, Lz0d;->a:Ljava/lang/String;

    iget p0, p0, Lz0d;->d:I

    const-string v2, "end-of-expression"

    invoke-direct {v0, v2, v1, p0}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0
.end method

.method public final w(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)V
    .locals 10

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/beans/Introspector;->getBeanInfo(Ljava/lang/Class;)Ljava/beans/BeanInfo;

    move-result-object v1

    invoke-interface {v1}, Ljava/beans/BeanInfo;->getPropertyDescriptors()[Ljava/beans/PropertyDescriptor;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    array-length v3, v1

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4}, Ljava/util/HashMap;-><init>(IF)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_2

    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto/16 :goto_5

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    move-object v4, v1

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_9

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "The "

    if-eqz v6, :cond_8

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Method;

    if-eqz v6, :cond_7

    if-nez v4, :cond_4

    :try_start_1
    iget-object v4, p0, Lz0d;->c:Lb1d;

    invoke-virtual {v4}, Lb1d;->b()Lfreemarker/ext/beans/b;

    move-result-object v4

    invoke-virtual {v4, p1}, Lfreemarker/ext/beans/b;->c(Ljava/lang/Object;)Lzfa;

    move-result-object v4

    instance-of v8, v4, Lofa;

    if-eqz v8, :cond_3

    check-cast v4, Lofa;

    goto :goto_3

    :catch_1
    move-exception p0

    goto/16 :goto_4

    :cond_3
    new-instance p0, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, " class is not a wrapped as TemplateHashModel."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_3
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Lofa;->get(Ljava/lang/String;)Lzfa;

    move-result-object v7

    if-eqz v7, :cond_6

    instance-of v8, v7, Lyfa;

    if-eqz v8, :cond_5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lz0d;->c:Lb1d;

    invoke-virtual {v8}, Lb1d;->b()Lfreemarker/ext/beans/b;

    move-result-object v8

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Lfreemarker/ext/beans/b;->c(Ljava/lang/Object;)Lzfa;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    check-cast v7, Lyfa;

    invoke-interface {v7, v6}, Lyfa;->exec(Ljava/util/List;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    new-instance p0, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ln0a;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, " wasn\'t a TemplateMethodModelEx."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string p2, "Can\'t find "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p2, " as FreeMarker method."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    new-instance p1, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "Failed to set "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v5}, Ln0a;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_7
    new-instance p0, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string p2, "JavaBeans property "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v5}, Ln0a;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, " is set twice."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, " class has no writeable JavaBeans property called "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v5}, Ln0a;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    return-void

    :goto_5
    new-instance p1, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "Failed to inspect "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, " class"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final y()V
    .locals 2

    :goto_0
    iget v0, p0, Lz0d;->d:I

    iget-object v1, p0, Lz0d;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lz0d;->a:Ljava/lang/String;

    iget v1, p0, Lz0d;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lz0d;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lz0d;->d:I

    goto :goto_0
.end method
