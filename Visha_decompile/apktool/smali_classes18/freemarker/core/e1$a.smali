.class public Lfreemarker/core/e1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpn5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/e1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Lfreemarker/core/Environment$Namespace;

.field public final b:Lifa;

.field public final c:Lfreemarker/core/Environment$Namespace;

.field public final d:Ljava/util/List;

.field public final e:Ljava/util/ArrayList;

.field public final f:Lfreemarker/core/e1$a;

.field public final synthetic g:Lfreemarker/core/e1;


# direct methods
.method public constructor <init>(Lfreemarker/core/e1;Lfreemarker/core/Environment;Lifa;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lfreemarker/core/e1$a;->g:Lfreemarker/core/e1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lfreemarker/core/Environment$Namespace;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, p2}, Lfreemarker/core/Environment$Namespace;-><init>(Lfreemarker/core/Environment;)V

    iput-object p1, p0, Lfreemarker/core/e1$a;->a:Lfreemarker/core/Environment$Namespace;

    iput-object p3, p0, Lfreemarker/core/e1$a;->b:Lifa;

    invoke-virtual {p2}, Lfreemarker/core/Environment;->A0()Lfreemarker/core/Environment$Namespace;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/e1$a;->c:Lfreemarker/core/Environment$Namespace;

    iput-object p4, p0, Lfreemarker/core/e1$a;->d:Ljava/util/List;

    invoke-virtual {p2}, Lfreemarker/core/Environment;->Q0()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/e1$a;->e:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lfreemarker/core/Environment;->z0()Lfreemarker/core/e1$a;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/e1$a;->f:Lfreemarker/core/e1$a;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Collection;
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object p0, p0, Lfreemarker/core/e1$a;->a:Lfreemarker/core/Environment$Namespace;

    invoke-virtual {p0}, Lfreemarker/template/SimpleHash;->keys()Lbfa;

    move-result-object p0

    invoke-interface {p0}, Lbfa;->iterator()Lbga;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Lbga;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lbga;->next()Lzfa;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public b(Ljava/lang/String;)Lzfa;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/e1$a;->a:Lfreemarker/core/Environment$Namespace;

    invoke-virtual {p0, p1}, Lfreemarker/template/SimpleHash;->get(Ljava/lang/String;)Lzfa;

    move-result-object p0

    return-object p0
.end method

.method public c()Lfreemarker/core/Environment$Namespace;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/e1$a;->a:Lfreemarker/core/Environment$Namespace;

    return-object p0
.end method

.method public d()Lfreemarker/core/e1;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/e1$a;->g:Lfreemarker/core/e1;

    return-object p0
.end method

.method public e(Lfreemarker/core/Environment;)V
    .locals 1

    invoke-virtual {p0, p1}, Lfreemarker/core/e1$a;->f(Lfreemarker/core/Environment;)V

    iget-object v0, p0, Lfreemarker/core/e1$a;->g:Lfreemarker/core/e1;

    invoke-virtual {v0}, Lifa;->S()Lifa;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lfreemarker/core/e1$a;->g:Lfreemarker/core/e1;

    invoke-virtual {p0}, Lifa;->S()Lifa;

    move-result-object p0

    invoke-virtual {p1, p0}, Lfreemarker/core/Environment;->X1(Lifa;)V

    :cond_0
    return-void
.end method

