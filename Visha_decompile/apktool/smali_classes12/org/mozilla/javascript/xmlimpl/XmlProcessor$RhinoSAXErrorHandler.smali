.class Lorg/mozilla/javascript/xmlimpl/XmlProcessor$RhinoSAXErrorHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/ErrorHandler;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/xmlimpl/XmlProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RhinoSAXErrorHandler"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x600327d1fcbca797L


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/mozilla/javascript/xmlimpl/XmlProcessor$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor$RhinoSAXErrorHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/xml/sax/SAXParseException;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const-string v0, "TypeError"

    invoke-static {v0, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;I)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor$RhinoSAXErrorHandler;->a(Lorg/xml/sax/SAXParseException;)V

    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor$RhinoSAXErrorHandler;->a(Lorg/xml/sax/SAXParseException;)V

    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportWarning(Ljava/lang/String;)V

    return-void
.end method
