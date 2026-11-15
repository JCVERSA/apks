.class public Lorg/apache/tools/ant/Location;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/d;

.field public static final UNKNOWN_LOCATION:Lorg/apache/tools/ant/Location;


# instance fields
.field private columnNumber:I

.field private fileName:Ljava/lang/String;

.field private lineNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/tools/ant/Location;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/tools/ant/Location;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/apache/tools/ant/Location;->UNKNOWN_LOCATION:Lorg/apache/tools/ant/Location;

    .line 7
    .line 8
    invoke-static {}, Lorg/apache/tools/ant/util/d;->k()Lorg/apache/tools/ant/util/d;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lorg/apache/tools/ant/Location;->FILE_UTILS:Lorg/apache/tools/ant/util/d;

    .line 13
    .line 14
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1, v1}, Lorg/apache/tools/ant/Location;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v0}, Lorg/apache/tools/ant/Location;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 5
    const-string v0, "file:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    sget-object v0, Lorg/apache/tools/ant/Location;->FILE_UTILS:Lorg/apache/tools/ant/util/d;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/d;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/Location;->fileName:Ljava/lang/String;

    goto :goto_0

    .line 7
    :cond_0
    iput-object p1, p0, Lorg/apache/tools/ant/Location;->fileName:Ljava/lang/String;

    .line 8
    :goto_0
    iput p2, p0, Lorg/apache/tools/ant/Location;->lineNumber:I

    .line 9
    iput p3, p0, Lorg/apache/tools/ant/Location;->columnNumber:I

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/Locator;)V
    .locals 2

    .line 3
    invoke-interface {p1}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v1

    invoke-interface {p1}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/tools/ant/Location;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    return v0

    .line 9
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eq v1, v2, :cond_2

    .line 18
    .line 19
    return v0

    .line 20
    :cond_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/Location;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    return p1
.end method

.method public getColumnNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/tools/ant/Location;->columnNumber:I

    .line 2
    .line 3
    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/Location;->fileName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/tools/ant/Location;->lineNumber:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/Location;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/apache/tools/ant/Location;->fileName:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    .line 12
    .line 13
    iget v1, p0, Lorg/apache/tools/ant/Location;->lineNumber:I

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const-string v1, ":"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 20
    .line 21
    .line 22
    iget v1, p0, Lorg/apache/tools/ant/Location;->lineNumber:I

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 25
    .line 26
    .line 27
    :cond_0
    const-string v1, ": "

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method