.method public f(Lfreemarker/core/Environment;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    move-object v5, v4

    move v6, v3

    move v7, v6

    move v8, v7

    :goto_0
    iget-object v0, v1, Lfreemarker/core/e1$a;->g:Lfreemarker/core/e1;

    invoke-static {v0}, Lfreemarker/core/e1;->l0(Lfreemarker/core/e1;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge v6, v0, :cond_6

    iget-object v0, v1, Lfreemarker/core/e1$a;->g:Lfreemarker/core/e1;

    invoke-static {v0}, Lfreemarker/core/e1;->l0(Lfreemarker/core/e1;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v6

    iget-object v9, v1, Lfreemarker/core/e1$a;->a:Lfreemarker/core/Environment$Namespace;

    invoke-virtual {v9, v0}, Lfreemarker/template/SimpleHash;->get(Ljava/lang/String;)Lzfa;

    move-result-object v9

    if-nez v9, :cond_5

    iget-object v9, v1, Lfreemarker/core/e1$a;->g:Lfreemarker/core/e1;

    invoke-static {v9}, Lfreemarker/core/e1;->m0(Lfreemarker/core/e1;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lfreemarker/core/t0;

    const/4 v10, 0x1

    if-eqz v9, :cond_2

    :try_start_0
    invoke-virtual {v9, v2}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v11

    if-nez v11, :cond_1

    if-nez v8, :cond_5

    move-object v5, v9

    :goto_1
    move v8, v10

    goto/16 :goto_5

    :cond_1
    iget-object v9, v1, Lfreemarker/core/e1$a;->a:Lfreemarker/core/Environment$Namespace;

    invoke-virtual {v9, v0, v11}, Lfreemarker/template/SimpleHash;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lfreemarker/core/InvalidReferenceException; {:try_start_0 .. :try_end_0} :catch_0

    move v7, v10

    goto :goto_5

    :catch_0
    move-exception v0

    if-nez v8, :cond_5

    move-object v4, v0

    goto :goto_1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lfreemarker/core/Configurable;->J()Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v4, v1, Lfreemarker/core/e1$a;->a:Lfreemarker/core/Environment$Namespace;

    invoke-virtual {v4, v0}, Lfreemarker/template/SimpleHash;->containsKey(Ljava/lang/String;)Z

    move-result v4

    new-instance v5, Lfreemarker/core/_MiscTemplateException;

    new-instance v7, Lq0d;

    new-instance v12, Lk0d;

    iget-object v1, v1, Lfreemarker/core/e1$a;->g:Lfreemarker/core/e1;

    invoke-static {v1}, Lfreemarker/core/e1;->n0(Lfreemarker/core/e1;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Lk0d;-><init>(Ljava/lang/Object;)V

    new-instance v14, Lk0d;

    invoke-direct {v14, v0}, Lk0d;-><init>(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/Integer;

    add-int/2addr v6, v10

    invoke-direct {v0, v6}, Ljava/lang/Integer;-><init>(I)V

    if-eqz v4, :cond_3

    const-string v1, "specified, but had null/missing value."

    :goto_2
    move-object/from16 v18, v1

    goto :goto_3

    :cond_3
    const-string v1, "not specified."

    goto :goto_2

    :goto_3
    const-string v11, "When calling macro "

    const-string v13, ", required parameter "

    const-string v15, " (parameter #"

    const-string v17, ") was "

    move-object/from16 v16, v0

    filled-new-array/range {v11 .. v18}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v7, v0}, Lq0d;-><init>([Ljava/lang/Object;)V

    if-eqz v4, :cond_4

    new-array v0, v10, [Ljava/lang/Object;

    const-string v1, "If the parameter value expression on the caller side is known to be legally null/missing, you may want to specify a default value for it with the \"!\" operator, like paramValue!defaultValue."

    aput-object v1, v0, v3

    goto :goto_4

    :cond_4
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "If the omission was deliberate, you may consider making the parameter optional in the macro by specifying a default value for it, like "

    aput-object v1, v0, v3

    const-string v1, "<#macro macroName paramName=defaultExpr>"

    aput-object v1, v0, v10

    const/4 v1, 0x2

    const-string v3, ")"

    aput-object v3, v0, v1

    :goto_4
    invoke-virtual {v7, v0}, Lq0d;->i([Ljava/lang/Object;)Lq0d;

    move-result-object v0

    invoke-direct {v5, v2, v0}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Environment;Lq0d;)V

    throw v5

    :cond_5
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_6
    if-eqz v7, :cond_7

    if-nez v8, :cond_0

    :cond_7
    if-eqz v8, :cond_a

    if-nez v4, :cond_9

    invoke-virtual/range {p1 .. p1}, Lfreemarker/core/Configurable;->J()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_6

    :cond_8
    invoke-static {v5, v2}, Lfreemarker/core/InvalidReferenceException;->getInstance(Lfreemarker/core/t0;Lfreemarker/core/Environment;)Lfreemarker/core/InvalidReferenceException;

    move-result-object v0

    throw v0

    :cond_9
    throw v4

    :cond_a
    :goto_6
    return-void
.end method

.method public g(Ljava/lang/String;Lzfa;)V
    .locals 0

    iget-object p0, p0, Lfreemarker/core/e1$a;->a:Lfreemarker/core/Environment$Namespace;

    invoke-virtual {p0, p1, p2}, Lfreemarker/template/SimpleHash;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
