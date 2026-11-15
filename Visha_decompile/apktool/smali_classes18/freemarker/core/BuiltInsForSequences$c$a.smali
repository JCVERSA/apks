.class public Lfreemarker/core/BuiltInsForSequences$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForSequences$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final b:Lfreemarker/core/Environment;

.field public final c:Lbfa;

.field public final synthetic d:Lfreemarker/core/BuiltInsForSequences$c;


# direct methods
.method public constructor <init>(Lfreemarker/core/BuiltInsForSequences$c;Lfreemarker/core/Environment;Lbfa;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lfreemarker/core/BuiltInsForSequences$c$a;->d:Lfreemarker/core/BuiltInsForSequences$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lfreemarker/core/BuiltInsForSequences$c$a;->b:Lfreemarker/core/Environment;

    .line 4
    iput-object p3, p0, Lfreemarker/core/BuiltInsForSequences$c$a;->c:Lbfa;

    return-void
.end method

.method public synthetic constructor <init>(Lfreemarker/core/BuiltInsForSequences$c;Lfreemarker/core/Environment;Lbfa;Lzl0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lfreemarker/core/BuiltInsForSequences$c$a;-><init>(Lfreemarker/core/BuiltInsForSequences$c;Lfreemarker/core/Environment;Lbfa;)V

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lfreemarker/core/BuiltInsForSequences$c$a;->d:Lfreemarker/core/BuiltInsForSequences$c;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v4, v3}, Lfreemarker/core/j;->a0(Ljava/util/List;II)V

    iget-object v2, v1, Lfreemarker/core/BuiltInsForSequences$c$a;->d:Lfreemarker/core/BuiltInsForSequences$c;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lfreemarker/core/j;->d0(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v2

    iget-object v5, v1, Lfreemarker/core/BuiltInsForSequences$c$a;->d:Lfreemarker/core/BuiltInsForSequences$c;

    invoke-virtual {v5, v0, v4}, Lfreemarker/core/j;->c0(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lfreemarker/core/BuiltInsForSequences$c$a;->d:Lfreemarker/core/BuiltInsForSequences$c;

    const/4 v7, 0x2

    invoke-virtual {v6, v0, v7}, Lfreemarker/core/j;->c0(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v7, v1, Lfreemarker/core/BuiltInsForSequences$c$a;->c:Lbfa;

    invoke-interface {v7}, Lbfa;->iterator()Lbga;

    move-result-object v7

    move v8, v3

    :goto_0
    invoke-interface {v7}, Lbga;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v7}, Lbga;->next()Lzfa;

    move-result-object v9

    if-eqz v9, :cond_1

    if-eqz v3, :cond_0

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    move v3, v4

    :goto_1
    :try_start_0
    iget-object v10, v1, Lfreemarker/core/BuiltInsForSequences$c$a;->b:Lfreemarker/core/Environment;

    const/4 v11, 0x0

    invoke-static {v9, v11, v11, v10}, Lfreemarker/core/q0;->c(Lzfa;Lfreemarker/core/t0;Ljava/lang/String;Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Lfreemarker/template/TemplateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v2, Lfreemarker/core/_TemplateModelException;

    iget-object v1, v1, Lfreemarker/core/BuiltInsForSequences$c$a;->d:Lfreemarker/core/BuiltInsForSequences$c;

    iget-object v10, v1, Lfreemarker/core/j;->i:Ljava/lang/String;

    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, v8}, Ljava/lang/Integer;-><init>(I)V

    new-instance v15, Lj0d;

    invoke-direct {v15, v0}, Lj0d;-><init>(Lfreemarker/template/TemplateException;)V

    const-string v16, "\n---end-message---"

    const-string v9, "\"?"

    const-string v11, "\" failed at index "

    const-string v13, " with this error:\n\n"

    const-string v14, "---begin-message---\n"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw v2

    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    if-eqz v0, :cond_4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    :goto_3
    new-instance v0, Lfreemarker/template/SimpleScalar;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
