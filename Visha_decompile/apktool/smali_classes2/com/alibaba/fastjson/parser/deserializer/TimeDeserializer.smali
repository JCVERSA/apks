.class public Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    iget-object p0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p2

    const/16 p3, 0x10

    if-ne p2, p3, :cond_3

    const/4 p1, 0x4

    invoke-interface {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p2

    const-string/jumbo v0, "syntax error"

    if-ne p2, p1, :cond_2

    const/4 p1, 0x2

    invoke-interface {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p2

    if-ne p2, p1, :cond_1

    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    move-result-wide p1

    const/16 v1, 0xd

    invoke-interface {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-interface {p0, p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    new-instance p0, Ljava/sql/Time;

    invoke-direct {p0, p1, p2}, Ljava/sql/Time;-><init>(J)V

    return-object p0

    :cond_0
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_4

    return-object p1

    :cond_4
    instance-of p2, p0, Ljava/sql/Time;

    if-eqz p2, :cond_5

    return-object p0

    :cond_5
    instance-of p2, p0, Ljava/math/BigDecimal;

    if-eqz p2, :cond_6

    new-instance p1, Ljava/sql/Time;

    check-cast p0, Ljava/math/BigDecimal;

    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->longValue(Ljava/math/BigDecimal;)J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Ljava/sql/Time;-><init>(J)V

    return-object p1

    :cond_6
    instance-of p2, p0, Ljava/lang/Number;

    if-eqz p2, :cond_7

    new-instance p1, Ljava/sql/Time;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Ljava/sql/Time;-><init>(J)V

    return-object p1

    :cond_7
    instance-of p2, p0, Ljava/lang/String;

    if-eqz p2, :cond_d

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_8

    return-object p1

    :cond_8
    new-instance p1, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCalendar()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    goto :goto_2

    :cond_9
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    if-ge p2, p3, :cond_c

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p3

    const/16 v0, 0x30

    if-lt p3, v0, :cond_b

    const/16 v0, 0x39

    if-le p3, v0, :cond_a

    goto :goto_1

    :cond_a
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_b
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->close()V

    invoke-static {p0}, Ljava/sql/Time;->valueOf(Ljava/lang/String;)Ljava/sql/Time;

    move-result-object p0

    return-object p0

    :cond_c
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    :goto_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->close()V

    new-instance p0, Ljava/sql/Time;

    invoke-direct {p0, p2, p3}, Ljava/sql/Time;-><init>(J)V

    return-object p0

    :cond_d
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    const-string p1, "parse error"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getFastMatchToken()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method
