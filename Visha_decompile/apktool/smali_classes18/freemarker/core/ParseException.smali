.class public Lfreemarker/core/ParseException;
.super Ljava/io/IOException;
.source "SourceFile"

# interfaces
.implements Lyk3;


# static fields
.field static synthetic class$freemarker$core$ParseException:Ljava/lang/Class;

.field private static volatile jbossToolsMode:Ljava/lang/Boolean;


# instance fields
.field public columnNumber:I

.field public currentToken:Lfreemarker/core/Token;

.field private description:Ljava/lang/String;

.field public endColumnNumber:I

.field public endLineNumber:I

.field protected eol:Ljava/lang/String;

.field public expectedTokenSequences:[[I

.field public lineNumber:I

.field private message:Ljava/lang/String;

.field private messageAndDescriptionRendered:Z

.field protected specialConstructor:Z

.field private templateName:Ljava/lang/String;

.field public tokenImage:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 12
    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Lha9;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/ParseException;->eol:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/Token;[[I[Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 2
    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Lha9;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/ParseException;->eol:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lfreemarker/core/ParseException;->currentToken:Lfreemarker/core/Token;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lfreemarker/core/ParseException;->specialConstructor:Z

    .line 5
    iput-object p2, p0, Lfreemarker/core/ParseException;->expectedTokenSequences:[[I

    .line 6
    iput-object p3, p0, Lfreemarker/core/ParseException;->tokenImage:[Ljava/lang/String;

    .line 7
    iget-object p1, p1, Lfreemarker/core/Token;->next:Lfreemarker/core/Token;

    iget p2, p1, Lfreemarker/core/Token;->beginLine:I

    iput p2, p0, Lfreemarker/core/ParseException;->lineNumber:I

    .line 8
    iget p2, p1, Lfreemarker/core/Token;->beginColumn:I

    iput p2, p0, Lfreemarker/core/ParseException;->columnNumber:I

    .line 9
    iget p2, p1, Lfreemarker/core/Token;->endLine:I

    iput p2, p0, Lfreemarker/core/ParseException;->endLineNumber:I

    .line 10
    iget p1, p1, Lfreemarker/core/Token;->endColumn:I

    iput p1, p0, Lfreemarker/core/ParseException;->endColumnNumber:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    .line 13
    invoke-direct/range {v0 .. v5}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;IILjava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lfreemarker/core/t1;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, p2, v0}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/core/t1;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lfreemarker/core/t1;Ljava/lang/Throwable;)V
    .locals 9

    .line 24
    invoke-virtual {p2}, Lfreemarker/core/t1;->y()Lfreemarker/template/Template;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lfreemarker/core/t1;->y()Lfreemarker/template/Template;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/template/Template;->E0()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget v4, p2, Lfreemarker/core/t1;->d:I

    iget v5, p2, Lfreemarker/core/t1;->c:I

    iget v6, p2, Lfreemarker/core/t1;->f:I

    iget v7, p2, Lfreemarker/core/t1;->e:I

    move-object v1, p0

    move-object v2, p1

    move-object v8, p3

    .line 25
    invoke-direct/range {v1 .. v8}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lfreemarker/template/Template;II)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 17
    invoke-direct/range {v0 .. v5}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;IILjava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lfreemarker/template/Template;IIII)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 14
    invoke-direct/range {v0 .. v7}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;IIIILjava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lfreemarker/template/Template;IIIILjava/lang/Throwable;)V
    .locals 8

    if-nez p2, :cond_0

    const/4 p2, 0x0

    :goto_0
    move-object v2, p2

    goto :goto_1

    .line 15
    :cond_0
    invoke-virtual {p2}, Lfreemarker/template/Template;->E0()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    .line 16
    invoke-direct/range {v0 .. v7}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lfreemarker/template/Template;IILjava/lang/Throwable;)V
    .locals 8

    if-nez p2, :cond_0

    const/4 p2, 0x0

    :goto_0
    move-object v2, p2

    goto :goto_1

    .line 18
    :cond_0
    invoke-virtual {p2}, Lfreemarker/template/Template;->E0()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :goto_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move-object v7, p5

    .line 19
    invoke-direct/range {v0 .. v7}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p2, p3, v0}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;Ljava/lang/Throwable;)V
    .locals 8

    if-nez p2, :cond_0

    const/4 p2, 0x0

    :goto_0
    move-object v2, p2

    goto :goto_1

    .line 21
    :cond_0
    invoke-virtual {p2}, Lfreemarker/template/Template;->E0()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :goto_1
    iget v3, p3, Lfreemarker/core/Token;->beginLine:I

    iget v4, p3, Lfreemarker/core/Token;->beginColumn:I

    iget v5, p3, Lfreemarker/core/Token;->endLine:I

    iget v6, p3, Lfreemarker/core/Token;->endColumn:I

    move-object v0, p0

    move-object v1, p1

    move-object v7, p4

    .line 22
    invoke-direct/range {v0 .. v7}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/Throwable;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/Throwable;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 27
    const-string p7, "line.separator"

    const-string v0, "\n"

    invoke-static {p7, v0}, Lha9;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p7

    iput-object p7, p0, Lfreemarker/core/ParseException;->eol:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lfreemarker/core/ParseException;->description:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lfreemarker/core/ParseException;->templateName:Ljava/lang/String;

    .line 30
    iput p3, p0, Lfreemarker/core/ParseException;->lineNumber:I

    .line 31
    iput p4, p0, Lfreemarker/core/ParseException;->columnNumber:I

    .line 32
    iput p5, p0, Lfreemarker/core/ParseException;->endLineNumber:I

    .line 33
    iput p6, p0, Lfreemarker/core/ParseException;->endColumnNumber:I

    return-void
