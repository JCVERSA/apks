.class public Lorg/apache/tools/ant/util/e;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:Lorg/apache/tools/ant/util/d;

.field private static b:Ljavax/xml/parsers/SAXParserFactory;

.field private static c:Ljavax/xml/parsers/SAXParserFactory;

.field private static d:Ljavax/xml/parsers/DocumentBuilderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/tools/ant/util/d;->k()Lorg/apache/tools/ant/util/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lorg/apache/tools/ant/util/e;->a:Lorg/apache/tools/ant/util/d;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    sput-object v0, Lorg/apache/tools/ant/util/e;->b:Ljavax/xml/parsers/SAXParserFactory;

    .line 9
    .line 10
    sput-object v0, Lorg/apache/tools/ant/util/e;->c:Ljavax/xml/parsers/SAXParserFactory;

    .line 11
    .line 12
    sput-object v0, Lorg/apache/tools/ant/util/e;->d:Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static a(Lorg/xml/sax/SAXException;)Lorg/apache/tools/ant/BuildException;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance p0, Lorg/apache/tools/ant/BuildException;

    .line 8
    .line 9
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public static declared-synchronized b()Ljavax/xml/parsers/SAXParserFactory;
    .locals 3

    .line 1
    const-class v0, Lorg/apache/tools/ant/util/e;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lorg/apache/tools/ant/util/e;->c:Ljavax/xml/parsers/SAXParserFactory;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lorg/apache/tools/ant/util/e;->d()Ljavax/xml/parsers/SAXParserFactory;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    sput-object v1, Lorg/apache/tools/ant/util/e;->c:Ljavax/xml/parsers/SAXParserFactory;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-virtual {v1, v2}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    sget-object v1, Lorg/apache/tools/ant/util/e;->c:Ljavax/xml/parsers/SAXParserFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-object v1

    .line 25
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw v1
.end method

.method public static c()Lorg/xml/sax/XMLReader;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lorg/apache/tools/ant/util/e;->b()Ljavax/xml/parsers/SAXParserFactory;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lorg/apache/tools/ant/util/e;->e(Ljavax/xml/parsers/SAXParserFactory;)Ljavax/xml/parsers/SAXParser;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    .line 10
    .line 11
    .line 12
    move-result-object v0
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object v0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    invoke-static {v0}, Lorg/apache/tools/ant/util/e;->a(Lorg/xml/sax/SAXException;)Lorg/apache/tools/ant/BuildException;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    throw v0
.end method

.method public static d()Ljavax/xml/parsers/SAXParserFactory;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    .line 2
    .line 3
    .line 4
    move-result-object v0
    :try_end_0
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object v0

    .line 6
    :catch_0
    move-exception v0

    .line 7
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuffer;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v3, "XML parser factory has not been configured correctly: "

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljavax/xml/parsers/FactoryConfigurationError;->getMessage()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    throw v1
.end method

.method private static e(Ljavax/xml/parsers/SAXParserFactory;)Ljavax/xml/parsers/SAXParser;
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    invoke-static {p0}, Lorg/apache/tools/ant/util/e;->a(Lorg/xml/sax/SAXException;)Lorg/apache/tools/ant/BuildException;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    throw p0

    .line 12
    :catch_1
    move-exception p0

    .line 13
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuffer;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "Cannot create parser for the given configuration: "

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-direct {v0, v1, p0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    throw v0
.end method
