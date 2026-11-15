.class public Lfreemarker/core/BuiltInsForSequences$h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForSequences$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public b:Lnga;

.field public final synthetic c:Lfreemarker/core/BuiltInsForSequences$h;


# direct methods
.method public constructor <init>(Lfreemarker/core/BuiltInsForSequences$h;Lnga;)V
    .locals 0

    iput-object p1, p0, Lfreemarker/core/BuiltInsForSequences$h$a;->c:Lfreemarker/core/BuiltInsForSequences$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lfreemarker/core/BuiltInsForSequences$h$a;->b:Lnga;

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_4

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of v2, p1, Lmga;

    if-eqz v2, :cond_0

    new-array v1, v1, [Ljava/lang/String;

    check-cast p1, Lmga;

    invoke-interface {p1}, Lmga;->getAsString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    goto :goto_2

    :cond_0
    instance-of v1, p1, Lnga;

    const-string v2, "The argument to ?"

    if-eqz v1, :cond_3

    check-cast p1, Lnga;

    invoke-interface {p1}, Lnga;->size()I

    move-result v1

    new-array v3, v1, [Ljava/lang/String;

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-interface {p1, v0}, Lnga;->get(I)Lzfa;

    move-result-object v4

    :try_start_0
    move-object v5, v4

    check-cast v5, Lmga;

    invoke-interface {v5}, Lmga;->getAsString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    instance-of v4, v4, Lmga;

    if-eqz v4, :cond_1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lfreemarker/core/_TemplateModelException;

    iget-object p0, p0, Lfreemarker/core/BuiltInsForSequences$h$a;->c:Lfreemarker/core/BuiltInsForSequences$h;

    iget-object p0, p0, Lfreemarker/core/j;->i:Ljava/lang/String;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    const-string v0, " is not a string."

    const-string v3, "(key), when it\'s a sequence, must be a sequence of strings, but the item at index "

    filled-new-array {v2, p0, v3, v1, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p1, p0}, Lfreemarker/core/_TemplateModelException;-><init>([Ljava/lang/Object;)V

    throw p1

    :cond_2
    move-object v1, v3

    :goto_2
    iget-object p0, p0, Lfreemarker/core/BuiltInsForSequences$h$a;->b:Lnga;

    invoke-static {p0, v1}, Lfreemarker/core/BuiltInsForSequences$sortBI;->j0(Lnga;[Ljava/lang/String;)Lnga;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p1, Lfreemarker/core/_TemplateModelException;

    iget-object p0, p0, Lfreemarker/core/BuiltInsForSequences$h$a;->c:Lfreemarker/core/BuiltInsForSequences$h;

    iget-object p0, p0, Lfreemarker/core/j;->i:Ljava/lang/String;

    const-string v0, "(key) must be a string (the name of the subvariable), or a sequence of strings (the \"path\" to the subvariable)."

    filled-new-array {v2, p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p1, p0}, Lfreemarker/core/_TemplateModelException;-><init>([Ljava/lang/Object;)V

    throw p1

    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lfreemarker/core/BuiltInsForSequences$h$a;->c:Lfreemarker/core/BuiltInsForSequences$h;

    iget-object p0, p0, Lfreemarker/core/j;->i:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p0, p1, v1}, Lfreemarker/core/f1;->j(Ljava/lang/String;II)Lfreemarker/template/TemplateModelException;

    move-result-object p0

    throw p0
.end method
