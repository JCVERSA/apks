.class public Lfreemarker/core/TokenMgrError;
.super Ljava/lang/Error;
.source "SourceFile"


# static fields
.field static final INVALID_LEXICAL_STATE:I = 0x2

.field static final LEXICAL_ERROR:I = 0x0

.field static final LOOP_DETECTED:I = 0x3

.field static final STATIC_LEXER_ERROR:I = 0x1


# instance fields
.field private columnNumber:Ljava/lang/Integer;

.field private detail:Ljava/lang/String;

.field private endColumnNumber:Ljava/lang/Integer;

.field private endLineNumber:Ljava/lang/Integer;

.field errorCode:I

.field private lineNumber:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lfreemarker/core/TokenMgrError;->detail:Ljava/lang/String;

    .line 4
    iput p2, p0, Lfreemarker/core/TokenMgrError;->errorCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 5
    invoke-direct/range {v0 .. v6}, Lfreemarker/core/TokenMgrError;-><init>(Ljava/lang/String;IIIII)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lfreemarker/core/TokenMgrError;->endLineNumber:Ljava/lang/Integer;

    .line 7
    iput-object p1, p0, Lfreemarker/core/TokenMgrError;->endColumnNumber:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 9
    iput-object p1, p0, Lfreemarker/core/TokenMgrError;->detail:Ljava/lang/String;

    .line 10
    iput p2, p0, Lfreemarker/core/TokenMgrError;->errorCode:I

    .line 11
    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p3}, Ljava/lang/Integer;-><init>(I)V

    iput-object p1, p0, Lfreemarker/core/TokenMgrError;->lineNumber:Ljava/lang/Integer;

    .line 12
    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p4}, Ljava/lang/Integer;-><init>(I)V

    iput-object p1, p0, Lfreemarker/core/TokenMgrError;->columnNumber:Ljava/lang/Integer;

    .line 13
    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p5}, Ljava/lang/Integer;-><init>(I)V

    iput-object p1, p0, Lfreemarker/core/TokenMgrError;->endLineNumber:Ljava/lang/Integer;

    .line 14
    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p6}, Ljava/lang/Integer;-><init>(I)V

    iput-object p1, p0, Lfreemarker/core/TokenMgrError;->endColumnNumber:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(ZIIILjava/lang/String;CI)V
    .locals 0

    .line 15
    invoke-static/range {p1 .. p6}, Lfreemarker/core/TokenMgrError;->LexicalError(ZIIILjava/lang/String;C)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p7}, Lfreemarker/core/TokenMgrError;-><init>(Ljava/lang/String;I)V

    .line 16
    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p3}, Ljava/lang/Integer;-><init>(I)V

    iput-object p1, p0, Lfreemarker/core/TokenMgrError;->lineNumber:Ljava/lang/Integer;

    .line 17
    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p4}, Ljava/lang/Integer;-><init>(I)V

    iput-object p1, p0, Lfreemarker/core/TokenMgrError;->columnNumber:Ljava/lang/Integer;

    .line 18
    iget-object p2, p0, Lfreemarker/core/TokenMgrError;->lineNumber:Ljava/lang/Integer;

    iput-object p2, p0, Lfreemarker/core/TokenMgrError;->endLineNumber:Ljava/lang/Integer;

    .line 19
    iput-object p1, p0, Lfreemarker/core/TokenMgrError;->endColumnNumber:Ljava/lang/Integer;

    return-void
.end method

.method public static LexicalError(ZIIILjava/lang/String;C)Ljava/lang/String;
    .locals 0

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string p2, "Lexical error: encountered "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p0, :cond_0

    const-string p0, "<EOF> "

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const-string p2, "\""

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lfreemarker/core/TokenMgrError;->addEscapes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, " ("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p2, "), "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "after \""

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p4}, Lfreemarker/core/TokenMgrError;->addEscapes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "\"."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final addEscapes(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_8

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eqz v2, :cond_7

    const/16 v3, 0x22

    if-eq v2, v3, :cond_6

    const/16 v3, 0x27

    if-eq v2, v3, :cond_5

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_4

    const/16 v3, 0xc

    if-eq v2, v3, :cond_3

    const/16 v3, 0xd

    if-eq v2, v3, :cond_2

    packed-switch v2, :pswitch_data_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-lt v2, v3, :cond_1

    const/16 v3, 0x7e

    if-le v2, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_1
    :goto_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "0000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v4, 0x10

    invoke-static {v2, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "\\u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :pswitch_0
    const-string v2, "\\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :pswitch_1
    const-string v2, "\\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :pswitch_2
    const-string v2, "\\b"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_2
    const-string v2, "\\r"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    const-string v2, "\\f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    const-string v2, "\\\\"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_5
    const-string v2, "\\\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_6
    const-string v2, "\\\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getColumnNumber()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/TokenMgrError;->columnNumber:Ljava/lang/Integer;

    return-object p0
.end method

.method public getDetail()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/TokenMgrError;->detail:Ljava/lang/String;

    return-object p0
.end method

.method public getEndColumnNumber()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/TokenMgrError;->endColumnNumber:Ljava/lang/Integer;

    return-object p0
.end method

.method public getEndLineNumber()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/TokenMgrError;->endLineNumber:Ljava/lang/Integer;

    return-object p0
.end method

.method public getLineNumber()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/TokenMgrError;->lineNumber:Ljava/lang/Integer;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toParseException(Lfreemarker/template/Template;)Lfreemarker/core/ParseException;
    .locals 8

    new-instance v7, Lfreemarker/core/ParseException;

    invoke-virtual {p0}, Lfreemarker/core/TokenMgrError;->getDetail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lfreemarker/core/TokenMgrError;->getLineNumber()Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/TokenMgrError;->getLineNumber()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {p0}, Lfreemarker/core/TokenMgrError;->getColumnNumber()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lfreemarker/core/TokenMgrError;->getColumnNumber()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {p0}, Lfreemarker/core/TokenMgrError;->getEndLineNumber()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lfreemarker/core/TokenMgrError;->getEndLineNumber()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v5, v0

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    invoke-virtual {p0}, Lfreemarker/core/TokenMgrError;->getEndColumnNumber()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lfreemarker/core/TokenMgrError;->getEndColumnNumber()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    move v6, p0

    goto :goto_3

    :cond_3
    move v6, v2

    :goto_3
    move-object v0, v7

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;IIII)V

    return-object v7
.end method
