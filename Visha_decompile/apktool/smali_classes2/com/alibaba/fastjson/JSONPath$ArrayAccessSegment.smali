.class Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$Segment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayAccessSegment"
.end annotation


# instance fields
.field private final index:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;->index:I

    return-void
.end method

.method public static synthetic access$200(Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;)I
    .locals 0

    iget p0, p0, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;->index:I

    return p0
.end method


# virtual methods
.method public eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;->index:I

    invoke-virtual {p1, p3, p0}, Lcom/alibaba/fastjson/JSONPath;->getArrayItem(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public extract(Lcom/alibaba/fastjson/JSONPath;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Lcom/alibaba/fastjson/JSONPath$Context;)V
    .locals 0

    iget-object p1, p2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    check-cast p1, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    iget p0, p0, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;->index:I

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->seekArrayToItem(I)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-boolean p0, p3, Lcom/alibaba/fastjson/JSONPath$Context;->eval:Z

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object p0

    iput-object p0, p3, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public remove(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;->index:I

    invoke-virtual {p1, p1, p2, p0}, Lcom/alibaba/fastjson/JSONPath;->removeArrayItem(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;I)Z

    move-result p0

    return p0
.end method

.method public setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;->index:I

    invoke-virtual {p1, p1, p2, p0, p3}, Lcom/alibaba/fastjson/JSONPath;->setArrayItem(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method