.end method

.method public static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
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

.method private concatWithOrs(Ljava/util/Set;)Ljava/lang/String;
    .locals 2

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " or "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCustomTokenErrorDescription()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lfreemarker/core/ParseException;->currentToken:Lfreemarker/core/Token;

    iget-object v0, v0, Lfreemarker/core/Token;->next:Lfreemarker/core/Token;

    iget v1, v0, Lfreemarker/core/Token;->kind:I

    const/16 v2, 0x21

    if-nez v1, :cond_b

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    iget-object v4, p0, Lfreemarker/core/ParseException;->expectedTokenSequences:[[I

    array-length v5, v4

    if-ge v3, v5, :cond_9

    aget-object v4, v4, v3

    move v5, v1

    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_8

    aget v6, v4, v5

    if-eq v6, v2, :cond_7

    const/16 v7, 0x22

    if-eq v6, v7, :cond_6

    const/16 v7, 0x40

    if-eq v6, v7, :cond_5

    const/16 v7, 0x42

    if-eq v6, v7, :cond_4

    const/16 v7, 0x44

    if-eq v6, v7, :cond_3

    const/16 v7, 0x7d

    if-eq v6, v7, :cond_2

    const/16 v7, 0x7f

    if-eq v6, v7, :cond_1

    const/16 v7, 0x81

    if-eq v6, v7, :cond_0

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const-string v6, "#switch"

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_1
    const-string v6, "#transform"

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_2
    const-string v6, "#compress"

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_3
    const-string v6, "#macro"

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :pswitch_4
    const-string v6, "#function"

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_5
    const-string v6, "#assign"

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_6
    const-string v6, "#global"

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_7
    const-string v6, "#local"

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_8
    const-string v6, "#foreach"

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_9
    const-string v6, "#attempt"

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    const-string v6, "\"{\""

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    const-string v6, "\"(\""

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    const-string v6, "\"[\""

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const-string v6, "@..."

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    const-string v6, "#noescape"

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    const-string v6, "#escape"

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    const-string v6, "#list"

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    const-string v6, "#if"

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_9
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unexpected end of file reached."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_a

    const-string p0, ""

    goto :goto_3

    :cond_a
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, " You have an unclosed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, v0}, Lfreemarker/core/ParseException;->concatWithOrs(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_3
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const/16 p0, 0x30

    if-ne v1, p0, :cond_c

    const-string p0, "Unexpected directive, \"#else\". Check if you have a valid #if-#elseif-#else or #list-#else structure."

    return-object p0

    :cond_c
    if-eq v1, v2, :cond_e

    const/16 p0, 0x9

    if-ne v1, p0, :cond_d

    goto :goto_4

    :cond_d
    const/4 p0, 0x0

    return-object p0

    :cond_e
    :goto_4
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Unexpected directive, "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v0}, Ln0a;->C(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ". Check if you have a valid #if-#elseif-#else structure."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x26
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

.method private getDescription()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lfreemarker/core/ParseException;->messageAndDescriptionRendered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfreemarker/core/ParseException;->description:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lfreemarker/core/ParseException;->renderMessageAndDescription()V

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lfreemarker/core/ParseException;->description:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private getOrRenderDescription()Ljava/lang/String;
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfreemarker/core/ParseException;->description:Ljava/lang/String;

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lfreemarker/core/ParseException;->currentToken:Lfreemarker/core/Token;

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lfreemarker/core/ParseException;->getCustomTokenErrorDescription()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    iget-object v4, p0, Lfreemarker/core/ParseException;->expectedTokenSequences:[[I

    array-length v4, v4

    if-ge v2, v4, :cond_5

    if-eqz v2, :cond_1

    iget-object v4, p0, Lfreemarker/core/ParseException;->eol:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const-string v4, "    "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lfreemarker/core/ParseException;->expectedTokenSequences:[[I

    aget-object v4, v4, v2

    array-length v5, v4

    if-ge v3, v5, :cond_2

    array-length v3, v4

    :cond_2
    move v4, v1

    :goto_1
    iget-object v5, p0, Lfreemarker/core/ParseException;->expectedTokenSequences:[[I

    aget-object v5, v5, v2

    array-length v5, v5

    if-ge v4, v5, :cond_4

    if-eqz v4, :cond_3

    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    iget-object v5, p0, Lfreemarker/core/ParseException;->tokenImage:[Ljava/lang/String;

    iget-object v6, p0, Lfreemarker/core/ParseException;->expectedTokenSequences:[[I

    aget-object v6, v6, v2

    aget v6, v6, v4

    aget-object v5, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const-string v2, "Encountered \""

    iget-object v4, p0, Lfreemarker/core/ParseException;->currentToken:Lfreemarker/core/Token;

    iget-object v4, v4, Lfreemarker/core/Token;->next:Lfreemarker/core/Token;

    move v5, v1

    :goto_2
    if-ge v5, v3, :cond_8

    if-eqz v5, :cond_6

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_6
    iget v6, v4, Lfreemarker/core/Token;->kind:I

    if-nez v6, :cond_7

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lfreemarker/core/ParseException;->tokenImage:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_7
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, v4, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lfreemarker/core/ParseException;->add_escapes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v4, Lfreemarker/core/Token;->next:Lfreemarker/core/Token;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\", but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/core/ParseException;->expectedTokenSequences:[[I

    array-length v2, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "was expecting:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lfreemarker/core/ParseException;->eol:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_9
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "was expecting one of:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lfreemarker/core/ParseException;->eol:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_4
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_a
    const/4 v0, 0x0

    :cond_b
    :goto_5
    return-object v0

    :goto_6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private isInJBossToolsMode()Z
    .locals 1

    sget-object p0, Lfreemarker/core/ParseException;->jbossToolsMode:Ljava/lang/Boolean;

    if-nez p0, :cond_2

    :try_start_0
    sget-object p0, Lfreemarker/core/ParseException;->class$freemarker$core$ParseException:Ljava/lang/Class;

    if-nez p0, :cond_0

    const-string p0, "freemarker.core.ParseException"

    invoke-static {p0}, Lfreemarker/core/ParseException;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lfreemarker/core/ParseException;->class$freemarker$core$ParseException:Ljava/lang/Class;

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "[org.jboss.ide.eclipse.freemarker:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lfreemarker/core/ParseException;->jbossToolsMode:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object p0, Lfreemarker/core/ParseException;->jbossToolsMode:Ljava/lang/Boolean;

    :cond_2
    :goto_1
    sget-object p0, Lfreemarker/core/ParseException;->jbossToolsMode:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private renderMessageAndDescription()V
    .locals 5

    invoke-direct {p0}, Lfreemarker/core/ParseException;->getOrRenderDescription()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lfreemarker/core/ParseException;->isInJBossToolsMode()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Syntax error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lfreemarker/core/ParseException;->templateName:Ljava/lang/String;

    iget v3, p0, Lfreemarker/core/ParseException;->lineNumber:I

    iget v4, p0, Lfreemarker/core/ParseException;->columnNumber:I

    invoke-static {v2, v3, v4}, Lfreemarker/core/f1;->g(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ":\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "[col. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lfreemarker/core/ParseException;->columnNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    monitor-enter p0

    :try_start_0
    iput-object v0, p0, Lfreemarker/core/ParseException;->message:Ljava/lang/String;

    iput-object v1, p0, Lfreemarker/core/ParseException;->description:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfreemarker/core/ParseException;->messageAndDescriptionRendered:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public add_escapes(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_8

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eqz v1, :cond_7

    const/16 v2, 0x22

    if-eq v1, v2, :cond_6

    const/16 v2, 0x27

    if-eq v1, v2, :cond_5

    const/16 v2, 0x5c

    if-eq v1, v2, :cond_4

    const/16 v2, 0xc

    if-eq v1, v2, :cond_3

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-lt v1, v2, :cond_1

    const/16 v2, 0x7e

    if-le v1, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "0000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "\\u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :pswitch_0
    const-string v1, "\\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :pswitch_1
    const-string v1, "\\t"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :pswitch_2
    const-string v1, "\\b"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_2
    const-string v1, "\\r"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    const-string v1, "\\f"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    const-string v1, "\\\\"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_5
    const-string v1, "\\\'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_6
    const-string v1, "\\\""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getColumnNumber()I
    .locals 0

    iget p0, p0, Lfreemarker/core/ParseException;->columnNumber:I

    return p0
.end method

.method public getEditorMessage()Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lfreemarker/core/ParseException;->getDescription()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEndColumnNumber()I
    .locals 0

    iget p0, p0, Lfreemarker/core/ParseException;->endColumnNumber:I

    return p0
.end method

.method public getEndLineNumber()I
    .locals 0

    iget p0, p0, Lfreemarker/core/ParseException;->endLineNumber:I

    return p0
.end method

.method public getLineNumber()I
    .locals 0

    iget p0, p0, Lfreemarker/core/ParseException;->lineNumber:I

    return p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lfreemarker/core/ParseException;->messageAndDescriptionRendered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfreemarker/core/ParseException;->message:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lfreemarker/core/ParseException;->renderMessageAndDescription()V

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lfreemarker/core/ParseException;->message:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public getTemplateName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/ParseException;->templateName:Ljava/lang/String;

    return-object p0
.end method

.method public setTemplateName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lfreemarker/core/ParseException;->templateName:Ljava/lang/String;

    monitor-enter p0

    const/4 p1, 0x0

    :try_start_0
    iput-boolean p1, p0, Lfreemarker/core/ParseException;->messageAndDescriptionRendered:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lfreemarker/core/ParseException;->message:Ljava/lang/String;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
