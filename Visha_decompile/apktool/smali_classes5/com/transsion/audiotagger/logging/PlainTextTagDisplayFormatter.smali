.class public Lcom/transsion/audiotagger/logging/PlainTextTagDisplayFormatter;
.super Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;
.source "SourceFile"


# static fields
.field private static formatter:Lcom/transsion/audiotagger/logging/PlainTextTagDisplayFormatter;


# instance fields
.field indent:Ljava/lang/StringBuffer;

.field sb:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/logging/PlainTextTagDisplayFormatter;->sb:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/logging/PlainTextTagDisplayFormatter;->indent:Ljava/lang/StringBuffer;

    return-void
.end method

.method public static getInstanceOf()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/logging/PlainTextTagDisplayFormatter;->formatter:Lcom/transsion/audiotagger/logging/PlainTextTagDisplayFormatter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/audiotagger/logging/PlainTextTagDisplayFormatter;

    invoke-direct {v0}, Lcom/transsion/audiotagger/logging/PlainTextTagDisplayFormatter;-><init>()V

    sput-object v0, Lcom/transsion/audiotagger/logging/PlainTextTagDisplayFormatter;->formatter:Lcom/transsion/audiotagger/logging/PlainTextTagDisplayFormatter;

    :cond_0
    sget-object v0, Lcom/transsion/audiotagger/logging/PlainTextTagDisplayFormatter;->formatter:Lcom/transsion/audiotagger/logging/PlainTextTagDisplayFormatter;

    return-object v0
.end method


# virtual methods
.method public addElement(Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/logging/PlainTextTagDisplayFormatter;->addElement(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/audiotagger/logging/PlainTextTagDisplayFormatter;->sb:Ljava/lang/StringBuffer;

    iget-object p0, p0, Lcom/transsion/audiotagger/logging/PlainTextTagDisplayFormatter;->indent:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p0, 0xa

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public addElement(Ljava/lang/String;Z)V
    .locals 0

    .line 3
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/logging/PlainTextTagDisplayFormatter;->addElement(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public closeHeadingElement(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/logging/PlainTextTagDisplayFormatter;->decreaseLevel()V

    return-void
.end method

.method public decreaseLevel()V
    .locals 4

    iget v0, p0, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->level:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->level:I

    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/transsion/audiotagger/logging/PlainTextTagDisplayFormatter;->indent:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/audiotagger/logging/PlainTextTagDisplayFormatter;->indent:Ljava/lang/StringBuffer;

    return-void
.end method

.method public increaseLevel()V
    .locals 1

    iget v0, p0, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->level:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->level:I

    iget-object p0, p0, Lcom/transsion/audiotagger/logging/PlainTextTagDisplayFormatter;->indent:Ljava/lang/StringBuffer;

    const-string v0, "  "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public openHeadingElement(Ljava/lang/String;I)V
    .locals 0

    .line 4
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/logging/PlainTextTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/logging/PlainTextTagDisplayFormatter;->addElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/transsion/audiotagger/logging/PlainTextTagDisplayFormatter;->increaseLevel()V

    return-void
.end method

.method public openHeadingElement(Ljava/lang/String;Z)V
    .locals 0

    .line 3
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/logging/PlainTextTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/logging/PlainTextTagDisplayFormatter;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
